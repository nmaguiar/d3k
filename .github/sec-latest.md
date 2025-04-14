````yaml
╭ [0] ╭ Target         : nmaguiar/d3k:latest (ubuntu 24.10) 
│     ├ Class          : os-pkgs 
│     ├ Type           : ubuntu 
│     ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2016-2781 
│                       │      ├ PkgID           : coreutils@9.4-3.1ubuntu1 
│                       │      ├ PkgName         : coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/coreutils@9.4-3.1ubuntu1?arch=amd64&di
│                       │      │                  │       stro=ubuntu-24.10 
│                       │      │                  ╰ UID : e677453c3b8788d1 
│                       │      ├ InstalledVersion: 9.4-3.1ubuntu1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2016-2781 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : coreutils: Non-privileged session can escape to the parent
│                       │      │                   session in chroot 
│                       │      ├ Description     : chroot in GNU coreutils, when used with --userspec, allows
│                       │      │                   local users to escape to the parent session via a crafted
│                       │      │                   TIOCSTI ioctl call, which pushes characters to the
│                       │      │                   terminal's input buffer. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-20 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ nvd        : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:L/AC:L/Au:N/C:N/I:P/A:N 
│                       │      │                  │        ├ V3Vector: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:H
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ├ V2Score : 2.1 
│                       │      │                  │        ╰ V3Score : 6.5 
│                       │      │                  ╰ redhat ╭ V2Vector: AV:L/AC:H/Au:N/C:C/I:C/A:C 
│                       │      │                           ├ V3Vector: CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ├ V2Score : 6.2 
│                       │      │                           ╰ V3Score : 8.6 
│                       │      ├ References       ╭ [0]: http://seclists.org/oss-sec/2016/q1/452 
│                       │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2016/02/28/2 
│                       │      │                  ├ [2]: http://www.openwall.com/lists/oss-security/2016/02/28/3 
│                       │      │                  ├ [3]: https://access.redhat.com/security/cve/CVE-2016-2781 
│                       │      │                  ├ [4]: https://lists.apache.org/thread.html/rf9fa47ab66495c78
│                       │      │                  │      bb4120b0754dd9531ca2ff0430f6685ac9b07772%40%3Cdev.mina
│                       │      │                  │      .apache.org%3E 
│                       │      │                  ├ [5]: https://lore.kernel.org/patchwork/patch/793178/ 
│                       │      │                  ├ [6]: https://mirrors.edge.kernel.org/pub/linux/utils/util-l
│                       │      │                  │      inux/v2.28/v2.28-ReleaseNotes 
│                       │      │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2016-2781 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2016-2781 
│                       │      ├ PublishedDate   : 2017-02-07T15:59:00.333Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T02:48:47.593Z 
│                       ├ [1]  ╭ VulnerabilityID : CVE-2025-0167 
│                       │      ├ PkgID           : curl@8.9.1-2ubuntu2.2 
│                       │      ├ PkgName         : curl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.9.1-2ubuntu2.2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10 
│                       │      │                  ╰ UID : 5f1206fd0c3e73e2 
│                       │      ├ InstalledVersion: 8.9.1-2ubuntu2.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0167 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : When asked to use a `.netrc` file for credentials **and** to
│                       │      │                    follow HT ... 
│                       │      ├ Description     : When asked to use a `.netrc` file for credentials **and** to
│                       │      │                    follow HTTP
│                       │      │                   redirects, curl could leak the password used for the first
│                       │      │                   host to the
│                       │      │                   followed-to host under certain circumstances.
│                       │      │                   
│                       │      │                   This flaw only manifests itself if the netrc file has a
│                       │      │                   `default` entry that
│                       │      │                   omits both login and password. A rare circumstance. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ photon: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2025-0167.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2025-0167.json 
│                       │      │                  ├ [2]: https://hackerone.com/reports/2917232 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0167 
│                       │      │                  ├ [4]: https://security.netapp.com/advisory/ntap-20250306-0008/ 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-0167 
│                       │      ├ PublishedDate   : 2025-02-05T10:15:22.71Z 
│                       │      ╰ LastModifiedDate: 2025-03-07T01:15:12.11Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : dirmngr@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : dirmngr 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/dirmngr@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 7dd16f298b0e5657 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [3]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : dirmngr@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : dirmngr 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/dirmngr@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 7dd16f298b0e5657 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [4]  ╭ VulnerabilityID : CVE-2024-52005 
│                       │      ├ PkgID           : git@1:2.45.2-1ubuntu1.1 
│                       │      ├ PkgName         : git 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.45.2-1ubuntu1.1?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : f3fbb7d4e6b57a64 
│                       │      ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : git: The sideband payload is passed unfiltered to the
│                       │      │                   terminal in git 
│                       │      ├ Description     : Git is a source code management tool. When cloning from a
│                       │      │                   server (or fetching, or pushing), informational or error
│                       │      │                   messages are transported from the remote Git process to the
│                       │      │                   client via the so-called "sideband channel". These messages
│                       │      │                   will be prefixed with "remote:" and printed directly to the
│                       │      │                   standard error output. Typically, this standard error output
│                       │      │                    is connected to a terminal that understands ANSI escape
│                       │      │                   sequences, which Git did not protect against. Most modern
│                       │      │                   terminals support control sequences that can be used by a
│                       │      │                   malicious actor to hide and misrepresent information, or to
│                       │      │                   mislead the user into executing untrusted scripts. As
│                       │      │                   requested on the git-security mailing list, the patches are
│                       │      │                   under discussion on the public mailing list. Users are
│                       │      │                   advised to update as soon as possible. Users unable to
│                       │      │                   upgrade should avoid recursive clones unless they are from
│                       │      │                   trusted sources. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-116 
│                       │      │                  ╰ [1]: CWE-150 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-52005 
│                       │      │                  ├ [1]: https://github.com/git/git/security/advisories/GHSA-7j
│                       │      │                  │      jc-gg6m-3329 
│                       │      │                  ├ [2]: https://lore.kernel.org/git/1M9FnZ-1taoNo1wwh-00ESSd@m
│                       │      │                  │      ail.gmx.net 
│                       │      │                  ├ [3]: https://lore.kernel.org/git/8570a129-d66a-465a-905e-0a
│                       │      │                  │      077c69c409@gmail.com/T/#t 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2024-52005 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2024-52005 
│                       │      ├ PublishedDate   : 2025-01-15T18:15:24.13Z 
│                       │      ╰ LastModifiedDate: 2025-01-15T18:15:24.13Z 
│                       ├ [5]  ╭ VulnerabilityID : CVE-2024-52005 
│                       │      ├ PkgID           : git-man@1:2.45.2-1ubuntu1.1 
│                       │      ├ PkgName         : git-man 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.45.2-1ubuntu1.1?arch=all&dis
│                       │      │                  │       tro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 1ecc8b58303457e2 
│                       │      ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : git: The sideband payload is passed unfiltered to the
│                       │      │                   terminal in git 
│                       │      ├ Description     : Git is a source code management tool. When cloning from a
│                       │      │                   server (or fetching, or pushing), informational or error
│                       │      │                   messages are transported from the remote Git process to the
│                       │      │                   client via the so-called "sideband channel". These messages
│                       │      │                   will be prefixed with "remote:" and printed directly to the
│                       │      │                   standard error output. Typically, this standard error output
│                       │      │                    is connected to a terminal that understands ANSI escape
│                       │      │                   sequences, which Git did not protect against. Most modern
│                       │      │                   terminals support control sequences that can be used by a
│                       │      │                   malicious actor to hide and misrepresent information, or to
│                       │      │                   mislead the user into executing untrusted scripts. As
│                       │      │                   requested on the git-security mailing list, the patches are
│                       │      │                   under discussion on the public mailing list. Users are
│                       │      │                   advised to update as soon as possible. Users unable to
│                       │      │                   upgrade should avoid recursive clones unless they are from
│                       │      │                   trusted sources. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-116 
│                       │      │                  ╰ [1]: CWE-150 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-52005 
│                       │      │                  ├ [1]: https://github.com/git/git/security/advisories/GHSA-7j
│                       │      │                  │      jc-gg6m-3329 
│                       │      │                  ├ [2]: https://lore.kernel.org/git/1M9FnZ-1taoNo1wwh-00ESSd@m
│                       │      │                  │      ail.gmx.net 
│                       │      │                  ├ [3]: https://lore.kernel.org/git/8570a129-d66a-465a-905e-0a
│                       │      │                  │      077c69c409@gmail.com/T/#t 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2024-52005 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2024-52005 
│                       │      ├ PublishedDate   : 2025-01-15T18:15:24.13Z 
│                       │      ╰ LastModifiedDate: 2025-01-15T18:15:24.13Z 
│                       ├ [6]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gnupg@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg@2.4.4-2ubuntu18?arch=all&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : 5e104316734f96cb 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [7]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gnupg@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg@2.4.4-2ubuntu18?arch=all&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : 5e104316734f96cb 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [8]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gnupg-l10n@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg-l10n 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg-l10n@2.4.4-2ubuntu18?arch=all&di
│                       │      │                  │       stro=ubuntu-24.10 
│                       │      │                  ╰ UID : c3160be79bbbed76 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [9]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gnupg-l10n@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg-l10n 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg-l10n@2.4.4-2ubuntu18?arch=all&di
│                       │      │                  │       stro=ubuntu-24.10 
│                       │      │                  ╰ UID : c3160be79bbbed76 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [10] ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gnupg-utils@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg-utils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg-utils@2.4.4-2ubuntu18?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : cd45dd64c25a6a6e 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [11] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gnupg-utils@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg-utils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg-utils@2.4.4-2ubuntu18?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : cd45dd64c25a6a6e 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [12] ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gpg@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg@2.4.4-2ubuntu18?arch=amd64&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : cb252d595dc721c9 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [13] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpg@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg@2.4.4-2ubuntu18?arch=amd64&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : cb252d595dc721c9 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [14] ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gpg-agent@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg-agent 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg-agent@2.4.4-2ubuntu18?arch=amd64&d
│                       │      │                  │       istro=ubuntu-24.10 
│                       │      │                  ╰ UID : f6e28d30e6cb9fd2 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [15] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpg-agent@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg-agent 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg-agent@2.4.4-2ubuntu18?arch=amd64&d
│                       │      │                  │       istro=ubuntu-24.10 
│                       │      │                  ╰ UID : f6e28d30e6cb9fd2 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [16] ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gpg-wks-client@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg-wks-client 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg-wks-client@2.4.4-2ubuntu18?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 48a06fe143f760b8 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [17] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpg-wks-client@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg-wks-client 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg-wks-client@2.4.4-2ubuntu18?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 48a06fe143f760b8 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [18] ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gpgconf@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgconf 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgconf@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2c984f926df7bccc 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [19] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpgconf@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgconf 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgconf@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2c984f926df7bccc 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [20] ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gpgsm@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgsm 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgsm@2.4.4-2ubuntu18?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10 
│                       │      │                  ╰ UID : eb2a69f753ba049b 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [21] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpgsm@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgsm 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgsm@2.4.4-2ubuntu18?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10 
│                       │      │                  ╰ UID : eb2a69f753ba049b 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [22] ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : gpgv@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgv 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgv@2.4.4-2ubuntu18?arch=amd64&distro
│                       │      │                  │       =ubuntu-24.10 
│                       │      │                  ╰ UID : 2178e73b274a9bdd 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [23] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpgv@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgv 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgv@2.4.4-2ubuntu18?arch=amd64&distro
│                       │      │                  │       =ubuntu-24.10 
│                       │      │                  ╰ UID : 2178e73b274a9bdd 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [24] ╭ VulnerabilityID : CVE-2025-30258 
│                       │      ├ PkgID           : keyboxd@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : keyboxd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/keyboxd@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 49ce01586c31b1ae 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │      │                   keyring 
│                       │      ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │      │                   certificate with certain crafted subkey data that lacks a
│                       │      │                   valid backsig or that has incorrect usage flags, the user
│                       │      │                   loses the ability to verify signatures made from certain
│                       │      │                   other signing keys, aka a "verification DoS." 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-754 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │      │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a3274
│                       │      │                  │      4350a65158 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025q
│                       │      │                  │      1/000491.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │      ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │      ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [25] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : keyboxd@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : keyboxd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/keyboxd@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 49ce01586c31b1ae 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2022-3219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : gnupg: denial of service issue (resource consumption) using
│                       │      │                   compressed packets 
│                       │      ├ Description     : GnuPG can be made to spin on a relatively small input by
│                       │      │                   (for example) crafting a public key with thousands of
│                       │      │                   signatures attached, compressed down to just a few KB. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2022-3219 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2127010 
│                       │      │                  ├ [2]: https://dev.gnupg.org/D556 
│                       │      │                  ├ [3]: https://dev.gnupg.org/T5993 
│                       │      │                  ├ [4]: https://marc.info/?l=oss-security&m=165696590211434&w=4 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2022-3219 
│                       │      │                  ├ [6]: https://security.netapp.com/advisory/ntap-20230324-0001/ 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2022-3219 
│                       │      ├ PublishedDate   : 2023-02-23T20:15:12.393Z 
│                       │      ╰ LastModifiedDate: 2025-03-12T21:15:38.207Z 
│                       ├ [26] ╭ VulnerabilityID : CVE-2025-24528 
│                       │      ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : krb5-locales 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 364bca905abeb2e 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: overflow when calculating ulog block size 
│                       │      ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │      │                   enabled, an authenticated attacker can cause kadmind to
│                       │      │                   write beyond the end of the mapped region for the iprop log
│                       │      │                   file. This issue can trigger a process crash and lead to a
│                       │      │                   denial of service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ╰ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2025:2722 
│                       │                         ├ [1]: https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                         ├ [2]: https://bugzilla.redhat.com/2342796 
│                       │                         ├ [3]: https://errata.almalinux.org/8/ALSA-2025-2722.html 
│                       │                         ├ [4]: https://github.com/krb5/krb5/commit/78ceba024b64d49612
│                       │                         │      375be4a12d1c066b0bfbd0 
│                       │                         ├ [5]: https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                         ├ [6]: https://linux.oracle.com/errata/ELSA-2025-2722.html 
│                       │                         ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                         ├ [8]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                         ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [27] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : krb5-locales 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 364bca905abeb2e 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [28] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : krb5-locales 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 364bca905abeb2e 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [29] ╭ VulnerabilityID : CVE-2016-20013 
│                       │      ├ PkgID           : libc-bin@2.40-1ubuntu3.1 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.40-1ubuntu3.1?arch=amd64&di
│                       │      │                  │       stro=ubuntu-24.10 
│                       │      │                  ╰ UID : b557bb6c7f40f6ec 
│                       │      ├ InstalledVersion: 2.40-1ubuntu3.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2016-20013 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Description     : sha256crypt and sha512crypt through 0.6 allow attackers to
│                       │      │                   cause a denial of service (CPU consumption) because the
│                       │      │                   algorithm's runtime is proportional to the square of the
│                       │      │                   length of the password. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ nvd   : 3 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ nvd ╭ V2Vector: AV:N/AC:L/Au:N/C:N/I:N/A:P 
│                       │      │                        ├ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H 
│                       │      │                        ├ V2Score : 5 
│                       │      │                        ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://akkadia.org/drepper/SHA-crypt.txt 
│                       │      │                  ├ [1]: https://pthree.org/2018/05/23/do-not-use-sha256crypt-s
│                       │      │                  │      ha512crypt-theyre-dangerous/ 
│                       │      │                  ├ [2]: https://twitter.com/solardiz/status/795601240151457793 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2016-20013 
│                       │      ├ PublishedDate   : 2022-02-19T05:15:09.413Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T02:47:33.427Z 
│                       ├ [30] ╭ VulnerabilityID : CVE-2016-20013 
│                       │      ├ PkgID           : libc6@2.40-1ubuntu3.1 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.40-1ubuntu3.1?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10 
│                       │      │                  ╰ UID : 14831d31dc9fa5be 
│                       │      ├ InstalledVersion: 2.40-1ubuntu3.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2016-20013 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Description     : sha256crypt and sha512crypt through 0.6 allow attackers to
│                       │      │                   cause a denial of service (CPU consumption) because the
│                       │      │                   algorithm's runtime is proportional to the square of the
│                       │      │                   length of the password. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ nvd   : 3 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ nvd ╭ V2Vector: AV:N/AC:L/Au:N/C:N/I:N/A:P 
│                       │      │                        ├ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H 
│                       │      │                        ├ V2Score : 5 
│                       │      │                        ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://akkadia.org/drepper/SHA-crypt.txt 
│                       │      │                  ├ [1]: https://pthree.org/2018/05/23/do-not-use-sha256crypt-s
│                       │      │                  │      ha512crypt-theyre-dangerous/ 
│                       │      │                  ├ [2]: https://twitter.com/solardiz/status/795601240151457793 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2016-20013 
│                       │      ├ PublishedDate   : 2022-02-19T05:15:09.413Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T02:47:33.427Z 
│                       ├ [31] ╭ VulnerabilityID : CVE-2025-1390 
│                       │      ├ PkgID           : libcap2@1:2.66-5ubuntu3 
│                       │      ├ PkgName         : libcap2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcap2@2.66-5ubuntu3?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 93130244437284bd 
│                       │      ├ InstalledVersion: 1:2.66-5ubuntu3 
│                       │      ├ FixedVersion    : 1:2.66-5ubuntu3.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1390 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : libcap: pam_cap: Fix potential configuration parsing error 
│                       │      ├ Description     : The PAM module pam_cap.so of libcap configuration supports
│                       │      │                   group names starting with “@”, during actual parsing,
│                       │      │                   configurations not starting with “@” are incorrectly
│                       │      │                   recognized as group names. This may result in nonintended
│                       │      │                   users being granted an inherited capability set, potentially
│                       │      │                    leading to security risks. Attackers can exploit this
│                       │      │                   vulnerability to achieve local privilege escalation on
│                       │      │                   systems where /etc/security/capability.conf is used to
│                       │      │                   configure user inherited privileges by constructing specific
│                       │      │                    usernames. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-284 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 6.1 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1390 
│                       │      │                  ├ [1]: https://bugzilla.openanolis.cn/show_bug.cgi?id=18804 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-1390 
│                       │      │                  ├ [3]: https://ubuntu.com/security/notices/USN-7287-1 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2025-1390 
│                       │      ├ PublishedDate   : 2025-02-18T03:15:10.447Z 
│                       │      ╰ LastModifiedDate: 2025-02-18T03:15:10.447Z 
│                       ├ [32] ╭ VulnerabilityID : CVE-2025-1390 
│                       │      ├ PkgID           : libcap2-bin@1:2.66-5ubuntu3 
│                       │      ├ PkgName         : libcap2-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcap2-bin@2.66-5ubuntu3?arch=amd64&d
│                       │      │                  │       istro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : be08cf2b118d509 
│                       │      ├ InstalledVersion: 1:2.66-5ubuntu3 
│                       │      ├ FixedVersion    : 1:2.66-5ubuntu3.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1390 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : libcap: pam_cap: Fix potential configuration parsing error 
│                       │      ├ Description     : The PAM module pam_cap.so of libcap configuration supports
│                       │      │                   group names starting with “@”, during actual parsing,
│                       │      │                   configurations not starting with “@” are incorrectly
│                       │      │                   recognized as group names. This may result in nonintended
│                       │      │                   users being granted an inherited capability set, potentially
│                       │      │                    leading to security risks. Attackers can exploit this
│                       │      │                   vulnerability to achieve local privilege escalation on
│                       │      │                   systems where /etc/security/capability.conf is used to
│                       │      │                   configure user inherited privileges by constructing specific
│                       │      │                    usernames. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-284 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 6.1 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1390 
│                       │      │                  ├ [1]: https://bugzilla.openanolis.cn/show_bug.cgi?id=18804 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-1390 
│                       │      │                  ├ [3]: https://ubuntu.com/security/notices/USN-7287-1 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2025-1390 
│                       │      ├ PublishedDate   : 2025-02-18T03:15:10.447Z 
│                       │      ╰ LastModifiedDate: 2025-02-18T03:15:10.447Z 
│                       ├ [33] ╭ VulnerabilityID : CVE-2025-0167 
│                       │      ├ PkgID           : libcurl3t64-gnutls@8.9.1-2ubuntu2.2 
│                       │      ├ PkgName         : libcurl3t64-gnutls 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl3t64-gnutls@8.9.1-2ubuntu2.2?ar
│                       │      │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 6dda384b59a8ee88 
│                       │      ├ InstalledVersion: 8.9.1-2ubuntu2.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0167 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : When asked to use a `.netrc` file for credentials **and** to
│                       │      │                    follow HT ... 
│                       │      ├ Description     : When asked to use a `.netrc` file for credentials **and** to
│                       │      │                    follow HTTP
│                       │      │                   redirects, curl could leak the password used for the first
│                       │      │                   host to the
│                       │      │                   followed-to host under certain circumstances.
│                       │      │                   
│                       │      │                   This flaw only manifests itself if the netrc file has a
│                       │      │                   `default` entry that
│                       │      │                   omits both login and password. A rare circumstance. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ photon: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2025-0167.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2025-0167.json 
│                       │      │                  ├ [2]: https://hackerone.com/reports/2917232 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0167 
│                       │      │                  ├ [4]: https://security.netapp.com/advisory/ntap-20250306-0008/ 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-0167 
│                       │      ├ PublishedDate   : 2025-02-05T10:15:22.71Z 
│                       │      ╰ LastModifiedDate: 2025-03-07T01:15:12.11Z 
│                       ├ [34] ╭ VulnerabilityID : CVE-2025-0167 
│                       │      ├ PkgID           : libcurl4t64@8.9.1-2ubuntu2.2 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.9.1-2ubuntu2.2?arch=amd6
│                       │      │                  │       4&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 205ee920c4ee4a51 
│                       │      ├ InstalledVersion: 8.9.1-2ubuntu2.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0167 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : When asked to use a `.netrc` file for credentials **and** to
│                       │      │                    follow HT ... 
│                       │      ├ Description     : When asked to use a `.netrc` file for credentials **and** to
│                       │      │                    follow HTTP
│                       │      │                   redirects, curl could leak the password used for the first
│                       │      │                   host to the
│                       │      │                   followed-to host under certain circumstances.
│                       │      │                   
│                       │      │                   This flaw only manifests itself if the netrc file has a
│                       │      │                   `default` entry that
│                       │      │                   omits both login and password. A rare circumstance. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ photon: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2025-0167.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2025-0167.json 
│                       │      │                  ├ [2]: https://hackerone.com/reports/2917232 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0167 
│                       │      │                  ├ [4]: https://security.netapp.com/advisory/ntap-20250306-0008/ 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-0167 
│                       │      ├ PublishedDate   : 2025-02-05T10:15:22.71Z 
│                       │      ╰ LastModifiedDate: 2025-03-07T01:15:12.11Z 
│                       ├ [35] ╭ VulnerabilityID : CVE-2025-1352 
│                       │      ├ PkgID           : libelf1t64@0.191-2 
│                       │      ├ PkgName         : libelf1t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=u
│                       │      │                  │       buntu-24.10 
│                       │      │                  ╰ UID : f655d9e566e48529 
│                       │      ├ InstalledVersion: 0.191-2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1352 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : elfutils: GNU elfutils eu-readelf libdw_alloc.c
│                       │      │                   __libdw_thread_tail memory corruption 
│                       │      ├ Description     : A vulnerability has been found in GNU elfutils 0.192 and
│                       │      │                   classified as critical. This vulnerability affects the
│                       │      │                   function __libdw_thread_tail in the library libdw_alloc.c of
│                       │      │                    the component eu-readelf. The manipulation of the argument
│                       │      │                   w leads to memory corruption. The attack can be initiated
│                       │      │                   remotely. The complexity of an attack is rather high. The
│                       │      │                   exploitation appears to be difficult. The exploit has been
│                       │      │                   disclosed to the public and may be used. The name of the
│                       │      │                   patch is 2636426a091bd6c6f7f02e49ab20d4cdc6bfc753. It is
│                       │      │                   recommended to apply a patch to fix this issue. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-119 
│                       │      ├ VendorSeverity   ╭ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1352 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2025-1352 
│                       │      │                  ├ [2]: https://sourceware.org/bugzilla/attachment.cgi?id=15923 
│                       │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=32650 
│                       │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=32650#c2 
│                       │      │                  ├ [5]: https://vuldb.com/?ctiid.295960 
│                       │      │                  ├ [6]: https://vuldb.com/?id.295960 
│                       │      │                  ├ [7]: https://vuldb.com/?submit.495965 
│                       │      │                  ├ [8]: https://www.cve.org/CVERecord?id=CVE-2025-1352 
│                       │      │                  ╰ [9]: https://www.gnu.org/ 
│                       │      ├ PublishedDate   : 2025-02-16T15:15:09.133Z 
│                       │      ╰ LastModifiedDate: 2025-02-16T15:15:09.133Z 
│                       ├ [36] ╭ VulnerabilityID : CVE-2025-1365 
│                       │      ├ PkgID           : libelf1t64@0.191-2 
│                       │      ├ PkgName         : libelf1t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=u
│                       │      │                  │       buntu-24.10 
│                       │      │                  ╰ UID : f655d9e566e48529 
│                       │      ├ InstalledVersion: 0.191-2 
│                       │      ├ FixedVersion    : 0.191-2ubuntu0.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1365 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : elfutils: GNU elfutils eu-readelf readelf.c process_symtab
│                       │      │                   buffer overflow 
│                       │      ├ Description     : A vulnerability, which was classified as critical, was found
│                       │      │                    in GNU elfutils 0.192. This affects the function
│                       │      │                   process_symtab of the file readelf.c of the component
│                       │      │                   eu-readelf. The manipulation of the argument D/a leads to
│                       │      │                   buffer overflow. Local access is required to approach this
│                       │      │                   attack. The exploit has been disclosed to the public and may
│                       │      │                    be used. The identifier of the patch is
│                       │      │                   5e5c0394d82c53e97750fe7b18023e6f84157b81. It is recommended
│                       │      │                   to apply a patch to fix this issue. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-119 
│                       │      │                  ╰ [1]: CWE-120 
│                       │      ├ VendorSeverity   ╭ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1365 
│                       │      │                  ├ [1] : https://nvd.nist.gov/vuln/detail/CVE-2025-1365 
│                       │      │                  ├ [2] : https://sourceware.org/bugzilla/attachment.cgi?id=15925 
│                       │      │                  ├ [3] : https://sourceware.org/bugzilla/show_bug.cgi?id=32654 
│                       │      │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=32654
│                       │      │                  │       #c2 
│                       │      │                  ├ [5] : https://ubuntu.com/security/notices/USN-7369-1 
│                       │      │                  ├ [6] : https://vuldb.com/?ctiid.295977 
│                       │      │                  ├ [7] : https://vuldb.com/?id.295977 
│                       │      │                  ├ [8] : https://vuldb.com/?submit.496483 
│                       │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1365 
│                       │      │                  ╰ [10]: https://www.gnu.org/ 
│                       │      ├ PublishedDate   : 2025-02-17T00:15:09.14Z 
│                       │      ╰ LastModifiedDate: 2025-02-17T00:15:09.14Z 
│                       ├ [37] ╭ VulnerabilityID : CVE-2025-1371 
│                       │      ├ PkgID           : libelf1t64@0.191-2 
│                       │      ├ PkgName         : libelf1t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=u
│                       │      │                  │       buntu-24.10 
│                       │      │                  ╰ UID : f655d9e566e48529 
│                       │      ├ InstalledVersion: 0.191-2 
│                       │      ├ FixedVersion    : 0.191-2ubuntu0.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1371 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : elfutils: GNU elfutils eu-read readelf.c
│                       │      │                   handle_dynamic_symtab null pointer dereference 
│                       │      ├ Description     : A vulnerability has been found in GNU elfutils 0.192 and
│                       │      │                   classified as problematic. This vulnerability affects the
│                       │      │                   function handle_dynamic_symtab of the file readelf.c of the
│                       │      │                   component eu-read. The manipulation leads to null pointer
│                       │      │                   dereference. Attacking locally is a requirement. The exploit
│                       │      │                    has been disclosed to the public and may be used. The patch
│                       │      │                    is identified as b38e562a4c907e08171c76b8b2def8464d5a104a.
│                       │      │                   It is recommended to apply a patch to fix this issue. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-404 
│                       │      │                  ╰ [1]: CWE-476 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1371 
│                       │      │                  ├ [1] : https://nvd.nist.gov/vuln/detail/CVE-2025-1371 
│                       │      │                  ├ [2] : https://sourceware.org/bugzilla/attachment.cgi?id=15926 
│                       │      │                  ├ [3] : https://sourceware.org/bugzilla/show_bug.cgi?id=32655 
│                       │      │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=32655
│                       │      │                  │       #c2 
│                       │      │                  ├ [5] : https://ubuntu.com/security/notices/USN-7369-1 
│                       │      │                  ├ [6] : https://vuldb.com/?ctiid.295978 
│                       │      │                  ├ [7] : https://vuldb.com/?id.295978 
│                       │      │                  ├ [8] : https://vuldb.com/?submit.496484 
│                       │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1371 
│                       │      │                  ╰ [10]: https://www.gnu.org/ 
│                       │      ├ PublishedDate   : 2025-02-17T03:15:09.4Z 
│                       │      ╰ LastModifiedDate: 2025-02-18T20:15:24.36Z 
│                       ├ [38] ╭ VulnerabilityID : CVE-2025-1372 
│                       │      ├ PkgID           : libelf1t64@0.191-2 
│                       │      ├ PkgName         : libelf1t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=u
│                       │      │                  │       buntu-24.10 
│                       │      │                  ╰ UID : f655d9e566e48529 
│                       │      ├ InstalledVersion: 0.191-2 
│                       │      ├ FixedVersion    : 0.191-2ubuntu0.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1372 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : elfutils: GNU elfutils eu-readelf readelf.c
│                       │      │                   print_string_section buffer overflow 
│                       │      ├ Description     : A vulnerability was found in GNU elfutils 0.192. It has been
│                       │      │                    declared as critical. Affected by this vulnerability is the
│                       │      │                    function dump_data_section/print_string_section of the file
│                       │      │                    readelf.c of the component eu-readelf. The manipulation of
│                       │      │                   the argument z/x leads to buffer overflow. An attack has to
│                       │      │                   be approached locally. The exploit has been disclosed to the
│                       │      │                    public and may be used. The identifier of the patch is
│                       │      │                   73db9d2021cab9e23fd734b0a76a612d52a6f1db. It is recommended
│                       │      │                   to apply a patch to fix this issue. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-119 
│                       │      │                  ╰ [1]: CWE-120 
│                       │      ├ VendorSeverity   ╭ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1372 
│                       │      │                  ├ [1] : https://nvd.nist.gov/vuln/detail/CVE-2025-1372 
│                       │      │                  ├ [2] : https://sourceware.org/bugzilla/attachment.cgi?id=15927 
│                       │      │                  ├ [3] : https://sourceware.org/bugzilla/show_bug.cgi?id=32656 
│                       │      │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=32656
│                       │      │                  │       #c3 
│                       │      │                  ├ [5] : https://sourceware.org/bugzilla/show_bug.cgi?id=32657 
│                       │      │                  ├ [6] : https://ubuntu.com/security/notices/USN-7369-1 
│                       │      │                  ├ [7] : https://vuldb.com/?ctiid.295981 
│                       │      │                  ├ [8] : https://vuldb.com/?id.295981 
│                       │      │                  ├ [9] : https://vuldb.com/?submit.496485 
│                       │      │                  ├ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1372 
│                       │      │                  ╰ [11]: https://www.gnu.org/ 
│                       │      ├ PublishedDate   : 2025-02-17T03:15:09.573Z 
│                       │      ╰ LastModifiedDate: 2025-02-17T03:15:09.573Z 
│                       ├ [39] ╭ VulnerabilityID : CVE-2025-1376 
│                       │      ├ PkgID           : libelf1t64@0.191-2 
│                       │      ├ PkgName         : libelf1t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=u
│                       │      │                  │       buntu-24.10 
│                       │      │                  ╰ UID : f655d9e566e48529 
│                       │      ├ InstalledVersion: 0.191-2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1376 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : elfutils: GNU elfutils eu-strip elf_strptr.c elf_strptr
│                       │      │                   denial of service 
│                       │      ├ Description     : A vulnerability classified as problematic was found in GNU
│                       │      │                   elfutils 0.192. This vulnerability affects the function
│                       │      │                   elf_strptr in the library /libelf/elf_strptr.c of the
│                       │      │                   component eu-strip. The manipulation leads to denial of
│                       │      │                   service. It is possible to launch the attack on the local
│                       │      │                   host. The complexity of an attack is rather high. The
│                       │      │                   exploitation appears to be difficult. The exploit has been
│                       │      │                   disclosed to the public and may be used. The name of the
│                       │      │                   patch is b16f441cca0a4841050e3215a9f120a6d8aea918. It is
│                       │      │                   recommended to apply a patch to fix this issue. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-404 
│                       │      ├ VendorSeverity   ╭ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1376 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2025-1376 
│                       │      │                  ├ [2]: https://sourceware.org/bugzilla/attachment.cgi?id=15940 
│                       │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=32672 
│                       │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=32672#c3 
│                       │      │                  ├ [5]: https://vuldb.com/?ctiid.295984 
│                       │      │                  ├ [6]: https://vuldb.com/?id.295984 
│                       │      │                  ├ [7]: https://vuldb.com/?submit.497538 
│                       │      │                  ├ [8]: https://www.cve.org/CVERecord?id=CVE-2025-1376 
│                       │      │                  ╰ [9]: https://www.gnu.org/ 
│                       │      ├ PublishedDate   : 2025-02-17T05:15:09.807Z 
│                       │      ╰ LastModifiedDate: 2025-02-17T05:15:09.807Z 
│                       ├ [40] ╭ VulnerabilityID : CVE-2025-1377 
│                       │      ├ PkgID           : libelf1t64@0.191-2 
│                       │      ├ PkgName         : libelf1t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=u
│                       │      │                  │       buntu-24.10 
│                       │      │                  ╰ UID : f655d9e566e48529 
│                       │      ├ InstalledVersion: 0.191-2 
│                       │      ├ FixedVersion    : 0.191-2ubuntu0.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1377 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : elfutils: GNU elfutils eu-strip strip.c gelf_getsymshndx
│                       │      │                   denial of service 
│                       │      ├ Description     : A vulnerability, which was classified as problematic, has
│                       │      │                   been found in GNU elfutils 0.192. This issue affects the
│                       │      │                   function gelf_getsymshndx of the file strip.c of the
│                       │      │                   component eu-strip. The manipulation leads to denial of
│                       │      │                   service. The attack needs to be approached locally. The
│                       │      │                   exploit has been disclosed to the public and may be used.
│                       │      │                   The identifier of the patch is
│                       │      │                   fbf1df9ca286de3323ae541973b08449f8d03aba. It is recommended
│                       │      │                   to apply a patch to fix this issue. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-404 
│                       │      ├ VendorSeverity   ╭ photon: 3 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1377 
│                       │      │                  ├ [1] : https://nvd.nist.gov/vuln/detail/CVE-2025-1377 
│                       │      │                  ├ [2] : https://sourceware.org/bugzilla/attachment.cgi?id=15941 
│                       │      │                  ├ [3] : https://sourceware.org/bugzilla/show_bug.cgi?id=32673 
│                       │      │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=32673
│                       │      │                  │       #c2 
│                       │      │                  ├ [5] : https://ubuntu.com/security/notices/USN-7369-1 
│                       │      │                  ├ [6] : https://vuldb.com/?ctiid.295985 
│                       │      │                  ├ [7] : https://vuldb.com/?id.295985 
│                       │      │                  ├ [8] : https://vuldb.com/?submit.497539 
│                       │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1377 
│                       │      │                  ╰ [10]: https://www.gnu.org/ 
│                       │      ├ PublishedDate   : 2025-02-17T05:15:10.09Z 
│                       │      ╰ LastModifiedDate: 2025-02-17T05:15:10.09Z 
│                       ├ [41] ╭ VulnerabilityID : CVE-2024-8176 
│                       │      ├ PkgID           : libexpat1@2.6.2-2ubuntu0.1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.6.2-2ubuntu0.1?arch=amd64&
│                       │      │                  │       distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 1e42f0c43aaaafce 
│                       │      ├ InstalledVersion: 2.6.2-2ubuntu0.1 
│                       │      ├ FixedVersion    : 2.6.2-2ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-8176 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : libexpat: expat: Improper Restriction of XML Entity
│                       │      │                   Expansion Depth in libexpat 
│                       │      ├ Description     : A stack overflow vulnerability exists in the libexpat
│                       │      │                   library due to the way it handles recursive entity expansion
│                       │      │                    in XML documents. When parsing an XML document with deeply
│                       │      │                   nested entity references, libexpat can be forced to recurse
│                       │      │                   indefinitely, exhausting the stack space and causing a
│                       │      │                   crash. This issue could lead to denial of service (DoS) or,
│                       │      │                   in some cases, exploitable memory corruption, depending on
│                       │      │                   the environment and library usage. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-674 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/15/1 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:3531 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:3734 
│                       │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-8176 
│                       │      │                  ├ [4] : https://blog.hartwork.org/posts/expat-2-7-0-released/ 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2310137 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2310137 
│                       │      │                  ├ [7] : https://bugzilla.suse.com/show_bug.cgi?id=1239618 
│                       │      │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2025-3531.html 
│                       │      │                  ├ [9] : https://github.com/libexpat/libexpat/blob/R_2_7_0/exp
│                       │      │                  │       at/Changes#L40-L52 
│                       │      │                  ├ [10]: https://github.com/libexpat/libexpat/issues/893 
│                       │      │                  ├ [11]: https://gitlab.alpinelinux.org/alpine/aports/-/commit
│                       │      │                  │       /d068c3ff36fc6f4789988a09c69b434db757db53 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-8176.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-3531.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-8176 
│                       │      │                  ├ [15]: https://security-tracker.debian.org/tracker/CVE-2024-
│                       │      │                  │       8176 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20250328-00
│                       │      │                  │       09/ 
│                       │      │                  ├ [17]: https://ubuntu.com/security/CVE-2024-8176 
│                       │      │                  ├ [18]: https://ubuntu.com/security/notices/USN-7424-1 
│                       │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2024-8176 
│                       │      ├ PublishedDate   : 2025-03-14T09:15:14.157Z 
│                       │      ╰ LastModifiedDate: 2025-04-09T08:15:14.71Z 
│                       ├ [42] ╭ VulnerabilityID : CVE-2024-2236 
│                       │      ├ PkgID           : libgcrypt20@1.11.0-6ubuntu1 
│                       │      ├ PkgName         : libgcrypt20 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.11.0-6ubuntu1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : ab291a9b8f84f4e3 
│                       │      ├ InstalledVersion: 1.11.0-6ubuntu1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : libgcrypt: vulnerable to Marvin Attack 
│                       │      ├ Description     : A timing-based side-channel flaw was found in libgcrypt's
│                       │      │                   RSA implementation. This issue may allow a remote attacker
│                       │      │                   to initiate a Bleichenbacher-style attack, which can lead to
│                       │      │                    the decryption of RSA ciphertexts. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9404 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:3530 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:3534 
│                       │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-2236 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2245218 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2245218 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2268268 
│                       │      │                  ├ [7] : https://dev.gnupg.org/T7136 
│                       │      │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2024-9404.html 
│                       │      │                  ├ [9] : https://github.com/tomato42/marvin-toolkit/tree/maste
│                       │      │                  │       r/example/libgcrypt 
│                       │      │                  ├ [10]: https://gitlab.com/redhat-crypto/libgcrypt/libgcrypt-
│                       │      │                  │       mirror/-/merge_requests/17 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-2236.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9404.html 
│                       │      │                  ├ [13]: https://lists.gnupg.org/pipermail/gcrypt-devel/2024-M
│                       │      │                  │       arch/005607.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-2236 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-2236 
│                       │      ├ PublishedDate   : 2024-03-06T22:15:57.977Z 
│                       │      ╰ LastModifiedDate: 2025-04-02T17:15:37.79Z 
│                       ├ [43] ╭ VulnerabilityID : CVE-2025-24528 
│                       │      ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libgssapi-krb5-2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?arc
│                       │      │                  │       h=amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 56954afa6df2892a 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: overflow when calculating ulog block size 
│                       │      ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │      │                   enabled, an authenticated attacker can cause kadmind to
│                       │      │                   write beyond the end of the mapped region for the iprop log
│                       │      │                   file. This issue can trigger a process crash and lead to a
│                       │      │                   denial of service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ╰ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2025:2722 
│                       │                         ├ [1]: https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                         ├ [2]: https://bugzilla.redhat.com/2342796 
│                       │                         ├ [3]: https://errata.almalinux.org/8/ALSA-2025-2722.html 
│                       │                         ├ [4]: https://github.com/krb5/krb5/commit/78ceba024b64d49612
│                       │                         │      375be4a12d1c066b0bfbd0 
│                       │                         ├ [5]: https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                         ├ [6]: https://linux.oracle.com/errata/ELSA-2025-2722.html 
│                       │                         ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                         ├ [8]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                         ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [44] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libgssapi-krb5-2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?arc
│                       │      │                  │       h=amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 56954afa6df2892a 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [45] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libgssapi-krb5-2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?arc
│                       │      │                  │       h=amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 56954afa6df2892a 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [46] ╭ VulnerabilityID : CVE-2025-24528 
│                       │      ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libk5crypto3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2b19f24f594bda 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: overflow when calculating ulog block size 
│                       │      ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │      │                   enabled, an authenticated attacker can cause kadmind to
│                       │      │                   write beyond the end of the mapped region for the iprop log
│                       │      │                   file. This issue can trigger a process crash and lead to a
│                       │      │                   denial of service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ╰ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2025:2722 
│                       │                         ├ [1]: https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                         ├ [2]: https://bugzilla.redhat.com/2342796 
│                       │                         ├ [3]: https://errata.almalinux.org/8/ALSA-2025-2722.html 
│                       │                         ├ [4]: https://github.com/krb5/krb5/commit/78ceba024b64d49612
│                       │                         │      375be4a12d1c066b0bfbd0 
│                       │                         ├ [5]: https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                         ├ [6]: https://linux.oracle.com/errata/ELSA-2025-2722.html 
│                       │                         ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                         ├ [8]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                         ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [47] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libk5crypto3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2b19f24f594bda 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [48] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libk5crypto3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2b19f24f594bda 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [49] ╭ VulnerabilityID : CVE-2025-24528 
│                       │      ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5-3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 791434e49e3cd4b9 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: overflow when calculating ulog block size 
│                       │      ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │      │                   enabled, an authenticated attacker can cause kadmind to
│                       │      │                   write beyond the end of the mapped region for the iprop log
│                       │      │                   file. This issue can trigger a process crash and lead to a
│                       │      │                   denial of service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ╰ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2025:2722 
│                       │                         ├ [1]: https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                         ├ [2]: https://bugzilla.redhat.com/2342796 
│                       │                         ├ [3]: https://errata.almalinux.org/8/ALSA-2025-2722.html 
│                       │                         ├ [4]: https://github.com/krb5/krb5/commit/78ceba024b64d49612
│                       │                         │      375be4a12d1c066b0bfbd0 
│                       │                         ├ [5]: https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                         ├ [6]: https://linux.oracle.com/errata/ELSA-2025-2722.html 
│                       │                         ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                         ├ [8]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                         ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [50] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5-3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 791434e49e3cd4b9 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [51] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5-3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 791434e49e3cd4b9 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [52] ╭ VulnerabilityID : CVE-2025-24528 
│                       │      ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5support0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : e67724f943ba50 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: overflow when calculating ulog block size 
│                       │      ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │      │                   enabled, an authenticated attacker can cause kadmind to
│                       │      │                   write beyond the end of the mapped region for the iprop log
│                       │      │                   file. This issue can trigger a process crash and lead to a
│                       │      │                   denial of service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ╰ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2025:2722 
│                       │                         ├ [1]: https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                         ├ [2]: https://bugzilla.redhat.com/2342796 
│                       │                         ├ [3]: https://errata.almalinux.org/8/ALSA-2025-2722.html 
│                       │                         ├ [4]: https://github.com/krb5/krb5/commit/78ceba024b64d49612
│                       │                         │      375be4a12d1c066b0bfbd0 
│                       │                         ├ [5]: https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                         ├ [6]: https://linux.oracle.com/errata/ELSA-2025-2722.html 
│                       │                         ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                         ├ [8]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                         ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [53] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5support0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : e67724f943ba50 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [54] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5support0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : e67724f943ba50 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:3268 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [8] : https://errata.almalinux.org/8/ALSA-2024-3268.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [10]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [13]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [55] ╭ VulnerabilityID : CVE-2025-31115 
│                       │      ├ PkgID           : liblzma5@5.6.2-2 
│                       │      ├ PkgName         : liblzma5 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/liblzma5@5.6.2-2?arch=amd64&distro=ubu
│                       │      │                  │       ntu-24.10 
│                       │      │                  ╰ UID : f7633f43b840a84f 
│                       │      ├ InstalledVersion: 5.6.2-2 
│                       │      ├ FixedVersion    : 5.6.2-2ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-31115 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : xz: XZ has a heap-use-after-free bug in threaded .xz decoder 
│                       │      ├ Description     : XZ Utils provide a general-purpose data-compression library
│                       │      │                   plus command-line tools. In XZ Utils 5.3.3alpha to 5.8.0,
│                       │      │                   the multithreaded .xz decoder in liblzma has a bug where
│                       │      │                   invalid input can at least result in a crash. The effects
│                       │      │                   include heap use after free and writing to an address based
│                       │      │                   on the null pointer plus an offset. Applications and
│                       │      │                   libraries that use the lzma_stream_decoder_mt function are
│                       │      │                   affected. The bug has been fixed in XZ Utils 5.8.1, and the
│                       │      │                   fix has been committed to the v5.4, v5.6, v5.8, and master
│                       │      │                   branches in the xz Git repository. No new release packages
│                       │      │                   will be made from the old stable branches, but a standalone
│                       │      │                   patch is available that applies to all affected releases. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-366 
│                       │      │                  ├ [1]: CWE-416 
│                       │      │                  ├ [2]: CWE-476 
│                       │      │                  ╰ [3]: CWE-826 
│                       │      ├ VendorSeverity   ╭ photon: 3 
│                       │      │                  ├ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/04/03/1 
│                       │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2025/04/03/2 
│                       │      │                  ├ [2]: http://www.openwall.com/lists/oss-security/2025/04/03/3 
│                       │      │                  ├ [3]: https://access.redhat.com/security/cve/CVE-2025-31115 
│                       │      │                  ├ [4]: https://github.com/tukaani-project/xz/commit/d5a2ffe41
│                       │      │                  │      bb77b918a8c96084885d4dbe4bf6480 
│                       │      │                  ├ [5]: https://github.com/tukaani-project/xz/security/advisor
│                       │      │                  │      ies/GHSA-6cc8-p5mm-29w2 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2025-31115 
│                       │      │                  ├ [7]: https://tukaani.org/xz/xz-cve-2025-31115.patch 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-7414-1 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-31115 
│                       │      ├ PublishedDate   : 2025-04-03T17:15:30.54Z 
│                       │      ╰ LastModifiedDate: 2025-04-07T14:18:34.453Z 
│                       ├ [56] ╭ VulnerabilityID : CVE-2025-1390 
│                       │      ├ PkgID           : libpam-cap@1:2.66-5ubuntu3 
│                       │      ├ PkgName         : libpam-cap 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-cap@2.66-5ubuntu3?arch=amd64&di
│                       │      │                  │       stro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : b050085ebdc5f348 
│                       │      ├ InstalledVersion: 1:2.66-5ubuntu3 
│                       │      ├ FixedVersion    : 1:2.66-5ubuntu3.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1390 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : libcap: pam_cap: Fix potential configuration parsing error 
│                       │      ├ Description     : The PAM module pam_cap.so of libcap configuration supports
│                       │      │                   group names starting with “@”, during actual parsing,
│                       │      │                   configurations not starting with “@” are incorrectly
│                       │      │                   recognized as group names. This may result in nonintended
│                       │      │                   users being granted an inherited capability set, potentially
│                       │      │                    leading to security risks. Attackers can exploit this
│                       │      │                   vulnerability to achieve local privilege escalation on
│                       │      │                   systems where /etc/security/capability.conf is used to
│                       │      │                   configure user inherited privileges by constructing specific
│                       │      │                    usernames. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-284 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 6.1 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1390 
│                       │      │                  ├ [1]: https://bugzilla.openanolis.cn/show_bug.cgi?id=18804 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-1390 
│                       │      │                  ├ [3]: https://ubuntu.com/security/notices/USN-7287-1 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2025-1390 
│                       │      ├ PublishedDate   : 2025-02-18T03:15:10.447Z 
│                       │      ╰ LastModifiedDate: 2025-02-18T03:15:10.447Z 
│                       ├ [57] ╭ VulnerabilityID : CVE-2024-10041 
│                       │      ├ PkgID           : libpam-modules@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-modules 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules@1.5.3-7ubuntu2?arch=amd
│                       │      │                  │       64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : b6583972609b9d73 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-10041 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : pam: libpam: Libpam vulnerable to read hashed password 
│                       │      ├ Description     : A vulnerability was found in PAM. The secret information is
│                       │      │                   stored in memory, where the attacker can trigger the victim
│                       │      │                   program to execute by sending characters to its standard
│                       │      │                   input (stdin). As this occurs, the attacker can train the
│                       │      │                   branch predictor to execute an ROP chain speculatively. This
│                       │      │                    flaw could result in leaked passwords, such as those found
│                       │      │                   in /etc/shadow while performing authentications. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-922 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:10379 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2024:11250 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2024:9941 
│                       │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-10041 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2319212 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [10]: https://errata.almalinux.org/8/ALSA-2024-10379.html 
│                       │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-10041.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-11250.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-10041 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-10041 
│                       │      ├ PublishedDate   : 2024-10-23T14:15:03.97Z 
│                       │      ╰ LastModifiedDate: 2024-12-18T10:15:05.85Z 
│                       ├ [58] ╭ VulnerabilityID : CVE-2024-10963 
│                       │      ├ PkgID           : libpam-modules@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-modules 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules@1.5.3-7ubuntu2?arch=amd
│                       │      │                  │       64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : b6583972609b9d73 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-10963 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : pam: Improper Hostname Interpretation in pam_access Leads to
│                       │      │                    Access Control Bypass 
│                       │      ├ Description     : A flaw was found in pam_access, where certain rules in its
│                       │      │                   configuration file are mistakenly treated as hostnames. This
│                       │      │                    vulnerability allows attackers to trick the system by
│                       │      │                   pretending to be a trusted hostname, gaining unauthorized
│                       │      │                   access. This issue poses a risk for systems that rely on
│                       │      │                   this feature to control who can access certain services or
│                       │      │                   terminals. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-287 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:10232 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2024:10244 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2024:10379 
│                       │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2024:10518 
│                       │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2024:10528 
│                       │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2024:10852 
│                       │      │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2024-10963 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2319212 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [13]: https://errata.almalinux.org/8/ALSA-2024-10379.html 
│                       │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2024-10963.html 
│                       │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2024-10379.html 
│                       │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2024-10963 
│                       │      │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-10963 
│                       │      ├ PublishedDate   : 2024-11-07T16:15:17.15Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T06:15:29.24Z 
│                       ├ [59] ╭ VulnerabilityID : CVE-2024-10041 
│                       │      ├ PkgID           : libpam-modules-bin@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-modules-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules-bin@1.5.3-7ubuntu2?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 52023e3d863fbfc8 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-10041 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : pam: libpam: Libpam vulnerable to read hashed password 
│                       │      ├ Description     : A vulnerability was found in PAM. The secret information is
│                       │      │                   stored in memory, where the attacker can trigger the victim
│                       │      │                   program to execute by sending characters to its standard
│                       │      │                   input (stdin). As this occurs, the attacker can train the
│                       │      │                   branch predictor to execute an ROP chain speculatively. This
│                       │      │                    flaw could result in leaked passwords, such as those found
│                       │      │                   in /etc/shadow while performing authentications. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-922 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:10379 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2024:11250 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2024:9941 
│                       │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-10041 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2319212 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [10]: https://errata.almalinux.org/8/ALSA-2024-10379.html 
│                       │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-10041.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-11250.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-10041 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-10041 
│                       │      ├ PublishedDate   : 2024-10-23T14:15:03.97Z 
│                       │      ╰ LastModifiedDate: 2024-12-18T10:15:05.85Z 
│                       ├ [60] ╭ VulnerabilityID : CVE-2024-10963 
│                       │      ├ PkgID           : libpam-modules-bin@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-modules-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules-bin@1.5.3-7ubuntu2?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 52023e3d863fbfc8 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-10963 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : pam: Improper Hostname Interpretation in pam_access Leads to
│                       │      │                    Access Control Bypass 
│                       │      ├ Description     : A flaw was found in pam_access, where certain rules in its
│                       │      │                   configuration file are mistakenly treated as hostnames. This
│                       │      │                    vulnerability allows attackers to trick the system by
│                       │      │                   pretending to be a trusted hostname, gaining unauthorized
│                       │      │                   access. This issue poses a risk for systems that rely on
│                       │      │                   this feature to control who can access certain services or
│                       │      │                   terminals. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-287 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:10232 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2024:10244 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2024:10379 
│                       │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2024:10518 
│                       │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2024:10528 
│                       │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2024:10852 
│                       │      │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2024-10963 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2319212 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [13]: https://errata.almalinux.org/8/ALSA-2024-10379.html 
│                       │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2024-10963.html 
│                       │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2024-10379.html 
│                       │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2024-10963 
│                       │      │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-10963 
│                       │      ├ PublishedDate   : 2024-11-07T16:15:17.15Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T06:15:29.24Z 
│                       ├ [61] ╭ VulnerabilityID : CVE-2024-10041 
│                       │      ├ PkgID           : libpam-runtime@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-runtime 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-runtime@1.5.3-7ubuntu2?arch=all
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 52dd5a3dac5cc9ec 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-10041 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : pam: libpam: Libpam vulnerable to read hashed password 
│                       │      ├ Description     : A vulnerability was found in PAM. The secret information is
│                       │      │                   stored in memory, where the attacker can trigger the victim
│                       │      │                   program to execute by sending characters to its standard
│                       │      │                   input (stdin). As this occurs, the attacker can train the
│                       │      │                   branch predictor to execute an ROP chain speculatively. This
│                       │      │                    flaw could result in leaked passwords, such as those found
│                       │      │                   in /etc/shadow while performing authentications. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-922 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:10379 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2024:11250 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2024:9941 
│                       │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-10041 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2319212 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [10]: https://errata.almalinux.org/8/ALSA-2024-10379.html 
│                       │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-10041.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-11250.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-10041 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-10041 
│                       │      ├ PublishedDate   : 2024-10-23T14:15:03.97Z 
│                       │      ╰ LastModifiedDate: 2024-12-18T10:15:05.85Z 
│                       ├ [62] ╭ VulnerabilityID : CVE-2024-10963 
│                       │      ├ PkgID           : libpam-runtime@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-runtime 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-runtime@1.5.3-7ubuntu2?arch=all
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 52dd5a3dac5cc9ec 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-10963 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : pam: Improper Hostname Interpretation in pam_access Leads to
│                       │      │                    Access Control Bypass 
│                       │      ├ Description     : A flaw was found in pam_access, where certain rules in its
│                       │      │                   configuration file are mistakenly treated as hostnames. This
│                       │      │                    vulnerability allows attackers to trick the system by
│                       │      │                   pretending to be a trusted hostname, gaining unauthorized
│                       │      │                   access. This issue poses a risk for systems that rely on
│                       │      │                   this feature to control who can access certain services or
│                       │      │                   terminals. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-287 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:10232 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2024:10244 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2024:10379 
│                       │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2024:10518 
│                       │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2024:10528 
│                       │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2024:10852 
│                       │      │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2024-10963 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2319212 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [13]: https://errata.almalinux.org/8/ALSA-2024-10379.html 
│                       │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2024-10963.html 
│                       │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2024-10379.html 
│                       │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2024-10963 
│                       │      │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-10963 
│                       │      ├ PublishedDate   : 2024-11-07T16:15:17.15Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T06:15:29.24Z 
│                       ├ [63] ╭ VulnerabilityID : CVE-2024-10041 
│                       │      ├ PkgID           : libpam0g@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam0g 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam0g@1.5.3-7ubuntu2?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : ef18bc8de4c4b9a5 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-10041 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : pam: libpam: Libpam vulnerable to read hashed password 
│                       │      ├ Description     : A vulnerability was found in PAM. The secret information is
│                       │      │                   stored in memory, where the attacker can trigger the victim
│                       │      │                   program to execute by sending characters to its standard
│                       │      │                   input (stdin). As this occurs, the attacker can train the
│                       │      │                   branch predictor to execute an ROP chain speculatively. This
│                       │      │                    flaw could result in leaked passwords, such as those found
│                       │      │                   in /etc/shadow while performing authentications. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-922 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:10379 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2024:11250 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2024:9941 
│                       │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-10041 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2319212 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [10]: https://errata.almalinux.org/8/ALSA-2024-10379.html 
│                       │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-10041.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-11250.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-10041 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-10041 
│                       │      ├ PublishedDate   : 2024-10-23T14:15:03.97Z 
│                       │      ╰ LastModifiedDate: 2024-12-18T10:15:05.85Z 
│                       ├ [64] ╭ VulnerabilityID : CVE-2024-10963 
│                       │      ├ PkgID           : libpam0g@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam0g 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam0g@1.5.3-7ubuntu2?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : ef18bc8de4c4b9a5 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-10963 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : pam: Improper Hostname Interpretation in pam_access Leads to
│                       │      │                    Access Control Bypass 
│                       │      ├ Description     : A flaw was found in pam_access, where certain rules in its
│                       │      │                   configuration file are mistakenly treated as hostnames. This
│                       │      │                    vulnerability allows attackers to trick the system by
│                       │      │                   pretending to be a trusted hostname, gaining unauthorized
│                       │      │                   access. This issue poses a risk for systems that rely on
│                       │      │                   this feature to control who can access certain services or
│                       │      │                   terminals. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-287 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:10232 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2024:10244 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2024:10379 
│                       │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2024:10518 
│                       │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2024:10528 
│                       │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2024:10852 
│                       │      │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2024-10963 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2319212 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [13]: https://errata.almalinux.org/8/ALSA-2024-10379.html 
│                       │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2024-10963.html 
│                       │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2024-10379.html 
│                       │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2024-10963 
│                       │      │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-10963 
│                       │      ├ PublishedDate   : 2024-11-07T16:15:17.15Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T06:15:29.24Z 
│                       ├ [65] ╭ VulnerabilityID : CVE-2024-41996 
│                       │      ├ PkgID           : libssl3t64@3.3.1-2ubuntu2.1 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.3.1-2ubuntu2.1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 681533a911174050 
│                       │      ├ InstalledVersion: 3.3.1-2ubuntu2.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-41996 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : openssl: remote attackers (from the client side) to trigger
│                       │      │                   unnecessarily expensive server-side DHE
│                       │      │                   modular-exponentiation calculations 
│                       │      ├ Description     : Validating the order of the public keys in the
│                       │      │                   Diffie-Hellman Key Agreement Protocol, when an approved safe
│                       │      │                    prime is used, allows remote attackers (from the client
│                       │      │                   side) to trigger unnecessarily expensive server-side DHE
│                       │      │                   modular-exponentiation calculations. The client may cause
│                       │      │                   asymmetric resource consumption. The basic attack scenario
│                       │      │                   is that the client must claim that it can only communicate
│                       │      │                   with DHE, and the server must be configured to allow DHE and
│                       │      │                    validate the order of the public key. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-295 
│                       │      ├ VendorSeverity   ╭ amazon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-41996 
│                       │      │                  ├ [1]: https://dheatattack.gitlab.io/details/ 
│                       │      │                  ├ [2]: https://dheatattack.gitlab.io/faq/ 
│                       │      │                  ├ [3]: https://gist.github.com/c0r0n3r/abccc14d4d96c0442f3a77
│                       │      │                  │      fa5ca255d1 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/issues/17374 
│                       │      │                  ├ [5]: https://github.com/openssl/openssl/pull/25088 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2024-41996 
│                       │      │                  ├ [7]: https://openssl-library.org/post/2022-10-21-tls-groups
│                       │      │                  │      -configuration/ 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2024-41996 
│                       │      ├ PublishedDate   : 2024-08-26T06:15:04.603Z 
│                       │      ╰ LastModifiedDate: 2024-08-26T16:35:11.247Z 
│                       ├ [66] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : libsubid4@1:4.15.3-3ubuntu2 
│                       │      ├ PkgName         : libsubid4 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid4@4.15.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 5e1d8b3be76e72d9 
│                       │      ├ InstalledVersion: 1:4.15.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                       │      │                   /etc/login.defs could lead to compromise 
│                       │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                       │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                       │      │                   165535 for the first user account) that can realistically
│                       │      │                   conflict with the uids of users defined on locally
│                       │      │                   administered networks, potentially leading to account
│                       │      │                   takeover, e.g., by leveraging newuidmap for access to an NFS
│                       │      │                    home directory (or same-host resources in the case of
│                       │      │                   remote logins by these local network users). NOTE: it may
│                       │      │                   also be argued that system administrators should not have
│                       │      │                   assigned uids, within local networks, that are within the
│                       │      │                   range that can occur in /etc/subuid. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.6 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │      │                  ├ [1]: https://github.com/shadow-maint/shadow/blob/e2512d5741
│                       │      │                  │      d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L24
│                       │      │                  │      1 
│                       │      │                  ├ [2]: https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [3]: https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2024-12-26T09:15:07.267Z 
│                       ├ [67] ╭ VulnerabilityID : CVE-2024-56171 
│                       │      ├ PkgID           : libxml2@2.12.7+dfsg-3ubuntu0.1 
│                       │      ├ PkgName         : libxml2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2@2.12.7%2Bdfsg-3ubuntu0.1?arch=
│                       │      │                  │       amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 735cf5629395b71 
│                       │      ├ InstalledVersion: 2.12.7+dfsg-3ubuntu0.1 
│                       │      ├ FixedVersion    : 2.12.7+dfsg-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56171 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : libxml2: Use-After-Free in libxml2 
│                       │      ├ Description     : libxml2 before 2.12.10 and 2.13.x before 2.13.6 has a
│                       │      │                   use-after-free in xmlSchemaIDCFillNodeTables and
│                       │      │                   xmlSchemaBubbleIDCNodeTables in xmlschemas.c. To exploit
│                       │      │                   this, a crafted XML document must be validated against an
│                       │      │                   XML schema with certain identity constraints, or a crafted
│                       │      │                   XML schema must be used. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:C/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 8.1 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:2686 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56171 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2346416 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2346421 
│                       │      │                  ├ [4] : https://errata.almalinux.org/8/ALSA-2025-2686.html 
│                       │      │                  ├ [5] : https://gitlab.gnome.org/GNOME/libxml2/-/issues/828 
│                       │      │                  ├ [6] : https://linux.oracle.com/cve/CVE-2024-56171.html 
│                       │      │                  ├ [7] : https://linux.oracle.com/errata/ELSA-2025-2686.html 
│                       │      │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2024-56171 
│                       │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250328-00
│                       │      │                  │       10/ 
│                       │      │                  ├ [10]: https://ubuntu.com/security/notices/USN-7302-1 
│                       │      │                  ├ [11]: https://www.cve.org/CVERecord?id=CVE-2024-56171 
│                       │      │                  ╰ [12]: https://www.openwall.com/lists/oss-security/2025/02/1
│                       │      │                          8/2 
│                       │      ├ PublishedDate   : 2025-02-18T22:15:12.797Z 
│                       │      ╰ LastModifiedDate: 2025-03-28T15:15:46.003Z 
│                       ├ [68] ╭ VulnerabilityID : CVE-2025-24928 
│                       │      ├ PkgID           : libxml2@2.12.7+dfsg-3ubuntu0.1 
│                       │      ├ PkgName         : libxml2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2@2.12.7%2Bdfsg-3ubuntu0.1?arch=
│                       │      │                  │       amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 735cf5629395b71 
│                       │      ├ InstalledVersion: 2.12.7+dfsg-3ubuntu0.1 
│                       │      ├ FixedVersion    : 2.12.7+dfsg-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24928 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : libxml2: Stack-based buffer overflow in xmlSnprintfElements
│                       │      │                   of libxml2 
│                       │      ├ Description     : libxml2 before 2.12.10 and 2.13.x before 2.13.6 has a
│                       │      │                   stack-based buffer overflow in xmlSnprintfElements in
│                       │      │                   valid.c. To exploit this, DTD validation must occur for an
│                       │      │                   untrusted document or untrusted DTD. NOTE: this is similar
│                       │      │                   to CVE-2017-9047. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-121 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:C/C:H/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 7.8 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:2686 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-24928 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2346416 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2346421 
│                       │      │                  ├ [4] : https://errata.almalinux.org/8/ALSA-2025-2686.html 
│                       │      │                  ├ [5] : https://gitlab.gnome.org/GNOME/libxml2/-/issues/847 
│                       │      │                  ├ [6] : https://issues.oss-fuzz.com/issues/392687022 
│                       │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2025-24928.html 
│                       │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2025-2686.html 
│                       │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2025-24928 
│                       │      │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250321-00
│                       │      │                  │       06/ 
│                       │      │                  ├ [11]: https://ubuntu.com/security/notices/USN-7302-1 
│                       │      │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2025-24928 
│                       │      │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2025/02/1
│                       │      │                          8/2 
│                       │      ├ PublishedDate   : 2025-02-18T23:15:10.25Z 
│                       │      ╰ LastModifiedDate: 2025-03-21T18:15:34.86Z 
│                       ├ [69] ╭ VulnerabilityID : CVE-2025-27113 
│                       │      ├ PkgID           : libxml2@2.12.7+dfsg-3ubuntu0.1 
│                       │      ├ PkgName         : libxml2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2@2.12.7%2Bdfsg-3ubuntu0.1?arch=
│                       │      │                  │       amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 735cf5629395b71 
│                       │      ├ InstalledVersion: 2.12.7+dfsg-3ubuntu0.1 
│                       │      ├ FixedVersion    : 2.12.7+dfsg-3ubuntu0.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-27113 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : libxml2: NULL Pointer Dereference in libxml2 xmlPatMatch 
│                       │      ├ Description     : libxml2 before 2.12.10 and 2.13.x before 2.13.6 has a NULL
│                       │      │                   pointer dereference in xmlPatMatch in pattern.c. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-476 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 1 
│                       │      │                  ├ cbl-mariner: 1 
│                       │      │                  ├ nvd        : 3 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-27113 
│                       │      │                  ├ [1]: https://gitlab.gnome.org/GNOME/libxml2/-/issues/861 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-27113 
│                       │      │                  ├ [3]: https://security.netapp.com/advisory/ntap-20250306-0004/ 
│                       │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-7302-1 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2025-27113 
│                       │      │                  ╰ [6]: https://www.openwall.com/lists/oss-security/2025/02/18/2 
│                       │      ├ PublishedDate   : 2025-02-18T23:15:10.96Z 
│                       │      ╰ LastModifiedDate: 2025-03-07T01:15:12.823Z 
│                       ├ [70] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : login@1:4.15.3-3ubuntu2 
│                       │      ├ PkgName         : login 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.15.3-3ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 40d8bcd89e02a7ed 
│                       │      ├ InstalledVersion: 1:4.15.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                       │      │                   /etc/login.defs could lead to compromise 
│                       │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                       │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                       │      │                   165535 for the first user account) that can realistically
│                       │      │                   conflict with the uids of users defined on locally
│                       │      │                   administered networks, potentially leading to account
│                       │      │                   takeover, e.g., by leveraging newuidmap for access to an NFS
│                       │      │                    home directory (or same-host resources in the case of
│                       │      │                   remote logins by these local network users). NOTE: it may
│                       │      │                   also be argued that system administrators should not have
│                       │      │                   assigned uids, within local networks, that are within the
│                       │      │                   range that can occur in /etc/subuid. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.6 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │      │                  ├ [1]: https://github.com/shadow-maint/shadow/blob/e2512d5741
│                       │      │                  │      d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L24
│                       │      │                  │      1 
│                       │      │                  ├ [2]: https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [3]: https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2024-12-26T09:15:07.267Z 
│                       ├ [71] ╭ VulnerabilityID : CVE-2025-32728 
│                       │      ├ PkgID           : openssh-client@1:9.7p1-7ubuntu4.2 
│                       │      ├ PkgName         : openssh-client 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-client@9.7p1-7ubuntu4.2?arch=a
│                       │      │                  │       md64&distro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 6da8270b8675190a 
│                       │      ├ InstalledVersion: 1:9.7p1-7ubuntu4.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32728 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : openssh: OpenSSH SSHD Agent Forwarding and X11 Forwarding 
│                       │      ├ Description     : In sshd in OpenSSH before 10.0, the DisableForwarding
│                       │      │                   directive does not adhere to the documentation stating that
│                       │      │                   it disables X11 and agent forwarding. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-440 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-32728 
│                       │      │                  ├ [1]: https://ftp.openbsd.org/pub/OpenBSD/patches/7.6/common
│                       │      │                  │      /013_ssh.patch.sig 
│                       │      │                  ├ [2]: https://github.com/openssh/openssh-portable/commit/fc8
│                       │      │                  │      6875e6acb36401dfc1dfb6b628a9d1460f367 
│                       │      │                  ├ [3]: https://lists.mindrot.org/pipermail/openssh-unix-dev/2
│                       │      │                  │      025-April/041879.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-32728 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2025-32728 
│                       │      │                  ├ [6]: https://www.openssh.com/txt/release-10.0 
│                       │      │                  ╰ [7]: https://www.openssh.com/txt/release-7.4 
│                       │      ├ PublishedDate   : 2025-04-10T02:15:30.873Z 
│                       │      ╰ LastModifiedDate: 2025-04-11T15:40:10.277Z 
│                       ├ [72] ╭ VulnerabilityID : CVE-2025-32728 
│                       │      ├ PkgID           : openssh-server@1:9.7p1-7ubuntu4.2 
│                       │      ├ PkgName         : openssh-server 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-server@9.7p1-7ubuntu4.2?arch=a
│                       │      │                  │       md64&distro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 95d55c3cbf776b9a 
│                       │      ├ InstalledVersion: 1:9.7p1-7ubuntu4.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32728 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : openssh: OpenSSH SSHD Agent Forwarding and X11 Forwarding 
│                       │      ├ Description     : In sshd in OpenSSH before 10.0, the DisableForwarding
│                       │      │                   directive does not adhere to the documentation stating that
│                       │      │                   it disables X11 and agent forwarding. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-440 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-32728 
│                       │      │                  ├ [1]: https://ftp.openbsd.org/pub/OpenBSD/patches/7.6/common
│                       │      │                  │      /013_ssh.patch.sig 
│                       │      │                  ├ [2]: https://github.com/openssh/openssh-portable/commit/fc8
│                       │      │                  │      6875e6acb36401dfc1dfb6b628a9d1460f367 
│                       │      │                  ├ [3]: https://lists.mindrot.org/pipermail/openssh-unix-dev/2
│                       │      │                  │      025-April/041879.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-32728 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2025-32728 
│                       │      │                  ├ [6]: https://www.openssh.com/txt/release-10.0 
│                       │      │                  ╰ [7]: https://www.openssh.com/txt/release-7.4 
│                       │      ├ PublishedDate   : 2025-04-10T02:15:30.873Z 
│                       │      ╰ LastModifiedDate: 2025-04-11T15:40:10.277Z 
│                       ├ [73] ╭ VulnerabilityID : CVE-2025-32728 
│                       │      ├ PkgID           : openssh-sftp-server@1:9.7p1-7ubuntu4.2 
│                       │      ├ PkgName         : openssh-sftp-server 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-sftp-server@9.7p1-7ubuntu4.2?a
│                       │      │                  │       rch=amd64&distro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 7f637c22065d0245 
│                       │      ├ InstalledVersion: 1:9.7p1-7ubuntu4.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32728 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : openssh: OpenSSH SSHD Agent Forwarding and X11 Forwarding 
│                       │      ├ Description     : In sshd in OpenSSH before 10.0, the DisableForwarding
│                       │      │                   directive does not adhere to the documentation stating that
│                       │      │                   it disables X11 and agent forwarding. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-440 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-32728 
│                       │      │                  ├ [1]: https://ftp.openbsd.org/pub/OpenBSD/patches/7.6/common
│                       │      │                  │      /013_ssh.patch.sig 
│                       │      │                  ├ [2]: https://github.com/openssh/openssh-portable/commit/fc8
│                       │      │                  │      6875e6acb36401dfc1dfb6b628a9d1460f367 
│                       │      │                  ├ [3]: https://lists.mindrot.org/pipermail/openssh-unix-dev/2
│                       │      │                  │      025-April/041879.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-32728 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2025-32728 
│                       │      │                  ├ [6]: https://www.openssh.com/txt/release-10.0 
│                       │      │                  ╰ [7]: https://www.openssh.com/txt/release-7.4 
│                       │      ├ PublishedDate   : 2025-04-10T02:15:30.873Z 
│                       │      ╰ LastModifiedDate: 2025-04-11T15:40:10.277Z 
│                       ├ [74] ╭ VulnerabilityID : CVE-2024-41996 
│                       │      ├ PkgID           : openssl@3.3.1-2ubuntu2.1 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.3.1-2ubuntu2.1?arch=amd64&di
│                       │      │                  │       stro=ubuntu-24.10 
│                       │      │                  ╰ UID : 33f1b9400c663827 
│                       │      ├ InstalledVersion: 3.3.1-2ubuntu2.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-41996 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : openssl: remote attackers (from the client side) to trigger
│                       │      │                   unnecessarily expensive server-side DHE
│                       │      │                   modular-exponentiation calculations 
│                       │      ├ Description     : Validating the order of the public keys in the
│                       │      │                   Diffie-Hellman Key Agreement Protocol, when an approved safe
│                       │      │                    prime is used, allows remote attackers (from the client
│                       │      │                   side) to trigger unnecessarily expensive server-side DHE
│                       │      │                   modular-exponentiation calculations. The client may cause
│                       │      │                   asymmetric resource consumption. The basic attack scenario
│                       │      │                   is that the client must claim that it can only communicate
│                       │      │                   with DHE, and the server must be configured to allow DHE and
│                       │      │                    validate the order of the public key. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-295 
│                       │      ├ VendorSeverity   ╭ amazon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-41996 
│                       │      │                  ├ [1]: https://dheatattack.gitlab.io/details/ 
│                       │      │                  ├ [2]: https://dheatattack.gitlab.io/faq/ 
│                       │      │                  ├ [3]: https://gist.github.com/c0r0n3r/abccc14d4d96c0442f3a77
│                       │      │                  │      fa5ca255d1 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/issues/17374 
│                       │      │                  ├ [5]: https://github.com/openssl/openssl/pull/25088 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2024-41996 
│                       │      │                  ├ [7]: https://openssl-library.org/post/2022-10-21-tls-groups
│                       │      │                  │      -configuration/ 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2024-41996 
│                       │      ├ PublishedDate   : 2024-08-26T06:15:04.603Z 
│                       │      ╰ LastModifiedDate: 2024-08-26T16:35:11.247Z 
│                       ├ [75] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : passwd@1:4.15.3-3ubuntu2 
│                       │      ├ PkgName         : passwd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.15.3-3ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 2260678b2ac7f499 
│                       │      ├ InstalledVersion: 1:4.15.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                       │      │                   /etc/login.defs could lead to compromise 
│                       │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                       │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                       │      │                   165535 for the first user account) that can realistically
│                       │      │                   conflict with the uids of users defined on locally
│                       │      │                   administered networks, potentially leading to account
│                       │      │                   takeover, e.g., by leveraging newuidmap for access to an NFS
│                       │      │                    home directory (or same-host resources in the case of
│                       │      │                   remote logins by these local network users). NOTE: it may
│                       │      │                   also be argued that system administrators should not have
│                       │      │                   assigned uids, within local networks, that are within the
│                       │      │                   range that can occur in /etc/subuid. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.6 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │      │                  ├ [1]: https://github.com/shadow-maint/shadow/blob/e2512d5741
│                       │      │                  │      d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L24
│                       │      │                  │      1 
│                       │      │                  ├ [2]: https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [3]: https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2024-12-26T09:15:07.267Z 
│                       ├ [76] ╭ VulnerabilityID : CVE-2018-6952 
│                       │      ├ PkgID           : patch@2.7.6-7build3 
│                       │      ├ PkgName         : patch 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.7.6-7build3?arch=amd64&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : c4398a40b59322fd 
│                       │      ├ InstalledVersion: 2.7.6-7build3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-6952 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : patch: Double free of memory in pch.c:another_hunk() causes
│                       │      │                   a crash 
│                       │      ├ Description     : A double free exists in the another_hunk function in pch.c
│                       │      │                   in GNU patch through 2.7.6. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-415 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ nvd        : 3 
│                       │      │                  ├ oracle-oval: 1 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:L/Au:N/C:N/I:N/A:P 
│                       │      │                  │        ├ V3Vector: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ├ V2Score : 5 
│                       │      │                  │        ╰ V3Score : 7.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0]: http://www.securityfocus.com/bid/103047 
│                       │      │                  ├ [1]: https://access.redhat.com/errata/RHSA-2019:2033 
│                       │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2018-6952 
│                       │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2018-6952.html 
│                       │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2019-2033.html 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2018-6952 
│                       │      │                  ├ [6]: https://savannah.gnu.org/bugs/index.php?53133 
│                       │      │                  ├ [7]: https://security.gentoo.org/glsa/201904-17 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2018-6952 
│                       │      ├ PublishedDate   : 2018-02-13T19:29:00.573Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T04:11:28.42Z 
│                       ├ [77] ╭ VulnerabilityID : CVE-2021-45261 
│                       │      ├ PkgID           : patch@2.7.6-7build3 
│                       │      ├ PkgName         : patch 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.7.6-7build3?arch=amd64&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : c4398a40b59322fd 
│                       │      ├ InstalledVersion: 2.7.6-7build3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-45261 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : patch: Invalid Pointer via another_hunk function 
│                       │      ├ Description     : An Invalid Pointer vulnerability exists in GNU patch 2.7 via
│                       │      │                    the another_hunk function, which causes a Denial of Service
│                       │      │                   . 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-763 
│                       │      ├ VendorSeverity   ╭ nvd   : 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:N/I:N/A:P 
│                       │      │                  │        ├ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ├ V2Score : 4.3 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2021-45261 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2021-45261 
│                       │      │                  ├ [2]: https://savannah.gnu.org/bugs/?61685 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2021-45261 
│                       │      ├ PublishedDate   : 2021-12-22T18:15:08.1Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T06:32:02.633Z 
│                       ├ [78] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : uidmap@1:4.15.3-3ubuntu2 
│                       │      ├ PkgName         : uidmap 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.15.3-3ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : d25d967bfd8a56ea 
│                       │      ├ InstalledVersion: 1:4.15.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                       │      │                   /etc/login.defs could lead to compromise 
│                       │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                       │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                       │      │                   165535 for the first user account) that can realistically
│                       │      │                   conflict with the uids of users defined on locally
│                       │      │                   administered networks, potentially leading to account
│                       │      │                   takeover, e.g., by leveraging newuidmap for access to an NFS
│                       │      │                    home directory (or same-host resources in the case of
│                       │      │                   remote logins by these local network users). NOTE: it may
│                       │      │                   also be argued that system administrators should not have
│                       │      │                   assigned uids, within local networks, that are within the
│                       │      │                   range that can occur in /etc/subuid. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.6 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │      │                  ├ [1]: https://github.com/shadow-maint/shadow/blob/e2512d5741
│                       │      │                  │      d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L24
│                       │      │                  │      1 
│                       │      │                  ├ [2]: https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [3]: https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2024-12-26T09:15:07.267Z 
│                       ├ [79] ╭ VulnerabilityID : CVE-2025-1215 
│                       │      ├ PkgID           : vim@2:9.1.0496-1ubuntu6.4 
│                       │      ├ PkgName         : vim 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.0496-1ubuntu6.4?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : 1d06811aa36f1eab 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1215 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: vim main.c memory corruption 
│                       │      ├ Description     : A vulnerability classified as problematic was found in vim
│                       │      │                   up to 9.1.1096. This vulnerability affects unknown code of
│                       │      │                   the file src/main.c. The manipulation of the argument --log
│                       │      │                   leads to memory corruption. It is possible to launch the
│                       │      │                   attack on the local host. Upgrading to version 9.1.1097 is
│                       │      │                   able to address this issue. The patch is identified as
│                       │      │                   c5654b84480822817bb7b69ebc97c174c91185e9. It is recommended
│                       │      │                   to upgrade the affected component. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-119 
│                       │      ├ VendorSeverity   ╭ azure      : 1 
│                       │      │                  ├ cbl-mariner: 1 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.8 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1215 
│                       │      │                  ├ [1] : https://github.com/vim/vim/commit/c5654b84480822817bb
│                       │      │                  │       7b69ebc97c174c91185e9 
│                       │      │                  ├ [2] : https://github.com/vim/vim/issues/16606 
│                       │      │                  ├ [3] : https://github.com/vim/vim/releases/tag/v9.1.1097 
│                       │      │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-1215 
│                       │      │                  ├ [5] : https://security.netapp.com/advisory/ntap-20250321-00
│                       │      │                  │       05/ 
│                       │      │                  ├ [6] : https://ubuntu.com/security/notices/USN-7419-1 
│                       │      │                  ├ [7] : https://vuldb.com/?ctiid.295174 
│                       │      │                  ├ [8] : https://vuldb.com/?id.295174 
│                       │      │                  ├ [9] : https://vuldb.com/?submit.497546 
│                       │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1215 
│                       │      ├ PublishedDate   : 2025-02-12T19:15:10.23Z 
│                       │      ╰ LastModifiedDate: 2025-03-21T18:15:34.29Z 
│                       ├ [80] ╭ VulnerabilityID : CVE-2025-26603 
│                       │      ├ PkgID           : vim@2:9.1.0496-1ubuntu6.4 
│                       │      ├ PkgName         : vim 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.0496-1ubuntu6.4?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : 1d06811aa36f1eab 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-26603 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: heap-use-after-free in function str_to_reg in vim/vim 
│                       │      ├ Description     : Vim is a greatly improved version of the good old UNIX
│                       │      │                   editor Vi. Vim allows to redirect screen messages using the
│                       │      │                   `:redir` ex command to register, variables and files. It
│                       │      │                   also allows to show the contents of registers using the
│                       │      │                   `:registers` or `:display` ex command. When redirecting the
│                       │      │                   output of `:display` to a register, Vim will free the
│                       │      │                   register content before storing the new content in the
│                       │      │                   register. Now when redirecting the `:display` command to a
│                       │      │                   register that is being displayed, Vim will free the content
│                       │      │                   while shortly afterwards trying to access it, which leads to
│                       │      │                    a use-after-free. Vim pre 9.1.1115 checks in the
│                       │      │                   ex_display() function, that it does not try to redirect to a
│                       │      │                    register while displaying this register at the same time.
│                       │      │                   However this check is not complete, and so Vim does not
│                       │      │                   check the `+` and `*` registers (which typically donate the
│                       │      │                   X11/clipboard registers, and when a clipboard connection is
│                       │      │                   not possible will fall back to use register 0 instead. In
│                       │      │                   Patch 9.1.1115 Vim will therefore skip outputting to
│                       │      │                   register zero when trying to redirect to the clipboard
│                       │      │                   registers `*` or `+`. Users are advised to upgrade. There
│                       │      │                   are no known workarounds for this vulnerability. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-26603 
│                       │      │                  ├ [1]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52a
│                       │      │                  │      131bf6b8 
│                       │      │                  ├ [2]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52a
│                       │      │                  │      131bf6b8 (v9.1.1115) 
│                       │      │                  ├ [3]: https://github.com/vim/vim/security/advisories/GHSA-63
│                       │      │                  │      p5-mwg2-787v 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-26603 
│                       │      │                  ├ [5]: https://security.netapp.com/advisory/ntap-20250306-0003/ 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-7419-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-26603 
│                       │      ├ PublishedDate   : 2025-02-18T19:15:29.387Z 
│                       │      ╰ LastModifiedDate: 2025-03-07T01:15:12.7Z 
│                       ├ [81] ╭ VulnerabilityID : CVE-2025-1215 
│                       │      ├ PkgID           : vim-common@2:9.1.0496-1ubuntu6.4 
│                       │      ├ PkgName         : vim-common 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.0496-1ubuntu6.4?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : 9538ad650d7d4fc 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1215 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: vim main.c memory corruption 
│                       │      ├ Description     : A vulnerability classified as problematic was found in vim
│                       │      │                   up to 9.1.1096. This vulnerability affects unknown code of
│                       │      │                   the file src/main.c. The manipulation of the argument --log
│                       │      │                   leads to memory corruption. It is possible to launch the
│                       │      │                   attack on the local host. Upgrading to version 9.1.1097 is
│                       │      │                   able to address this issue. The patch is identified as
│                       │      │                   c5654b84480822817bb7b69ebc97c174c91185e9. It is recommended
│                       │      │                   to upgrade the affected component. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-119 
│                       │      ├ VendorSeverity   ╭ azure      : 1 
│                       │      │                  ├ cbl-mariner: 1 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.8 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1215 
│                       │      │                  ├ [1] : https://github.com/vim/vim/commit/c5654b84480822817bb
│                       │      │                  │       7b69ebc97c174c91185e9 
│                       │      │                  ├ [2] : https://github.com/vim/vim/issues/16606 
│                       │      │                  ├ [3] : https://github.com/vim/vim/releases/tag/v9.1.1097 
│                       │      │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-1215 
│                       │      │                  ├ [5] : https://security.netapp.com/advisory/ntap-20250321-00
│                       │      │                  │       05/ 
│                       │      │                  ├ [6] : https://ubuntu.com/security/notices/USN-7419-1 
│                       │      │                  ├ [7] : https://vuldb.com/?ctiid.295174 
│                       │      │                  ├ [8] : https://vuldb.com/?id.295174 
│                       │      │                  ├ [9] : https://vuldb.com/?submit.497546 
│                       │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1215 
│                       │      ├ PublishedDate   : 2025-02-12T19:15:10.23Z 
│                       │      ╰ LastModifiedDate: 2025-03-21T18:15:34.29Z 
│                       ├ [82] ╭ VulnerabilityID : CVE-2025-26603 
│                       │      ├ PkgID           : vim-common@2:9.1.0496-1ubuntu6.4 
│                       │      ├ PkgName         : vim-common 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.0496-1ubuntu6.4?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : 9538ad650d7d4fc 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-26603 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: heap-use-after-free in function str_to_reg in vim/vim 
│                       │      ├ Description     : Vim is a greatly improved version of the good old UNIX
│                       │      │                   editor Vi. Vim allows to redirect screen messages using the
│                       │      │                   `:redir` ex command to register, variables and files. It
│                       │      │                   also allows to show the contents of registers using the
│                       │      │                   `:registers` or `:display` ex command. When redirecting the
│                       │      │                   output of `:display` to a register, Vim will free the
│                       │      │                   register content before storing the new content in the
│                       │      │                   register. Now when redirecting the `:display` command to a
│                       │      │                   register that is being displayed, Vim will free the content
│                       │      │                   while shortly afterwards trying to access it, which leads to
│                       │      │                    a use-after-free. Vim pre 9.1.1115 checks in the
│                       │      │                   ex_display() function, that it does not try to redirect to a
│                       │      │                    register while displaying this register at the same time.
│                       │      │                   However this check is not complete, and so Vim does not
│                       │      │                   check the `+` and `*` registers (which typically donate the
│                       │      │                   X11/clipboard registers, and when a clipboard connection is
│                       │      │                   not possible will fall back to use register 0 instead. In
│                       │      │                   Patch 9.1.1115 Vim will therefore skip outputting to
│                       │      │                   register zero when trying to redirect to the clipboard
│                       │      │                   registers `*` or `+`. Users are advised to upgrade. There
│                       │      │                   are no known workarounds for this vulnerability. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-26603 
│                       │      │                  ├ [1]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52a
│                       │      │                  │      131bf6b8 
│                       │      │                  ├ [2]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52a
│                       │      │                  │      131bf6b8 (v9.1.1115) 
│                       │      │                  ├ [3]: https://github.com/vim/vim/security/advisories/GHSA-63
│                       │      │                  │      p5-mwg2-787v 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-26603 
│                       │      │                  ├ [5]: https://security.netapp.com/advisory/ntap-20250306-0003/ 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-7419-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-26603 
│                       │      ├ PublishedDate   : 2025-02-18T19:15:29.387Z 
│                       │      ╰ LastModifiedDate: 2025-03-07T01:15:12.7Z 
│                       ├ [83] ╭ VulnerabilityID : CVE-2025-1215 
│                       │      ├ PkgID           : vim-runtime@2:9.1.0496-1ubuntu6.4 
│                       │      ├ PkgName         : vim-runtime 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.0496-1ubuntu6.4?arch=a
│                       │      │                  │       ll&distro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : d01d837a64e4e5d4 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1215 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: vim main.c memory corruption 
│                       │      ├ Description     : A vulnerability classified as problematic was found in vim
│                       │      │                   up to 9.1.1096. This vulnerability affects unknown code of
│                       │      │                   the file src/main.c. The manipulation of the argument --log
│                       │      │                   leads to memory corruption. It is possible to launch the
│                       │      │                   attack on the local host. Upgrading to version 9.1.1097 is
│                       │      │                   able to address this issue. The patch is identified as
│                       │      │                   c5654b84480822817bb7b69ebc97c174c91185e9. It is recommended
│                       │      │                   to upgrade the affected component. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-119 
│                       │      ├ VendorSeverity   ╭ azure      : 1 
│                       │      │                  ├ cbl-mariner: 1 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.8 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1215 
│                       │      │                  ├ [1] : https://github.com/vim/vim/commit/c5654b84480822817bb
│                       │      │                  │       7b69ebc97c174c91185e9 
│                       │      │                  ├ [2] : https://github.com/vim/vim/issues/16606 
│                       │      │                  ├ [3] : https://github.com/vim/vim/releases/tag/v9.1.1097 
│                       │      │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-1215 
│                       │      │                  ├ [5] : https://security.netapp.com/advisory/ntap-20250321-00
│                       │      │                  │       05/ 
│                       │      │                  ├ [6] : https://ubuntu.com/security/notices/USN-7419-1 
│                       │      │                  ├ [7] : https://vuldb.com/?ctiid.295174 
│                       │      │                  ├ [8] : https://vuldb.com/?id.295174 
│                       │      │                  ├ [9] : https://vuldb.com/?submit.497546 
│                       │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1215 
│                       │      ├ PublishedDate   : 2025-02-12T19:15:10.23Z 
│                       │      ╰ LastModifiedDate: 2025-03-21T18:15:34.29Z 
│                       ├ [84] ╭ VulnerabilityID : CVE-2025-26603 
│                       │      ├ PkgID           : vim-runtime@2:9.1.0496-1ubuntu6.4 
│                       │      ├ PkgName         : vim-runtime 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.0496-1ubuntu6.4?arch=a
│                       │      │                  │       ll&distro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : d01d837a64e4e5d4 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-26603 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: heap-use-after-free in function str_to_reg in vim/vim 
│                       │      ├ Description     : Vim is a greatly improved version of the good old UNIX
│                       │      │                   editor Vi. Vim allows to redirect screen messages using the
│                       │      │                   `:redir` ex command to register, variables and files. It
│                       │      │                   also allows to show the contents of registers using the
│                       │      │                   `:registers` or `:display` ex command. When redirecting the
│                       │      │                   output of `:display` to a register, Vim will free the
│                       │      │                   register content before storing the new content in the
│                       │      │                   register. Now when redirecting the `:display` command to a
│                       │      │                   register that is being displayed, Vim will free the content
│                       │      │                   while shortly afterwards trying to access it, which leads to
│                       │      │                    a use-after-free. Vim pre 9.1.1115 checks in the
│                       │      │                   ex_display() function, that it does not try to redirect to a
│                       │      │                    register while displaying this register at the same time.
│                       │      │                   However this check is not complete, and so Vim does not
│                       │      │                   check the `+` and `*` registers (which typically donate the
│                       │      │                   X11/clipboard registers, and when a clipboard connection is
│                       │      │                   not possible will fall back to use register 0 instead. In
│                       │      │                   Patch 9.1.1115 Vim will therefore skip outputting to
│                       │      │                   register zero when trying to redirect to the clipboard
│                       │      │                   registers `*` or `+`. Users are advised to upgrade. There
│                       │      │                   are no known workarounds for this vulnerability. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-26603 
│                       │      │                  ├ [1]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52a
│                       │      │                  │      131bf6b8 
│                       │      │                  ├ [2]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52a
│                       │      │                  │      131bf6b8 (v9.1.1115) 
│                       │      │                  ├ [3]: https://github.com/vim/vim/security/advisories/GHSA-63
│                       │      │                  │      p5-mwg2-787v 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-26603 
│                       │      │                  ├ [5]: https://security.netapp.com/advisory/ntap-20250306-0003/ 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-7419-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-26603 
│                       │      ├ PublishedDate   : 2025-02-18T19:15:29.387Z 
│                       │      ╰ LastModifiedDate: 2025-03-07T01:15:12.7Z 
│                       ├ [85] ╭ VulnerabilityID : CVE-2021-31879 
│                       │      ├ PkgID           : wget@1.24.5-1ubuntu2 
│                       │      ├ PkgName         : wget 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.24.5-1ubuntu2?arch=amd64&distro
│                       │      │                  │       =ubuntu-24.10 
│                       │      │                  ╰ UID : 5c403cf6b6cce8c7 
│                       │      ├ InstalledVersion: 1.24.5-1ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-31879 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : wget: authorization header disclosure on redirect 
│                       │      ├ Description     : GNU Wget through 1.21.1 does not omit the Authorization
│                       │      │                   header upon a redirect to a different origin, a related
│                       │      │                   issue to CVE-2018-1000007. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-601 
│                       │      ├ VendorSeverity   ╭ amazon     : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ nvd        : 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:P/I:P/A:N 
│                       │      │                  │        ├ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ├ V2Score : 5.8 
│                       │      │                  │        ╰ V3Score : 6.1 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2021-31879 
│                       │      │                  ├ [1]: https://mail.gnu.org/archive/html/bug-wget/2021-02/msg
│                       │      │                  │      00002.html 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2021-31879 
│                       │      │                  ├ [3]: https://savannah.gnu.org/bugs/?56909 
│                       │      │                  ├ [4]: https://security.netapp.com/advisory/ntap-20210618-0002/ 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2021-31879 
│                       │      ├ PublishedDate   : 2021-04-29T05:15:08.707Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T06:06:25.02Z 
│                       ├ [86] ╭ VulnerabilityID : CVE-2025-1215 
│                       │      ├ PkgID           : xxd@2:9.1.0496-1ubuntu6.4 
│                       │      ├ PkgName         : xxd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.0496-1ubuntu6.4?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : 82694743fd1b3a38 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1215 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: vim main.c memory corruption 
│                       │      ├ Description     : A vulnerability classified as problematic was found in vim
│                       │      │                   up to 9.1.1096. This vulnerability affects unknown code of
│                       │      │                   the file src/main.c. The manipulation of the argument --log
│                       │      │                   leads to memory corruption. It is possible to launch the
│                       │      │                   attack on the local host. Upgrading to version 9.1.1097 is
│                       │      │                   able to address this issue. The patch is identified as
│                       │      │                   c5654b84480822817bb7b69ebc97c174c91185e9. It is recommended
│                       │      │                   to upgrade the affected component. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-119 
│                       │      ├ VendorSeverity   ╭ azure      : 1 
│                       │      │                  ├ cbl-mariner: 1 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.8 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1215 
│                       │      │                  ├ [1] : https://github.com/vim/vim/commit/c5654b84480822817bb
│                       │      │                  │       7b69ebc97c174c91185e9 
│                       │      │                  ├ [2] : https://github.com/vim/vim/issues/16606 
│                       │      │                  ├ [3] : https://github.com/vim/vim/releases/tag/v9.1.1097 
│                       │      │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-1215 
│                       │      │                  ├ [5] : https://security.netapp.com/advisory/ntap-20250321-00
│                       │      │                  │       05/ 
│                       │      │                  ├ [6] : https://ubuntu.com/security/notices/USN-7419-1 
│                       │      │                  ├ [7] : https://vuldb.com/?ctiid.295174 
│                       │      │                  ├ [8] : https://vuldb.com/?id.295174 
│                       │      │                  ├ [9] : https://vuldb.com/?submit.497546 
│                       │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1215 
│                       │      ├ PublishedDate   : 2025-02-12T19:15:10.23Z 
│                       │      ╰ LastModifiedDate: 2025-03-21T18:15:34.29Z 
│                       ├ [87] ╭ VulnerabilityID : CVE-2025-26603 
│                       │      ├ PkgID           : xxd@2:9.1.0496-1ubuntu6.4 
│                       │      ├ PkgName         : xxd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.0496-1ubuntu6.4?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : 82694743fd1b3a38 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-26603 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: heap-use-after-free in function str_to_reg in vim/vim 
│                       │      ├ Description     : Vim is a greatly improved version of the good old UNIX
│                       │      │                   editor Vi. Vim allows to redirect screen messages using the
│                       │      │                   `:redir` ex command to register, variables and files. It
│                       │      │                   also allows to show the contents of registers using the
│                       │      │                   `:registers` or `:display` ex command. When redirecting the
│                       │      │                   output of `:display` to a register, Vim will free the
│                       │      │                   register content before storing the new content in the
│                       │      │                   register. Now when redirecting the `:display` command to a
│                       │      │                   register that is being displayed, Vim will free the content
│                       │      │                   while shortly afterwards trying to access it, which leads to
│                       │      │                    a use-after-free. Vim pre 9.1.1115 checks in the
│                       │      │                   ex_display() function, that it does not try to redirect to a
│                       │      │                    register while displaying this register at the same time.
│                       │      │                   However this check is not complete, and so Vim does not
│                       │      │                   check the `+` and `*` registers (which typically donate the
│                       │      │                   X11/clipboard registers, and when a clipboard connection is
│                       │      │                   not possible will fall back to use register 0 instead. In
│                       │      │                   Patch 9.1.1115 Vim will therefore skip outputting to
│                       │      │                   register zero when trying to redirect to the clipboard
│                       │      │                   registers `*` or `+`. Users are advised to upgrade. There
│                       │      │                   are no known workarounds for this vulnerability. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-26603 
│                       │      │                  ├ [1]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52a
│                       │      │                  │      131bf6b8 
│                       │      │                  ├ [2]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52a
│                       │      │                  │      131bf6b8 (v9.1.1115) 
│                       │      │                  ├ [3]: https://github.com/vim/vim/security/advisories/GHSA-63
│                       │      │                  │      p5-mwg2-787v 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-26603 
│                       │      │                  ├ [5]: https://security.netapp.com/advisory/ntap-20250306-0003/ 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-7419-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-26603 
│                       │      ├ PublishedDate   : 2025-02-18T19:15:29.387Z 
│                       │      ╰ LastModifiedDate: 2025-03-07T01:15:12.7Z 
│                       ╰ [88] ╭ VulnerabilityID : CVE-2025-31115 
│                              ├ PkgID           : xz-utils@5.6.2-2 
│                              ├ PkgName         : xz-utils 
│                              ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xz-utils@5.6.2-2?arch=amd64&distro=ubu
│                              │                  │       ntu-24.10 
│                              │                  ╰ UID : 8516467374b51888 
│                              ├ InstalledVersion: 5.6.2-2 
│                              ├ FixedVersion    : 5.6.2-2ubuntu0.2 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                              │                  │         b905ad543ad918ad504c 
│                              │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                              │                            a5507fce977ad8d74ed5 
│                              ├ SeveritySource  : ubuntu 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-31115 
│                              ├ DataSource       ╭ ID  : ubuntu 
│                              │                  ├ Name: Ubuntu CVE Tracker 
│                              │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                              ├ Title           : xz: XZ has a heap-use-after-free bug in threaded .xz decoder 
│                              ├ Description     : XZ Utils provide a general-purpose data-compression library
│                              │                   plus command-line tools. In XZ Utils 5.3.3alpha to 5.8.0,
│                              │                   the multithreaded .xz decoder in liblzma has a bug where
│                              │                   invalid input can at least result in a crash. The effects
│                              │                   include heap use after free and writing to an address based
│                              │                   on the null pointer plus an offset. Applications and
│                              │                   libraries that use the lzma_stream_decoder_mt function are
│                              │                   affected. The bug has been fixed in XZ Utils 5.8.1, and the
│                              │                   fix has been committed to the v5.4, v5.6, v5.8, and master
│                              │                   branches in the xz Git repository. No new release packages
│                              │                   will be made from the old stable branches, but a standalone
│                              │                   patch is available that applies to all affected releases. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ╭ [0]: CWE-366 
│                              │                  ├ [1]: CWE-416 
│                              │                  ├ [2]: CWE-476 
│                              │                  ╰ [3]: CWE-826 
│                              ├ VendorSeverity   ╭ photon: 3 
│                              │                  ├ redhat: 3 
│                              │                  ╰ ubuntu: 2 
│                              ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                              │                           │           /A:H 
│                              │                           ╰ V3Score : 7.5 
│                              ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/04/03/1 
│                              │                  ├ [1]: http://www.openwall.com/lists/oss-security/2025/04/03/2 
│                              │                  ├ [2]: http://www.openwall.com/lists/oss-security/2025/04/03/3 
│                              │                  ├ [3]: https://access.redhat.com/security/cve/CVE-2025-31115 
│                              │                  ├ [4]: https://github.com/tukaani-project/xz/commit/d5a2ffe41
│                              │                  │      bb77b918a8c96084885d4dbe4bf6480 
│                              │                  ├ [5]: https://github.com/tukaani-project/xz/security/advisor
│                              │                  │      ies/GHSA-6cc8-p5mm-29w2 
│                              │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2025-31115 
│                              │                  ├ [7]: https://tukaani.org/xz/xz-cve-2025-31115.patch 
│                              │                  ├ [8]: https://ubuntu.com/security/notices/USN-7414-1 
│                              │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-31115 
│                              ├ PublishedDate   : 2025-04-03T17:15:30.54Z 
│                              ╰ LastModifiedDate: 2025-04-07T14:18:34.453Z 
├ [1] ╭ Target: Java 
│     ├ Class : lang-pkgs 
│     ╰ Type  : jar 
├ [2] ╭ Target         : usr/bin/docker-compose 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2024-40635 
│                       │     ├ PkgID           : github.com/containerd/containerd/v2@v2.0.2 
│                       │     ├ PkgName         : github.com/containerd/containerd/v2 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.0.2 
│                       │     │                  ╰ UID : 4430170f375207e 
│                       │     ├ InstalledVersion: v2.0.2 
│                       │     ├ FixedVersion    : 2.0.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-40635 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : containerd: containerd has an integer overflow in User ID
│                       │     │                   handling 
│                       │     ├ Description     : containerd is an open-source container runtime. A bug was
│                       │     │                   found in containerd prior to versions 1.6.38, 1.7.27, and
│                       │     │                   2.0.4 where containers launched with a User set as a
│                       │     │                   `UID:GID` larger than the maximum 32-bit signed integer can
│                       │     │                   cause an overflow condition where the container ultimately
│                       │     │                   runs as root (UID 0). This could cause unexpected behavior
│                       │     │                   for environments that require containers to run as a non-root
│                       │     │                    user. This bug has been fixed in containerd 1.6.38, 1.7.27,
│                       │     │                   and 2.04. As a workaround, ensure that only trusted images
│                       │     │                   are used and that only trusted users have permissions to
│                       │     │                   import images. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-190 
│                       │     ├ VendorSeverity   ╭ amazon: 2 
│                       │     │                  ├ ghsa  : 2 
│                       │     │                  ├ redhat: 2 
│                       │     │                  ╰ ubuntu: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L/
│                       │     │                  │        │           A:N 
│                       │     │                  │        ╰ V3Score : 4.6 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L/
│                       │     │                           │           A:N 
│                       │     │                           ╰ V3Score : 4.6 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-40635 
│                       │     │                  ├ [1] : https://github.com/containerd/containerd 
│                       │     │                  ├ [2] : https://github.com/containerd/containerd/commit/05044e
│                       │     │                  │       c0a9a75232cad458027ca83437aae3f4da 
│                       │     │                  ├ [3] : https://github.com/containerd/containerd/commit/11504c
│                       │     │                  │       3fc5f45634f2d93d57743a998194430b82 (v1.7.27) 
│                       │     │                  ├ [4] : https://github.com/containerd/containerd/commit/1a43cb
│                       │     │                  │       6a1035441f9aca8f5666a9b3ef9e70ab20 
│                       │     │                  ├ [5] : https://github.com/containerd/containerd/commit/9639b9
│                       │     │                  │       625554183d0c4d8d072dccb84fedd2320f (v1.6.38) 
│                       │     │                  ├ [6] : https://github.com/containerd/containerd/commit/cf158e
│                       │     │                  │       884cfe4812a6c371b59e4ea9bc4c46e51a 
│                       │     │                  ├ [7] : https://github.com/containerd/containerd/security/advi
│                       │     │                  │       sories/GHSA-265r-hfxg-fhmg 
│                       │     │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2024-40635 
│                       │     │                  ├ [9] : https://ubuntu.com/security/notices/USN-7374-1 
│                       │     │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2024-40635 
│                       │     ├ PublishedDate   : 2025-03-17T22:15:13.15Z 
│                       │     ╰ LastModifiedDate: 2025-03-17T22:15:13.15Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2025-0495 
│                       │     ├ PkgID           : github.com/docker/buildx@v0.21.1 
│                       │     ├ PkgName         : github.com/docker/buildx 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/buildx@v0.21.1 
│                       │     │                  ╰ UID : b42fb52acdd404cd 
│                       │     ├ InstalledVersion: v0.21.1 
│                       │     ├ FixedVersion    : 0.21.3 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0495 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : Buildx is a Docker CLI plugin that extends build capabilities
│                       │     │                    using Bu ... 
│                       │     ├ Description     : Buildx is a Docker CLI plugin that extends build capabilities
│                       │     │                    using BuildKit.
│                       │     │                   
│                       │     │                   Cache backends support credentials by setting secrets
│                       │     │                   directly as attribute values in cache-to/cache-from
│                       │     │                   configuration. When supplied as user input, these secure
│                       │     │                   values may be inadvertently captured in OpenTelemetry traces
│                       │     │                   as part of the arguments and flags for the traced CLI
│                       │     │                   command. OpenTelemetry traces are also saved in BuildKit
│                       │     │                   daemon's history records.
│                       │     │                   This vulnerability does not impact secrets passed to the
│                       │     │                   Github cache backend via environment variables or registry
│                       │     │                   authentication. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-532 
│                       │     ├ VendorSeverity   ─ ghsa: 2 
│                       │     ├ References       ╭ [0]: https://github.com/docker/buildx 
│                       │     │                  ├ [1]: https://github.com/docker/buildx/commit/18ccba072076ddb
│                       │     │                  │      fb0aeedd6746d7719b0729b58 
│                       │     │                  ├ [2]: https://github.com/docker/buildx/security/advisories/GH
│                       │     │                  │      SA-m4gq-fm9h-8q75 
│                       │     │                  ╰ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0495 
│                       │     ├ PublishedDate   : 2025-03-17T20:15:13.737Z 
│                       │     ╰ LastModifiedDate: 2025-03-17T20:15:13.737Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2025-22870 
│                       │     ├ PkgID           : golang.org/x/net@v0.33.0 
│                       │     ├ PkgName         : golang.org/x/net 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.33.0 
│                       │     │                  ╰ UID : 1e3966db66a3aa1 
│                       │     ├ InstalledVersion: v0.33.0 
│                       │     ├ FixedVersion    : 0.36.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/net/proxy: golang.org/x/net/http/httpproxy: HTTP
│                       │     │                    Proxy bypass using IPv6 Zone IDs in golang.org/x/net 
│                       │     ├ Description     : Matching of hosts against proxy patterns can improperly treat
│                       │     │                    an IPv6 zone ID as a hostname component. For example, when
│                       │     │                   the NO_PROXY environment variable is set to "*.example.com",
│                       │     │                   a request to "[::1%25.example.com]:80` will incorrectly match
│                       │     │                    and not be proxied. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-115 
│                       │     ├ VendorSeverity   ╭ amazon     : 2 
│                       │     │                  ├ azure      : 1 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                  │        │           A:L 
│                       │     │                  │        ╰ V3Score : 4.4 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                           │           A:L 
│                       │     │                           ╰ V3Score : 4.4 
│                       │     ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/03/07/2 
│                       │     │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22870 
│                       │     │                  ├ [2]: https://go-review.googlesource.com/q/project:net 
│                       │     │                  ├ [3]: https://go.dev/cl/654697 
│                       │     │                  ├ [4]: https://go.dev/issue/71984 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3503 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                       │     ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                       │     ╰ LastModifiedDate: 2025-03-18T17:15:45.467Z 
│                       ├ [3] ╭ VulnerabilityID : CVE-2024-45336 
│                       │     ├ PkgID           : stdlib@v1.22.10 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │     │                  ╰ UID : afd799025a5d40f9 
│                       │     ├ InstalledVersion: v1.22.10 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45336 
│                       │     ├ DataSource       ╭ ID  : govulndb 
│                       │     │                  ├ Name: The Go Vulnerability Database 
│                       │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │     ├ Title           : golang: net/http: net/http: sensitive headers incorrectly
│                       │     │                   sent after cross-domain redirect 
│                       │     ├ Description     : The HTTP client drops sensitive headers after following a
│                       │     │                   cross-domain redirect. For example, a request to a.com/
│                       │     │                   containing an Authorization header which is redirected to
│                       │     │                   b.com/ will not send that header to b.com. In the event that
│                       │     │                   the client received a subsequent same-domain redirect,
│                       │     │                   however, the sensitive headers would be restored. For
│                       │     │                   example, a chain of redirects from a.com/, to b.com/1, and
│                       │     │                   finally to b.com/2 would incorrectly send the Authorization
│                       │     │                   header to b.com/2. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ╭ alma       : 2 
│                       │     │                  ├ amazon     : 2 
│                       │     │                  ├ bitnami    : 2 
│                       │     │                  ├ cbl-mariner: 3 
│                       │     │                  ├ oracle-oval: 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.9 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3772 
│                       │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-45336 
│                       │     │                  ├ [2] : https://bugzilla.redhat.com/2341750 
│                       │     │                  ├ [3] : https://bugzilla.redhat.com/2341751 
│                       │     │                  ├ [4] : https://errata.almalinux.org/8/ALSA-2025-3772.html 
│                       │     │                  ├ [5] : https://go.dev/cl/643100 
│                       │     │                  ├ [6] : https://go.dev/issue/70530 
│                       │     │                  ├ [7] : https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m
│                       │     │                  │       /bk9LAa-lCgAJ 
│                       │     │                  ├ [8] : https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m
│                       │     │                  │       /G461hA6lCgAJ 
│                       │     │                  ├ [9] : https://linux.oracle.com/cve/CVE-2024-45336.html 
│                       │     │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-3772.html 
│                       │     │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2024-45336 
│                       │     │                  ├ [12]: https://pkg.go.dev/vuln/GO-2025-3420 
│                       │     │                  ├ [13]: https://security.netapp.com/advisory/ntap-20250221-0003/ 
│                       │     │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-45336 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:28.807Z 
│                       │     ╰ LastModifiedDate: 2025-02-21T18:15:17.4Z 
│                       ├ [4] ╭ VulnerabilityID : CVE-2024-45341 
│                       │     ├ PkgID           : stdlib@v1.22.10 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │     │                  ╰ UID : afd799025a5d40f9 
│                       │     ├ InstalledVersion: v1.22.10 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45341 
│                       │     ├ DataSource       ╭ ID  : govulndb 
│                       │     │                  ├ Name: The Go Vulnerability Database 
│                       │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │     ├ Title           : golang: crypto/x509: crypto/x509: usage of IPv6 zone IDs can
│                       │     │                   bypass URI name constraints 
│                       │     ├ Description     : A certificate with a URI which has a IPv6 address with a zone
│                       │     │                    ID may incorrectly satisfy a URI name constraint that
│                       │     │                   applies to the certificate chain. Certificates containing
│                       │     │                   URIs are not permitted in the web PKI, so this only affects
│                       │     │                   users of private PKIs which make use of URIs. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ╭ alma       : 2 
│                       │     │                  ├ amazon     : 2 
│                       │     │                  ├ bitnami    : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ oracle-oval: 2 
│                       │     │                  ╰ redhat     : 1 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 4.2 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3772 
│                       │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-45341 
│                       │     │                  ├ [2] : https://bugzilla.redhat.com/2341750 
│                       │     │                  ├ [3] : https://bugzilla.redhat.com/2341751 
│                       │     │                  ├ [4] : https://errata.almalinux.org/8/ALSA-2025-3772.html 
│                       │     │                  ├ [5] : https://go.dev/cl/643099 
│                       │     │                  ├ [6] : https://go.dev/issue/71156 
│                       │     │                  ├ [7] : https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m
│                       │     │                  │       /bk9LAa-lCgAJ 
│                       │     │                  ├ [8] : https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m
│                       │     │                  │       /G461hA6lCgAJ 
│                       │     │                  ├ [9] : https://linux.oracle.com/cve/CVE-2024-45341.html 
│                       │     │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-3772.html 
│                       │     │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2024-45341 
│                       │     │                  ├ [12]: https://pkg.go.dev/vuln/GO-2025-3373 
│                       │     │                  ├ [13]: https://security.netapp.com/advisory/ntap-20250221-0004/ 
│                       │     │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-45341 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:29.147Z 
│                       │     ╰ LastModifiedDate: 2025-02-21T18:15:17.96Z 
│                       ├ [5] ╭ VulnerabilityID : CVE-2025-22866 
│                       │     ├ PkgID           : stdlib@v1.22.10 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │     │                  ╰ UID : afd799025a5d40f9 
│                       │     ├ InstalledVersion: v1.22.10 
│                       │     ├ FixedVersion    : 1.22.12, 1.23.6, 1.24.0-rc.3 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22866 
│                       │     ├ DataSource       ╭ ID  : govulndb 
│                       │     │                  ├ Name: The Go Vulnerability Database 
│                       │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │     ├ Title           : crypto/internal/nistec: golang: Timing sidechannel for P-256
│                       │     │                   on ppc64le in crypto/internal/nistec 
│                       │     ├ Description     : Due to the usage of a variable time instruction in the
│                       │     │                   assembly implementation of an internal function, a small
│                       │     │                   number of bits of secret scalars are leaked on the ppc64le
│                       │     │                   architecture. Due to the way this function is used, we do not
│                       │     │                    believe this leakage is enough to allow recovery of the
│                       │     │                   private key when P-256 is used in any well known protocols. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ╭ bitnami: 2 
│                       │     │                  ╰ redhat : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 4 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22866 
│                       │     │                  ├ [1]: https://go.dev/cl/643735 
│                       │     │                  ├ [2]: https://go.dev/issue/71383 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/xU1ZCHUZw3k 
│                       │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-22866 
│                       │     │                  ├ [5]: https://pkg.go.dev/vuln/GO-2025-3447 
│                       │     │                  ├ [6]: https://security.netapp.com/advisory/ntap-20250221-0002/ 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22866 
│                       │     ├ PublishedDate   : 2025-02-06T17:15:21.41Z 
│                       │     ╰ LastModifiedDate: 2025-02-21T18:15:32.243Z 
│                       ╰ [6] ╭ VulnerabilityID : CVE-2025-22871 
│                             ├ PkgID           : stdlib@v1.22.10 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                             │                  ╰ UID : afd799025a5d40f9 
│                             ├ InstalledVersion: v1.22.10 
│                             ├ FixedVersion    : 1.23.8, 1.24.2 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                             │                  │         905ad543ad918ad504c 
│                             │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                             │                            5507fce977ad8d74ed5 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                             │                   chunked data in net/http 
│                             ├ Description     : The net/http package improperly accepts a bare LF as a line
│                             │                   terminator in chunked data chunk-size lines. This can permit
│                             │                   request smuggling if a net/http server is used in conjunction
│                             │                    with a server that incorrectly accepts a bare LF as part of
│                             │                   a chunk-ext. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ─ redhat: 2 
│                             ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L/
│                             │                           │           A:N 
│                             │                           ╰ V3Score : 5.4 
│                             ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/04/04/4 
│                             │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22871 
│                             │                  ├ [2]: https://go.dev/cl/652998 
│                             │                  ├ [3]: https://go.dev/issue/71988 
│                             │                  ├ [4]: https://groups.google.com/g/golang-announce/c/Y2uBTVKjBQk 
│                             │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                             │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3563 
│                             │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                             ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                             ╰ LastModifiedDate: 2025-04-09T20:02:41.86Z 
├ [3] ╭ Target         : usr/bin/helm 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2024-40635 
│                       │     ├ PkgID           : github.com/containerd/containerd@v1.7.24 
│                       │     ├ PkgName         : github.com/containerd/containerd 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd@v1.7.24 
│                       │     │                  ╰ UID : f4932271e34afc46 
│                       │     ├ InstalledVersion: v1.7.24 
│                       │     ├ FixedVersion    : 1.7.27, 1.6.38 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-40635 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : containerd: containerd has an integer overflow in User ID
│                       │     │                   handling 
│                       │     ├ Description     : containerd is an open-source container runtime. A bug was
│                       │     │                   found in containerd prior to versions 1.6.38, 1.7.27, and
│                       │     │                   2.0.4 where containers launched with a User set as a
│                       │     │                   `UID:GID` larger than the maximum 32-bit signed integer can
│                       │     │                   cause an overflow condition where the container ultimately
│                       │     │                   runs as root (UID 0). This could cause unexpected behavior
│                       │     │                   for environments that require containers to run as a non-root
│                       │     │                    user. This bug has been fixed in containerd 1.6.38, 1.7.27,
│                       │     │                   and 2.04. As a workaround, ensure that only trusted images
│                       │     │                   are used and that only trusted users have permissions to
│                       │     │                   import images. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-190 
│                       │     ├ VendorSeverity   ╭ amazon: 2 
│                       │     │                  ├ ghsa  : 2 
│                       │     │                  ├ redhat: 2 
│                       │     │                  ╰ ubuntu: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L/
│                       │     │                  │        │           A:N 
│                       │     │                  │        ╰ V3Score : 4.6 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L/
│                       │     │                           │           A:N 
│                       │     │                           ╰ V3Score : 4.6 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-40635 
│                       │     │                  ├ [1] : https://github.com/containerd/containerd 
│                       │     │                  ├ [2] : https://github.com/containerd/containerd/commit/05044e
│                       │     │                  │       c0a9a75232cad458027ca83437aae3f4da 
│                       │     │                  ├ [3] : https://github.com/containerd/containerd/commit/11504c
│                       │     │                  │       3fc5f45634f2d93d57743a998194430b82 (v1.7.27) 
│                       │     │                  ├ [4] : https://github.com/containerd/containerd/commit/1a43cb
│                       │     │                  │       6a1035441f9aca8f5666a9b3ef9e70ab20 
│                       │     │                  ├ [5] : https://github.com/containerd/containerd/commit/9639b9
│                       │     │                  │       625554183d0c4d8d072dccb84fedd2320f (v1.6.38) 
│                       │     │                  ├ [6] : https://github.com/containerd/containerd/commit/cf158e
│                       │     │                  │       884cfe4812a6c371b59e4ea9bc4c46e51a 
│                       │     │                  ├ [7] : https://github.com/containerd/containerd/security/advi
│                       │     │                  │       sories/GHSA-265r-hfxg-fhmg 
│                       │     │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2024-40635 
│                       │     │                  ├ [9] : https://ubuntu.com/security/notices/USN-7374-1 
│                       │     │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2024-40635 
│                       │     ├ PublishedDate   : 2025-03-17T22:15:13.15Z 
│                       │     ╰ LastModifiedDate: 2025-03-17T22:15:13.15Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2025-22870 
│                       │     ├ PkgID           : golang.org/x/net@v0.33.0 
│                       │     ├ PkgName         : golang.org/x/net 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.33.0 
│                       │     │                  ╰ UID : 5f4e3d9bb22dafc1 
│                       │     ├ InstalledVersion: v0.33.0 
│                       │     ├ FixedVersion    : 0.36.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/net/proxy: golang.org/x/net/http/httpproxy: HTTP
│                       │     │                    Proxy bypass using IPv6 Zone IDs in golang.org/x/net 
│                       │     ├ Description     : Matching of hosts against proxy patterns can improperly treat
│                       │     │                    an IPv6 zone ID as a hostname component. For example, when
│                       │     │                   the NO_PROXY environment variable is set to "*.example.com",
│                       │     │                   a request to "[::1%25.example.com]:80` will incorrectly match
│                       │     │                    and not be proxied. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-115 
│                       │     ├ VendorSeverity   ╭ amazon     : 2 
│                       │     │                  ├ azure      : 1 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                  │        │           A:L 
│                       │     │                  │        ╰ V3Score : 4.4 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                           │           A:L 
│                       │     │                           ╰ V3Score : 4.4 
│                       │     ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/03/07/2 
│                       │     │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22870 
│                       │     │                  ├ [2]: https://go-review.googlesource.com/q/project:net 
│                       │     │                  ├ [3]: https://go.dev/cl/654697 
│                       │     │                  ├ [4]: https://go.dev/issue/71984 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3503 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                       │     ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                       │     ╰ LastModifiedDate: 2025-03-18T17:15:45.467Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2025-22866 
│                       │     ├ PkgID           : stdlib@v1.23.5 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.5 
│                       │     │                  ╰ UID : 44e9bcda2169408b 
│                       │     ├ InstalledVersion: v1.23.5 
│                       │     ├ FixedVersion    : 1.22.12, 1.23.6, 1.24.0-rc.3 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22866 
│                       │     ├ DataSource       ╭ ID  : govulndb 
│                       │     │                  ├ Name: The Go Vulnerability Database 
│                       │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │     ├ Title           : crypto/internal/nistec: golang: Timing sidechannel for P-256
│                       │     │                   on ppc64le in crypto/internal/nistec 
│                       │     ├ Description     : Due to the usage of a variable time instruction in the
│                       │     │                   assembly implementation of an internal function, a small
│                       │     │                   number of bits of secret scalars are leaked on the ppc64le
│                       │     │                   architecture. Due to the way this function is used, we do not
│                       │     │                    believe this leakage is enough to allow recovery of the
│                       │     │                   private key when P-256 is used in any well known protocols. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ╭ bitnami: 2 
│                       │     │                  ╰ redhat : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 4 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22866 
│                       │     │                  ├ [1]: https://go.dev/cl/643735 
│                       │     │                  ├ [2]: https://go.dev/issue/71383 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/xU1ZCHUZw3k 
│                       │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-22866 
│                       │     │                  ├ [5]: https://pkg.go.dev/vuln/GO-2025-3447 
│                       │     │                  ├ [6]: https://security.netapp.com/advisory/ntap-20250221-0002/ 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22866 
│                       │     ├ PublishedDate   : 2025-02-06T17:15:21.41Z 
│                       │     ╰ LastModifiedDate: 2025-02-21T18:15:32.243Z 
│                       ╰ [3] ╭ VulnerabilityID : CVE-2025-22871 
│                             ├ PkgID           : stdlib@v1.23.5 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.5 
│                             │                  ╰ UID : 44e9bcda2169408b 
│                             ├ InstalledVersion: v1.23.5 
│                             ├ FixedVersion    : 1.23.8, 1.24.2 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                             │                  │         905ad543ad918ad504c 
│                             │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                             │                            5507fce977ad8d74ed5 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                             │                   chunked data in net/http 
│                             ├ Description     : The net/http package improperly accepts a bare LF as a line
│                             │                   terminator in chunked data chunk-size lines. This can permit
│                             │                   request smuggling if a net/http server is used in conjunction
│                             │                    with a server that incorrectly accepts a bare LF as part of
│                             │                   a chunk-ext. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ─ redhat: 2 
│                             ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L/
│                             │                           │           A:N 
│                             │                           ╰ V3Score : 5.4 
│                             ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/04/04/4 
│                             │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22871 
│                             │                  ├ [2]: https://go.dev/cl/652998 
│                             │                  ├ [3]: https://go.dev/issue/71988 
│                             │                  ├ [4]: https://groups.google.com/g/golang-announce/c/Y2uBTVKjBQk 
│                             │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                             │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3563 
│                             │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                             ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                             ╰ LastModifiedDate: 2025-04-09T20:02:41.86Z 
├ [4] ╭ Target         : usr/bin/kubectl 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2025-22870 
│                       │     ├ PkgID           : golang.org/x/net@v0.30.0 
│                       │     ├ PkgName         : golang.org/x/net 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.30.0 
│                       │     │                  ╰ UID : 49cea3404592705a 
│                       │     ├ InstalledVersion: v0.30.0 
│                       │     ├ FixedVersion    : 0.36.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/net/proxy: golang.org/x/net/http/httpproxy: HTTP
│                       │     │                    Proxy bypass using IPv6 Zone IDs in golang.org/x/net 
│                       │     ├ Description     : Matching of hosts against proxy patterns can improperly treat
│                       │     │                    an IPv6 zone ID as a hostname component. For example, when
│                       │     │                   the NO_PROXY environment variable is set to "*.example.com",
│                       │     │                   a request to "[::1%25.example.com]:80` will incorrectly match
│                       │     │                    and not be proxied. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-115 
│                       │     ├ VendorSeverity   ╭ amazon     : 2 
│                       │     │                  ├ azure      : 1 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                  │        │           A:L 
│                       │     │                  │        ╰ V3Score : 4.4 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                           │           A:L 
│                       │     │                           ╰ V3Score : 4.4 
│                       │     ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/03/07/2 
│                       │     │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22870 
│                       │     │                  ├ [2]: https://go-review.googlesource.com/q/project:net 
│                       │     │                  ├ [3]: https://go.dev/cl/654697 
│                       │     │                  ├ [4]: https://go.dev/issue/71984 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3503 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                       │     ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                       │     ╰ LastModifiedDate: 2025-03-18T17:15:45.467Z 
│                       ╰ [1] ╭ VulnerabilityID : CVE-2025-22871 
│                             ├ PkgID           : stdlib@v1.23.6 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.6 
│                             │                  ╰ UID : a200578c56ec45c2 
│                             ├ InstalledVersion: v1.23.6 
│                             ├ FixedVersion    : 1.23.8, 1.24.2 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                             │                  │         905ad543ad918ad504c 
│                             │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                             │                            5507fce977ad8d74ed5 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                             │                   chunked data in net/http 
│                             ├ Description     : The net/http package improperly accepts a bare LF as a line
│                             │                   terminator in chunked data chunk-size lines. This can permit
│                             │                   request smuggling if a net/http server is used in conjunction
│                             │                    with a server that incorrectly accepts a bare LF as part of
│                             │                   a chunk-ext. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ─ redhat: 2 
│                             ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L/
│                             │                           │           A:N 
│                             │                           ╰ V3Score : 5.4 
│                             ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/04/04/4 
│                             │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22871 
│                             │                  ├ [2]: https://go.dev/cl/652998 
│                             │                  ├ [3]: https://go.dev/issue/71988 
│                             │                  ├ [4]: https://groups.google.com/g/golang-announce/c/Y2uBTVKjBQk 
│                             │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                             │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3563 
│                             │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                             ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                             ╰ LastModifiedDate: 2025-04-09T20:02:41.86Z 
├ [5] ╭ Target         : usr/local/bin/k3d 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2024-40635 
│                       │     ├ PkgID           : github.com/containerd/containerd@v1.7.19 
│                       │     ├ PkgName         : github.com/containerd/containerd 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd@v1.7.19 
│                       │     │                  ╰ UID : 1b5ac4bc1bc375ec 
│                       │     ├ InstalledVersion: v1.7.19 
│                       │     ├ FixedVersion    : 1.7.27, 1.6.38 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-40635 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : containerd: containerd has an integer overflow in User ID
│                       │     │                   handling 
│                       │     ├ Description     : containerd is an open-source container runtime. A bug was
│                       │     │                   found in containerd prior to versions 1.6.38, 1.7.27, and
│                       │     │                   2.0.4 where containers launched with a User set as a
│                       │     │                   `UID:GID` larger than the maximum 32-bit signed integer can
│                       │     │                   cause an overflow condition where the container ultimately
│                       │     │                   runs as root (UID 0). This could cause unexpected behavior
│                       │     │                   for environments that require containers to run as a non-root
│                       │     │                    user. This bug has been fixed in containerd 1.6.38, 1.7.27,
│                       │     │                   and 2.04. As a workaround, ensure that only trusted images
│                       │     │                   are used and that only trusted users have permissions to
│                       │     │                   import images. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-190 
│                       │     ├ VendorSeverity   ╭ amazon: 2 
│                       │     │                  ├ ghsa  : 2 
│                       │     │                  ├ redhat: 2 
│                       │     │                  ╰ ubuntu: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L/
│                       │     │                  │        │           A:N 
│                       │     │                  │        ╰ V3Score : 4.6 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L/
│                       │     │                           │           A:N 
│                       │     │                           ╰ V3Score : 4.6 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-40635 
│                       │     │                  ├ [1] : https://github.com/containerd/containerd 
│                       │     │                  ├ [2] : https://github.com/containerd/containerd/commit/05044e
│                       │     │                  │       c0a9a75232cad458027ca83437aae3f4da 
│                       │     │                  ├ [3] : https://github.com/containerd/containerd/commit/11504c
│                       │     │                  │       3fc5f45634f2d93d57743a998194430b82 (v1.7.27) 
│                       │     │                  ├ [4] : https://github.com/containerd/containerd/commit/1a43cb
│                       │     │                  │       6a1035441f9aca8f5666a9b3ef9e70ab20 
│                       │     │                  ├ [5] : https://github.com/containerd/containerd/commit/9639b9
│                       │     │                  │       625554183d0c4d8d072dccb84fedd2320f (v1.6.38) 
│                       │     │                  ├ [6] : https://github.com/containerd/containerd/commit/cf158e
│                       │     │                  │       884cfe4812a6c371b59e4ea9bc4c46e51a 
│                       │     │                  ├ [7] : https://github.com/containerd/containerd/security/advi
│                       │     │                  │       sories/GHSA-265r-hfxg-fhmg 
│                       │     │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2024-40635 
│                       │     │                  ├ [9] : https://ubuntu.com/security/notices/USN-7374-1 
│                       │     │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2024-40635 
│                       │     ├ PublishedDate   : 2025-03-17T22:15:13.15Z 
│                       │     ╰ LastModifiedDate: 2025-03-17T22:15:13.15Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2024-41110 
│                       │     ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                       │     ├ PkgName         : github.com/docker/docker 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincompat
│                       │     │                  │       ible 
│                       │     │                  ╰ UID : 18d926a57b74d388 
│                       │     ├ InstalledVersion: v27.0.3+incompatible 
│                       │     ├ FixedVersion    : 23.0.15, 26.1.5, 27.1.1, 25.0.6 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-41110 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : moby: Authz zero length regression 
│                       │     ├ Description     : Moby is an open-source project created by Docker for software
│                       │     │                    containerization. A security vulnerability has been detected
│                       │     │                    in certain versions of Docker Engine, which could allow an
│                       │     │                   attacker to bypass authorization plugins (AuthZ) under
│                       │     │                   specific circumstances. The base likelihood of this being
│                       │     │                   exploited is low.
│                       │     │                   
│                       │     │                   Using a specially-crafted API request, an Engine API client
│                       │     │                   could make the daemon forward the request or response to an
│                       │     │                   authorization plugin without the body. In certain
│                       │     │                   circumstances, the authorization plugin may allow a request
│                       │     │                   which it would have otherwise denied if the body had been
│                       │     │                   forwarded to it.
│                       │     │                   A security issue was discovered In 2018, where an attacker
│                       │     │                   could bypass AuthZ plugins using a specially crafted API
│                       │     │                   request. This could lead to unauthorized actions, including
│                       │     │                   privilege escalation. Although this issue was fixed in Docker
│                       │     │                    Engine v18.09.1 in January 2019, the fix was not carried
│                       │     │                   forward to later major versions, resulting in a regression.
│                       │     │                   Anyone who depends on authorization plugins that introspect
│                       │     │                   the request and/or response body to make access control
│                       │     │                   decisions is potentially impacted.
│                       │     │                   Docker EE v19.03.x and all versions of Mirantis Container
│                       │     │                   Runtime are not vulnerable.
│                       │     │                   docker-ce v27.1.1 containes patches to fix the vulnerability.
│                       │     │                    Patches have also been merged into the master, 19.03, 20.0,
│                       │     │                   23.0, 24.0, 25.0, 26.0, and 26.1 release branches. If one is
│                       │     │                   unable to upgrade immediately, avoid using AuthZ plugins
│                       │     │                   and/or restrict access to the Docker API to trusted parties,
│                       │     │                   following the principle of least privilege. 
│                       │     ├ Severity        : CRITICAL 
│                       │     ├ CweIDs           ╭ [0]: CWE-187 
│                       │     │                  ├ [1]: CWE-444 
│                       │     │                  ╰ [2]: CWE-863 
│                       │     ├ VendorSeverity   ╭ amazon     : 3 
│                       │     │                  ├ azure      : 4 
│                       │     │                  ├ cbl-mariner: 4 
│                       │     │                  ├ ghsa       : 4 
│                       │     │                  ├ redhat     : 4 
│                       │     │                  ╰ ubuntu     : 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 10 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 9.9 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-41110 
│                       │     │                  ├ [1] : https://github.com/moby/moby 
│                       │     │                  ├ [2] : https://github.com/moby/moby/commit/411e817ddf710ff8e0
│                       │     │                  │       8fa193da80cb78af708191 
│                       │     │                  ├ [3] : https://github.com/moby/moby/commit/42f40b1d6dd7562342
│                       │     │                  │       f832b9cd2adf9e668eeb76 
│                       │     │                  ├ [4] : https://github.com/moby/moby/commit/65cc597cea28cdc25b
│                       │     │                  │       ea3b8a86384b4251872919 
│                       │     │                  ├ [5] : https://github.com/moby/moby/commit/852759a7df454cbf88
│                       │     │                  │       db4e954c919becd48faa9b 
│                       │     │                  ├ [6] : https://github.com/moby/moby/commit/a31260625655cff9ae
│                       │     │                  │       226b51757915e275e304b0 
│                       │     │                  ├ [7] : https://github.com/moby/moby/commit/a79fabbfe84117696a
│                       │     │                  │       19671f4aa88b82d0f64fc1 
│                       │     │                  ├ [8] : https://github.com/moby/moby/commit/ae160b4edddb72ef4b
│                       │     │                  │       d71f66b975a1a1cc434f00 
│                       │     │                  ├ [9] : https://github.com/moby/moby/commit/ae2b3666c517c96cbc
│                       │     │                  │       2adf1af5591a6b00d4ec0f 
│                       │     │                  ├ [10]: https://github.com/moby/moby/commit/cc13f952511154a286
│                       │     │                  │       6bddbb7dddebfe9e83b801 
│                       │     │                  ├ [11]: https://github.com/moby/moby/commit/fc274cd2ff4cf3b48c
│                       │     │                  │       91697fb327dd1fb95588fb 
│                       │     │                  ├ [12]: https://github.com/moby/moby/security/advisories/GHSA-
│                       │     │                  │       v23v-6jw2-98fq 
│                       │     │                  ├ [13]: https://lists.debian.org/debian-lts-announce/2024/10/m
│                       │     │                  │       sg00009.html 
│                       │     │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-41110 
│                       │     │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240802-0001/ 
│                       │     │                  ├ [16]: https://ubuntu.com/security/notices/USN-7161-1 
│                       │     │                  ├ [17]: https://ubuntu.com/security/notices/USN-7161-2 
│                       │     │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2024-41110 
│                       │     │                  ├ [19]: https://www.docker.com/blog/docker-security-advisory-d
│                       │     │                  │       ocker-engine-authz-plugin 
│                       │     │                  ╰ [20]: https://www.docker.com/blog/docker-security-advisory-d
│                       │     │                          ocker-engine-authz-plugin/ 
│                       │     ├ PublishedDate   : 2024-07-24T17:15:11.053Z 
│                       │     ╰ LastModifiedDate: 2024-11-21T09:32:15.16Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2024-45337 
│                       │     ├ PkgID           : golang.org/x/crypto@v0.24.0 
│                       │     ├ PkgName         : golang.org/x/crypto 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.24.0 
│                       │     │                  ╰ UID : 51665884b15027a5 
│                       │     ├ InstalledVersion: v0.24.0 
│                       │     ├ FixedVersion    : 0.31.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45337 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/crypto/ssh: Misuse of
│                       │     │                   ServerConfig.PublicKeyCallback may cause authorization bypass
│                       │     │                    in golang.org/x/crypto 
│                       │     ├ Description     : Applications and libraries which misuse
│                       │     │                   connection.serverAuthenticate (via callback field
│                       │     │                   ServerConfig.PublicKeyCallback) may be susceptible to an
│                       │     │                   authorization bypass. The documentation for
│                       │     │                   ServerConfig.PublicKeyCallback says that "A call to this
│                       │     │                   function does not guarantee that the key offered is in fact
│                       │     │                   used to authenticate." Specifically, the SSH protocol allows
│                       │     │                   clients to inquire about whether a public key is acceptable
│                       │     │                   before proving control of the corresponding private key.
│                       │     │                   PublicKeyCallback may be called with multiple keys, and the
│                       │     │                   order in which the keys were provided cannot be used to infer
│                       │     │                    which key the client successfully authenticated with, if
│                       │     │                   any. Some applications, which store the key(s) passed to
│                       │     │                   PublicKeyCallback (or derived information) and make security
│                       │     │                   relevant determinations based on it once the connection is
│                       │     │                   established, may make incorrect assumptions. For example, an
│                       │     │                   attacker may send public keys A and B, and then authenticate
│                       │     │                   with A. PublicKeyCallback would be called only twice, first
│                       │     │                   with A and then with B. A vulnerable application may then
│                       │     │                   make authorization decisions based on key B for which the
│                       │     │                   attacker does not actually control the private key. Since
│                       │     │                   this API is widely misused, as a partial mitigation
│                       │     │                   golang.org/x/cry...@v0.31.0 enforces the property that, when
│                       │     │                   successfully authenticating via public key, the last key
│                       │     │                   passed to ServerConfig.PublicKeyCallback will be the key used
│                       │     │                    to authenticate the connection. PublicKeyCallback will now
│                       │     │                   be called multiple times with the same key, if necessary.
│                       │     │                   Note that the client may still not control the last key
│                       │     │                   passed to PublicKeyCallback if the connection is then
│                       │     │                   authenticated with a different method, such as
│                       │     │                   PasswordCallback, KeyboardInteractiveCallback, or
│                       │     │                   NoClientAuth. Users should be using the Extensions field of
│                       │     │                   the Permissions return value from the various authentication
│                       │     │                   callbacks to record data associated with the authentication
│                       │     │                   attempt instead of referencing external state. Once the
│                       │     │                   connection is established the state corresponding to the
│                       │     │                   successful authentication attempt can be retrieved via the
│                       │     │                   ServerConn.Permissions field. Note that some third-party
│                       │     │                   libraries misuse the Permissions type by sharing it across
│                       │     │                   authentication attempts; users of third-party libraries
│                       │     │                   should refer to the relevant projects for guidance. 
│                       │     ├ Severity        : CRITICAL 
│                       │     ├ VendorSeverity   ╭ amazon     : 3 
│                       │     │                  ├ azure      : 4 
│                       │     │                  ├ cbl-mariner: 4 
│                       │     │                  ├ ghsa       : 4 
│                       │     │                  ╰ redhat     : 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/
│                       │     │                  │        │           A:N 
│                       │     │                  │        ╰ V3Score : 9.1 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H/
│                       │     │                           │           A:N 
│                       │     │                           ╰ V3Score : 8.2 
│                       │     ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2024/12/11/2 
│                       │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-45337 
│                       │     │                  ├ [2] : https://github.com/golang/crypto 
│                       │     │                  ├ [3] : https://github.com/golang/crypto/commit/b4f1988a35dee1
│                       │     │                  │       1ec3e05d6bf3e90b695fbd8909 
│                       │     │                  ├ [4] : https://go.dev/cl/635315 
│                       │     │                  ├ [5] : https://go.dev/issue/70779 
│                       │     │                  ├ [6] : https://groups.google.com/g/golang-announce/c/-nPEi39g
│                       │     │                  │       I4Q/m/cGVPJCqdAQAJ 
│                       │     │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2024-45337 
│                       │     │                  ├ [8] : https://pkg.go.dev/vuln/GO-2024-3321 
│                       │     │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250131-0007 
│                       │     │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250131-0007/ 
│                       │     │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2024-45337 
│                       │     ├ PublishedDate   : 2024-12-12T02:02:07.97Z 
│                       │     ╰ LastModifiedDate: 2025-02-18T21:15:22.187Z 
│                       ├ [3] ╭ VulnerabilityID : CVE-2025-22870 
│                       │     ├ PkgID           : golang.org/x/net@v0.26.0 
│                       │     ├ PkgName         : golang.org/x/net 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.26.0 
│                       │     │                  ╰ UID : d33d648a9a9d02d2 
│                       │     ├ InstalledVersion: v0.26.0 
│                       │     ├ FixedVersion    : 0.36.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/net/proxy: golang.org/x/net/http/httpproxy: HTTP
│                       │     │                    Proxy bypass using IPv6 Zone IDs in golang.org/x/net 
│                       │     ├ Description     : Matching of hosts against proxy patterns can improperly treat
│                       │     │                    an IPv6 zone ID as a hostname component. For example, when
│                       │     │                   the NO_PROXY environment variable is set to "*.example.com",
│                       │     │                   a request to "[::1%25.example.com]:80` will incorrectly match
│                       │     │                    and not be proxied. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-115 
│                       │     ├ VendorSeverity   ╭ amazon     : 2 
│                       │     │                  ├ azure      : 1 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                  │        │           A:L 
│                       │     │                  │        ╰ V3Score : 4.4 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                           │           A:L 
│                       │     │                           ╰ V3Score : 4.4 
│                       │     ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/03/07/2 
│                       │     │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22870 
│                       │     │                  ├ [2]: https://go-review.googlesource.com/q/project:net 
│                       │     │                  ├ [3]: https://go.dev/cl/654697 
│                       │     │                  ├ [4]: https://go.dev/issue/71984 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3503 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                       │     ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                       │     ╰ LastModifiedDate: 2025-03-18T17:15:45.467Z 
│                       ├ [4] ╭ VulnerabilityID : GHSA-xr7q-jx4m-x55m 
│                       │     ├ PkgID           : google.golang.org/grpc@v1.64.0 
│                       │     ├ PkgName         : google.golang.org/grpc 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.64.0 
│                       │     │                  ╰ UID : 5b0d1d1c015eeeb3 
│                       │     ├ InstalledVersion: v1.64.0 
│                       │     ├ FixedVersion    : 1.64.1 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://github.com/advisories/GHSA-xr7q-jx4m-x55m 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : Private tokens could appear in logs if context containing
│                       │     │                   gRPC metadata is logged in github.com/grpc/grpc-go 
│                       │     ├ Description     : ### Impact
│                       │     │                   This issue represents a potential PII concern.  If
│                       │     │                   applications were printing or logging a context containing
│                       │     │                   gRPC metadata, the affected versions will contain all the
│                       │     │                   metadata, which may include private information.
│                       │     │                   
│                       │     │                   ### Patches
│                       │     │                   The issue first appeared in 1.64.0 and is patched in 1.64.1
│                       │     │                   and 1.65.0
│                       │     │                   ### Workarounds
│                       │     │                   If using an affected version and upgrading is not possible,
│                       │     │                   ensuring you do not log or print contexts will avoid the
│                       │     │                   problem. 
│                       │     ├ Severity        : LOW 
│                       │     ├ VendorSeverity   ─ ghsa: 1 
│                       │     ╰ References       ╭ [0]: https://github.com/grpc/grpc-go 
│                       │                        ├ [1]: https://github.com/grpc/grpc-go/commit/ab292411ddc0f3b7
│                       │                        │      a7786754d1fe05264c3021eb 
│                       │                        ╰ [2]: https://github.com/grpc/grpc-go/security/advisories/GHS
│                       │                               A-xr7q-jx4m-x55m 
│                       ╰ [5] ╭ VulnerabilityID : CVE-2025-22871 
│                             ├ PkgID           : stdlib@v1.22.12 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                             │                  ╰ UID : 156a2e832bd2e3cc 
│                             ├ InstalledVersion: v1.22.12 
│                             ├ FixedVersion    : 1.23.8, 1.24.2 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                             │                  │         905ad543ad918ad504c 
│                             │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                             │                            5507fce977ad8d74ed5 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                             │                   chunked data in net/http 
│                             ├ Description     : The net/http package improperly accepts a bare LF as a line
│                             │                   terminator in chunked data chunk-size lines. This can permit
│                             │                   request smuggling if a net/http server is used in conjunction
│                             │                    with a server that incorrectly accepts a bare LF as part of
│                             │                   a chunk-ext. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ─ redhat: 2 
│                             ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L/
│                             │                           │           A:N 
│                             │                           ╰ V3Score : 5.4 
│                             ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/04/04/4 
│                             │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22871 
│                             │                  ├ [2]: https://go.dev/cl/652998 
│                             │                  ├ [3]: https://go.dev/issue/71988 
│                             │                  ├ [4]: https://groups.google.com/g/golang-announce/c/Y2uBTVKjBQk 
│                             │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                             │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3563 
│                             │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                             ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                             ╰ LastModifiedDate: 2025-04-09T20:02:41.86Z 
├ [6] ╭ Target : /etc/ssh/ssh_host_ecdsa_key 
│     ├ Class  : secret 
│     ╰ Secrets ─ [0] ╭ RuleID   : private-key 
│                     ├ Category : AsymmetricPrivateKey 
│                     ├ Severity : HIGH 
│                     ├ Title    : Asymmetric Private Key 
│                     ├ StartLine: 1 
│                     ├ EndLine  : 1 
│                     ├ Code      ─ Lines ╭ [0] ╭ Number     : 1 
│                     │                   │     ├ Content    : BEGIN OPENSSH PRIVATE
│                     │                   │     │              KEY-----****************************************
│                     │                   │     │              ************************************************
│                     │                   │     │              ********************-----END OPENSSH PRI 
│                     │                   │     ├ IsCause    : true 
│                     │                   │     ├ Annotation :  
│                     │                   │     ├ Truncated  : false 
│                     │                   │     ├ Highlighted: BEGIN OPENSSH PRIVATE
│                     │                   │     │              KEY-----****************************************
│                     │                   │     │              ************************************************
│                     │                   │     │              ********************-----END OPENSSH PRI 
│                     │                   │     ├ FirstCause : true 
│                     │                   │     ╰ LastCause  : true 
│                     │                   ╰ [1] ╭ Number    : 2 
│                     │                         ├ Content   :  
│                     │                         ├ IsCause   : false 
│                     │                         ├ Annotation:  
│                     │                         ├ Truncated : false 
│                     │                         ├ FirstCause: false 
│                     │                         ╰ LastCause : false 
│                     ├ Match    : BEGIN OPENSSH PRIVATE
│                     │            KEY-----********************************************************************
│                     │            ****************************************************************************
│                     │            ************************************************************************----
│                     │            -END OPENSSH PRI 
│                     ╰ Layer     ╭ Digest   : sha256:1e46d2734c533db123d693189d46049643b92917cd76b905ad543ad91
│                                 │            8ad504c 
│                                 ├ DiffID   : sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a5507fce977ad
│                                 │            8d74ed5 
│                                 ╰ CreatedBy: COPY / / # buildkit 
├ [7] ╭ Target : /etc/ssh/ssh_host_ed25519_key 
│     ├ Class  : secret 
│     ╰ Secrets ─ [0] ╭ RuleID   : private-key 
│                     ├ Category : AsymmetricPrivateKey 
│                     ├ Severity : HIGH 
│                     ├ Title    : Asymmetric Private Key 
│                     ├ StartLine: 1 
│                     ├ EndLine  : 1 
│                     ├ Code      ─ Lines ╭ [0] ╭ Number     : 1 
│                     │                   │     ├ Content    : BEGIN OPENSSH PRIVATE
│                     │                   │     │              KEY-----****************************************
│                     │                   │     │              ************************************************
│                     │                   │     │              **************-----END OPENSSH PRI 
│                     │                   │     ├ IsCause    : true 
│                     │                   │     ├ Annotation :  
│                     │                   │     ├ Truncated  : false 
│                     │                   │     ├ Highlighted: BEGIN OPENSSH PRIVATE
│                     │                   │     │              KEY-----****************************************
│                     │                   │     │              ************************************************
│                     │                   │     │              **************-----END OPENSSH PRI 
│                     │                   │     ├ FirstCause : true 
│                     │                   │     ╰ LastCause  : true 
│                     │                   ╰ [1] ╭ Number    : 2 
│                     │                         ├ Content   :  
│                     │                         ├ IsCause   : false 
│                     │                         ├ Annotation:  
│                     │                         ├ Truncated : false 
│                     │                         ├ FirstCause: false 
│                     │                         ╰ LastCause : false 
│                     ├ Match    : BEGIN OPENSSH PRIVATE
│                     │            KEY-----********************************************************************
│                     │            ****************************************************************************
│                     │            **********************************************-----END OPENSSH PRI 
│                     ╰ Layer     ╭ Digest   : sha256:1e46d2734c533db123d693189d46049643b92917cd76b905ad543ad91
│                                 │            8ad504c 
│                                 ├ DiffID   : sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a5507fce977ad
│                                 │            8d74ed5 
│                                 ╰ CreatedBy: COPY / / # buildkit 
╰ [8] ╭ Target : /etc/ssh/ssh_host_rsa_key 
      ├ Class  : secret 
      ╰ Secrets ─ [0] ╭ RuleID   : private-key 
                      ├ Category : AsymmetricPrivateKey 
                      ├ Severity : HIGH 
                      ├ Title    : Asymmetric Private Key 
                      ├ StartLine: 1 
                      ├ EndLine  : 1 
                      ├ Code      ─ Lines ╭ [0] ╭ Number     : 1 
                      │                   │     ├ Content    : BEGIN OPENSSH PRIVATE
                      │                   │     │              KEY-----****************************************
                      │                   │     │              ************************************************
                      │                   │     │              *****-----END OPENSSH PRI 
                      │                   │     ├ IsCause    : true 
                      │                   │     ├ Annotation :  
                      │                   │     ├ Truncated  : false 
                      │                   │     ├ Highlighted: BEGIN OPENSSH PRIVATE
                      │                   │     │              KEY-----****************************************
                      │                   │     │              ************************************************
                      │                   │     │              *****-----END OPENSSH PRI 
                      │                   │     ├ FirstCause : true 
                      │                   │     ╰ LastCause  : true 
                      │                   ╰ [1] ╭ Number    : 2 
                      │                         ├ Content   :  
                      │                         ├ IsCause   : false 
                      │                         ├ Annotation:  
                      │                         ├ Truncated : false 
                      │                         ├ FirstCause: false 
                      │                         ╰ LastCause : false 
                      ├ Match    : BEGIN OPENSSH PRIVATE
                      │            KEY-----********************************************************************
                      │            ****************************************************************************
                      │            *****************************************-----END OPENSSH PRI 
                      ╰ Layer     ╭ Digest   : sha256:1e46d2734c533db123d693189d46049643b92917cd76b905ad543ad91
                                  │            8ad504c 
                                  ├ DiffID   : sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a5507fce977ad
                                  │            8d74ed5 
                                  ╰ CreatedBy: COPY / / # buildkit 
````
