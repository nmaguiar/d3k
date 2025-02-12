````yaml
╭ [0] ╭ Target         : nmaguiar/d3k:build (ubuntu 24.10) 
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
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ─ ubuntu: 1 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2025-0167.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2025-0167.json 
│                       │      │                  ├ [2]: https://hackerone.com/reports/2917232 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2025-0167 
│                       │      ├ PublishedDate   : 2025-02-05T10:15:22.71Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T15:15:16.967Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : dirmngr@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : dirmngr 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/dirmngr@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 537dc380c86aa2bc 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [3]  ╭ VulnerabilityID : CVE-2018-1000021 
│                       │      ├ PkgID           : git@1:2.45.2-1ubuntu1.1 
│                       │      ├ PkgName         : git 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.45.2-1ubuntu1.1?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : f3fbb7d4e6b57a64 
│                       │      ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-1000021 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : git: client prints server-sent ANSI escape codes to the
│                       │      │                   terminal, allowing for unverified messages to potentially
│                       │      │                   execute arbitrary commands 
│                       │      ├ Description     : GIT version 2.15.1 and earlier contains a Input Validation
│                       │      │                   Error vulnerability in Client that can result in problems
│                       │      │                   including messing up terminal configuration to RCE. This
│                       │      │                   attack appear to be exploitable via The user must interact
│                       │      │                   with a malicious git server, (or have their traffic modified
│                       │      │                    in a MITM attack). 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-20 
│                       │      ├ VendorSeverity   ╭ nvd   : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:P/I:P/A:P 
│                       │      │                  │        ├ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ├ V2Score : 6.8 
│                       │      │                  │        ╰ V3Score : 5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0]: http://www.batterystapl.es/2018/01/security-implicatio
│                       │      │                  │      ns-of-ansi-escape.html 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2018-1000021 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2018-1000021 
│                       │      │                  ├ [3]: https://public-inbox.org/git/20180205204312.GB104086@a
│                       │      │                  │      iede.svl.corp.google.com/ 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2018-1000021 
│                       │      ├ PublishedDate   : 2018-02-09T23:29:00.557Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T03:39:26.66Z 
│                       ├ [4]  ╭ VulnerabilityID : CVE-2018-1000021 
│                       │      ├ PkgID           : git-man@1:2.45.2-1ubuntu1.1 
│                       │      ├ PkgName         : git-man 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.45.2-1ubuntu1.1?arch=all&dis
│                       │      │                  │       tro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 1ecc8b58303457e2 
│                       │      ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-1000021 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : git: client prints server-sent ANSI escape codes to the
│                       │      │                   terminal, allowing for unverified messages to potentially
│                       │      │                   execute arbitrary commands 
│                       │      ├ Description     : GIT version 2.15.1 and earlier contains a Input Validation
│                       │      │                   Error vulnerability in Client that can result in problems
│                       │      │                   including messing up terminal configuration to RCE. This
│                       │      │                   attack appear to be exploitable via The user must interact
│                       │      │                   with a malicious git server, (or have their traffic modified
│                       │      │                    in a MITM attack). 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-20 
│                       │      ├ VendorSeverity   ╭ nvd   : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:P/I:P/A:P 
│                       │      │                  │        ├ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ├ V2Score : 6.8 
│                       │      │                  │        ╰ V3Score : 5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0]: http://www.batterystapl.es/2018/01/security-implicatio
│                       │      │                  │      ns-of-ansi-escape.html 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2018-1000021 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2018-1000021 
│                       │      │                  ├ [3]: https://public-inbox.org/git/20180205204312.GB104086@a
│                       │      │                  │      iede.svl.corp.google.com/ 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2018-1000021 
│                       │      ├ PublishedDate   : 2018-02-09T23:29:00.557Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T03:39:26.66Z 
│                       ├ [5]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gnupg@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg@2.4.4-2ubuntu18?arch=all&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : 5e104316734f96cb 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [6]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gnupg-l10n@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg-l10n 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg-l10n@2.4.4-2ubuntu18?arch=all&di
│                       │      │                  │       stro=ubuntu-24.10 
│                       │      │                  ╰ UID : c3160be79bbbed76 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [7]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gnupg-utils@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gnupg-utils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg-utils@2.4.4-2ubuntu18?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : cd45dd64c25a6a6e 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [8]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpg@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg@2.4.4-2ubuntu18?arch=amd64&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : cb252d595dc721c9 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [9]  ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpg-agent@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg-agent 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg-agent@2.4.4-2ubuntu18?arch=amd64&d
│                       │      │                  │       istro=ubuntu-24.10 
│                       │      │                  ╰ UID : f6e28d30e6cb9fd2 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [10] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpg-wks-client@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpg-wks-client 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg-wks-client@2.4.4-2ubuntu18?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 48a06fe143f760b8 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [11] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpgconf@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgconf 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgconf@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2c984f926df7bccc 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [12] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpgsm@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgsm 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgsm@2.4.4-2ubuntu18?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10 
│                       │      │                  ╰ UID : eb2a69f753ba049b 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [13] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : gpgv@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : gpgv 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgv@2.4.4-2ubuntu18?arch=amd64&distro
│                       │      │                  │       =ubuntu-24.10 
│                       │      │                  ╰ UID : 2178e73b274a9bdd 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [14] ╭ VulnerabilityID : CVE-2022-3219 
│                       │      ├ PkgID           : keyboxd@2.4.4-2ubuntu18 
│                       │      ├ PkgName         : keyboxd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/keyboxd@2.4.4-2ubuntu18?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : 49ce01586c31b1ae 
│                       │      ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ╰ LastModifiedDate: 2024-11-21T07:19:04.727Z 
│                       ├ [15] ╭ VulnerabilityID : CVE-2024-26462 
│                       │      ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : krb5-locales 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 364bca905abeb2e 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26462 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/kdc/ndr.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/kdc/ndr.c. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26462 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [6] : https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_3.md 
│                       │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2024-26462.html 
│                       │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [9] : https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2024-26462 
│                       │      │                  ├ [11]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       12/ 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-26462 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.857Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:27.01Z 
│                       ├ [16] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : krb5-locales 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 364bca905abeb2e 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [17] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : krb5-locales 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 364bca905abeb2e 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [18] ╭ VulnerabilityID : CVE-2016-20013 
│                       │      ├ PkgID           : libc-bin@2.40-1ubuntu3.1 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.40-1ubuntu3.1?arch=amd64&di
│                       │      │                  │       stro=ubuntu-24.10 
│                       │      │                  ╰ UID : b557bb6c7f40f6ec 
│                       │      ├ InstalledVersion: 2.40-1ubuntu3.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       ├ [19] ╭ VulnerabilityID : CVE-2016-20013 
│                       │      ├ PkgID           : libc6@2.40-1ubuntu3.1 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.40-1ubuntu3.1?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10 
│                       │      │                  ╰ UID : 14831d31dc9fa5be 
│                       │      ├ InstalledVersion: 2.40-1ubuntu3.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       ├ [20] ╭ VulnerabilityID : CVE-2025-0167 
│                       │      ├ PkgID           : libcurl3t64-gnutls@8.9.1-2ubuntu2.2 
│                       │      ├ PkgName         : libcurl3t64-gnutls 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl3t64-gnutls@8.9.1-2ubuntu2.2?ar
│                       │      │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 4c953bc353f81407 
│                       │      ├ InstalledVersion: 8.9.1-2ubuntu2.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ─ ubuntu: 1 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2025-0167.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2025-0167.json 
│                       │      │                  ├ [2]: https://hackerone.com/reports/2917232 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2025-0167 
│                       │      ├ PublishedDate   : 2025-02-05T10:15:22.71Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T15:15:16.967Z 
│                       ├ [21] ╭ VulnerabilityID : CVE-2025-0167 
│                       │      ├ PkgID           : libcurl4t64@8.9.1-2ubuntu2.2 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.9.1-2ubuntu2.2?arch=amd6
│                       │      │                  │       4&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : adc4db259ba03f4a 
│                       │      ├ InstalledVersion: 8.9.1-2ubuntu2.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ─ ubuntu: 1 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2025-0167.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2025-0167.json 
│                       │      │                  ├ [2]: https://hackerone.com/reports/2917232 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2025-0167 
│                       │      ├ PublishedDate   : 2025-02-05T10:15:22.71Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T15:15:16.967Z 
│                       ├ [22] ╭ VulnerabilityID : CVE-2024-2236 
│                       │      ├ PkgID           : libgcrypt20@1.11.0-6ubuntu1 
│                       │      ├ PkgName         : libgcrypt20 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.11.0-6ubuntu1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : ab291a9b8f84f4e3 
│                       │      ├ InstalledVersion: 1.11.0-6ubuntu1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-2236 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2245218 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2245218 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2268268 
│                       │      │                  ├ [5] : https://dev.gnupg.org/T7136 
│                       │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2024-9404.html 
│                       │      │                  ├ [7] : https://github.com/tomato42/marvin-toolkit/tree/maste
│                       │      │                  │       r/example/libgcrypt 
│                       │      │                  ├ [8] : https://gitlab.com/redhat-crypto/libgcrypt/libgcrypt-
│                       │      │                  │       mirror/-/merge_requests/17 
│                       │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2024-2236.html 
│                       │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2024-9404.html 
│                       │      │                  ├ [11]: https://lists.gnupg.org/pipermail/gcrypt-devel/2024-M
│                       │      │                  │       arch/005607.html 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-2236 
│                       │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-2236 
│                       │      ├ PublishedDate   : 2024-03-06T22:15:57.977Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:09:19.41Z 
│                       ├ [23] ╭ VulnerabilityID : CVE-2024-26462 
│                       │      ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libgssapi-krb5-2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?arc
│                       │      │                  │       h=amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 56954afa6df2892a 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26462 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/kdc/ndr.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/kdc/ndr.c. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26462 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [6] : https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_3.md 
│                       │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2024-26462.html 
│                       │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [9] : https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2024-26462 
│                       │      │                  ├ [11]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       12/ 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-26462 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.857Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:27.01Z 
│                       ├ [24] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libgssapi-krb5-2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?arc
│                       │      │                  │       h=amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 56954afa6df2892a 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [25] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libgssapi-krb5-2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?arc
│                       │      │                  │       h=amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 56954afa6df2892a 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [26] ╭ VulnerabilityID : CVE-2024-26462 
│                       │      ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libk5crypto3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2b19f24f594bda 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26462 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/kdc/ndr.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/kdc/ndr.c. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26462 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [6] : https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_3.md 
│                       │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2024-26462.html 
│                       │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [9] : https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2024-26462 
│                       │      │                  ├ [11]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       12/ 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-26462 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.857Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:27.01Z 
│                       ├ [27] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libk5crypto3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2b19f24f594bda 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [28] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libk5crypto3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=am
│                       │      │                  │       d64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 2b19f24f594bda 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [29] ╭ VulnerabilityID : CVE-2024-26462 
│                       │      ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5-3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : fd451162d5345124 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26462 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/kdc/ndr.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/kdc/ndr.c. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26462 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [6] : https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_3.md 
│                       │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2024-26462.html 
│                       │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [9] : https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2024-26462 
│                       │      │                  ├ [11]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       12/ 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-26462 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.857Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:27.01Z 
│                       ├ [30] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5-3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : fd451162d5345124 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [31] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5-3 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd64
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : fd451162d5345124 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [32] ╭ VulnerabilityID : CVE-2024-26462 
│                       │      ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5support0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : e67724f943ba50 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26462 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/kdc/ndr.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │      │                   vulnerability in /krb5/src/kdc/ndr.c. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26462 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [6] : https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_3.md 
│                       │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2024-26462.html 
│                       │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [9] : https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2024-26462 
│                       │      │                  ├ [11]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       12/ 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-26462 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.857Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:27.01Z 
│                       ├ [33] ╭ VulnerabilityID : CVE-2024-26458 
│                       │      ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5support0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : e67724f943ba50 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │      ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │      │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_1.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       10/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │      ╰ LastModifiedDate: 2024-12-06T21:15:06.28Z 
│                       ├ [34] ╭ VulnerabilityID : CVE-2024-26461 
│                       │      ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │      ├ PkgName         : libkrb5support0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : e67724f943ba50 
│                       │      ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26458 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-26461 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │      │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob/
│                       │      │                  │       main/krb5_detect_2.md 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │      │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-March
│                       │      │                  │       /023095.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-00
│                       │      │                  │       11/ 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │      ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:02:26.477Z 
│                       ├ [35] ╭ VulnerabilityID : CVE-2024-10041 
│                       │      ├ PkgID           : libpam-modules@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-modules 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules@1.5.3-7ubuntu2?arch=amd
│                       │      │                  │       64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : b6583972609b9d73 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-11250.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-10041.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-11250.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-10041 
│                       │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-10041 
│                       │      ├ PublishedDate   : 2024-10-23T14:15:03.97Z 
│                       │      ╰ LastModifiedDate: 2024-12-18T10:15:05.85Z 
│                       ├ [36] ╭ VulnerabilityID : CVE-2024-10963 
│                       │      ├ PkgID           : libpam-modules@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-modules 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules@1.5.3-7ubuntu2?arch=amd
│                       │      │                  │       64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : b6583972609b9d73 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2024-10244.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2024-10963.html 
│                       │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2024-10379.html 
│                       │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2024-10963 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-10963 
│                       │      ├ PublishedDate   : 2024-11-07T16:15:17.15Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T06:15:29.24Z 
│                       ├ [37] ╭ VulnerabilityID : CVE-2024-10041 
│                       │      ├ PkgID           : libpam-modules-bin@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-modules-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules-bin@1.5.3-7ubuntu2?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 52023e3d863fbfc8 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-11250.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-10041.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-11250.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-10041 
│                       │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-10041 
│                       │      ├ PublishedDate   : 2024-10-23T14:15:03.97Z 
│                       │      ╰ LastModifiedDate: 2024-12-18T10:15:05.85Z 
│                       ├ [38] ╭ VulnerabilityID : CVE-2024-10963 
│                       │      ├ PkgID           : libpam-modules-bin@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-modules-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules-bin@1.5.3-7ubuntu2?arch
│                       │      │                  │       =amd64&distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 52023e3d863fbfc8 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2024-10244.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2024-10963.html 
│                       │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2024-10379.html 
│                       │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2024-10963 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-10963 
│                       │      ├ PublishedDate   : 2024-11-07T16:15:17.15Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T06:15:29.24Z 
│                       ├ [39] ╭ VulnerabilityID : CVE-2024-10041 
│                       │      ├ PkgID           : libpam-runtime@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-runtime 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-runtime@1.5.3-7ubuntu2?arch=all
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 52dd5a3dac5cc9ec 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-11250.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-10041.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-11250.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-10041 
│                       │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-10041 
│                       │      ├ PublishedDate   : 2024-10-23T14:15:03.97Z 
│                       │      ╰ LastModifiedDate: 2024-12-18T10:15:05.85Z 
│                       ├ [40] ╭ VulnerabilityID : CVE-2024-10963 
│                       │      ├ PkgID           : libpam-runtime@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam-runtime 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-runtime@1.5.3-7ubuntu2?arch=all
│                       │      │                  │       &distro=ubuntu-24.10 
│                       │      │                  ╰ UID : 52dd5a3dac5cc9ec 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2024-10244.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2024-10963.html 
│                       │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2024-10379.html 
│                       │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2024-10963 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-10963 
│                       │      ├ PublishedDate   : 2024-11-07T16:15:17.15Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T06:15:29.24Z 
│                       ├ [41] ╭ VulnerabilityID : CVE-2024-10041 
│                       │      ├ PkgID           : libpam0g@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam0g 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam0g@1.5.3-7ubuntu2?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : ef18bc8de4c4b9a5 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ VendorSeverity   ╭ alma       : 2 
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
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-11250.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-10041.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2024-11250.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-10041 
│                       │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-10041 
│                       │      ├ PublishedDate   : 2024-10-23T14:15:03.97Z 
│                       │      ╰ LastModifiedDate: 2024-12-18T10:15:05.85Z 
│                       ├ [42] ╭ VulnerabilityID : CVE-2024-10963 
│                       │      ├ PkgID           : libpam0g@1.5.3-7ubuntu2 
│                       │      ├ PkgName         : libpam0g 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam0g@1.5.3-7ubuntu2?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10 
│                       │      │                  ╰ UID : ef18bc8de4c4b9a5 
│                       │      ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2324291 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2319212 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2324291 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10041 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-10963 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2024-10244.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2024:10379 
│                       │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2024-10963.html 
│                       │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2024-10379.html 
│                       │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2024-10963 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-10963 
│                       │      ├ PublishedDate   : 2024-11-07T16:15:17.15Z 
│                       │      ╰ LastModifiedDate: 2025-02-06T06:15:29.24Z 
│                       ├ [43] ╭ VulnerabilityID : CVE-2024-12797 
│                       │      ├ PkgID           : libssl3t64@3.3.1-2ubuntu2 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.3.1-2ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-24.10 
│                       │      │                  ╰ UID : fc2d3bb6db1ed3a2 
│                       │      ├ InstalledVersion: 3.3.1-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-12797 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : Issue summary: Clients using RFC7250 Raw Public Keys (RPKs)
│                       │      │                   to authent ... 
│                       │      ├ Description     : Issue summary: Clients using RFC7250 Raw Public Keys (RPKs)
│                       │      │                   to authenticate a
│                       │      │                   server may fail to notice that the server was not
│                       │      │                   authenticated, because
│                       │      │                   handshakes don't abort as expected when the SSL_VERIFY_PEER
│                       │      │                   verification mode
│                       │      │                   is set.
│                       │      │                   
│                       │      │                   Impact summary: TLS and DTLS connections using raw public
│                       │      │                   keys may be
│                       │      │                   vulnerable to man-in-middle attacks when server
│                       │      │                   authentication failure is not
│                       │      │                   detected by clients.
│                       │      │                   RPKs are disabled by default in both TLS clients and TLS
│                       │      │                   servers.  The issue
│                       │      │                   only arises when TLS clients explicitly enable RPK use by
│                       │      │                   the server, and the
│                       │      │                   server, likewise, enables sending of an RPK instead of an
│                       │      │                   X.509 certificate
│                       │      │                   chain.  The affected clients are those that then rely on the
│                       │      │                    handshake to
│                       │      │                   fail when the server's RPK fails to match one of the
│                       │      │                   expected public keys,
│                       │      │                   by setting the verification mode to SSL_VERIFY_PEER.
│                       │      │                   Clients that enable server-side raw public keys can still
│                       │      │                   find out that raw
│                       │      │                   public key verification failed by calling
│                       │      │                   SSL_get_verify_result(), and those
│                       │      │                   that do, and take appropriate action, are not affected. 
│                       │      │                   This issue was
│                       │      │                   introduced in the initial implementation of RPK support in
│                       │      │                   OpenSSL 3.2.
│                       │      │                   The FIPS modules in 3.4, 3.3, 3.2, 3.1 and 3.0 are not
│                       │      │                   affected by this issue. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-392 
│                       │      ├ VendorSeverity   ╭ ghsa  : 1 
│                       │      │                  ╰ ubuntu: 3 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/02/11/3 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/738d4f9fdeaa
│                       │      │                  │      d57660dcba50a619fafced3fd5e9 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/798779d43494
│                       │      │                  │      549b611233f92652f0da5328fbe7 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/87ebd203feff
│                       │      │                  │      cf92ad5889df92f90bb0ee10a699 
│                       │      │                  ├ [4]: https://github.com/pyca/cryptography 
│                       │      │                  ├ [5]: https://github.com/pyca/cryptography/security/advisori
│                       │      │                  │      es/GHSA-79v4-65xg-pq4g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2024-12797 
│                       │      │                  ├ [7]: https://openssl-library.org/news/secadv/20250211.txt 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2024-12797 
│                       │      ├ PublishedDate   : 2025-02-11T16:15:38.827Z 
│                       │      ╰ LastModifiedDate: 2025-02-11T16:15:38.827Z 
│                       ├ [44] ╭ VulnerabilityID : CVE-2024-41996 
│                       │      ├ PkgID           : libssl3t64@3.3.1-2ubuntu2 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.3.1-2ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-24.10 
│                       │      │                  ╰ UID : fc2d3bb6db1ed3a2 
│                       │      ├ InstalledVersion: 3.3.1-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       ├ [45] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : libsubid4@1:4.15.3-3ubuntu2 
│                       │      ├ PkgName         : libsubid4 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid4@4.15.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 5e1d8b3be76e72d9 
│                       │      ├ InstalledVersion: 1:4.15.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
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
│                       ├ [46] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : login@1:4.15.3-3ubuntu2 
│                       │      ├ PkgName         : login 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.15.3-3ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 40d8bcd89e02a7ed 
│                       │      ├ InstalledVersion: 1:4.15.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
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
│                       ├ [47] ╭ VulnerabilityID : CVE-2024-12797 
│                       │      ├ PkgID           : openssl@3.3.1-2ubuntu2 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.3.1-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-24.10 
│                       │      │                  ╰ UID : 27981e81a64e079d 
│                       │      ├ InstalledVersion: 3.3.1-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-12797 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : Issue summary: Clients using RFC7250 Raw Public Keys (RPKs)
│                       │      │                   to authent ... 
│                       │      ├ Description     : Issue summary: Clients using RFC7250 Raw Public Keys (RPKs)
│                       │      │                   to authenticate a
│                       │      │                   server may fail to notice that the server was not
│                       │      │                   authenticated, because
│                       │      │                   handshakes don't abort as expected when the SSL_VERIFY_PEER
│                       │      │                   verification mode
│                       │      │                   is set.
│                       │      │                   
│                       │      │                   Impact summary: TLS and DTLS connections using raw public
│                       │      │                   keys may be
│                       │      │                   vulnerable to man-in-middle attacks when server
│                       │      │                   authentication failure is not
│                       │      │                   detected by clients.
│                       │      │                   RPKs are disabled by default in both TLS clients and TLS
│                       │      │                   servers.  The issue
│                       │      │                   only arises when TLS clients explicitly enable RPK use by
│                       │      │                   the server, and the
│                       │      │                   server, likewise, enables sending of an RPK instead of an
│                       │      │                   X.509 certificate
│                       │      │                   chain.  The affected clients are those that then rely on the
│                       │      │                    handshake to
│                       │      │                   fail when the server's RPK fails to match one of the
│                       │      │                   expected public keys,
│                       │      │                   by setting the verification mode to SSL_VERIFY_PEER.
│                       │      │                   Clients that enable server-side raw public keys can still
│                       │      │                   find out that raw
│                       │      │                   public key verification failed by calling
│                       │      │                   SSL_get_verify_result(), and those
│                       │      │                   that do, and take appropriate action, are not affected. 
│                       │      │                   This issue was
│                       │      │                   introduced in the initial implementation of RPK support in
│                       │      │                   OpenSSL 3.2.
│                       │      │                   The FIPS modules in 3.4, 3.3, 3.2, 3.1 and 3.0 are not
│                       │      │                   affected by this issue. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-392 
│                       │      ├ VendorSeverity   ╭ ghsa  : 1 
│                       │      │                  ╰ ubuntu: 3 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/02/11/3 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/738d4f9fdeaa
│                       │      │                  │      d57660dcba50a619fafced3fd5e9 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/798779d43494
│                       │      │                  │      549b611233f92652f0da5328fbe7 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/87ebd203feff
│                       │      │                  │      cf92ad5889df92f90bb0ee10a699 
│                       │      │                  ├ [4]: https://github.com/pyca/cryptography 
│                       │      │                  ├ [5]: https://github.com/pyca/cryptography/security/advisori
│                       │      │                  │      es/GHSA-79v4-65xg-pq4g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2024-12797 
│                       │      │                  ├ [7]: https://openssl-library.org/news/secadv/20250211.txt 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2024-12797 
│                       │      ├ PublishedDate   : 2025-02-11T16:15:38.827Z 
│                       │      ╰ LastModifiedDate: 2025-02-11T16:15:38.827Z 
│                       ├ [48] ╭ VulnerabilityID : CVE-2024-41996 
│                       │      ├ PkgID           : openssl@3.3.1-2ubuntu2 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.3.1-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-24.10 
│                       │      │                  ╰ UID : 27981e81a64e079d 
│                       │      ├ InstalledVersion: 3.3.1-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       ├ [49] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : passwd@1:4.15.3-3ubuntu2 
│                       │      ├ PkgName         : passwd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.15.3-3ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : 2260678b2ac7f499 
│                       │      ├ InstalledVersion: 1:4.15.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
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
│                       ├ [50] ╭ VulnerabilityID : CVE-2018-6952 
│                       │      ├ PkgID           : patch@2.7.6-7build3 
│                       │      ├ PkgName         : patch 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.7.6-7build3?arch=amd64&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : c4398a40b59322fd 
│                       │      ├ InstalledVersion: 2.7.6-7build3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       ├ [51] ╭ VulnerabilityID : CVE-2021-45261 
│                       │      ├ PkgID           : patch@2.7.6-7build3 
│                       │      ├ PkgName         : patch 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.7.6-7build3?arch=amd64&distro=
│                       │      │                  │       ubuntu-24.10 
│                       │      │                  ╰ UID : c4398a40b59322fd 
│                       │      ├ InstalledVersion: 2.7.6-7build3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       ├ [52] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : uidmap@1:4.15.3-3ubuntu2 
│                       │      ├ PkgName         : uidmap 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.15.3-3ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-24.10&epoch=1 
│                       │      │                  ╰ UID : d25d967bfd8a56ea 
│                       │      ├ InstalledVersion: 1:4.15.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
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
│                       ├ [53] ╭ VulnerabilityID : CVE-2025-24014 
│                       │      ├ PkgID           : vim@2:9.1.0496-1ubuntu6.3 
│                       │      ├ PkgName         : vim 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.0496-1ubuntu6.3?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : 5b08248ab7f22b9b 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.3 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.4 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24014 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: segmentation fault in win_line() in Vim < 9.1.1043 
│                       │      ├ Description     : Vim is an open source, command line text editor. A
│                       │      │                   segmentation fault was found in Vim before 9.1.1043. In
│                       │      │                   silent Ex mode (-s -e), Vim typically doesn't show a screen
│                       │      │                   and just operates silently in batch mode. However, it is
│                       │      │                   still possible to trigger the function that handles the
│                       │      │                   scrolling of a gui version of Vim by feeding some binary
│                       │      │                   characters to Vim. The function that handles the scrolling
│                       │      │                   however may be triggering a redraw, which will access the
│                       │      │                   ScreenLines pointer, even so this variable hasn't been
│                       │      │                   allocated (since there is no screen). This vulnerability is
│                       │      │                   fixed in 9.1.1043. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/01/20/4 
│                       │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2025/01/21/1 
│                       │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2025-24014 
│                       │      │                  ├ [3]: https://github.com/vim/vim/commit/9d1bed5eccdbb46a26b8
│                       │      │                  │      a484f5e9163c40e63919 
│                       │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-j3
│                       │      │                  │      g9-wg22-v955 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-24014 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-7261-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-24014 
│                       │      ├ PublishedDate   : 2025-01-20T23:15:07.73Z 
│                       │      ╰ LastModifiedDate: 2025-01-21T03:15:06.393Z 
│                       ├ [54] ╭ VulnerabilityID : CVE-2025-24014 
│                       │      ├ PkgID           : vim-common@2:9.1.0496-1ubuntu6.3 
│                       │      ├ PkgName         : vim-common 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.0496-1ubuntu6.3?arch=al
│                       │      │                  │       l&distro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : 6c617ec11f295657 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.3 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.4 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24014 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: segmentation fault in win_line() in Vim < 9.1.1043 
│                       │      ├ Description     : Vim is an open source, command line text editor. A
│                       │      │                   segmentation fault was found in Vim before 9.1.1043. In
│                       │      │                   silent Ex mode (-s -e), Vim typically doesn't show a screen
│                       │      │                   and just operates silently in batch mode. However, it is
│                       │      │                   still possible to trigger the function that handles the
│                       │      │                   scrolling of a gui version of Vim by feeding some binary
│                       │      │                   characters to Vim. The function that handles the scrolling
│                       │      │                   however may be triggering a redraw, which will access the
│                       │      │                   ScreenLines pointer, even so this variable hasn't been
│                       │      │                   allocated (since there is no screen). This vulnerability is
│                       │      │                   fixed in 9.1.1043. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/01/20/4 
│                       │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2025/01/21/1 
│                       │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2025-24014 
│                       │      │                  ├ [3]: https://github.com/vim/vim/commit/9d1bed5eccdbb46a26b8
│                       │      │                  │      a484f5e9163c40e63919 
│                       │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-j3
│                       │      │                  │      g9-wg22-v955 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-24014 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-7261-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-24014 
│                       │      ├ PublishedDate   : 2025-01-20T23:15:07.73Z 
│                       │      ╰ LastModifiedDate: 2025-01-21T03:15:06.393Z 
│                       ├ [55] ╭ VulnerabilityID : CVE-2025-24014 
│                       │      ├ PkgID           : vim-runtime@2:9.1.0496-1ubuntu6.3 
│                       │      ├ PkgName         : vim-runtime 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.0496-1ubuntu6.3?arch=a
│                       │      │                  │       ll&distro=ubuntu-24.10&epoch=2 
│                       │      │                  ╰ UID : c8301d46c5faf380 
│                       │      ├ InstalledVersion: 2:9.1.0496-1ubuntu6.3 
│                       │      ├ FixedVersion    : 2:9.1.0496-1ubuntu6.4 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24014 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Title           : vim: segmentation fault in win_line() in Vim < 9.1.1043 
│                       │      ├ Description     : Vim is an open source, command line text editor. A
│                       │      │                   segmentation fault was found in Vim before 9.1.1043. In
│                       │      │                   silent Ex mode (-s -e), Vim typically doesn't show a screen
│                       │      │                   and just operates silently in batch mode. However, it is
│                       │      │                   still possible to trigger the function that handles the
│                       │      │                   scrolling of a gui version of Vim by feeding some binary
│                       │      │                   characters to Vim. The function that handles the scrolling
│                       │      │                   however may be triggering a redraw, which will access the
│                       │      │                   ScreenLines pointer, even so this variable hasn't been
│                       │      │                   allocated (since there is no screen). This vulnerability is
│                       │      │                   fixed in 9.1.1043. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/01/20/4 
│                       │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2025/01/21/1 
│                       │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2025-24014 
│                       │      │                  ├ [3]: https://github.com/vim/vim/commit/9d1bed5eccdbb46a26b8
│                       │      │                  │      a484f5e9163c40e63919 
│                       │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-j3
│                       │      │                  │      g9-wg22-v955 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-24014 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-7261-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-24014 
│                       │      ├ PublishedDate   : 2025-01-20T23:15:07.73Z 
│                       │      ╰ LastModifiedDate: 2025-01-21T03:15:06.393Z 
│                       ├ [56] ╭ VulnerabilityID : CVE-2021-31879 
│                       │      ├ PkgID           : wget@1.24.5-1ubuntu2 
│                       │      ├ PkgName         : wget 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.24.5-1ubuntu2?arch=amd64&distro
│                       │      │                  │       =ubuntu-24.10 
│                       │      │                  ╰ UID : 50e135651195f37e 
│                       │      ├ InstalledVersion: 1.24.5-1ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                       │      │                  │         311c73bf21fae539f12e 
│                       │      │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                       │      │                            a2dae648aecacd8f5a3c 
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
│                       ╰ [57] ╭ VulnerabilityID : CVE-2025-24014 
│                              ├ PkgID           : xxd@2:9.1.0496-1ubuntu6.3 
│                              ├ PkgName         : xxd 
│                              ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.0496-1ubuntu6.3?arch=amd64&dis
│                              │                  │       tro=ubuntu-24.10&epoch=2 
│                              │                  ╰ UID : 5f9f91b38f2bcc11 
│                              ├ InstalledVersion: 2:9.1.0496-1ubuntu6.3 
│                              ├ FixedVersion    : 2:9.1.0496-1ubuntu6.4 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd26
│                              │                  │         311c73bf21fae539f12e 
│                              │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4f
│                              │                            a2dae648aecacd8f5a3c 
│                              ├ SeveritySource  : ubuntu 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24014 
│                              ├ DataSource       ╭ ID  : ubuntu 
│                              │                  ├ Name: Ubuntu CVE Tracker 
│                              │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                              ├ Title           : vim: segmentation fault in win_line() in Vim < 9.1.1043 
│                              ├ Description     : Vim is an open source, command line text editor. A
│                              │                   segmentation fault was found in Vim before 9.1.1043. In
│                              │                   silent Ex mode (-s -e), Vim typically doesn't show a screen
│                              │                   and just operates silently in batch mode. However, it is
│                              │                   still possible to trigger the function that handles the
│                              │                   scrolling of a gui version of Vim by feeding some binary
│                              │                   characters to Vim. The function that handles the scrolling
│                              │                   however may be triggering a redraw, which will access the
│                              │                   ScreenLines pointer, even so this variable hasn't been
│                              │                   allocated (since there is no screen). This vulnerability is
│                              │                   fixed in 9.1.1043. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-787 
│                              ├ VendorSeverity   ╭ azure      : 2 
│                              │                  ├ cbl-mariner: 2 
│                              │                  ├ redhat     : 1 
│                              │                  ╰ ubuntu     : 2 
│                              ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L
│                              │                           │           /A:L 
│                              │                           ╰ V3Score : 4.2 
│                              ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/01/20/4 
│                              │                  ├ [1]: http://www.openwall.com/lists/oss-security/2025/01/21/1 
│                              │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2025-24014 
│                              │                  ├ [3]: https://github.com/vim/vim/commit/9d1bed5eccdbb46a26b8
│                              │                  │      a484f5e9163c40e63919 
│                              │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-j3
│                              │                  │      g9-wg22-v955 
│                              │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-24014 
│                              │                  ├ [6]: https://ubuntu.com/security/notices/USN-7261-1 
│                              │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-24014 
│                              ├ PublishedDate   : 2025-01-20T23:15:07.73Z 
│                              ╰ LastModifiedDate: 2025-01-21T03:15:06.393Z 
├ [1] ╭ Target: Java 
│     ├ Class : lang-pkgs 
│     ╰ Type  : jar 
├ [2] ╭ Target         : usr/bin/docker-compose 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2024-45336 
│                       │     ├ PkgID           : stdlib@v1.22.10 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │     │                  ╰ UID : afd799025a5d40f9 
│                       │     ├ InstalledVersion: v1.22.10 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     ├ VendorSeverity   ╭ bitnami: 2 
│                       │     │                  ╰ redhat : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.9 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-45336 
│                       │     │                  ├ [1]: https://go.dev/cl/643100 
│                       │     │                  ├ [2]: https://go.dev/issue/70530 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m/
│                       │     │                  │      bk9LAa-lCgAJ 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m/
│                       │     │                  │      G461hA6lCgAJ 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-45336 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3420 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-45336 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:28.807Z 
│                       │     ╰ LastModifiedDate: 2025-01-28T16:15:38.22Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2024-45341 
│                       │     ├ PkgID           : stdlib@v1.22.10 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │     │                  ╰ UID : afd799025a5d40f9 
│                       │     ├ InstalledVersion: v1.22.10 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     ├ VendorSeverity   ╭ bitnami    : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ╰ redhat     : 1 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 4.2 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-45341 
│                       │     │                  ├ [1]: https://go.dev/cl/643099 
│                       │     │                  ├ [2]: https://go.dev/issue/71156 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m/
│                       │     │                  │      bk9LAa-lCgAJ 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m/
│                       │     │                  │      G461hA6lCgAJ 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-45341 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3373 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-45341 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:29.147Z 
│                       │     ╰ LastModifiedDate: 2025-01-28T16:15:38.65Z 
│                       ╰ [2] ╭ VulnerabilityID : CVE-2025-22866 
│                             ├ PkgID           : stdlib@v1.22.10 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                             │                  ╰ UID : afd799025a5d40f9 
│                             ├ InstalledVersion: v1.22.10 
│                             ├ FixedVersion    : 1.22.12, 1.23.6, 1.24.0-rc.3 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                             │                  │         11c73bf21fae539f12e 
│                             │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                             │                            2dae648aecacd8f5a3c 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22866 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : crypto/internal/nistec: golang: Timing sidechannel for P-256
│                             │                   on ppc64le in crypto/internal/nistec 
│                             ├ Description     : Due to the usage of a variable time instruction in the
│                             │                   assembly implementation of an internal function, a small
│                             │                   number of bits of secret scalars are leaked on the ppc64le
│                             │                   architecture. Due to the way this function is used, we do not
│                             │                    believe this leakage is enough to allow recovery of the
│                             │                   private key when P-256 is used in any well known protocols. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ╭ bitnami: 3 
│                             │                  ╰ redhat : 2 
│                             ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                             │                  │         │           /A:H 
│                             │                  │         ╰ V3Score : 8.4 
│                             │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                             │                            │           /A:N 
│                             │                            ╰ V3Score : 5.3 
│                             ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22866 
│                             │                  ├ [1]: https://go.dev/cl/643735 
│                             │                  ├ [2]: https://go.dev/issue/71383 
│                             │                  ├ [3]: https://groups.google.com/g/golang-announce/c/xU1ZCHUZw3k 
│                             │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-22866 
│                             │                  ├ [5]: https://pkg.go.dev/vuln/GO-2025-3447 
│                             │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-22866 
│                             ├ PublishedDate   : 2025-02-06T17:15:21.41Z 
│                             ╰ LastModifiedDate: 2025-02-11T15:15:20.87Z 
├ [3] ╭ Target         : usr/bin/helm 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2024-45336 
│                       │     ├ PkgID           : stdlib@v1.23.4 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.4 
│                       │     │                  ╰ UID : ad4de8aeb2324474 
│                       │     ├ InstalledVersion: v1.23.4 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     ├ VendorSeverity   ╭ bitnami: 2 
│                       │     │                  ╰ redhat : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.9 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-45336 
│                       │     │                  ├ [1]: https://go.dev/cl/643100 
│                       │     │                  ├ [2]: https://go.dev/issue/70530 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m/
│                       │     │                  │      bk9LAa-lCgAJ 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m/
│                       │     │                  │      G461hA6lCgAJ 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-45336 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3420 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-45336 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:28.807Z 
│                       │     ╰ LastModifiedDate: 2025-01-28T16:15:38.22Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2024-45341 
│                       │     ├ PkgID           : stdlib@v1.23.4 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.4 
│                       │     │                  ╰ UID : ad4de8aeb2324474 
│                       │     ├ InstalledVersion: v1.23.4 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     ├ VendorSeverity   ╭ bitnami    : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ╰ redhat     : 1 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 4.2 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-45341 
│                       │     │                  ├ [1]: https://go.dev/cl/643099 
│                       │     │                  ├ [2]: https://go.dev/issue/71156 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m/
│                       │     │                  │      bk9LAa-lCgAJ 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m/
│                       │     │                  │      G461hA6lCgAJ 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-45341 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3373 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-45341 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:29.147Z 
│                       │     ╰ LastModifiedDate: 2025-01-28T16:15:38.65Z 
│                       ╰ [2] ╭ VulnerabilityID : CVE-2025-22866 
│                             ├ PkgID           : stdlib@v1.23.4 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.4 
│                             │                  ╰ UID : ad4de8aeb2324474 
│                             ├ InstalledVersion: v1.23.4 
│                             ├ FixedVersion    : 1.22.12, 1.23.6, 1.24.0-rc.3 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                             │                  │         11c73bf21fae539f12e 
│                             │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                             │                            2dae648aecacd8f5a3c 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22866 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : crypto/internal/nistec: golang: Timing sidechannel for P-256
│                             │                   on ppc64le in crypto/internal/nistec 
│                             ├ Description     : Due to the usage of a variable time instruction in the
│                             │                   assembly implementation of an internal function, a small
│                             │                   number of bits of secret scalars are leaked on the ppc64le
│                             │                   architecture. Due to the way this function is used, we do not
│                             │                    believe this leakage is enough to allow recovery of the
│                             │                   private key when P-256 is used in any well known protocols. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ╭ bitnami: 3 
│                             │                  ╰ redhat : 2 
│                             ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                             │                  │         │           /A:H 
│                             │                  │         ╰ V3Score : 8.4 
│                             │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                             │                            │           /A:N 
│                             │                            ╰ V3Score : 5.3 
│                             ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22866 
│                             │                  ├ [1]: https://go.dev/cl/643735 
│                             │                  ├ [2]: https://go.dev/issue/71383 
│                             │                  ├ [3]: https://groups.google.com/g/golang-announce/c/xU1ZCHUZw3k 
│                             │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-22866 
│                             │                  ├ [5]: https://pkg.go.dev/vuln/GO-2025-3447 
│                             │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-22866 
│                             ├ PublishedDate   : 2025-02-06T17:15:21.41Z 
│                             ╰ LastModifiedDate: 2025-02-11T15:15:20.87Z 
├ [4] ╭ Target         : usr/bin/kubectl 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2024-45338 
│                       │     ├ PkgID           : golang.org/x/net@v0.30.0 
│                       │     ├ PkgName         : golang.org/x/net 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.30.0 
│                       │     │                  ╰ UID : 49cea3404592705a 
│                       │     ├ InstalledVersion: v0.30.0 
│                       │     ├ FixedVersion    : 0.33.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45338 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/net/html: Non-linear parsing of case-insensitive
│                       │     │                    content in golang.org/x/net/html 
│                       │     ├ Description     : An attacker can craft an input to the Parse functions that
│                       │     │                   would be processed non-linearly with respect to its length,
│                       │     │                   resulting in extremely slow parsing. This could cause a
│                       │     │                   denial of service. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ─ [0]: CWE-1333 
│                       │     ├ VendorSeverity   ╭ amazon     : 3 
│                       │     │                  ├ azure      : 3 
│                       │     │                  ├ cbl-mariner: 3 
│                       │     │                  ├ ghsa       : 3 
│                       │     │                  ├ redhat     : 3 
│                       │     │                  ╰ ubuntu     : 2 
│                       │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-45338 
│                       │     │                  ├ [1] : https://cs.opensource.google/go/x/net 
│                       │     │                  ├ [2] : https://github.com/golang/go/issues/70906 
│                       │     │                  ├ [3] : https://go-review.googlesource.com/c/net/+/637536 
│                       │     │                  ├ [4] : https://go.dev/cl/637536 
│                       │     │                  ├ [5] : https://go.dev/issue/70906 
│                       │     │                  ├ [6] : https://groups.google.com/g/golang-announce/c/wSCRmFnN
│                       │     │                  │       mPA/m/Lvcd0mRMAwAJ 
│                       │     │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2024-45338 
│                       │     │                  ├ [8] : https://pkg.go.dev/vuln/GO-2024-3333 
│                       │     │                  ├ [9] : https://ubuntu.com/security/notices/USN-7197-1 
│                       │     │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2024-45338 
│                       │     ├ PublishedDate   : 2024-12-18T21:15:08.173Z 
│                       │     ╰ LastModifiedDate: 2024-12-31T20:16:06.603Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2024-45336 
│                       │     ├ PkgID           : stdlib@v1.23.4 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.4 
│                       │     │                  ╰ UID : 7137b2d56f7a4114 
│                       │     ├ InstalledVersion: v1.23.4 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     ├ VendorSeverity   ╭ bitnami: 2 
│                       │     │                  ╰ redhat : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.9 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-45336 
│                       │     │                  ├ [1]: https://go.dev/cl/643100 
│                       │     │                  ├ [2]: https://go.dev/issue/70530 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m/
│                       │     │                  │      bk9LAa-lCgAJ 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m/
│                       │     │                  │      G461hA6lCgAJ 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-45336 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3420 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-45336 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:28.807Z 
│                       │     ╰ LastModifiedDate: 2025-01-28T16:15:38.22Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2024-45341 
│                       │     ├ PkgID           : stdlib@v1.23.4 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.4 
│                       │     │                  ╰ UID : 7137b2d56f7a4114 
│                       │     ├ InstalledVersion: v1.23.4 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     ├ VendorSeverity   ╭ bitnami    : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ╰ redhat     : 1 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 4.2 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-45341 
│                       │     │                  ├ [1]: https://go.dev/cl/643099 
│                       │     │                  ├ [2]: https://go.dev/issue/71156 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m/
│                       │     │                  │      bk9LAa-lCgAJ 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m/
│                       │     │                  │      G461hA6lCgAJ 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-45341 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3373 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-45341 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:29.147Z 
│                       │     ╰ LastModifiedDate: 2025-01-28T16:15:38.65Z 
│                       ╰ [3] ╭ VulnerabilityID : CVE-2025-22866 
│                             ├ PkgID           : stdlib@v1.23.4 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.4 
│                             │                  ╰ UID : 7137b2d56f7a4114 
│                             ├ InstalledVersion: v1.23.4 
│                             ├ FixedVersion    : 1.22.12, 1.23.6, 1.24.0-rc.3 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                             │                  │         11c73bf21fae539f12e 
│                             │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                             │                            2dae648aecacd8f5a3c 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22866 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : crypto/internal/nistec: golang: Timing sidechannel for P-256
│                             │                   on ppc64le in crypto/internal/nistec 
│                             ├ Description     : Due to the usage of a variable time instruction in the
│                             │                   assembly implementation of an internal function, a small
│                             │                   number of bits of secret scalars are leaked on the ppc64le
│                             │                   architecture. Due to the way this function is used, we do not
│                             │                    believe this leakage is enough to allow recovery of the
│                             │                   private key when P-256 is used in any well known protocols. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ╭ bitnami: 3 
│                             │                  ╰ redhat : 2 
│                             ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                             │                  │         │           /A:H 
│                             │                  │         ╰ V3Score : 8.4 
│                             │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                             │                            │           /A:N 
│                             │                            ╰ V3Score : 5.3 
│                             ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22866 
│                             │                  ├ [1]: https://go.dev/cl/643735 
│                             │                  ├ [2]: https://go.dev/issue/71383 
│                             │                  ├ [3]: https://groups.google.com/g/golang-announce/c/xU1ZCHUZw3k 
│                             │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-22866 
│                             │                  ├ [5]: https://pkg.go.dev/vuln/GO-2025-3447 
│                             │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-22866 
│                             ├ PublishedDate   : 2025-02-06T17:15:21.41Z 
│                             ╰ LastModifiedDate: 2025-02-11T15:15:20.87Z 
├ [5] ╭ Target         : usr/local/bin/k3d 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2024-41110 
│                       │     ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                       │     ├ PkgName         : github.com/docker/docker 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincompat
│                       │     │                  │       ible 
│                       │     │                  ╰ UID : 18d926a57b74d388 
│                       │     ├ InstalledVersion: v27.0.3+incompatible 
│                       │     ├ FixedVersion    : 23.0.15, 26.1.5, 27.1.1, 25.0.6 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2024-41110 
│                       │     │                  ├ [18]: https://www.docker.com/blog/docker-security-advisory-d
│                       │     │                  │       ocker-engine-authz-plugin 
│                       │     │                  ╰ [19]: https://www.docker.com/blog/docker-security-advisory-d
│                       │     │                          ocker-engine-authz-plugin/ 
│                       │     ├ PublishedDate   : 2024-07-24T17:15:11.053Z 
│                       │     ╰ LastModifiedDate: 2024-11-21T09:32:15.16Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2024-45337 
│                       │     ├ PkgID           : golang.org/x/crypto@v0.24.0 
│                       │     ├ PkgName         : golang.org/x/crypto 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.24.0 
│                       │     │                  ╰ UID : 51665884b15027a5 
│                       │     ├ InstalledVersion: v0.24.0 
│                       │     ├ FixedVersion    : 0.31.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45337 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/crypto/ssh: Misuse of
│                       │     │                   ServerConfig.PublicKeyCallback may cause authorization bypass
│                       │     │                    in golang.org/x/crypto 
│                       │     ├ Description     : Applications and libraries which misuse the
│                       │     │                   ServerConfig.PublicKeyCallback callback may be susceptible to
│                       │     │                    an authorization bypass. The documentation for
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
│                       │     ╰ LastModifiedDate: 2025-01-31T15:15:13.19Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2024-45338 
│                       │     ├ PkgID           : golang.org/x/net@v0.26.0 
│                       │     ├ PkgName         : golang.org/x/net 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.26.0 
│                       │     │                  ╰ UID : d33d648a9a9d02d2 
│                       │     ├ InstalledVersion: v0.26.0 
│                       │     ├ FixedVersion    : 0.33.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45338 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/net/html: Non-linear parsing of case-insensitive
│                       │     │                    content in golang.org/x/net/html 
│                       │     ├ Description     : An attacker can craft an input to the Parse functions that
│                       │     │                   would be processed non-linearly with respect to its length,
│                       │     │                   resulting in extremely slow parsing. This could cause a
│                       │     │                   denial of service. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ─ [0]: CWE-1333 
│                       │     ├ VendorSeverity   ╭ amazon     : 3 
│                       │     │                  ├ azure      : 3 
│                       │     │                  ├ cbl-mariner: 3 
│                       │     │                  ├ ghsa       : 3 
│                       │     │                  ├ redhat     : 3 
│                       │     │                  ╰ ubuntu     : 2 
│                       │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-45338 
│                       │     │                  ├ [1] : https://cs.opensource.google/go/x/net 
│                       │     │                  ├ [2] : https://github.com/golang/go/issues/70906 
│                       │     │                  ├ [3] : https://go-review.googlesource.com/c/net/+/637536 
│                       │     │                  ├ [4] : https://go.dev/cl/637536 
│                       │     │                  ├ [5] : https://go.dev/issue/70906 
│                       │     │                  ├ [6] : https://groups.google.com/g/golang-announce/c/wSCRmFnN
│                       │     │                  │       mPA/m/Lvcd0mRMAwAJ 
│                       │     │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2024-45338 
│                       │     │                  ├ [8] : https://pkg.go.dev/vuln/GO-2024-3333 
│                       │     │                  ├ [9] : https://ubuntu.com/security/notices/USN-7197-1 
│                       │     │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2024-45338 
│                       │     ├ PublishedDate   : 2024-12-18T21:15:08.173Z 
│                       │     ╰ LastModifiedDate: 2024-12-31T20:16:06.603Z 
│                       ├ [3] ╭ VulnerabilityID : GHSA-xr7q-jx4m-x55m 
│                       │     ├ PkgID           : google.golang.org/grpc@v1.64.0 
│                       │     ├ PkgName         : google.golang.org/grpc 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.64.0 
│                       │     │                  ╰ UID : 5b0d1d1c015eeeb3 
│                       │     ├ InstalledVersion: v1.64.0 
│                       │     ├ FixedVersion    : 1.64.1 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       ├ [4] ╭ VulnerabilityID : CVE-2024-45336 
│                       │     ├ PkgID           : stdlib@v1.22.10 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │     │                  ╰ UID : 54f94c30cd595585 
│                       │     ├ InstalledVersion: v1.22.10 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     ├ VendorSeverity   ╭ bitnami: 2 
│                       │     │                  ╰ redhat : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.9 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-45336 
│                       │     │                  ├ [1]: https://go.dev/cl/643100 
│                       │     │                  ├ [2]: https://go.dev/issue/70530 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m/
│                       │     │                  │      bk9LAa-lCgAJ 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m/
│                       │     │                  │      G461hA6lCgAJ 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-45336 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3420 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-45336 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:28.807Z 
│                       │     ╰ LastModifiedDate: 2025-01-28T16:15:38.22Z 
│                       ├ [5] ╭ VulnerabilityID : CVE-2024-45341 
│                       │     ├ PkgID           : stdlib@v1.22.10 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │     │                  ╰ UID : 54f94c30cd595585 
│                       │     ├ InstalledVersion: v1.22.10 
│                       │     ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                       │     │                  │         11c73bf21fae539f12e 
│                       │     │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                       │     │                            2dae648aecacd8f5a3c 
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
│                       │     ├ VendorSeverity   ╭ bitnami    : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ╰ redhat     : 1 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 6.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 4.2 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-45341 
│                       │     │                  ├ [1]: https://go.dev/cl/643099 
│                       │     │                  ├ [2]: https://go.dev/issue/71156 
│                       │     │                  ├ [3]: https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/m/
│                       │     │                  │      bk9LAa-lCgAJ 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/m/
│                       │     │                  │      G461hA6lCgAJ 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-45341 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3373 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-45341 
│                       │     ├ PublishedDate   : 2025-01-28T02:15:29.147Z 
│                       │     ╰ LastModifiedDate: 2025-01-28T16:15:38.65Z 
│                       ╰ [6] ╭ VulnerabilityID : CVE-2025-22866 
│                             ├ PkgID           : stdlib@v1.22.10 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                             │                  ╰ UID : 54f94c30cd595585 
│                             ├ InstalledVersion: v1.22.10 
│                             ├ FixedVersion    : 1.22.12, 1.23.6, 1.24.0-rc.3 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:8786555b2541738615db34d6cb61015cd806be00bd263
│                             │                  │         11c73bf21fae539f12e 
│                             │                  ╰ DiffID: sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa
│                             │                            2dae648aecacd8f5a3c 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22866 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : crypto/internal/nistec: golang: Timing sidechannel for P-256
│                             │                   on ppc64le in crypto/internal/nistec 
│                             ├ Description     : Due to the usage of a variable time instruction in the
│                             │                   assembly implementation of an internal function, a small
│                             │                   number of bits of secret scalars are leaked on the ppc64le
│                             │                   architecture. Due to the way this function is used, we do not
│                             │                    believe this leakage is enough to allow recovery of the
│                             │                   private key when P-256 is used in any well known protocols. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ╭ bitnami: 3 
│                             │                  ╰ redhat : 2 
│                             ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                             │                  │         │           /A:H 
│                             │                  │         ╰ V3Score : 8.4 
│                             │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                             │                            │           /A:N 
│                             │                            ╰ V3Score : 5.3 
│                             ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22866 
│                             │                  ├ [1]: https://go.dev/cl/643735 
│                             │                  ├ [2]: https://go.dev/issue/71383 
│                             │                  ├ [3]: https://groups.google.com/g/golang-announce/c/xU1ZCHUZw3k 
│                             │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-22866 
│                             │                  ├ [5]: https://pkg.go.dev/vuln/GO-2025-3447 
│                             │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-22866 
│                             ├ PublishedDate   : 2025-02-06T17:15:21.41Z 
│                             ╰ LastModifiedDate: 2025-02-11T15:15:20.87Z 
├ [6] ╭ Target : /etc/ssh/ssh_host_rsa_key 
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
│                     │                   │     │              *****-----END OPENSSH PRI 
│                     │                   │     ├ IsCause    : true 
│                     │                   │     ├ Annotation :  
│                     │                   │     ├ Truncated  : false 
│                     │                   │     ├ Highlighted: BEGIN OPENSSH PRIVATE
│                     │                   │     │              KEY-----****************************************
│                     │                   │     │              ************************************************
│                     │                   │     │              *****-----END OPENSSH PRI 
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
│                     │            *****************************************-----END OPENSSH PRI 
│                     ╰ Layer     ╭ Digest   : sha256:8786555b2541738615db34d6cb61015cd806be00bd26311c73bf21fae
│                                 │            539f12e 
│                                 ├ DiffID   : sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa2dae648aecac
│                                 │            d8f5a3c 
│                                 ╰ CreatedBy: COPY / / # buildkit 
├ [7] ╭ Target : /etc/ssh/ssh_host_ecdsa_key 
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
│                     ╰ Layer     ╭ Digest   : sha256:8786555b2541738615db34d6cb61015cd806be00bd26311c73bf21fae
│                                 │            539f12e 
│                                 ├ DiffID   : sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa2dae648aecac
│                                 │            d8f5a3c 
│                                 ╰ CreatedBy: COPY / / # buildkit 
╰ [8] ╭ Target : /etc/ssh/ssh_host_ed25519_key 
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
                      │                   │     │              **************-----END OPENSSH PRI 
                      │                   │     ├ IsCause    : true 
                      │                   │     ├ Annotation :  
                      │                   │     ├ Truncated  : false 
                      │                   │     ├ Highlighted: BEGIN OPENSSH PRIVATE
                      │                   │     │              KEY-----****************************************
                      │                   │     │              ************************************************
                      │                   │     │              **************-----END OPENSSH PRI 
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
                      │            **********************************************-----END OPENSSH PRI 
                      ╰ Layer     ╭ Digest   : sha256:8786555b2541738615db34d6cb61015cd806be00bd26311c73bf21fae
                                  │            539f12e 
                                  ├ DiffID   : sha256:aa4a5a03d9c35a710b71c67d4a208760c95a51d43a4fa2dae648aecac
                                  │            d8f5a3c 
                                  ╰ CreatedBy: COPY / / # buildkit 
````
