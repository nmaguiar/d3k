````yaml
╭ [0] ╭ Target         : nmaguiar/d3k:latest (ubuntu 24.10) 
│     ├ Class          : os-pkgs 
│     ├ Type           : ubuntu 
│     ╰ Vulnerabilities ╭ [0]   ╭ VulnerabilityID : CVE-2025-40775 
│                       │       ├ PkgID           : bind9-dnsutils@1:9.20.0-2ubuntu3.1 
│                       │       ├ PkgName         : bind9-dnsutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bind9-dnsutils@9.20.0-2ubuntu3.1?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 1af14cbd72910daa 
│                       │       ├ InstalledVersion: 1:9.20.0-2ubuntu3.1 
│                       │       ├ FixedVersion    : 1:9.20.0-2ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-40775 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : bind: DNS message with invalid TSIG causes an assertion
│                       │       │                   failure 
│                       │       ├ Description     : When an incoming DNS protocol message includes a
│                       │       │                   Transaction Signature (TSIG), BIND always checks it.  If
│                       │       │                   the TSIG contains an invalid value in the algorithm field,
│                       │       │                   BIND immediately aborts with an assertion failure.
│                       │       │                   This issue affects BIND 9 versions 9.20.0 through 9.20.8
│                       │       │                   and 9.21.0 through 9.21.7. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-232 
│                       │       ├ VendorSeverity   ╭ azure : 3 
│                       │       │                  ├ photon: 3 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/05/21/1 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-40775 
│                       │       │                  ├ [2]: https://kb.isc.org/docs/cve-2025-40775 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-40775 
│                       │       │                  ├ [4]: https://security.netapp.com/advisory/ntap-20250523-00
│                       │       │                  │      01/ 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7526-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-40775 
│                       │       ├ PublishedDate   : 2025-05-21T13:16:02.623Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T14:15:28.88Z 
│                       ├ [1]   ╭ VulnerabilityID : CVE-2025-40775 
│                       │       ├ PkgID           : bind9-host@1:9.20.0-2ubuntu3.1 
│                       │       ├ PkgName         : bind9-host 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bind9-host@9.20.0-2ubuntu3.1?arch=amd
│                       │       │                  │       64&distro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 4fb473e878e009e3 
│                       │       ├ InstalledVersion: 1:9.20.0-2ubuntu3.1 
│                       │       ├ FixedVersion    : 1:9.20.0-2ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-40775 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : bind: DNS message with invalid TSIG causes an assertion
│                       │       │                   failure 
│                       │       ├ Description     : When an incoming DNS protocol message includes a
│                       │       │                   Transaction Signature (TSIG), BIND always checks it.  If
│                       │       │                   the TSIG contains an invalid value in the algorithm field,
│                       │       │                   BIND immediately aborts with an assertion failure.
│                       │       │                   This issue affects BIND 9 versions 9.20.0 through 9.20.8
│                       │       │                   and 9.21.0 through 9.21.7. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-232 
│                       │       ├ VendorSeverity   ╭ azure : 3 
│                       │       │                  ├ photon: 3 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/05/21/1 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-40775 
│                       │       │                  ├ [2]: https://kb.isc.org/docs/cve-2025-40775 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-40775 
│                       │       │                  ├ [4]: https://security.netapp.com/advisory/ntap-20250523-00
│                       │       │                  │      01/ 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7526-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-40775 
│                       │       ├ PublishedDate   : 2025-05-21T13:16:02.623Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T14:15:28.88Z 
│                       ├ [2]   ╭ VulnerabilityID : CVE-2025-40775 
│                       │       ├ PkgID           : bind9-libs@1:9.20.0-2ubuntu3.1 
│                       │       ├ PkgName         : bind9-libs 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bind9-libs@9.20.0-2ubuntu3.1?arch=amd
│                       │       │                  │       64&distro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 79e2245ec5f6d163 
│                       │       ├ InstalledVersion: 1:9.20.0-2ubuntu3.1 
│                       │       ├ FixedVersion    : 1:9.20.0-2ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-40775 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : bind: DNS message with invalid TSIG causes an assertion
│                       │       │                   failure 
│                       │       ├ Description     : When an incoming DNS protocol message includes a
│                       │       │                   Transaction Signature (TSIG), BIND always checks it.  If
│                       │       │                   the TSIG contains an invalid value in the algorithm field,
│                       │       │                   BIND immediately aborts with an assertion failure.
│                       │       │                   This issue affects BIND 9 versions 9.20.0 through 9.20.8
│                       │       │                   and 9.21.0 through 9.21.7. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-232 
│                       │       ├ VendorSeverity   ╭ azure : 3 
│                       │       │                  ├ photon: 3 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/05/21/1 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-40775 
│                       │       │                  ├ [2]: https://kb.isc.org/docs/cve-2025-40775 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-40775 
│                       │       │                  ├ [4]: https://security.netapp.com/advisory/ntap-20250523-00
│                       │       │                  │      01/ 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7526-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-40775 
│                       │       ├ PublishedDate   : 2025-05-21T13:16:02.623Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T14:15:28.88Z 
│                       ├ [3]   ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : dirmngr@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : dirmngr 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/dirmngr@2.4.4-2ubuntu18?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10 
│                       │       │                  ╰ UID : 7dd16f298b0e5657 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [4]   ╭ VulnerabilityID : CVE-2025-40775 
│                       │       ├ PkgID           : dnsutils@1:9.20.0-2ubuntu3.1 
│                       │       ├ PkgName         : dnsutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/dnsutils@9.20.0-2ubuntu3.1?arch=all&d
│                       │       │                  │       istro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : f3088857c7d4471a 
│                       │       ├ InstalledVersion: 1:9.20.0-2ubuntu3.1 
│                       │       ├ FixedVersion    : 1:9.20.0-2ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-40775 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : bind: DNS message with invalid TSIG causes an assertion
│                       │       │                   failure 
│                       │       ├ Description     : When an incoming DNS protocol message includes a
│                       │       │                   Transaction Signature (TSIG), BIND always checks it.  If
│                       │       │                   the TSIG contains an invalid value in the algorithm field,
│                       │       │                   BIND immediately aborts with an assertion failure.
│                       │       │                   This issue affects BIND 9 versions 9.20.0 through 9.20.8
│                       │       │                   and 9.21.0 through 9.21.7. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-232 
│                       │       ├ VendorSeverity   ╭ azure : 3 
│                       │       │                  ├ photon: 3 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/05/21/1 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-40775 
│                       │       │                  ├ [2]: https://kb.isc.org/docs/cve-2025-40775 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-40775 
│                       │       │                  ├ [4]: https://security.netapp.com/advisory/ntap-20250523-00
│                       │       │                  │      01/ 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7526-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-40775 
│                       │       ├ PublishedDate   : 2025-05-21T13:16:02.623Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T14:15:28.88Z 
│                       ├ [5]   ╭ VulnerabilityID : CVE-2025-4373 
│                       │       ├ PkgID           : gir1.2-glib-2.0@2.82.1-0ubuntu1 
│                       │       ├ PkgName         : gir1.2-glib-2.0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gir1.2-glib-2.0@2.82.1-0ubuntu1?arch=
│                       │       │                  │       amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 29b0179f5b6b896e 
│                       │       ├ InstalledVersion: 2.82.1-0ubuntu1 
│                       │       ├ FixedVersion    : 2.82.1-0ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4373 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : glib: Buffer Underflow on GLib through glib/gstring.c via
│                       │       │                   function g_string_insert_unichar 
│                       │       ├ Description     : A flaw was found in GLib, which is vulnerable to an integer
│                       │       │                    overflow in the g_string_insert_unichar() function. When
│                       │       │                   the position at which to insert the character is large, the
│                       │       │                    position will overflow, leading to a buffer underwrite. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-124 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 4.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10855 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:11140 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:11327 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:11373 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2025:11374 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2025:11662 
│                       │       │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2025-4373 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2325340 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2364265 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2364265 
│                       │       │                  ├ [10]: https://errata.almalinux.org/9/ALSA-2025-11140.html 
│                       │       │                  ├ [11]: https://gitlab.gnome.org/GNOME/glib/-/issues/3677 
│                       │       │                  ├ [12]: https://gitlab.gnome.org/GNOME/glib/-/merge_requests
│                       │       │                  │       /4588 
│                       │       │                  ├ [13]: https://gitlab.gnome.org/GNOME/glib/-/merge_requests
│                       │       │                  │       /4592 
│                       │       │                  ├ [14]: https://linux.oracle.com/cve/CVE-2025-4373.html 
│                       │       │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2025-11327.html 
│                       │       │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2025-4373 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7532-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2025-4373 
│                       │       ├ PublishedDate   : 2025-05-06T15:16:05.32Z 
│                       │       ╰ LastModifiedDate: 2025-07-23T20:15:27.36Z 
│                       ├ [6]   ╭ VulnerabilityID : CVE-2025-27613 
│                       │       ├ PkgID           : git@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.45.2-1ubuntu1.1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : f3fbb7d4e6b57a64 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-27613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gitk: Git file creation flaw 
│                       │       ├ Description     : Gitk is a Tcl/Tk based Git history browser. Starting with
│                       │       │                   1.7.0, when a user clones an untrusted repository and runs
│                       │       │                   gitk without additional command arguments, files for which
│                       │       │                   the user has write permission can be created and truncated.
│                       │       │                    The option Support per-file encoding must have been
│                       │       │                   enabled before in Gitk's Preferences. This option is
│                       │       │                   disabled by default. The same happens when Show origin of
│                       │       │                   this line is used in the main window (regardless of whether
│                       │       │                    Support per-file encoding is enabled or not). This
│                       │       │                   vulnerability is fixed in 2.43.7, 2.44.4, 2.45.4, 2.46.4,
│                       │       │                   2.47.3, 2.48.2, 2.49.1, and 2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-78 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-27613 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [10]: https://github.com/j6t/gitk/compare/465f03869ae11acd
│                       │       │                  │       04abfa1b83c67879c867410c..026c397d911cde55924d7eb131
│                       │       │                  │       1d0fd6e2e105d5 
│                       │       │                  ├ [11]: https://github.com/j6t/gitk/compare/7dd272eca153058d
│                       │       │                  │       a2e8d5b9960bbbf0b4f0cbaa..67a128b91e25978a15f9f7e194
│                       │       │                  │       d81b441d603652 
│                       │       │                  ├ [12]: https://github.com/j6t/gitk/security/advisories/GHSA
│                       │       │                  │       -f3cw-xrj3-wr2v 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-27613.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [15]: https://lore.kernel.org/git/xmqq5xg2wrd1.fsf@gitster
│                       │       │                  │       .g/ 
│                       │       │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2025-27613 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [18]: https://ubuntu.com/security/notices/USN-7626-2 
│                       │       │                  ├ [19]: https://ubuntu.com/security/notices/USN-7626-3 
│                       │       │                  ├ [20]: https://www.cve.org/CVERecord?id=CVE-2025-27613 
│                       │       │                  ╰ [21]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-10T15:15:26.243Z 
│                       │       ╰ LastModifiedDate: 2025-07-15T13:24:41.097Z 
│                       ├ [7]   ╭ VulnerabilityID : CVE-2025-27614 
│                       │       ├ PkgID           : git@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.45.2-1ubuntu1.1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : f3fbb7d4e6b57a64 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-27614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gitk: git script execution flaw 
│                       │       ├ Description     : Gitk is a Tcl/Tk based Git history browser. Starting with
│                       │       │                   2.41.0, a Git repository can be crafted in such a way that
│                       │       │                   with some social engineering a user who has cloned the
│                       │       │                   repository can be tricked into running any script (e.g.,
│                       │       │                   Bourne shell, Perl, Python, ...) supplied by the attacker
│                       │       │                   by invoking gitk filename, where filename has a particular
│                       │       │                   structure. The script is run with the privileges of the
│                       │       │                   user. This vulnerability is fixed in 2.43.7, 2.44.4,
│                       │       │                   2.45.4, 2.46.4, 2.47.3, 2.48.2, 2.49.1, and 2.50. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-78 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-27614 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [10]: https://github.com/j6t/gitk/commit/8e3070aa5e331be45
│                       │       │                  │       d4d03e3be41f84494fce129 
│                       │       │                  ├ [11]: https://github.com/j6t/gitk/security/advisories/GHSA
│                       │       │                  │       -g4v5-fjv9-mhhc 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2025-27614.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [14]: https://lore.kernel.org/git/xmqq5xg2wrd1.fsf@gitster
│                       │       │                  │       .g/ 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-27614 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-27614 
│                       │       │                  ╰ [18]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-10T15:15:26.403Z 
│                       │       ╰ LastModifiedDate: 2025-07-15T13:24:41.097Z 
│                       ├ [8]   ╭ VulnerabilityID : CVE-2025-46835 
│                       │       ├ PkgID           : git@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.45.2-1ubuntu1.1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : f3fbb7d4e6b57a64 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-46835 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : git: Git GUI can create and overwrite files for which the
│                       │       │                   user has write permission 
│                       │       ├ Description     : Git GUI allows you to use the Git source control management
│                       │       │                    tools via a GUI. When a user clones an untrusted
│                       │       │                   repository and is tricked into editing a file located in a
│                       │       │                   maliciously named directory in the repository, then Git GUI
│                       │       │                    can create and overwrite files for which the user has
│                       │       │                   write permission. This vulnerability is fixed in 2.43.7,
│                       │       │                   2.44.4, 2.45.4, 2.46.4, 2.47.3, 2.48.2, 2.49.1, and 2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-46835 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [10]: https://github.com/j6t/git-gui/compare/dcda716dbc9c9
│                       │       │                  │       0bcac4611bd1076747671ee0906..a437f5bc93330a70b42a230
│                       │       │                  │       e52f3bd036ca1b1da 
│                       │       │                  ├ [11]: https://github.com/j6t/git-gui/security/advisories/G
│                       │       │                  │       HSA-xfx7-68v4-v8fg 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2025-46835.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2025-46835 
│                       │       │                  ├ [15]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7626-2 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7626-3 
│                       │       │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2025-46835 
│                       │       │                  ╰ [19]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-10T15:15:29.503Z 
│                       │       ╰ LastModifiedDate: 2025-07-15T13:24:41.097Z 
│                       ├ [9]   ╭ VulnerabilityID : CVE-2025-48384 
│                       │       ├ PkgID           : git@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.45.2-1ubuntu1.1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : f3fbb7d4e6b57a64 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-48384 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : git: Git arbitrary code execution 
│                       │       ├ Description     : Git is a fast, scalable, distributed revision control
│                       │       │                   system with an unusually rich command set that provides
│                       │       │                   both high-level operations and full access to internals.
│                       │       │                   When reading a config value, Git strips any trailing
│                       │       │                   carriage return and line feed (CRLF). When writing a config
│                       │       │                    entry, values with a trailing CR are not quoted, causing
│                       │       │                   the CR to be lost when the config is later read. When
│                       │       │                   initializing a submodule, if the submodule path contains a
│                       │       │                   trailing CR, the altered path is read resulting in the
│                       │       │                   submodule being checked out to an incorrect location. If a
│                       │       │                   symlink exists that points the altered path to the
│                       │       │                   submodule hooks directory, and the submodule contains an
│                       │       │                   executable post-checkout hook, the script may be
│                       │       │                   unintentionally executed after checkout. This vulnerability
│                       │       │                    is fixed in v2.43.7, v2.44.4, v2.45.4, v2.46.4, v2.47.3,
│                       │       │                   v2.48.2, v2.49.1, and v2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ╰ [1]: CWE-436 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:H/I
│                       │       │                  │         │           :H/A:H 
│                       │       │                  │         ╰ V3Score : 8.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:H/I
│                       │       │                            │           :H/A:H 
│                       │       │                            ╰ V3Score : 8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-48384 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://dgl.cx/2025/07/git-clone-submodule-cve-2025-
│                       │       │                  │       48384 
│                       │       │                  ├ [10]: https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [11]: https://github.com/git/git/commit/05e9cd64ee23bbadce
│                       │       │                  │       a6bcffd6660ed02b8eab89 
│                       │       │                  ├ [12]: https://github.com/git/git/security/advisories/GHSA-
│                       │       │                  │       vwqx-4fm8-6qc9 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-48384.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-48384 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-48384 
│                       │       │                  ╰ [18]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-08T19:15:42.8Z 
│                       │       ╰ LastModifiedDate: 2025-07-10T13:18:53.83Z 
│                       ├ [10]  ╭ VulnerabilityID : CVE-2025-48385 
│                       │       ├ PkgID           : git@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.45.2-1ubuntu1.1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : f3fbb7d4e6b57a64 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-48385 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : git: Git arbitrary file writes 
│                       │       ├ Description     : Git is a fast, scalable, distributed revision control
│                       │       │                   system with an unusually rich command set that provides
│                       │       │                   both high-level operations and full access to internals.
│                       │       │                   When cloning a repository Git knows to optionally fetch a
│                       │       │                   bundle advertised by the remote server, which allows the
│                       │       │                   server-side to offload parts of the clone to a CDN. The Git
│                       │       │                    client does not perform sufficient validation of the
│                       │       │                   advertised bundles, which allows the remote side to perform
│                       │       │                    protocol injection. This protocol injection can cause the
│                       │       │                   client to write the fetched bundle to a location controlled
│                       │       │                    by the adversary. The fetched content is fully controlled
│                       │       │                   by the server, which can in the worst case lead to
│                       │       │                   arbitrary code execution. The use of bundle URIs is not
│                       │       │                   enabled by default and can be controlled by the
│                       │       │                   bundle.heuristic config option. Some cases of the
│                       │       │                   vulnerability require that the adversary is in control of
│                       │       │                   where a repository will be cloned to. This either requires
│                       │       │                   social engineering or a recursive clone with submodules.
│                       │       │                   These cases can thus be avoided by disabling recursive
│                       │       │                   clones. This vulnerability is fixed in v2.43.7, v2.44.4,
│                       │       │                   v2.45.4, v2.46.4, v2.47.3, v2.48.2, v2.49.1, and v2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-73 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                       │       │                           │           H/A:L 
│                       │       │                           ╰ V3Score : 8.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-48385 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [10]: https://github.com/git/git/security/advisories/GHSA-
│                       │       │                  │       m98c-vgpc-9655 
│                       │       │                  ├ [11]: https://linux.oracle.com/cve/CVE-2025-48385.html 
│                       │       │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2025-48385 
│                       │       │                  ├ [14]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [15]: https://www.cve.org/CVERecord?id=CVE-2025-48385 
│                       │       │                  ╰ [16]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-08T19:15:43.097Z 
│                       │       ╰ LastModifiedDate: 2025-07-10T13:18:53.83Z 
│                       ├ [11]  ╭ VulnerabilityID : CVE-2025-48386 
│                       │       ├ PkgID           : git@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.45.2-1ubuntu1.1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : f3fbb7d4e6b57a64 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-48386 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : git: Git buffer overflow 
│                       │       ├ Description     : Git is a fast, scalable, distributed revision control
│                       │       │                   system with an unusually rich command set that provides
│                       │       │                   both high-level operations and full access to internals.
│                       │       │                   The wincred credential helper uses a static buffer (target)
│                       │       │                    as a unique key for storing and comparing against internal
│                       │       │                    storage. This credential helper does not properly bounds
│                       │       │                   check the available space remaining in the buffer before
│                       │       │                   appending to it with wcsncat(), leading to potential buffer
│                       │       │                    overflows. This vulnerability is fixed in v2.43.7,
│                       │       │                   v2.44.4, v2.45.4, v2.46.4, v2.47.3, v2.48.2, v2.49.1, and
│                       │       │                   v2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-120 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I
│                       │       │                  │         │           :N/A:N 
│                       │       │                  │         ╰ V3Score : 6.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I
│                       │       │                            │           :N/A:N 
│                       │       │                            ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-48386 
│                       │       │                  ├ [1]: https://github.com/git/git/security/advisories/GHSA-4
│                       │       │                  │      v56-3xvj-xvfr 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-48386 
│                       │       │                  ├ [3]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [4]: https://www.cve.org/CVERecord?id=CVE-2025-48386 
│                       │       │                  ╰ [5]: https://www.openwall.com/lists/oss-security/2025/07/0
│                       │       │                         8/4 
│                       │       ├ PublishedDate   : 2025-07-08T19:15:43.41Z 
│                       │       ╰ LastModifiedDate: 2025-07-10T13:18:53.83Z 
│                       ├ [12]  ╭ VulnerabilityID : CVE-2025-27613 
│                       │       ├ PkgID           : git-man@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git-man 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.45.2-1ubuntu1.1?arch=all&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 1ecc8b58303457e2 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-27613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gitk: Git file creation flaw 
│                       │       ├ Description     : Gitk is a Tcl/Tk based Git history browser. Starting with
│                       │       │                   1.7.0, when a user clones an untrusted repository and runs
│                       │       │                   gitk without additional command arguments, files for which
│                       │       │                   the user has write permission can be created and truncated.
│                       │       │                    The option Support per-file encoding must have been
│                       │       │                   enabled before in Gitk's Preferences. This option is
│                       │       │                   disabled by default. The same happens when Show origin of
│                       │       │                   this line is used in the main window (regardless of whether
│                       │       │                    Support per-file encoding is enabled or not). This
│                       │       │                   vulnerability is fixed in 2.43.7, 2.44.4, 2.45.4, 2.46.4,
│                       │       │                   2.47.3, 2.48.2, 2.49.1, and 2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-78 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-27613 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [10]: https://github.com/j6t/gitk/compare/465f03869ae11acd
│                       │       │                  │       04abfa1b83c67879c867410c..026c397d911cde55924d7eb131
│                       │       │                  │       1d0fd6e2e105d5 
│                       │       │                  ├ [11]: https://github.com/j6t/gitk/compare/7dd272eca153058d
│                       │       │                  │       a2e8d5b9960bbbf0b4f0cbaa..67a128b91e25978a15f9f7e194
│                       │       │                  │       d81b441d603652 
│                       │       │                  ├ [12]: https://github.com/j6t/gitk/security/advisories/GHSA
│                       │       │                  │       -f3cw-xrj3-wr2v 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-27613.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [15]: https://lore.kernel.org/git/xmqq5xg2wrd1.fsf@gitster
│                       │       │                  │       .g/ 
│                       │       │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2025-27613 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [18]: https://ubuntu.com/security/notices/USN-7626-2 
│                       │       │                  ├ [19]: https://ubuntu.com/security/notices/USN-7626-3 
│                       │       │                  ├ [20]: https://www.cve.org/CVERecord?id=CVE-2025-27613 
│                       │       │                  ╰ [21]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-10T15:15:26.243Z 
│                       │       ╰ LastModifiedDate: 2025-07-15T13:24:41.097Z 
│                       ├ [13]  ╭ VulnerabilityID : CVE-2025-27614 
│                       │       ├ PkgID           : git-man@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git-man 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.45.2-1ubuntu1.1?arch=all&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 1ecc8b58303457e2 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-27614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gitk: git script execution flaw 
│                       │       ├ Description     : Gitk is a Tcl/Tk based Git history browser. Starting with
│                       │       │                   2.41.0, a Git repository can be crafted in such a way that
│                       │       │                   with some social engineering a user who has cloned the
│                       │       │                   repository can be tricked into running any script (e.g.,
│                       │       │                   Bourne shell, Perl, Python, ...) supplied by the attacker
│                       │       │                   by invoking gitk filename, where filename has a particular
│                       │       │                   structure. The script is run with the privileges of the
│                       │       │                   user. This vulnerability is fixed in 2.43.7, 2.44.4,
│                       │       │                   2.45.4, 2.46.4, 2.47.3, 2.48.2, 2.49.1, and 2.50. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-78 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-27614 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [10]: https://github.com/j6t/gitk/commit/8e3070aa5e331be45
│                       │       │                  │       d4d03e3be41f84494fce129 
│                       │       │                  ├ [11]: https://github.com/j6t/gitk/security/advisories/GHSA
│                       │       │                  │       -g4v5-fjv9-mhhc 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2025-27614.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [14]: https://lore.kernel.org/git/xmqq5xg2wrd1.fsf@gitster
│                       │       │                  │       .g/ 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-27614 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-27614 
│                       │       │                  ╰ [18]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-10T15:15:26.403Z 
│                       │       ╰ LastModifiedDate: 2025-07-15T13:24:41.097Z 
│                       ├ [14]  ╭ VulnerabilityID : CVE-2025-46835 
│                       │       ├ PkgID           : git-man@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git-man 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.45.2-1ubuntu1.1?arch=all&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 1ecc8b58303457e2 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-46835 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : git: Git GUI can create and overwrite files for which the
│                       │       │                   user has write permission 
│                       │       ├ Description     : Git GUI allows you to use the Git source control management
│                       │       │                    tools via a GUI. When a user clones an untrusted
│                       │       │                   repository and is tricked into editing a file located in a
│                       │       │                   maliciously named directory in the repository, then Git GUI
│                       │       │                    can create and overwrite files for which the user has
│                       │       │                   write permission. This vulnerability is fixed in 2.43.7,
│                       │       │                   2.44.4, 2.45.4, 2.46.4, 2.47.3, 2.48.2, 2.49.1, and 2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-46835 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [10]: https://github.com/j6t/git-gui/compare/dcda716dbc9c9
│                       │       │                  │       0bcac4611bd1076747671ee0906..a437f5bc93330a70b42a230
│                       │       │                  │       e52f3bd036ca1b1da 
│                       │       │                  ├ [11]: https://github.com/j6t/git-gui/security/advisories/G
│                       │       │                  │       HSA-xfx7-68v4-v8fg 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2025-46835.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2025-46835 
│                       │       │                  ├ [15]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7626-2 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7626-3 
│                       │       │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2025-46835 
│                       │       │                  ╰ [19]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-10T15:15:29.503Z 
│                       │       ╰ LastModifiedDate: 2025-07-15T13:24:41.097Z 
│                       ├ [15]  ╭ VulnerabilityID : CVE-2025-48384 
│                       │       ├ PkgID           : git-man@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git-man 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.45.2-1ubuntu1.1?arch=all&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 1ecc8b58303457e2 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-48384 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : git: Git arbitrary code execution 
│                       │       ├ Description     : Git is a fast, scalable, distributed revision control
│                       │       │                   system with an unusually rich command set that provides
│                       │       │                   both high-level operations and full access to internals.
│                       │       │                   When reading a config value, Git strips any trailing
│                       │       │                   carriage return and line feed (CRLF). When writing a config
│                       │       │                    entry, values with a trailing CR are not quoted, causing
│                       │       │                   the CR to be lost when the config is later read. When
│                       │       │                   initializing a submodule, if the submodule path contains a
│                       │       │                   trailing CR, the altered path is read resulting in the
│                       │       │                   submodule being checked out to an incorrect location. If a
│                       │       │                   symlink exists that points the altered path to the
│                       │       │                   submodule hooks directory, and the submodule contains an
│                       │       │                   executable post-checkout hook, the script may be
│                       │       │                   unintentionally executed after checkout. This vulnerability
│                       │       │                    is fixed in v2.43.7, v2.44.4, v2.45.4, v2.46.4, v2.47.3,
│                       │       │                   v2.48.2, v2.49.1, and v2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ╰ [1]: CWE-436 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:H/I
│                       │       │                  │         │           :H/A:H 
│                       │       │                  │         ╰ V3Score : 8.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:H/I
│                       │       │                            │           :H/A:H 
│                       │       │                            ╰ V3Score : 8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-48384 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://dgl.cx/2025/07/git-clone-submodule-cve-2025-
│                       │       │                  │       48384 
│                       │       │                  ├ [10]: https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [11]: https://github.com/git/git/commit/05e9cd64ee23bbadce
│                       │       │                  │       a6bcffd6660ed02b8eab89 
│                       │       │                  ├ [12]: https://github.com/git/git/security/advisories/GHSA-
│                       │       │                  │       vwqx-4fm8-6qc9 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-48384.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-48384 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-48384 
│                       │       │                  ╰ [18]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-08T19:15:42.8Z 
│                       │       ╰ LastModifiedDate: 2025-07-10T13:18:53.83Z 
│                       ├ [16]  ╭ VulnerabilityID : CVE-2025-48385 
│                       │       ├ PkgID           : git-man@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git-man 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.45.2-1ubuntu1.1?arch=all&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 1ecc8b58303457e2 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-48385 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : git: Git arbitrary file writes 
│                       │       ├ Description     : Git is a fast, scalable, distributed revision control
│                       │       │                   system with an unusually rich command set that provides
│                       │       │                   both high-level operations and full access to internals.
│                       │       │                   When cloning a repository Git knows to optionally fetch a
│                       │       │                   bundle advertised by the remote server, which allows the
│                       │       │                   server-side to offload parts of the clone to a CDN. The Git
│                       │       │                    client does not perform sufficient validation of the
│                       │       │                   advertised bundles, which allows the remote side to perform
│                       │       │                    protocol injection. This protocol injection can cause the
│                       │       │                   client to write the fetched bundle to a location controlled
│                       │       │                    by the adversary. The fetched content is fully controlled
│                       │       │                   by the server, which can in the worst case lead to
│                       │       │                   arbitrary code execution. The use of bundle URIs is not
│                       │       │                   enabled by default and can be controlled by the
│                       │       │                   bundle.heuristic config option. Some cases of the
│                       │       │                   vulnerability require that the adversary is in control of
│                       │       │                   where a repository will be cloned to. This either requires
│                       │       │                   social engineering or a recursive clone with submodules.
│                       │       │                   These cases can thus be avoided by disabling recursive
│                       │       │                   clones. This vulnerability is fixed in v2.43.7, v2.44.4,
│                       │       │                   v2.45.4, v2.46.4, v2.47.3, v2.48.2, v2.49.1, and v2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-73 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                       │       │                           │           H/A:L 
│                       │       │                           ╰ V3Score : 8.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11462 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-48385 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2337824 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2337956 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2378806 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2378808 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2379124 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2379125 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2379326 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2025-11462.html 
│                       │       │                  ├ [10]: https://github.com/git/git/security/advisories/GHSA-
│                       │       │                  │       m98c-vgpc-9655 
│                       │       │                  ├ [11]: https://linux.oracle.com/cve/CVE-2025-48385.html 
│                       │       │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-11534.html 
│                       │       │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2025-48385 
│                       │       │                  ├ [14]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [15]: https://www.cve.org/CVERecord?id=CVE-2025-48385 
│                       │       │                  ╰ [16]: https://www.openwall.com/lists/oss-security/2025/07/
│                       │       │                          08/4 
│                       │       ├ PublishedDate   : 2025-07-08T19:15:43.097Z 
│                       │       ╰ LastModifiedDate: 2025-07-10T13:18:53.83Z 
│                       ├ [17]  ╭ VulnerabilityID : CVE-2025-48386 
│                       │       ├ PkgID           : git-man@1:2.45.2-1ubuntu1.1 
│                       │       ├ PkgName         : git-man 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.45.2-1ubuntu1.1?arch=all&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 1ecc8b58303457e2 
│                       │       ├ InstalledVersion: 1:2.45.2-1ubuntu1.1 
│                       │       ├ FixedVersion    : 1:2.45.2-1ubuntu1.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-48386 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : git: Git buffer overflow 
│                       │       ├ Description     : Git is a fast, scalable, distributed revision control
│                       │       │                   system with an unusually rich command set that provides
│                       │       │                   both high-level operations and full access to internals.
│                       │       │                   The wincred credential helper uses a static buffer (target)
│                       │       │                    as a unique key for storing and comparing against internal
│                       │       │                    storage. This credential helper does not properly bounds
│                       │       │                   check the available space remaining in the buffer before
│                       │       │                   appending to it with wcsncat(), leading to potential buffer
│                       │       │                    overflows. This vulnerability is fixed in v2.43.7,
│                       │       │                   v2.44.4, v2.45.4, v2.46.4, v2.47.3, v2.48.2, v2.49.1, and
│                       │       │                   v2.50.1. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-120 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I
│                       │       │                  │         │           :N/A:N 
│                       │       │                  │         ╰ V3Score : 6.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I
│                       │       │                            │           :N/A:N 
│                       │       │                            ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-48386 
│                       │       │                  ├ [1]: https://github.com/git/git/security/advisories/GHSA-4
│                       │       │                  │      v56-3xvj-xvfr 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-48386 
│                       │       │                  ├ [3]: https://ubuntu.com/security/notices/USN-7626-1 
│                       │       │                  ├ [4]: https://www.cve.org/CVERecord?id=CVE-2025-48386 
│                       │       │                  ╰ [5]: https://www.openwall.com/lists/oss-security/2025/07/0
│                       │       │                         8/4 
│                       │       ├ PublishedDate   : 2025-07-08T19:15:43.41Z 
│                       │       ╰ LastModifiedDate: 2025-07-10T13:18:53.83Z 
│                       ├ [18]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gnupg@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gnupg 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg@2.4.4-2ubuntu18?arch=all&distro
│                       │       │                  │       =ubuntu-24.10 
│                       │       │                  ╰ UID : 5e104316734f96cb 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [19]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gnupg-l10n@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gnupg-l10n 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg-l10n@2.4.4-2ubuntu18?arch=all&d
│                       │       │                  │       istro=ubuntu-24.10 
│                       │       │                  ╰ UID : c3160be79bbbed76 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [20]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gnupg-utils@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gnupg-utils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnupg-utils@2.4.4-2ubuntu18?arch=amd6
│                       │       │                  │       4&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : cd45dd64c25a6a6e 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [21]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gpg@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gpg 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg@2.4.4-2ubuntu18?arch=amd64&distro
│                       │       │                  │       =ubuntu-24.10 
│                       │       │                  ╰ UID : cb252d595dc721c9 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [22]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gpg-agent@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gpg-agent 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg-agent@2.4.4-2ubuntu18?arch=amd64&
│                       │       │                  │       distro=ubuntu-24.10 
│                       │       │                  ╰ UID : f6e28d30e6cb9fd2 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [23]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gpg-wks-client@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gpg-wks-client 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpg-wks-client@2.4.4-2ubuntu18?arch=a
│                       │       │                  │       md64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 48a06fe143f760b8 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [24]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gpgconf@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gpgconf 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgconf@2.4.4-2ubuntu18?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2c984f926df7bccc 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [25]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gpgsm@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gpgsm 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgsm@2.4.4-2ubuntu18?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10 
│                       │       │                  ╰ UID : eb2a69f753ba049b 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [26]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : gpgv@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : gpgv 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gpgv@2.4.4-2ubuntu18?arch=amd64&distr
│                       │       │                  │       o=ubuntu-24.10 
│                       │       │                  ╰ UID : 2178e73b274a9bdd 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [27]  ╭ VulnerabilityID : CVE-2025-30258 
│                       │       ├ PkgID           : keyboxd@2.4.4-2ubuntu18 
│                       │       ├ PkgName         : keyboxd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/keyboxd@2.4.4-2ubuntu18?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10 
│                       │       │                  ╰ UID : 49ce01586c31b1ae 
│                       │       ├ InstalledVersion: 2.4.4-2ubuntu18 
│                       │       ├ FixedVersion    : 2.4.4-2ubuntu18.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-30258 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : gnupg: verification DoS due to a malicious subkey in the
│                       │       │                   keyring 
│                       │       ├ Description     : In GnuPG before 2.5.5, if a user chooses to import a
│                       │       │                   certificate with certain crafted subkey data that lacks a
│                       │       │                   valid backsig or that has incorrect usage flags, the user
│                       │       │                   loses the ability to verify signatures made from certain
│                       │       │                   other signing keys, aka a "verification DoS." 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-754 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-30258 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T7527 
│                       │       │                  ├ [2]: https://dev.gnupg.org/rG48978ccb4e20866472ef18436a327
│                       │       │                  │      44350a65158 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2025
│                       │       │                  │      q1/000491.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-30258 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7412-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-30258 
│                       │       ├ PublishedDate   : 2025-03-19T20:15:20.14Z 
│                       │       ╰ LastModifiedDate: 2025-03-19T20:15:20.14Z 
│                       ├ [28]  ╭ VulnerabilityID : CVE-2025-24528 
│                       │       ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : krb5-locales 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=a
│                       │       │                  │       ll&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 364bca905abeb2e 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: overflow when calculating ulog block size 
│                       │       ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │       │                   enabled, an authenticated attacker can cause kadmind to
│                       │       │                   write beyond the end of the mapped region for the iprop log
│                       │       │                    file. This issue can trigger a process crash and lead to a
│                       │       │                    denial of service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ╰ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7067 
│                       │                          ├ [1] : https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                          ├ [2] : https://bugzilla.redhat.com/2342796 
│                       │                          ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2342796 
│                       │                          ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │                          │       025-24528 
│                       │                          ├ [5] : https://errata.almalinux.org/9/ALSA-2025-7067.html 
│                       │                          ├ [6] : https://errata.rockylinux.org/RLSA-2025:2722 
│                       │                          ├ [7] : https://github.com/krb5/krb5/commit/78ceba024b64d496
│                       │                          │       12375be4a12d1c066b0bfbd0 
│                       │                          ├ [8] : https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                          ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7067.html 
│                       │                          ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                          ├ [11]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                          ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [29]  ╭ VulnerabilityID : CVE-2024-26458 
│                       │       ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : krb5-locales 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=a
│                       │       │                  │       ll&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 364bca905abeb2e 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │       │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-401 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_1.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       010/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:39:31.357Z 
│                       ├ [30]  ╭ VulnerabilityID : CVE-2024-26461 
│                       │       ├ PkgID           : krb5-locales@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : krb5-locales 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/krb5-locales@1.21.3-3ubuntu0.1?arch=a
│                       │       │                  │       ll&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 364bca905abeb2e 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │       │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-770 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_2.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       011/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:30:30.847Z 
│                       ├ [31]  ╭ VulnerabilityID : CVE-2025-1390 
│                       │       ├ PkgID           : libcap2@1:2.66-5ubuntu3 
│                       │       ├ PkgName         : libcap2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcap2@2.66-5ubuntu3?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 93130244437284bd 
│                       │       ├ InstalledVersion: 1:2.66-5ubuntu3 
│                       │       ├ FixedVersion    : 1:2.66-5ubuntu3.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1390 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libcap: pam_cap: Fix potential configuration parsing error 
│                       │       ├ Description     : The PAM module pam_cap.so of libcap configuration supports
│                       │       │                   group names starting with “@”, during actual parsing,
│                       │       │                   configurations not starting with “@” are incorrectly
│                       │       │                   recognized as group names. This may result in nonintended
│                       │       │                   users being granted an inherited capability set,
│                       │       │                   potentially leading to security risks. Attackers can
│                       │       │                   exploit this vulnerability to achieve local privilege
│                       │       │                   escalation on systems where /etc/security/capability.conf
│                       │       │                   is used to configure user inherited privileges by
│                       │       │                   constructing specific usernames. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-284 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.1 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1390 
│                       │       │                  ├ [1]: https://bugzilla.openanolis.cn/show_bug.cgi?id=18804 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-1390 
│                       │       │                  ├ [3]: https://ubuntu.com/security/notices/USN-7287-1 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2025-1390 
│                       │       ├ PublishedDate   : 2025-02-18T03:15:10.447Z 
│                       │       ╰ LastModifiedDate: 2025-02-18T03:15:10.447Z 
│                       ├ [32]  ╭ VulnerabilityID : CVE-2025-1390 
│                       │       ├ PkgID           : libcap2-bin@1:2.66-5ubuntu3 
│                       │       ├ PkgName         : libcap2-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcap2-bin@2.66-5ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : be08cf2b118d509 
│                       │       ├ InstalledVersion: 1:2.66-5ubuntu3 
│                       │       ├ FixedVersion    : 1:2.66-5ubuntu3.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1390 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libcap: pam_cap: Fix potential configuration parsing error 
│                       │       ├ Description     : The PAM module pam_cap.so of libcap configuration supports
│                       │       │                   group names starting with “@”, during actual parsing,
│                       │       │                   configurations not starting with “@” are incorrectly
│                       │       │                   recognized as group names. This may result in nonintended
│                       │       │                   users being granted an inherited capability set,
│                       │       │                   potentially leading to security risks. Attackers can
│                       │       │                   exploit this vulnerability to achieve local privilege
│                       │       │                   escalation on systems where /etc/security/capability.conf
│                       │       │                   is used to configure user inherited privileges by
│                       │       │                   constructing specific usernames. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-284 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.1 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1390 
│                       │       │                  ├ [1]: https://bugzilla.openanolis.cn/show_bug.cgi?id=18804 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-1390 
│                       │       │                  ├ [3]: https://ubuntu.com/security/notices/USN-7287-1 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2025-1390 
│                       │       ├ PublishedDate   : 2025-02-18T03:15:10.447Z 
│                       │       ╰ LastModifiedDate: 2025-02-18T03:15:10.447Z 
│                       ├ [33]  ╭ VulnerabilityID : CVE-2025-1365 
│                       │       ├ PkgID           : libelf1t64@0.191-2 
│                       │       ├ PkgName         : libelf1t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=
│                       │       │                  │       ubuntu-24.10 
│                       │       │                  ╰ UID : f655d9e566e48529 
│                       │       ├ InstalledVersion: 0.191-2 
│                       │       ├ FixedVersion    : 0.191-2ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1365 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : elfutils: GNU elfutils eu-readelf readelf.c process_symtab
│                       │       │                   buffer overflow 
│                       │       ├ Description     : A vulnerability, which was classified as critical, was
│                       │       │                   found in GNU elfutils 0.192. This affects the function
│                       │       │                   process_symtab of the file readelf.c of the component
│                       │       │                   eu-readelf. The manipulation of the argument D/a leads to
│                       │       │                   buffer overflow. Local access is required to approach this
│                       │       │                   attack. The exploit has been disclosed to the public and
│                       │       │                   may be used. The identifier of the patch is
│                       │       │                   5e5c0394d82c53e97750fe7b18023e6f84157b81. It is recommended
│                       │       │                    to apply a patch to fix this issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-119 
│                       │       │                  ╰ [1]: CWE-120 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1365 
│                       │       │                  ├ [1] : https://nvd.nist.gov/vuln/detail/CVE-2025-1365 
│                       │       │                  ├ [2] : https://sourceware.org/bugzilla/attachment.cgi?id=15
│                       │       │                  │       925 
│                       │       │                  ├ [3] : https://sourceware.org/bugzilla/show_bug.cgi?id=32654 
│                       │       │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=3265
│                       │       │                  │       4#c2 
│                       │       │                  ├ [5] : https://ubuntu.com/security/notices/USN-7369-1 
│                       │       │                  ├ [6] : https://vuldb.com/?ctiid.295977 
│                       │       │                  ├ [7] : https://vuldb.com/?id.295977 
│                       │       │                  ├ [8] : https://vuldb.com/?submit.496483 
│                       │       │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1365 
│                       │       │                  ╰ [10]: https://www.gnu.org/ 
│                       │       ├ PublishedDate   : 2025-02-17T00:15:09.14Z 
│                       │       ╰ LastModifiedDate: 2025-02-17T00:15:09.14Z 
│                       ├ [34]  ╭ VulnerabilityID : CVE-2025-1371 
│                       │       ├ PkgID           : libelf1t64@0.191-2 
│                       │       ├ PkgName         : libelf1t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=
│                       │       │                  │       ubuntu-24.10 
│                       │       │                  ╰ UID : f655d9e566e48529 
│                       │       ├ InstalledVersion: 0.191-2 
│                       │       ├ FixedVersion    : 0.191-2ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1371 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : elfutils: GNU elfutils eu-read readelf.c
│                       │       │                   handle_dynamic_symtab null pointer dereference 
│                       │       ├ Description     : A vulnerability has been found in GNU elfutils 0.192 and
│                       │       │                   classified as problematic. This vulnerability affects the
│                       │       │                   function handle_dynamic_symtab of the file readelf.c of the
│                       │       │                    component eu-read. The manipulation leads to null pointer
│                       │       │                   dereference. Attacking locally is a requirement. The
│                       │       │                   exploit has been disclosed to the public and may be used.
│                       │       │                   The patch is identified as
│                       │       │                   b38e562a4c907e08171c76b8b2def8464d5a104a. It is recommended
│                       │       │                    to apply a patch to fix this issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-404 
│                       │       │                  ╰ [1]: CWE-476 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1371 
│                       │       │                  ├ [1] : https://nvd.nist.gov/vuln/detail/CVE-2025-1371 
│                       │       │                  ├ [2] : https://sourceware.org/bugzilla/attachment.cgi?id=15
│                       │       │                  │       926 
│                       │       │                  ├ [3] : https://sourceware.org/bugzilla/show_bug.cgi?id=32655 
│                       │       │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=3265
│                       │       │                  │       5#c2 
│                       │       │                  ├ [5] : https://ubuntu.com/security/notices/USN-7369-1 
│                       │       │                  ├ [6] : https://vuldb.com/?ctiid.295978 
│                       │       │                  ├ [7] : https://vuldb.com/?id.295978 
│                       │       │                  ├ [8] : https://vuldb.com/?submit.496484 
│                       │       │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1371 
│                       │       │                  ╰ [10]: https://www.gnu.org/ 
│                       │       ├ PublishedDate   : 2025-02-17T03:15:09.4Z 
│                       │       ╰ LastModifiedDate: 2025-02-18T20:15:24.36Z 
│                       ├ [35]  ╭ VulnerabilityID : CVE-2025-1372 
│                       │       ├ PkgID           : libelf1t64@0.191-2 
│                       │       ├ PkgName         : libelf1t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=
│                       │       │                  │       ubuntu-24.10 
│                       │       │                  ╰ UID : f655d9e566e48529 
│                       │       ├ InstalledVersion: 0.191-2 
│                       │       ├ FixedVersion    : 0.191-2ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1372 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : elfutils: GNU elfutils eu-readelf readelf.c
│                       │       │                   print_string_section buffer overflow 
│                       │       ├ Description     : A vulnerability was found in GNU elfutils 0.192. It has
│                       │       │                   been declared as critical. Affected by this vulnerability
│                       │       │                   is the function dump_data_section/print_string_section of
│                       │       │                   the file readelf.c of the component eu-readelf. The
│                       │       │                   manipulation of the argument z/x leads to buffer overflow.
│                       │       │                   An attack has to be approached locally. The exploit has
│                       │       │                   been disclosed to the public and may be used. The
│                       │       │                   identifier of the patch is
│                       │       │                   73db9d2021cab9e23fd734b0a76a612d52a6f1db. It is recommended
│                       │       │                    to apply a patch to fix this issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-119 
│                       │       │                  ╰ [1]: CWE-120 
│                       │       ├ VendorSeverity   ╭ amazon: 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1372 
│                       │       │                  ├ [1] : https://nvd.nist.gov/vuln/detail/CVE-2025-1372 
│                       │       │                  ├ [2] : https://sourceware.org/bugzilla/attachment.cgi?id=15
│                       │       │                  │       927 
│                       │       │                  ├ [3] : https://sourceware.org/bugzilla/show_bug.cgi?id=32656 
│                       │       │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=3265
│                       │       │                  │       6#c3 
│                       │       │                  ├ [5] : https://sourceware.org/bugzilla/show_bug.cgi?id=32657 
│                       │       │                  ├ [6] : https://ubuntu.com/security/notices/USN-7369-1 
│                       │       │                  ├ [7] : https://vuldb.com/?ctiid.295981 
│                       │       │                  ├ [8] : https://vuldb.com/?id.295981 
│                       │       │                  ├ [9] : https://vuldb.com/?submit.496485 
│                       │       │                  ├ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1372 
│                       │       │                  ╰ [11]: https://www.gnu.org/ 
│                       │       ├ PublishedDate   : 2025-02-17T03:15:09.573Z 
│                       │       ╰ LastModifiedDate: 2025-02-17T03:15:09.573Z 
│                       ├ [36]  ╭ VulnerabilityID : CVE-2025-1377 
│                       │       ├ PkgID           : libelf1t64@0.191-2 
│                       │       ├ PkgName         : libelf1t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.191-2?arch=amd64&distro=
│                       │       │                  │       ubuntu-24.10 
│                       │       │                  ╰ UID : f655d9e566e48529 
│                       │       ├ InstalledVersion: 0.191-2 
│                       │       ├ FixedVersion    : 0.191-2ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1377 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : elfutils: GNU elfutils eu-strip strip.c gelf_getsymshndx
│                       │       │                   denial of service 
│                       │       ├ Description     : A vulnerability, which was classified as problematic, has
│                       │       │                   been found in GNU elfutils 0.192. This issue affects the
│                       │       │                   function gelf_getsymshndx of the file strip.c of the
│                       │       │                   component eu-strip. The manipulation leads to denial of
│                       │       │                   service. The attack needs to be approached locally. The
│                       │       │                   exploit has been disclosed to the public and may be used.
│                       │       │                   The identifier of the patch is
│                       │       │                   fbf1df9ca286de3323ae541973b08449f8d03aba. It is recommended
│                       │       │                    to apply a patch to fix this issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-404 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ photon: 1 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1377 
│                       │       │                  ├ [1] : https://nvd.nist.gov/vuln/detail/CVE-2025-1377 
│                       │       │                  ├ [2] : https://sourceware.org/bugzilla/attachment.cgi?id=15
│                       │       │                  │       941 
│                       │       │                  ├ [3] : https://sourceware.org/bugzilla/show_bug.cgi?id=32673 
│                       │       │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=3267
│                       │       │                  │       3#c2 
│                       │       │                  ├ [5] : https://ubuntu.com/security/notices/USN-7369-1 
│                       │       │                  ├ [6] : https://vuldb.com/?ctiid.295985 
│                       │       │                  ├ [7] : https://vuldb.com/?id.295985 
│                       │       │                  ├ [8] : https://vuldb.com/?submit.497539 
│                       │       │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1377 
│                       │       │                  ╰ [10]: https://www.gnu.org/ 
│                       │       ├ PublishedDate   : 2025-02-17T05:15:10.09Z 
│                       │       ╰ LastModifiedDate: 2025-02-17T05:15:10.09Z 
│                       ├ [37]  ╭ VulnerabilityID : CVE-2024-8176 
│                       │       ├ PkgID           : libexpat1@2.6.2-2ubuntu0.1 
│                       │       ├ PkgName         : libexpat1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.6.2-2ubuntu0.1?arch=amd64
│                       │       │                  │       &distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 1e42f0c43aaaafce 
│                       │       ├ InstalledVersion: 2.6.2-2ubuntu0.1 
│                       │       ├ FixedVersion    : 2.6.2-2ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-8176 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libexpat: expat: Improper Restriction of XML Entity
│                       │       │                   Expansion Depth in libexpat 
│                       │       ├ Description     : A stack overflow vulnerability exists in the libexpat
│                       │       │                   library due to the way it handles recursive entity
│                       │       │                   expansion in XML documents. When parsing an XML document
│                       │       │                   with deeply nested entity references, libexpat can be
│                       │       │                   forced to recurse indefinitely, exhausting the stack space
│                       │       │                   and causing a crash. This issue could lead to denial of
│                       │       │                   service (DoS) or, in some cases, exploitable memory
│                       │       │                   corruption, depending on the environment and library usage. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-674 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/1
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:3531 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:3734 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:3913 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2025:4048 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2025:4446 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2025:4447 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2025:4448 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2025:4449 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2025:7444 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2025:7512 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2025:8385 
│                       │       │                  ├ [12]: https://access.redhat.com/security/cve/CVE-2024-8176 
│                       │       │                  ├ [13]: https://blog.hartwork.org/posts/expat-2-7-0-released/ 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2310137 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2310137 
│                       │       │                  ├ [16]: https://bugzilla.suse.com/show_bug.cgi?id=1239618 
│                       │       │                  ├ [17]: https://errata.almalinux.org/9/ALSA-2025-7444.html 
│                       │       │                  ├ [18]: https://github.com/libexpat/libexpat/blob/R_2_7_0/ex
│                       │       │                  │       pat/Changes#L40-L52 
│                       │       │                  ├ [19]: https://github.com/libexpat/libexpat/issues/893 
│                       │       │                  ├ [20]: https://gitlab.alpinelinux.org/alpine/aports/-/commi
│                       │       │                  │       t/d068c3ff36fc6f4789988a09c69b434db757db53 
│                       │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2024-8176.html 
│                       │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2025-7512.html 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2024-8176 
│                       │       │                  ├ [24]: https://security-tracker.debian.org/tracker/CVE-2024
│                       │       │                  │       -8176 
│                       │       │                  ├ [25]: https://security.netapp.com/advisory/ntap-20250328-0
│                       │       │                  │       009/ 
│                       │       │                  ├ [26]: https://ubuntu.com/security/CVE-2024-8176 
│                       │       │                  ├ [27]: https://ubuntu.com/security/notices/USN-7424-1 
│                       │       │                  ├ [28]: https://www.cve.org/CVERecord?id=CVE-2024-8176 
│                       │       │                  ╰ [29]: https://www.kb.cert.org/vuls/id/760160 
│                       │       ├ PublishedDate   : 2025-03-14T09:15:14.157Z 
│                       │       ╰ LastModifiedDate: 2025-06-02T15:15:32.773Z 
│                       ├ [38]  ╭ VulnerabilityID : CVE-2025-4373 
│                       │       ├ PkgID           : libglib2.0-0t64@2.82.1-0ubuntu1 
│                       │       ├ PkgName         : libglib2.0-0t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libglib2.0-0t64@2.82.1-0ubuntu1?arch=
│                       │       │                  │       amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 256d5acf9416833e 
│                       │       ├ InstalledVersion: 2.82.1-0ubuntu1 
│                       │       ├ FixedVersion    : 2.82.1-0ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4373 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : glib: Buffer Underflow on GLib through glib/gstring.c via
│                       │       │                   function g_string_insert_unichar 
│                       │       ├ Description     : A flaw was found in GLib, which is vulnerable to an integer
│                       │       │                    overflow in the g_string_insert_unichar() function. When
│                       │       │                   the position at which to insert the character is large, the
│                       │       │                    position will overflow, leading to a buffer underwrite. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-124 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 4.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10855 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:11140 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:11327 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:11373 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2025:11374 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2025:11662 
│                       │       │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2025-4373 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2325340 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2364265 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2364265 
│                       │       │                  ├ [10]: https://errata.almalinux.org/9/ALSA-2025-11140.html 
│                       │       │                  ├ [11]: https://gitlab.gnome.org/GNOME/glib/-/issues/3677 
│                       │       │                  ├ [12]: https://gitlab.gnome.org/GNOME/glib/-/merge_requests
│                       │       │                  │       /4588 
│                       │       │                  ├ [13]: https://gitlab.gnome.org/GNOME/glib/-/merge_requests
│                       │       │                  │       /4592 
│                       │       │                  ├ [14]: https://linux.oracle.com/cve/CVE-2025-4373.html 
│                       │       │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2025-11327.html 
│                       │       │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2025-4373 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7532-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2025-4373 
│                       │       ├ PublishedDate   : 2025-05-06T15:16:05.32Z 
│                       │       ╰ LastModifiedDate: 2025-07-23T20:15:27.36Z 
│                       ├ [39]  ╭ VulnerabilityID : CVE-2025-4373 
│                       │       ├ PkgID           : libglib2.0-data@2.82.1-0ubuntu1 
│                       │       ├ PkgName         : libglib2.0-data 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libglib2.0-data@2.82.1-0ubuntu1?arch=
│                       │       │                  │       all&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 6ed9fa72ce0b444d 
│                       │       ├ InstalledVersion: 2.82.1-0ubuntu1 
│                       │       ├ FixedVersion    : 2.82.1-0ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4373 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : glib: Buffer Underflow on GLib through glib/gstring.c via
│                       │       │                   function g_string_insert_unichar 
│                       │       ├ Description     : A flaw was found in GLib, which is vulnerable to an integer
│                       │       │                    overflow in the g_string_insert_unichar() function. When
│                       │       │                   the position at which to insert the character is large, the
│                       │       │                    position will overflow, leading to a buffer underwrite. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-124 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 4.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10855 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:11140 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:11327 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:11373 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2025:11374 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2025:11662 
│                       │       │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2025-4373 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2325340 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2364265 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2364265 
│                       │       │                  ├ [10]: https://errata.almalinux.org/9/ALSA-2025-11140.html 
│                       │       │                  ├ [11]: https://gitlab.gnome.org/GNOME/glib/-/issues/3677 
│                       │       │                  ├ [12]: https://gitlab.gnome.org/GNOME/glib/-/merge_requests
│                       │       │                  │       /4588 
│                       │       │                  ├ [13]: https://gitlab.gnome.org/GNOME/glib/-/merge_requests
│                       │       │                  │       /4592 
│                       │       │                  ├ [14]: https://linux.oracle.com/cve/CVE-2025-4373.html 
│                       │       │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2025-11327.html 
│                       │       │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2025-4373 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7532-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2025-4373 
│                       │       ├ PublishedDate   : 2025-05-06T15:16:05.32Z 
│                       │       ╰ LastModifiedDate: 2025-07-23T20:15:27.36Z 
│                       ├ [40]  ╭ VulnerabilityID : CVE-2025-24528 
│                       │       ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libgssapi-krb5-2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 56954afa6df2892a 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: overflow when calculating ulog block size 
│                       │       ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │       │                   enabled, an authenticated attacker can cause kadmind to
│                       │       │                   write beyond the end of the mapped region for the iprop log
│                       │       │                    file. This issue can trigger a process crash and lead to a
│                       │       │                    denial of service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ╰ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7067 
│                       │                          ├ [1] : https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                          ├ [2] : https://bugzilla.redhat.com/2342796 
│                       │                          ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2342796 
│                       │                          ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │                          │       025-24528 
│                       │                          ├ [5] : https://errata.almalinux.org/9/ALSA-2025-7067.html 
│                       │                          ├ [6] : https://errata.rockylinux.org/RLSA-2025:2722 
│                       │                          ├ [7] : https://github.com/krb5/krb5/commit/78ceba024b64d496
│                       │                          │       12375be4a12d1c066b0bfbd0 
│                       │                          ├ [8] : https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                          ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7067.html 
│                       │                          ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                          ├ [11]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                          ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [41]  ╭ VulnerabilityID : CVE-2024-26458 
│                       │       ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libgssapi-krb5-2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 56954afa6df2892a 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │       │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-401 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_1.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       010/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:39:31.357Z 
│                       ├ [42]  ╭ VulnerabilityID : CVE-2024-26461 
│                       │       ├ PkgID           : libgssapi-krb5-2@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libgssapi-krb5-2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgssapi-krb5-2@1.21.3-3ubuntu0.1?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 56954afa6df2892a 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │       │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-770 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_2.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       011/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:30:30.847Z 
│                       ├ [43]  ╭ VulnerabilityID : CVE-2025-24528 
│                       │       ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libk5crypto3 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=a
│                       │       │                  │       md64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2b19f24f594bda 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: overflow when calculating ulog block size 
│                       │       ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │       │                   enabled, an authenticated attacker can cause kadmind to
│                       │       │                   write beyond the end of the mapped region for the iprop log
│                       │       │                    file. This issue can trigger a process crash and lead to a
│                       │       │                    denial of service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ╰ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7067 
│                       │                          ├ [1] : https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                          ├ [2] : https://bugzilla.redhat.com/2342796 
│                       │                          ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2342796 
│                       │                          ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │                          │       025-24528 
│                       │                          ├ [5] : https://errata.almalinux.org/9/ALSA-2025-7067.html 
│                       │                          ├ [6] : https://errata.rockylinux.org/RLSA-2025:2722 
│                       │                          ├ [7] : https://github.com/krb5/krb5/commit/78ceba024b64d496
│                       │                          │       12375be4a12d1c066b0bfbd0 
│                       │                          ├ [8] : https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                          ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7067.html 
│                       │                          ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                          ├ [11]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                          ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [44]  ╭ VulnerabilityID : CVE-2024-26458 
│                       │       ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libk5crypto3 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=a
│                       │       │                  │       md64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2b19f24f594bda 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │       │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-401 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_1.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       010/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:39:31.357Z 
│                       ├ [45]  ╭ VulnerabilityID : CVE-2024-26461 
│                       │       ├ PkgID           : libk5crypto3@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libk5crypto3 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libk5crypto3@1.21.3-3ubuntu0.1?arch=a
│                       │       │                  │       md64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2b19f24f594bda 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │       │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-770 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_2.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       011/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:30:30.847Z 
│                       ├ [46]  ╭ VulnerabilityID : CVE-2025-24528 
│                       │       ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libkrb5-3 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 791434e49e3cd4b9 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: overflow when calculating ulog block size 
│                       │       ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │       │                   enabled, an authenticated attacker can cause kadmind to
│                       │       │                   write beyond the end of the mapped region for the iprop log
│                       │       │                    file. This issue can trigger a process crash and lead to a
│                       │       │                    denial of service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ╰ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7067 
│                       │                          ├ [1] : https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                          ├ [2] : https://bugzilla.redhat.com/2342796 
│                       │                          ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2342796 
│                       │                          ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │                          │       025-24528 
│                       │                          ├ [5] : https://errata.almalinux.org/9/ALSA-2025-7067.html 
│                       │                          ├ [6] : https://errata.rockylinux.org/RLSA-2025:2722 
│                       │                          ├ [7] : https://github.com/krb5/krb5/commit/78ceba024b64d496
│                       │                          │       12375be4a12d1c066b0bfbd0 
│                       │                          ├ [8] : https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                          ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7067.html 
│                       │                          ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                          ├ [11]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                          ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [47]  ╭ VulnerabilityID : CVE-2024-26458 
│                       │       ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libkrb5-3 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 791434e49e3cd4b9 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │       │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-401 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_1.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       010/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:39:31.357Z 
│                       ├ [48]  ╭ VulnerabilityID : CVE-2024-26461 
│                       │       ├ PkgID           : libkrb5-3@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libkrb5-3 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5-3@1.21.3-3ubuntu0.1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 791434e49e3cd4b9 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │       │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-770 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_2.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       011/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:30:30.847Z 
│                       ├ [49]  ╭ VulnerabilityID : CVE-2025-24528 
│                       │       ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libkrb5support0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arc
│                       │       │                  │       h=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : e67724f943ba50 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24528 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: overflow when calculating ulog block size 
│                       │       ├ Description     : A flaw was found in krb5. With incremental propagation
│                       │       │                   enabled, an authenticated attacker can cause kadmind to
│                       │       │                   write beyond the end of the mapped region for the iprop log
│                       │       │                    file. This issue can trigger a process crash and lead to a
│                       │       │                    denial of service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ╰ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7067 
│                       │                          ├ [1] : https://access.redhat.com/security/cve/CVE-2025-24528 
│                       │                          ├ [2] : https://bugzilla.redhat.com/2342796 
│                       │                          ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2342796 
│                       │                          ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │                          │       025-24528 
│                       │                          ├ [5] : https://errata.almalinux.org/9/ALSA-2025-7067.html 
│                       │                          ├ [6] : https://errata.rockylinux.org/RLSA-2025:2722 
│                       │                          ├ [7] : https://github.com/krb5/krb5/commit/78ceba024b64d496
│                       │                          │       12375be4a12d1c066b0bfbd0 
│                       │                          ├ [8] : https://linux.oracle.com/cve/CVE-2025-24528.html 
│                       │                          ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7067.html 
│                       │                          ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-24528 
│                       │                          ├ [11]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │                          ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-24528 
│                       ├ [50]  ╭ VulnerabilityID : CVE-2024-26458 
│                       │       ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libkrb5support0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arc
│                       │       │                  │       h=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : e67724f943ba50 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26458 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/rpc/pmap_rmt.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak in
│                       │       │                   /krb5/src/lib/rpc/pmap_rmt.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-401 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26458 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_1.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26458.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26458 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       010/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26458 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.78Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:39:31.357Z 
│                       ├ [51]  ╭ VulnerabilityID : CVE-2024-26461 
│                       │       ├ PkgID           : libkrb5support0@1.21.3-3ubuntu0.1 
│                       │       ├ PkgName         : libkrb5support0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libkrb5support0@1.21.3-3ubuntu0.1?arc
│                       │       │                  │       h=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : e67724f943ba50 
│                       │       ├ InstalledVersion: 1.21.3-3ubuntu0.1 
│                       │       ├ FixedVersion    : 1.21.3-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-26461 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : krb5: Memory leak at /krb5/src/lib/gssapi/krb5/k5sealv3.c 
│                       │       ├ Description     : Kerberos 5 (aka krb5) 1.21.2 contains a memory leak
│                       │       │                   vulnerability in /krb5/src/lib/gssapi/krb5/k5sealv3.c. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-770 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9331 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-26461 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2266731 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2266740 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2266742 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2266731 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2266740 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26458 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-26461 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9331.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:3268 
│                       │       │                  ├ [11]: https://github.com/LuMingYinDetect/krb5_defects/blob
│                       │       │                  │       /main/krb5_detect_2.md 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-26461.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2024-9331.html 
│                       │       │                  ├ [14]: https://mailman.mit.edu/pipermail/kerberos/2024-Marc
│                       │       │                  │       h/023095.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2024-26461 
│                       │       │                  ├ [16]: https://security.netapp.com/advisory/ntap-20240415-0
│                       │       │                  │       011/ 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-7314-1 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-26461 
│                       │       ├ PublishedDate   : 2024-02-29T01:44:18.82Z 
│                       │       ╰ LastModifiedDate: 2025-05-23T15:30:30.847Z 
│                       ├ [52]  ╭ VulnerabilityID : CVE-2025-31115 
│                       │       ├ PkgID           : liblzma5@5.6.2-2 
│                       │       ├ PkgName         : liblzma5 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/liblzma5@5.6.2-2?arch=amd64&distro=ub
│                       │       │                  │       untu-24.10 
│                       │       │                  ╰ UID : f7633f43b840a84f 
│                       │       ├ InstalledVersion: 5.6.2-2 
│                       │       ├ FixedVersion    : 5.6.2-2ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-31115 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : xz: XZ has a heap-use-after-free bug in threaded .xz decoder 
│                       │       ├ Description     : XZ Utils provide a general-purpose data-compression library
│                       │       │                    plus command-line tools. In XZ Utils 5.3.3alpha to 5.8.0,
│                       │       │                   the multithreaded .xz decoder in liblzma has a bug where
│                       │       │                   invalid input can at least result in a crash. The effects
│                       │       │                   include heap use after free and writing to an address based
│                       │       │                    on the null pointer plus an offset. Applications and
│                       │       │                   libraries that use the lzma_stream_decoder_mt function are
│                       │       │                   affected. The bug has been fixed in XZ Utils 5.8.1, and the
│                       │       │                    fix has been committed to the v5.4, v5.6, v5.8, and master
│                       │       │                    branches in the xz Git repository. No new release packages
│                       │       │                    will be made from the old stable branches, but a
│                       │       │                   standalone patch is available that applies to all affected
│                       │       │                   releases. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-366 
│                       │       │                  ├ [1]: CWE-416 
│                       │       │                  ├ [2]: CWE-476 
│                       │       │                  ╰ [3]: CWE-826 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/0
│                       │       │                  │       3/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/04/0
│                       │       │                  │       3/2 
│                       │       │                  ├ [2] : http://www.openwall.com/lists/oss-security/2025/04/0
│                       │       │                  │       3/3 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:7524 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2025-31115 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2357249 
│                       │       │                  ├ [6] : https://errata.almalinux.org/10/ALSA-2025-7524.html 
│                       │       │                  ├ [7] : https://github.com/tukaani-project/xz/commit/d5a2ffe
│                       │       │                  │       41bb77b918a8c96084885d4dbe4bf6480 
│                       │       │                  ├ [8] : https://github.com/tukaani-project/xz/security/advis
│                       │       │                  │       ories/GHSA-6cc8-p5mm-29w2 
│                       │       │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-31115.html 
│                       │       │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-7524.html 
│                       │       │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-31115 
│                       │       │                  ├ [12]: https://tukaani.org/xz/xz-cve-2025-31115.patch 
│                       │       │                  ├ [13]: https://ubuntu.com/security/notices/USN-7414-1 
│                       │       │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2025-31115 
│                       │       ├ PublishedDate   : 2025-04-03T17:15:30.54Z 
│                       │       ╰ LastModifiedDate: 2025-04-07T14:18:34.453Z 
│                       ├ [53]  ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : libnss-systemd@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : libnss-systemd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@256.5-2ubuntu3.1?arch=
│                       │       │                  │       amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 60c45bd4bc5e0c32 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [54]  ╭ VulnerabilityID : CVE-2025-1390 
│                       │       ├ PkgID           : libpam-cap@1:2.66-5ubuntu3 
│                       │       ├ PkgName         : libpam-cap 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-cap@2.66-5ubuntu3?arch=amd64&d
│                       │       │                  │       istro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : b050085ebdc5f348 
│                       │       ├ InstalledVersion: 1:2.66-5ubuntu3 
│                       │       ├ FixedVersion    : 1:2.66-5ubuntu3.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1390 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libcap: pam_cap: Fix potential configuration parsing error 
│                       │       ├ Description     : The PAM module pam_cap.so of libcap configuration supports
│                       │       │                   group names starting with “@”, during actual parsing,
│                       │       │                   configurations not starting with “@” are incorrectly
│                       │       │                   recognized as group names. This may result in nonintended
│                       │       │                   users being granted an inherited capability set,
│                       │       │                   potentially leading to security risks. Attackers can
│                       │       │                   exploit this vulnerability to achieve local privilege
│                       │       │                   escalation on systems where /etc/security/capability.conf
│                       │       │                   is used to configure user inherited privileges by
│                       │       │                   constructing specific usernames. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-284 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.1 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1390 
│                       │       │                  ├ [1]: https://bugzilla.openanolis.cn/show_bug.cgi?id=18804 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-1390 
│                       │       │                  ├ [3]: https://ubuntu.com/security/notices/USN-7287-1 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2025-1390 
│                       │       ├ PublishedDate   : 2025-02-18T03:15:10.447Z 
│                       │       ╰ LastModifiedDate: 2025-02-18T03:15:10.447Z 
│                       ├ [55]  ╭ VulnerabilityID : CVE-2025-6020 
│                       │       ├ PkgID           : libpam-modules@1.5.3-7ubuntu2 
│                       │       ├ PkgName         : libpam-modules 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules@1.5.3-7ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : b6583972609b9d73 
│                       │       ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │       ├ FixedVersion    : 1.5.3-7ubuntu2.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-6020 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : linux-pam: Linux-pam directory Traversal 
│                       │       ├ Description     : A flaw was found in linux-pam. The module pam_namespace may
│                       │       │                    use access user-controlled paths without proper
│                       │       │                   protection, allowing local users to elevate their
│                       │       │                   privileges to root via multiple symlink attacks and race
│                       │       │                   conditions. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7.8 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/1
│                       │       │                  │       7/1 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:10024 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:10027 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:10180 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2025:10354 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2025:10357 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2025:10358 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2025:10359 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2025:10361 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2025:10362 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2025:10735 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2025:10823 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2025:11386 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2025:11487 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2025:9526 
│                       │       │                  ├ [15]: https://access.redhat.com/security/cve/CVE-2025-6020 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2372512 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2372512 
│                       │       │                  ├ [18]: https://errata.almalinux.org/9/ALSA-2025-9526.html 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-6020.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-9526.html 
│                       │       │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2025-6020 
│                       │       │                  ├ [22]: https://ubuntu.com/security/notices/USN-7580-1 
│                       │       │                  ├ [23]: https://www.cve.org/CVERecord?id=CVE-2025-6020 
│                       │       │                  ╰ [24]: https://www.openwall.com/lists/oss-security/2025/06/
│                       │       │                          17/1 
│                       │       ├ PublishedDate   : 2025-06-17T13:15:21.66Z 
│                       │       ╰ LastModifiedDate: 2025-07-21T20:15:42.027Z 
│                       ├ [56]  ╭ VulnerabilityID : CVE-2025-6020 
│                       │       ├ PkgID           : libpam-modules-bin@1.5.3-7ubuntu2 
│                       │       ├ PkgName         : libpam-modules-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-modules-bin@1.5.3-7ubuntu2?arc
│                       │       │                  │       h=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 52023e3d863fbfc8 
│                       │       ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │       ├ FixedVersion    : 1.5.3-7ubuntu2.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-6020 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : linux-pam: Linux-pam directory Traversal 
│                       │       ├ Description     : A flaw was found in linux-pam. The module pam_namespace may
│                       │       │                    use access user-controlled paths without proper
│                       │       │                   protection, allowing local users to elevate their
│                       │       │                   privileges to root via multiple symlink attacks and race
│                       │       │                   conditions. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7.8 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/1
│                       │       │                  │       7/1 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:10024 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:10027 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:10180 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2025:10354 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2025:10357 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2025:10358 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2025:10359 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2025:10361 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2025:10362 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2025:10735 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2025:10823 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2025:11386 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2025:11487 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2025:9526 
│                       │       │                  ├ [15]: https://access.redhat.com/security/cve/CVE-2025-6020 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2372512 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2372512 
│                       │       │                  ├ [18]: https://errata.almalinux.org/9/ALSA-2025-9526.html 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-6020.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-9526.html 
│                       │       │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2025-6020 
│                       │       │                  ├ [22]: https://ubuntu.com/security/notices/USN-7580-1 
│                       │       │                  ├ [23]: https://www.cve.org/CVERecord?id=CVE-2025-6020 
│                       │       │                  ╰ [24]: https://www.openwall.com/lists/oss-security/2025/06/
│                       │       │                          17/1 
│                       │       ├ PublishedDate   : 2025-06-17T13:15:21.66Z 
│                       │       ╰ LastModifiedDate: 2025-07-21T20:15:42.027Z 
│                       ├ [57]  ╭ VulnerabilityID : CVE-2025-6020 
│                       │       ├ PkgID           : libpam-runtime@1.5.3-7ubuntu2 
│                       │       ├ PkgName         : libpam-runtime 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-runtime@1.5.3-7ubuntu2?arch=al
│                       │       │                  │       l&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 52dd5a3dac5cc9ec 
│                       │       ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │       ├ FixedVersion    : 1.5.3-7ubuntu2.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-6020 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : linux-pam: Linux-pam directory Traversal 
│                       │       ├ Description     : A flaw was found in linux-pam. The module pam_namespace may
│                       │       │                    use access user-controlled paths without proper
│                       │       │                   protection, allowing local users to elevate their
│                       │       │                   privileges to root via multiple symlink attacks and race
│                       │       │                   conditions. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7.8 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/1
│                       │       │                  │       7/1 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:10024 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:10027 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:10180 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2025:10354 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2025:10357 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2025:10358 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2025:10359 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2025:10361 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2025:10362 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2025:10735 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2025:10823 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2025:11386 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2025:11487 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2025:9526 
│                       │       │                  ├ [15]: https://access.redhat.com/security/cve/CVE-2025-6020 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2372512 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2372512 
│                       │       │                  ├ [18]: https://errata.almalinux.org/9/ALSA-2025-9526.html 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-6020.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-9526.html 
│                       │       │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2025-6020 
│                       │       │                  ├ [22]: https://ubuntu.com/security/notices/USN-7580-1 
│                       │       │                  ├ [23]: https://www.cve.org/CVERecord?id=CVE-2025-6020 
│                       │       │                  ╰ [24]: https://www.openwall.com/lists/oss-security/2025/06/
│                       │       │                          17/1 
│                       │       ├ PublishedDate   : 2025-06-17T13:15:21.66Z 
│                       │       ╰ LastModifiedDate: 2025-07-21T20:15:42.027Z 
│                       ├ [58]  ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : libpam-systemd@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : libpam-systemd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@256.5-2ubuntu3.1?arch=
│                       │       │                  │       amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 46eda5d8d0b48406 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [59]  ╭ VulnerabilityID : CVE-2025-6020 
│                       │       ├ PkgID           : libpam0g@1.5.3-7ubuntu2 
│                       │       ├ PkgName         : libpam0g 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam0g@1.5.3-7ubuntu2?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10 
│                       │       │                  ╰ UID : ef18bc8de4c4b9a5 
│                       │       ├ InstalledVersion: 1.5.3-7ubuntu2 
│                       │       ├ FixedVersion    : 1.5.3-7ubuntu2.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-6020 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : linux-pam: Linux-pam directory Traversal 
│                       │       ├ Description     : A flaw was found in linux-pam. The module pam_namespace may
│                       │       │                    use access user-controlled paths without proper
│                       │       │                   protection, allowing local users to elevate their
│                       │       │                   privileges to root via multiple symlink attacks and race
│                       │       │                   conditions. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7.8 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/1
│                       │       │                  │       7/1 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:10024 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:10027 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:10180 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2025:10354 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2025:10357 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2025:10358 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2025:10359 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2025:10361 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2025:10362 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2025:10735 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2025:10823 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2025:11386 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2025:11487 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2025:9526 
│                       │       │                  ├ [15]: https://access.redhat.com/security/cve/CVE-2025-6020 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2372512 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2372512 
│                       │       │                  ├ [18]: https://errata.almalinux.org/9/ALSA-2025-9526.html 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-6020.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-9526.html 
│                       │       │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2025-6020 
│                       │       │                  ├ [22]: https://ubuntu.com/security/notices/USN-7580-1 
│                       │       │                  ├ [23]: https://www.cve.org/CVERecord?id=CVE-2025-6020 
│                       │       │                  ╰ [24]: https://www.openwall.com/lists/oss-security/2025/06/
│                       │       │                          17/1 
│                       │       ├ PublishedDate   : 2025-06-17T13:15:21.66Z 
│                       │       ╰ LastModifiedDate: 2025-07-21T20:15:42.027Z 
│                       ├ [60]  ╭ VulnerabilityID : CVE-2024-56406 
│                       │       ├ PkgID           : libperl5.38t64@5.38.2-5 
│                       │       ├ PkgName         : libperl5.38t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libperl5.38t64@5.38.2-5?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10 
│                       │       │                  ╰ UID : 42abbd6659f452b2 
│                       │       ├ InstalledVersion: 5.38.2-5 
│                       │       ├ FixedVersion    : 5.38.2-5ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56406 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : perl: Perl 5.34, 5.36, 5.38 and 5.40 are vulnerable to a
│                       │       │                   heap buffer overflow when transliterating non-ASCII bytes 
│                       │       ├ Description     : A heap buffer overflow vulnerability was discovered in
│                       │       │                   Perl. 
│                       │       │                   
│                       │       │                   Release branches 5.34, 5.36, 5.38 and 5.40 are affected,
│                       │       │                   including development versions from 5.33.1 through
│                       │       │                   5.41.10.
│                       │       │                   When there are non-ASCII bytes in the left-hand-side of the
│                       │       │                    `tr` operator, `S_do_trans_invmap` can overflow the
│                       │       │                   destination pointer `d`.
│                       │       │                      $ perl -e '$_ = "\x{FF}" x 1000000; tr/\xFF/\x{100}/;' 
│                       │       │                      Segmentation fault (core dumped)
│                       │       │                   It is believed that this vulnerability can enable Denial of
│                       │       │                    Service and possibly Code Execution attacks on platforms
│                       │       │                   that lack sufficient defenses. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-122 
│                       │       │                  ╰ [1]: CWE-787 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:H 
│                       │       │                           ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/3 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/4 
│                       │       │                  ├ [2] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/5 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:7500 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2024-56406 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2359290 
│                       │       │                  ├ [6] : https://errata.almalinux.org/10/ALSA-2025-7500.html 
│                       │       │                  ├ [7] : https://github.com/Perl/perl5/commit/87f42aa0e0096e9
│                       │       │                  │       a346c9672aa3a0bd3bef8c1dd.patch 
│                       │       │                  ├ [8] : https://linux.oracle.com/cve/CVE-2024-56406.html 
│                       │       │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7500.html 
│                       │       │                  ├ [10]: https://metacpan.org/release/SHAY/perl-5.38.4/changes 
│                       │       │                  ├ [11]: https://metacpan.org/release/SHAY/perl-5.40.2/changes 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56406 
│                       │       │                  ├ [13]: https://ubuntu.com/security/notices/USN-7434-1 
│                       │       │                  ├ [14]: https://ubuntu.com/security/notices/USN-7434-2 
│                       │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-56406 
│                       │       ├ PublishedDate   : 2025-04-13T14:15:14.527Z 
│                       │       ╰ LastModifiedDate: 2025-04-30T15:21:11.547Z 
│                       ├ [61]  ╭ VulnerabilityID : CVE-2024-12718 
│                       │       ├ PkgID           : libpython3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-minimal@3.12.7-1ubuntu2
│                       │       │                  │       ?arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d77c6237b78757e2 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-12718 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypass extraction filter to modify file
│                       │       │                   metadata outside extraction directory 
│                       │       ├ Description     : Allows modifying some file metadata (e.g. last modified)
│                       │       │                   with filter="data" or file permissions (chmod) with
│                       │       │                   filter="tar" of files outside the extraction directory.
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information. Only Python versions
│                       │       │                   3.12 or later are affected by these vulnerabilities,
│                       │       │                   earlier versions don't include the extraction filter
│                       │       │                   feature.
│                       │       │                   
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-12718 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/127987 
│                       │       │                  ├ [19]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [20]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2024-12718.html 
│                       │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [23]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [24]: https://nvd.nist.gov/vuln/detail/CVE-2024-12718 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2024-12718 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.183Z 
│                       │       ╰ LastModifiedDate: 2025-07-24T16:15:29.157Z 
│                       ├ [62]  ╭ VulnerabilityID : CVE-2025-4138 
│                       │       ├ PkgID           : libpython3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-minimal@3.12.7-1ubuntu2
│                       │       │                  │       ?arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d77c6237b78757e2 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4138 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypassing extraction filter to create
│                       │       │                   symlinks to arbitrary targets outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :N/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :N/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4138 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4138.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4138 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4138 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.377Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.767Z 
│                       ├ [63]  ╭ VulnerabilityID : CVE-2025-4330 
│                       │       ├ PkgID           : libpython3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-minimal@3.12.7-1ubuntu2
│                       │       │                  │       ?arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d77c6237b78757e2 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4330 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Extraction filter bypass for linking
│                       │       │                   outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4330 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4330.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4330 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4330 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.503Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.91Z 
│                       ├ [64]  ╭ VulnerabilityID : CVE-2025-4435 
│                       │       ├ PkgID           : libpython3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-minimal@3.12.7-1ubuntu2
│                       │       │                  │       ?arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d77c6237b78757e2 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: Tarfile extracts filtered members when errorlevel=0 
│                       │       ├ Description     : When using a TarFile.errorlevel = 0 and extracting with a
│                       │       │                   filter the documented behavior is that any filtered members
│                       │       │                    would be skipped and not extracted. However the actual
│                       │       │                   behavior of TarFile.errorlevel = 0 in affected versions is
│                       │       │                   that the member would still be extracted and not skipped. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-682 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4435 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [17]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [18]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-4435.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [21]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2025-4435 
│                       │       │                  ├ [23]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2025-4435 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.63Z 
│                       │       ╰ LastModifiedDate: 2025-06-04T14:54:33.783Z 
│                       ├ [65]  ╭ VulnerabilityID : CVE-2025-4516 
│                       │       ├ PkgID           : libpython3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-minimal@3.12.7-1ubuntu2
│                       │       │                  │       ?arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d77c6237b78757e2 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4516 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: CPython DecodeError Handling Vulnerability 
│                       │       ├ Description     : There is an issue in CPython when using
│                       │       │                   `bytes.decode("unicode_escape", error="ignore|replace")`.
│                       │       │                   If you are not using the "unicode_escape" encoding or an
│                       │       │                   error handler your usage is not affected. To work-around
│                       │       │                   this issue you may stop using the error= handler and
│                       │       │                   instead wrap the bytes.decode() call in a try-except
│                       │       │                   catching the DecodeError. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       6/4 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       9/1 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4516 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/4398b788ffc
│                       │       │                  │       1f954a2c552da285477d42a571292 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/56466486782
│                       │       │                  │       95a44aa82636c6e92826651baf33a 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/6279eb8c076
│                       │       │                  │       d89d3739a6edb393e43c7929b429d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/69b4387f78f
│                       │       │                  │       413e8c47572a85b3478c47eba8142 
│                       │       │                  ├ [7] : https://github.com/python/cpython/commit/73b3040f592
│                       │       │                  │       436385007918887b7e2132aa8431f 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/8d35fd1b349
│                       │       │                  │       35221aff23a1ab69a429dd156be77 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e (main) 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/ab9893c4060
│                       │       │                  │       9935e0d40a6d2a7307ea51aec598b 
│                       │       │                  ├ [12]: https://github.com/python/cpython/issues/133767 
│                       │       │                  ├ [13]: https://github.com/python/cpython/pull/129648 
│                       │       │                  ├ [14]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/L75IPBBTSCYEF56I2M4KIW353BB3AY
│                       │       │                  │       74/ 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4516 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7570-1 
│                       │       │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4516 
│                       │       ├ PublishedDate   : 2025-05-15T14:15:31.753Z 
│                       │       ╰ LastModifiedDate: 2025-06-03T14:15:49.697Z 
│                       ├ [66]  ╭ VulnerabilityID : CVE-2025-4517 
│                       │       ├ PkgID           : libpython3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-minimal@3.12.7-1ubuntu2
│                       │       │                  │       ?arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d77c6237b78757e2 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4517 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : python: cpython: Arbitrary writes via tarfile realpath
│                       │       │                   overflow 
│                       │       ├ Description     : Allows arbitrary filesystem writes outside the extraction
│                       │       │                   directory during extraction with filter="data".
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 4 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :H/A:L 
│                       │       │                  │         ╰ V3Score : 9.4 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4517 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4517.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4517 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4517 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.837Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:33.05Z 
│                       ├ [67]  ╭ VulnerabilityID : CVE-2024-12718 
│                       │       ├ PkgID           : libpython3.12-stdlib@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-stdlib@3.12.7-1ubuntu2?
│                       │       │                  │       arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d3a955461b0918fe 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-12718 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypass extraction filter to modify file
│                       │       │                   metadata outside extraction directory 
│                       │       ├ Description     : Allows modifying some file metadata (e.g. last modified)
│                       │       │                   with filter="data" or file permissions (chmod) with
│                       │       │                   filter="tar" of files outside the extraction directory.
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information. Only Python versions
│                       │       │                   3.12 or later are affected by these vulnerabilities,
│                       │       │                   earlier versions don't include the extraction filter
│                       │       │                   feature.
│                       │       │                   
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-12718 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/127987 
│                       │       │                  ├ [19]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [20]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2024-12718.html 
│                       │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [23]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [24]: https://nvd.nist.gov/vuln/detail/CVE-2024-12718 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2024-12718 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.183Z 
│                       │       ╰ LastModifiedDate: 2025-07-24T16:15:29.157Z 
│                       ├ [68]  ╭ VulnerabilityID : CVE-2025-4138 
│                       │       ├ PkgID           : libpython3.12-stdlib@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-stdlib@3.12.7-1ubuntu2?
│                       │       │                  │       arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d3a955461b0918fe 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4138 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypassing extraction filter to create
│                       │       │                   symlinks to arbitrary targets outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :N/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :N/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4138 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4138.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4138 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4138 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.377Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.767Z 
│                       ├ [69]  ╭ VulnerabilityID : CVE-2025-4330 
│                       │       ├ PkgID           : libpython3.12-stdlib@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-stdlib@3.12.7-1ubuntu2?
│                       │       │                  │       arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d3a955461b0918fe 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4330 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Extraction filter bypass for linking
│                       │       │                   outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4330 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4330.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4330 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4330 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.503Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.91Z 
│                       ├ [70]  ╭ VulnerabilityID : CVE-2025-4435 
│                       │       ├ PkgID           : libpython3.12-stdlib@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-stdlib@3.12.7-1ubuntu2?
│                       │       │                  │       arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d3a955461b0918fe 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: Tarfile extracts filtered members when errorlevel=0 
│                       │       ├ Description     : When using a TarFile.errorlevel = 0 and extracting with a
│                       │       │                   filter the documented behavior is that any filtered members
│                       │       │                    would be skipped and not extracted. However the actual
│                       │       │                   behavior of TarFile.errorlevel = 0 in affected versions is
│                       │       │                   that the member would still be extracted and not skipped. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-682 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4435 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [17]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [18]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-4435.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [21]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2025-4435 
│                       │       │                  ├ [23]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2025-4435 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.63Z 
│                       │       ╰ LastModifiedDate: 2025-06-04T14:54:33.783Z 
│                       ├ [71]  ╭ VulnerabilityID : CVE-2025-4516 
│                       │       ├ PkgID           : libpython3.12-stdlib@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-stdlib@3.12.7-1ubuntu2?
│                       │       │                  │       arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d3a955461b0918fe 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4516 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: CPython DecodeError Handling Vulnerability 
│                       │       ├ Description     : There is an issue in CPython when using
│                       │       │                   `bytes.decode("unicode_escape", error="ignore|replace")`.
│                       │       │                   If you are not using the "unicode_escape" encoding or an
│                       │       │                   error handler your usage is not affected. To work-around
│                       │       │                   this issue you may stop using the error= handler and
│                       │       │                   instead wrap the bytes.decode() call in a try-except
│                       │       │                   catching the DecodeError. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       6/4 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       9/1 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4516 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/4398b788ffc
│                       │       │                  │       1f954a2c552da285477d42a571292 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/56466486782
│                       │       │                  │       95a44aa82636c6e92826651baf33a 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/6279eb8c076
│                       │       │                  │       d89d3739a6edb393e43c7929b429d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/69b4387f78f
│                       │       │                  │       413e8c47572a85b3478c47eba8142 
│                       │       │                  ├ [7] : https://github.com/python/cpython/commit/73b3040f592
│                       │       │                  │       436385007918887b7e2132aa8431f 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/8d35fd1b349
│                       │       │                  │       35221aff23a1ab69a429dd156be77 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e (main) 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/ab9893c4060
│                       │       │                  │       9935e0d40a6d2a7307ea51aec598b 
│                       │       │                  ├ [12]: https://github.com/python/cpython/issues/133767 
│                       │       │                  ├ [13]: https://github.com/python/cpython/pull/129648 
│                       │       │                  ├ [14]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/L75IPBBTSCYEF56I2M4KIW353BB3AY
│                       │       │                  │       74/ 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4516 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7570-1 
│                       │       │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4516 
│                       │       ├ PublishedDate   : 2025-05-15T14:15:31.753Z 
│                       │       ╰ LastModifiedDate: 2025-06-03T14:15:49.697Z 
│                       ├ [72]  ╭ VulnerabilityID : CVE-2025-4517 
│                       │       ├ PkgID           : libpython3.12-stdlib@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12-stdlib@3.12.7-1ubuntu2?
│                       │       │                  │       arch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d3a955461b0918fe 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4517 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : python: cpython: Arbitrary writes via tarfile realpath
│                       │       │                   overflow 
│                       │       ├ Description     : Allows arbitrary filesystem writes outside the extraction
│                       │       │                   directory during extraction with filter="data".
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 4 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :H/A:L 
│                       │       │                  │         ╰ V3Score : 9.4 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4517 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4517.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4517 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4517 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.837Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:33.05Z 
│                       ├ [73]  ╭ VulnerabilityID : CVE-2024-12718 
│                       │       ├ PkgID           : libpython3.12t64@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12t64@3.12.7-1ubuntu2?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2d6fd5bdf6438b4c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-12718 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypass extraction filter to modify file
│                       │       │                   metadata outside extraction directory 
│                       │       ├ Description     : Allows modifying some file metadata (e.g. last modified)
│                       │       │                   with filter="data" or file permissions (chmod) with
│                       │       │                   filter="tar" of files outside the extraction directory.
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information. Only Python versions
│                       │       │                   3.12 or later are affected by these vulnerabilities,
│                       │       │                   earlier versions don't include the extraction filter
│                       │       │                   feature.
│                       │       │                   
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-12718 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/127987 
│                       │       │                  ├ [19]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [20]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2024-12718.html 
│                       │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [23]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [24]: https://nvd.nist.gov/vuln/detail/CVE-2024-12718 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2024-12718 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.183Z 
│                       │       ╰ LastModifiedDate: 2025-07-24T16:15:29.157Z 
│                       ├ [74]  ╭ VulnerabilityID : CVE-2025-4138 
│                       │       ├ PkgID           : libpython3.12t64@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12t64@3.12.7-1ubuntu2?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2d6fd5bdf6438b4c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4138 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypassing extraction filter to create
│                       │       │                   symlinks to arbitrary targets outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :N/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :N/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4138 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4138.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4138 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4138 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.377Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.767Z 
│                       ├ [75]  ╭ VulnerabilityID : CVE-2025-4330 
│                       │       ├ PkgID           : libpython3.12t64@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12t64@3.12.7-1ubuntu2?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2d6fd5bdf6438b4c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4330 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Extraction filter bypass for linking
│                       │       │                   outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4330 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4330.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4330 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4330 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.503Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.91Z 
│                       ├ [76]  ╭ VulnerabilityID : CVE-2025-4435 
│                       │       ├ PkgID           : libpython3.12t64@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12t64@3.12.7-1ubuntu2?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2d6fd5bdf6438b4c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: Tarfile extracts filtered members when errorlevel=0 
│                       │       ├ Description     : When using a TarFile.errorlevel = 0 and extracting with a
│                       │       │                   filter the documented behavior is that any filtered members
│                       │       │                    would be skipped and not extracted. However the actual
│                       │       │                   behavior of TarFile.errorlevel = 0 in affected versions is
│                       │       │                   that the member would still be extracted and not skipped. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-682 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4435 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [17]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [18]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-4435.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [21]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2025-4435 
│                       │       │                  ├ [23]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2025-4435 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.63Z 
│                       │       ╰ LastModifiedDate: 2025-06-04T14:54:33.783Z 
│                       ├ [77]  ╭ VulnerabilityID : CVE-2025-4516 
│                       │       ├ PkgID           : libpython3.12t64@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12t64@3.12.7-1ubuntu2?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2d6fd5bdf6438b4c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4516 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: CPython DecodeError Handling Vulnerability 
│                       │       ├ Description     : There is an issue in CPython when using
│                       │       │                   `bytes.decode("unicode_escape", error="ignore|replace")`.
│                       │       │                   If you are not using the "unicode_escape" encoding or an
│                       │       │                   error handler your usage is not affected. To work-around
│                       │       │                   this issue you may stop using the error= handler and
│                       │       │                   instead wrap the bytes.decode() call in a try-except
│                       │       │                   catching the DecodeError. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       6/4 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       9/1 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4516 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/4398b788ffc
│                       │       │                  │       1f954a2c552da285477d42a571292 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/56466486782
│                       │       │                  │       95a44aa82636c6e92826651baf33a 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/6279eb8c076
│                       │       │                  │       d89d3739a6edb393e43c7929b429d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/69b4387f78f
│                       │       │                  │       413e8c47572a85b3478c47eba8142 
│                       │       │                  ├ [7] : https://github.com/python/cpython/commit/73b3040f592
│                       │       │                  │       436385007918887b7e2132aa8431f 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/8d35fd1b349
│                       │       │                  │       35221aff23a1ab69a429dd156be77 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e (main) 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/ab9893c4060
│                       │       │                  │       9935e0d40a6d2a7307ea51aec598b 
│                       │       │                  ├ [12]: https://github.com/python/cpython/issues/133767 
│                       │       │                  ├ [13]: https://github.com/python/cpython/pull/129648 
│                       │       │                  ├ [14]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/L75IPBBTSCYEF56I2M4KIW353BB3AY
│                       │       │                  │       74/ 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4516 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7570-1 
│                       │       │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4516 
│                       │       ├ PublishedDate   : 2025-05-15T14:15:31.753Z 
│                       │       ╰ LastModifiedDate: 2025-06-03T14:15:49.697Z 
│                       ├ [78]  ╭ VulnerabilityID : CVE-2025-4517 
│                       │       ├ PkgID           : libpython3.12t64@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : libpython3.12t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.12t64@3.12.7-1ubuntu2?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 2d6fd5bdf6438b4c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4517 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : python: cpython: Arbitrary writes via tarfile realpath
│                       │       │                   overflow 
│                       │       ├ Description     : Allows arbitrary filesystem writes outside the extraction
│                       │       │                   directory during extraction with filter="data".
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 4 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :H/A:L 
│                       │       │                  │         ╰ V3Score : 9.4 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4517 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4517.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4517 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4517 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.837Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:33.05Z 
│                       ├ [79]  ╭ VulnerabilityID : CVE-2025-29087 
│                       │       ├ PkgID           : libsqlite3-0@3.46.1-1 
│                       │       ├ PkgName         : libsqlite3-0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsqlite3-0@3.46.1-1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10 
│                       │       │                  ╰ UID : d47783a0d6415972 
│                       │       ├ InstalledVersion: 3.46.1-1 
│                       │       ├ FixedVersion    : 3.46.1-1ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-29087 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : sqlite: Integer Overflow in SQLite concat_ws Function 
│                       │       ├ Description     : In SQLite 3.44.0 through 3.49.0 before 3.49.1, the
│                       │       │                   concat_ws() SQL function can cause memory to be written
│                       │       │                   beyond the end of a malloc-allocated buffer. If the
│                       │       │                   separator argument is attacker-controlled and has a large
│                       │       │                   string (e.g., 2MB or more), an integer overflow occurs in
│                       │       │                   calculating the size of the result buffer, and thus malloc
│                       │       │                   may not allocate enough memory. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-190 
│                       │       ├ VendorSeverity   ╭ bitnami: 3 
│                       │       │                  ├ nvd    : 3 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :N/A:H 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :N/A:H 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:H 
│                       │       │                            ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-29087 
│                       │       │                  ├ [1]: https://gist.github.com/ylwango613/a44a29f1ef074fa783
│                       │       │                  │      e29f04a0afd62a 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-29087 
│                       │       │                  ├ [3]: https://sqlite.org/releaselog/3_49_1.html 
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-7528-1 
│                       │       │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2025-29087 
│                       │       │                  ╰ [6]: https://www.sqlite.org/cves.html 
│                       │       ├ PublishedDate   : 2025-04-07T20:15:20.253Z 
│                       │       ╰ LastModifiedDate: 2025-04-30T12:43:22.31Z 
│                       ├ [80]  ╭ VulnerabilityID : CVE-2025-29088 
│                       │       ├ PkgID           : libsqlite3-0@3.46.1-1 
│                       │       ├ PkgName         : libsqlite3-0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsqlite3-0@3.46.1-1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10 
│                       │       │                  ╰ UID : d47783a0d6415972 
│                       │       ├ InstalledVersion: 3.46.1-1 
│                       │       ├ FixedVersion    : 3.46.1-1ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-29088 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : sqlite: Denial of Service in SQLite 
│                       │       ├ Description     : In SQLite 3.49.0 before 3.49.1, certain argument values to
│                       │       │                   sqlite3_db_config (in the C-language API) can cause a
│                       │       │                   denial of service (application crash). An sz*nBig
│                       │       │                   multiplication is not cast to a 64-bit integer, and
│                       │       │                   consequently some memory allocations may be incorrect. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-190 
│                       │       │                  ╰ [1]: CWE-400 
│                       │       ├ VendorSeverity   ╭ amazon : 3 
│                       │       │                  ├ bitnami: 3 
│                       │       │                  ├ photon : 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :N/A:H 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:H 
│                       │       │                            ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-29088 
│                       │       │                  ├ [1]: https://gist.github.com/ylwango613/d3883fb9f6ba8a7808
│                       │       │                  │      6356779ce88248 
│                       │       │                  ├ [2]: https://github.com/sqlite/sqlite/commit/56d2fd008b108
│                       │       │                  │      109f489339f5fd55212bb50afd4 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-29088 
│                       │       │                  ├ [4]: https://sqlite.org/forum/forumpost/48f365daec 
│                       │       │                  ├ [5]: https://sqlite.org/releaselog/3_49_1.html 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-7528-1 
│                       │       │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2025-29088 
│                       │       │                  ╰ [8]: https://www.sqlite.org/cves.html 
│                       │       ├ PublishedDate   : 2025-04-10T14:15:27.163Z 
│                       │       ╰ LastModifiedDate: 2025-04-30T16:40:41.543Z 
│                       ├ [81]  ╭ VulnerabilityID : CVE-2025-3277 
│                       │       ├ PkgID           : libsqlite3-0@3.46.1-1 
│                       │       ├ PkgName         : libsqlite3-0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsqlite3-0@3.46.1-1?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-24.10 
│                       │       │                  ╰ UID : d47783a0d6415972 
│                       │       ├ InstalledVersion: 3.46.1-1 
│                       │       ├ FixedVersion    : 3.46.1-1ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-3277 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : SQLite: integer overflow in SQLite 
│                       │       ├ Description     : An integer overflow can be triggered in SQLite’s
│                       │       │                   `concat_ws()` function. The resulting, truncated integer is
│                       │       │                    then used to allocate a buffer. When SQLite then writes
│                       │       │                   the resulting string to the buffer, it uses the original,
│                       │       │                   untruncated size and thus a wild Heap Buffer overflow of
│                       │       │                   size ~4GB can be triggered. This can result in arbitrary
│                       │       │                   code execution. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-122 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7433 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-3277 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2358271 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2359553 
│                       │       │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-7433.html 
│                       │       │                  ├ [5] : https://linux.oracle.com/cve/CVE-2025-3277.html 
│                       │       │                  ├ [6] : https://linux.oracle.com/errata/ELSA-2025-7517.html 
│                       │       │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-3277 
│                       │       │                  ├ [8] : https://sqlite.org/src/info/498e3f1cf57f164f 
│                       │       │                  ├ [9] : https://ubuntu.com/security/notices/USN-7528-1 
│                       │       │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-3277 
│                       │       ├ PublishedDate   : 2025-04-14T17:15:27.297Z 
│                       │       ╰ LastModifiedDate: 2025-04-15T18:39:27.967Z 
│                       ├ [82]  ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : libsystemd-shared@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : libsystemd-shared 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@256.5-2ubuntu3.1?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : f63181b8247659fb 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [83]  ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : libsystemd0@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : libsystemd0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@256.5-2ubuntu3.1?arch=amd
│                       │       │                  │       64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : d8ebb85a32e8f9e4 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [84]  ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : libudev1@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : libudev1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@256.5-2ubuntu3.1?arch=amd64&
│                       │       │                  │       distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 3f5fe66363b6fb38 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [85]  ╭ VulnerabilityID : CVE-2024-56171 
│                       │       ├ PkgID           : libxml2@2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ PkgName         : libxml2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2@2.12.7%2Bdfsg-3ubuntu0.1?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 735cf5629395b71 
│                       │       ├ InstalledVersion: 2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ FixedVersion    : 2.12.7+dfsg-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56171 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libxml2: Use-After-Free in libxml2 
│                       │       ├ Description     : libxml2 before 2.12.10 and 2.13.x before 2.13.6 has a
│                       │       │                   use-after-free in xmlSchemaIDCFillNodeTables and
│                       │       │                   xmlSchemaBubbleIDCNodeTables in xmlschemas.c. To exploit
│                       │       │                   this, a crafted XML document must be validated against an
│                       │       │                   XML schema with certain identity constraints, or a crafted
│                       │       │                   XML schema must be used. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:C/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 8.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:2679 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56171 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2346416 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2346421 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2346416 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2346421 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-56171 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-24928 
│                       │       │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2025-2679.html 
│                       │       │                  ├ [9] : https://errata.rockylinux.org/RLSA-2025:2686 
│                       │       │                  ├ [10]: https://gitlab.gnome.org/GNOME/libxml2/-/issues/828 
│                       │       │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-56171.html 
│                       │       │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-2686.html 
│                       │       │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-56171 
│                       │       │                  ├ [14]: https://security.netapp.com/advisory/ntap-20250328-0
│                       │       │                  │       010/ 
│                       │       │                  ├ [15]: https://ubuntu.com/security/notices/USN-7302-1 
│                       │       │                  ├ [16]: https://www.cve.org/CVERecord?id=CVE-2024-56171 
│                       │       │                  ╰ [17]: https://www.openwall.com/lists/oss-security/2025/02/
│                       │       │                          18/2 
│                       │       ├ PublishedDate   : 2025-02-18T22:15:12.797Z 
│                       │       ╰ LastModifiedDate: 2025-03-28T15:15:46.003Z 
│                       ├ [86]  ╭ VulnerabilityID : CVE-2025-24928 
│                       │       ├ PkgID           : libxml2@2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ PkgName         : libxml2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2@2.12.7%2Bdfsg-3ubuntu0.1?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 735cf5629395b71 
│                       │       ├ InstalledVersion: 2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ FixedVersion    : 2.12.7+dfsg-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-24928 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libxml2: Stack-based buffer overflow in xmlSnprintfElements
│                       │       │                    of libxml2 
│                       │       ├ Description     : libxml2 before 2.12.10 and 2.13.x before 2.13.6 has a
│                       │       │                   stack-based buffer overflow in xmlSnprintfElements in
│                       │       │                   valid.c. To exploit this, DTD validation must occur for an
│                       │       │                   untrusted document or untrusted DTD. NOTE: this is similar
│                       │       │                   to CVE-2017-9047. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-121 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:C/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 7.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:2679 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-24928 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2346416 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2346421 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2346416 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2346421 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-56171 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-24928 
│                       │       │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2025-2679.html 
│                       │       │                  ├ [9] : https://errata.rockylinux.org/RLSA-2025:2686 
│                       │       │                  ├ [10]: https://gitlab.gnome.org/GNOME/libxml2/-/issues/847 
│                       │       │                  ├ [11]: https://issues.oss-fuzz.com/issues/392687022 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2025-24928.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-2686.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2025-24928 
│                       │       │                  ├ [15]: https://security.netapp.com/advisory/ntap-20250321-0
│                       │       │                  │       006/ 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7302-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-24928 
│                       │       │                  ╰ [18]: https://www.openwall.com/lists/oss-security/2025/02/
│                       │       │                          18/2 
│                       │       ├ PublishedDate   : 2025-02-18T23:15:10.25Z 
│                       │       ╰ LastModifiedDate: 2025-03-21T18:15:34.86Z 
│                       ├ [87]  ╭ VulnerabilityID : CVE-2025-27113 
│                       │       ├ PkgID           : libxml2@2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ PkgName         : libxml2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2@2.12.7%2Bdfsg-3ubuntu0.1?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 735cf5629395b71 
│                       │       ├ InstalledVersion: 2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ FixedVersion    : 2.12.7+dfsg-3ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-27113 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libxml2: NULL Pointer Dereference in libxml2 xmlPatMatch 
│                       │       ├ Description     : libxml2 before 2.12.10 and 2.13.x before 2.13.6 has a NULL
│                       │       │                   pointer dereference in xmlPatMatch in pattern.c. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ cbl-mariner: 1 
│                       │       │                  ├ nvd        : 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 3.1 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-27113 
│                       │       │                  ├ [1]: https://gitlab.gnome.org/GNOME/libxml2/-/issues/861 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-27113 
│                       │       │                  ├ [3]: https://security.netapp.com/advisory/ntap-20250306-00
│                       │       │                  │      04/ 
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-7302-1 
│                       │       │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2025-27113 
│                       │       │                  ╰ [6]: https://www.openwall.com/lists/oss-security/2025/02/1
│                       │       │                         8/2 
│                       │       ├ PublishedDate   : 2025-02-18T23:15:10.96Z 
│                       │       ╰ LastModifiedDate: 2025-03-07T01:15:12.823Z 
│                       ├ [88]  ╭ VulnerabilityID : CVE-2025-32414 
│                       │       ├ PkgID           : libxml2@2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ PkgName         : libxml2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2@2.12.7%2Bdfsg-3ubuntu0.1?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 735cf5629395b71 
│                       │       ├ InstalledVersion: 2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ FixedVersion    : 2.12.7+dfsg-3ubuntu0.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32414 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libxml2: Out-of-Bounds Read in libxml2 
│                       │       ├ Description     : In libxml2 before 2.13.8 and 2.14.x before 2.14.2,
│                       │       │                   out-of-bounds memory access can occur in the Python API
│                       │       │                   (Python bindings) because of an incorrect return value.
│                       │       │                   This occurs in xmlPythonFileRead and xmlPythonFileReadRaw
│                       │       │                   because of a difference between bytes and characters. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-393 
│                       │       │                  ╰ [1]: CWE-252 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ nvd        : 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:C/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 5.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:8958 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-32414 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2358121 
│                       │       │                  ├ [3] : https://errata.almalinux.org/8/ALSA-2025-8958.html 
│                       │       │                  ├ [4] : https://gitlab.gnome.org/GNOME/libxml2/-/issues/889 
│                       │       │                  ├ [5] : https://linux.oracle.com/cve/CVE-2025-32414.html 
│                       │       │                  ├ [6] : https://linux.oracle.com/errata/ELSA-2025-8958.html 
│                       │       │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-32414 
│                       │       │                  ├ [8] : https://ubuntu.com/security/notices/USN-7467-1 
│                       │       │                  ├ [9] : https://ubuntu.com/security/notices/USN-7467-2 
│                       │       │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-32414 
│                       │       ├ PublishedDate   : 2025-04-08T03:15:15.94Z 
│                       │       ╰ LastModifiedDate: 2025-04-23T19:09:35.517Z 
│                       ├ [89]  ╭ VulnerabilityID : CVE-2025-32415 
│                       │       ├ PkgID           : libxml2@2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ PkgName         : libxml2 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2@2.12.7%2Bdfsg-3ubuntu0.1?arch
│                       │       │                  │       =amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 735cf5629395b71 
│                       │       ├ InstalledVersion: 2.12.7+dfsg-3ubuntu0.1 
│                       │       ├ FixedVersion    : 2.12.7+dfsg-3ubuntu0.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32415 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : libxml2: Out-of-bounds Read in xmlSchemaIDCFillNodeTables 
│                       │       ├ Description     : In libxml2 before 2.13.8 and 2.14.x before 2.14.2,
│                       │       │                   xmlSchemaIDCFillNodeTables in xmlschemas.c has a heap-based
│                       │       │                    buffer under-read. To exploit this, a crafted XML document
│                       │       │                    must be validated against an XML schema with certain
│                       │       │                   identity constraints, or a crafted XML schema must be used. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-1284 
│                       │       │                  ╰ [1]: CWE-125 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ cbl-mariner: 1 
│                       │       │                  ├ nvd        : 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-32415 
│                       │       │                  ├ [1]: https://gitlab.gnome.org/GNOME/libxml2/-/issues/890 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2025-32415 
│                       │       │                  ├ [3]: https://ubuntu.com/security/notices/USN-7467-1 
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-7467-2 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-32415 
│                       │       ├ PublishedDate   : 2025-04-17T17:15:33.733Z 
│                       │       ╰ LastModifiedDate: 2025-04-23T18:17:52.053Z 
│                       ├ [90]  ╭ VulnerabilityID : CVE-2025-46836 
│                       │       ├ PkgID           : net-tools@2.10-1.1ubuntu1 
│                       │       ├ PkgName         : net-tools 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/net-tools@2.10-1.1ubuntu1?arch=amd64&
│                       │       │                  │       distro=ubuntu-24.10 
│                       │       │                  ╰ UID : f64ded68fb2c0511 
│                       │       ├ InstalledVersion: 2.10-1.1ubuntu1 
│                       │       ├ FixedVersion    : 2.10-1.1ubuntu1.24.10.4 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-46836 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : net-tools: net-tools Stack Buffer Overflow 
│                       │       ├ Description     : net-tools is a collection of programs that form the base
│                       │       │                   set of the NET-3 networking distribution for the Linux
│                       │       │                   operating system. Inn versions up to and including 2.10,
│                       │       │                   the Linux network utilities (like ifconfig) from the
│                       │       │                   net-tools package do not properly validate the structure of
│                       │       │                    /proc files when showing interfaces. `get_name()` in
│                       │       │                   `interface.c` copies interface labels from `/proc/net/dev`
│                       │       │                   into a fixed 16-byte stack buffer without bounds checking,
│                       │       │                   leading to possible arbitrary code execution or crash. The
│                       │       │                   known attack path does not require privilege but also does
│                       │       │                   not provide privilege escalation in this scenario. A patch
│                       │       │                   is available and expected to be part of version 2.20. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-20 
│                       │       │                  ╰ [1]: CWE-121 
│                       │       ├ VendorSeverity   ╭ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:H 
│                       │       │                           ╰ V3Score : 6.6 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-46836 
│                       │       │                  ├ [1]: https://github.com/ecki/net-tools/commit/7a8f42fb2001
│                       │       │                  │      3a1493d8cae1c43436f85e656f2d 
│                       │       │                  ├ [2]: https://github.com/ecki/net-tools/security/advisories
│                       │       │                  │      /GHSA-pfwf-h6m3-63wf 
│                       │       │                  ├ [3]: https://lists.debian.org/debian-lts-announce/2025/05/
│                       │       │                  │      msg00053.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-46836 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-7537-1 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-7537-2 
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-46836 
│                       │       ├ PublishedDate   : 2025-05-14T23:15:48.073Z 
│                       │       ╰ LastModifiedDate: 2025-05-31T23:15:20.4Z 
│                       ├ [91]  ╭ VulnerabilityID : CVE-2025-32728 
│                       │       ├ PkgID           : openssh-client@1:9.7p1-7ubuntu4.2 
│                       │       ├ PkgName         : openssh-client 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-client@9.7p1-7ubuntu4.2?arch=
│                       │       │                  │       amd64&distro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 6da8270b8675190a 
│                       │       ├ InstalledVersion: 1:9.7p1-7ubuntu4.2 
│                       │       ├ FixedVersion    : 1:9.7p1-7ubuntu4.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32728 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : openssh: OpenSSH SSHD Agent Forwarding and X11 Forwarding 
│                       │       ├ Description     : In sshd in OpenSSH before 10.0, the DisableForwarding
│                       │       │                   directive does not adhere to the documentation stating that
│                       │       │                    it disables X11 and agent forwarding. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-440 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ nvd        : 1 
│                       │       │                  ├ photon     : 1 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 3.8 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-32728 
│                       │       │                  ├ [1] : https://ftp.openbsd.org/pub/OpenBSD/patches/7.6/comm
│                       │       │                  │       on/013_ssh.patch.sig 
│                       │       │                  ├ [2] : https://github.com/openssh/openssh-portable/commit/f
│                       │       │                  │       c86875e6acb36401dfc1dfb6b628a9d1460f367 
│                       │       │                  ├ [3] : https://lists.debian.org/debian-lts-announce/2025/05
│                       │       │                  │       /msg00008.html 
│                       │       │                  ├ [4] : https://lists.mindrot.org/pipermail/openssh-unix-dev
│                       │       │                  │       /2025-April/041879.html 
│                       │       │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2025-32728 
│                       │       │                  ├ [6] : https://security.netapp.com/advisory/ntap-20250425-0
│                       │       │                  │       002/ 
│                       │       │                  ├ [7] : https://ubuntu.com/security/notices/USN-7457-1 
│                       │       │                  ├ [8] : https://www.cve.org/CVERecord?id=CVE-2025-32728 
│                       │       │                  ├ [9] : https://www.openssh.com/txt/release-10.0 
│                       │       │                  ╰ [10]: https://www.openssh.com/txt/release-7.4 
│                       │       ├ PublishedDate   : 2025-04-10T02:15:30.873Z 
│                       │       ╰ LastModifiedDate: 2025-05-22T16:51:54.89Z 
│                       ├ [92]  ╭ VulnerabilityID : CVE-2025-32728 
│                       │       ├ PkgID           : openssh-server@1:9.7p1-7ubuntu4.2 
│                       │       ├ PkgName         : openssh-server 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-server@9.7p1-7ubuntu4.2?arch=
│                       │       │                  │       amd64&distro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 95d55c3cbf776b9a 
│                       │       ├ InstalledVersion: 1:9.7p1-7ubuntu4.2 
│                       │       ├ FixedVersion    : 1:9.7p1-7ubuntu4.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32728 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : openssh: OpenSSH SSHD Agent Forwarding and X11 Forwarding 
│                       │       ├ Description     : In sshd in OpenSSH before 10.0, the DisableForwarding
│                       │       │                   directive does not adhere to the documentation stating that
│                       │       │                    it disables X11 and agent forwarding. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-440 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ nvd        : 1 
│                       │       │                  ├ photon     : 1 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 3.8 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-32728 
│                       │       │                  ├ [1] : https://ftp.openbsd.org/pub/OpenBSD/patches/7.6/comm
│                       │       │                  │       on/013_ssh.patch.sig 
│                       │       │                  ├ [2] : https://github.com/openssh/openssh-portable/commit/f
│                       │       │                  │       c86875e6acb36401dfc1dfb6b628a9d1460f367 
│                       │       │                  ├ [3] : https://lists.debian.org/debian-lts-announce/2025/05
│                       │       │                  │       /msg00008.html 
│                       │       │                  ├ [4] : https://lists.mindrot.org/pipermail/openssh-unix-dev
│                       │       │                  │       /2025-April/041879.html 
│                       │       │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2025-32728 
│                       │       │                  ├ [6] : https://security.netapp.com/advisory/ntap-20250425-0
│                       │       │                  │       002/ 
│                       │       │                  ├ [7] : https://ubuntu.com/security/notices/USN-7457-1 
│                       │       │                  ├ [8] : https://www.cve.org/CVERecord?id=CVE-2025-32728 
│                       │       │                  ├ [9] : https://www.openssh.com/txt/release-10.0 
│                       │       │                  ╰ [10]: https://www.openssh.com/txt/release-7.4 
│                       │       ├ PublishedDate   : 2025-04-10T02:15:30.873Z 
│                       │       ╰ LastModifiedDate: 2025-05-22T16:51:54.89Z 
│                       ├ [93]  ╭ VulnerabilityID : CVE-2025-32728 
│                       │       ├ PkgID           : openssh-sftp-server@1:9.7p1-7ubuntu4.2 
│                       │       ├ PkgName         : openssh-sftp-server 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-sftp-server@9.7p1-7ubuntu4.2?
│                       │       │                  │       arch=amd64&distro=ubuntu-24.10&epoch=1 
│                       │       │                  ╰ UID : 7f637c22065d0245 
│                       │       ├ InstalledVersion: 1:9.7p1-7ubuntu4.2 
│                       │       ├ FixedVersion    : 1:9.7p1-7ubuntu4.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32728 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : openssh: OpenSSH SSHD Agent Forwarding and X11 Forwarding 
│                       │       ├ Description     : In sshd in OpenSSH before 10.0, the DisableForwarding
│                       │       │                   directive does not adhere to the documentation stating that
│                       │       │                    it disables X11 and agent forwarding. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-440 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ nvd        : 1 
│                       │       │                  ├ photon     : 1 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 3.8 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-32728 
│                       │       │                  ├ [1] : https://ftp.openbsd.org/pub/OpenBSD/patches/7.6/comm
│                       │       │                  │       on/013_ssh.patch.sig 
│                       │       │                  ├ [2] : https://github.com/openssh/openssh-portable/commit/f
│                       │       │                  │       c86875e6acb36401dfc1dfb6b628a9d1460f367 
│                       │       │                  ├ [3] : https://lists.debian.org/debian-lts-announce/2025/05
│                       │       │                  │       /msg00008.html 
│                       │       │                  ├ [4] : https://lists.mindrot.org/pipermail/openssh-unix-dev
│                       │       │                  │       /2025-April/041879.html 
│                       │       │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2025-32728 
│                       │       │                  ├ [6] : https://security.netapp.com/advisory/ntap-20250425-0
│                       │       │                  │       002/ 
│                       │       │                  ├ [7] : https://ubuntu.com/security/notices/USN-7457-1 
│                       │       │                  ├ [8] : https://www.cve.org/CVERecord?id=CVE-2025-32728 
│                       │       │                  ├ [9] : https://www.openssh.com/txt/release-10.0 
│                       │       │                  ╰ [10]: https://www.openssh.com/txt/release-7.4 
│                       │       ├ PublishedDate   : 2025-04-10T02:15:30.873Z 
│                       │       ╰ LastModifiedDate: 2025-05-22T16:51:54.89Z 
│                       ├ [94]  ╭ VulnerabilityID : CVE-2024-56406 
│                       │       ├ PkgID           : perl@5.38.2-5 
│                       │       ├ PkgName         : perl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/perl@5.38.2-5?arch=amd64&distro=ubunt
│                       │       │                  │       u-24.10 
│                       │       │                  ╰ UID : c78025b15dca4aad 
│                       │       ├ InstalledVersion: 5.38.2-5 
│                       │       ├ FixedVersion    : 5.38.2-5ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56406 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : perl: Perl 5.34, 5.36, 5.38 and 5.40 are vulnerable to a
│                       │       │                   heap buffer overflow when transliterating non-ASCII bytes 
│                       │       ├ Description     : A heap buffer overflow vulnerability was discovered in
│                       │       │                   Perl. 
│                       │       │                   
│                       │       │                   Release branches 5.34, 5.36, 5.38 and 5.40 are affected,
│                       │       │                   including development versions from 5.33.1 through
│                       │       │                   5.41.10.
│                       │       │                   When there are non-ASCII bytes in the left-hand-side of the
│                       │       │                    `tr` operator, `S_do_trans_invmap` can overflow the
│                       │       │                   destination pointer `d`.
│                       │       │                      $ perl -e '$_ = "\x{FF}" x 1000000; tr/\xFF/\x{100}/;' 
│                       │       │                      Segmentation fault (core dumped)
│                       │       │                   It is believed that this vulnerability can enable Denial of
│                       │       │                    Service and possibly Code Execution attacks on platforms
│                       │       │                   that lack sufficient defenses. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-122 
│                       │       │                  ╰ [1]: CWE-787 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:H 
│                       │       │                           ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/3 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/4 
│                       │       │                  ├ [2] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/5 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:7500 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2024-56406 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2359290 
│                       │       │                  ├ [6] : https://errata.almalinux.org/10/ALSA-2025-7500.html 
│                       │       │                  ├ [7] : https://github.com/Perl/perl5/commit/87f42aa0e0096e9
│                       │       │                  │       a346c9672aa3a0bd3bef8c1dd.patch 
│                       │       │                  ├ [8] : https://linux.oracle.com/cve/CVE-2024-56406.html 
│                       │       │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7500.html 
│                       │       │                  ├ [10]: https://metacpan.org/release/SHAY/perl-5.38.4/changes 
│                       │       │                  ├ [11]: https://metacpan.org/release/SHAY/perl-5.40.2/changes 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56406 
│                       │       │                  ├ [13]: https://ubuntu.com/security/notices/USN-7434-1 
│                       │       │                  ├ [14]: https://ubuntu.com/security/notices/USN-7434-2 
│                       │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-56406 
│                       │       ├ PublishedDate   : 2025-04-13T14:15:14.527Z 
│                       │       ╰ LastModifiedDate: 2025-04-30T15:21:11.547Z 
│                       ├ [95]  ╭ VulnerabilityID : CVE-2024-56406 
│                       │       ├ PkgID           : perl-base@5.38.2-5 
│                       │       ├ PkgName         : perl-base 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/perl-base@5.38.2-5?arch=amd64&distro=
│                       │       │                  │       ubuntu-24.10 
│                       │       │                  ╰ UID : 77ab4151461517eb 
│                       │       ├ InstalledVersion: 5.38.2-5 
│                       │       ├ FixedVersion    : 5.38.2-5ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56406 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : perl: Perl 5.34, 5.36, 5.38 and 5.40 are vulnerable to a
│                       │       │                   heap buffer overflow when transliterating non-ASCII bytes 
│                       │       ├ Description     : A heap buffer overflow vulnerability was discovered in
│                       │       │                   Perl. 
│                       │       │                   
│                       │       │                   Release branches 5.34, 5.36, 5.38 and 5.40 are affected,
│                       │       │                   including development versions from 5.33.1 through
│                       │       │                   5.41.10.
│                       │       │                   When there are non-ASCII bytes in the left-hand-side of the
│                       │       │                    `tr` operator, `S_do_trans_invmap` can overflow the
│                       │       │                   destination pointer `d`.
│                       │       │                      $ perl -e '$_ = "\x{FF}" x 1000000; tr/\xFF/\x{100}/;' 
│                       │       │                      Segmentation fault (core dumped)
│                       │       │                   It is believed that this vulnerability can enable Denial of
│                       │       │                    Service and possibly Code Execution attacks on platforms
│                       │       │                   that lack sufficient defenses. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-122 
│                       │       │                  ╰ [1]: CWE-787 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:H 
│                       │       │                           ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/3 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/4 
│                       │       │                  ├ [2] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/5 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:7500 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2024-56406 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2359290 
│                       │       │                  ├ [6] : https://errata.almalinux.org/10/ALSA-2025-7500.html 
│                       │       │                  ├ [7] : https://github.com/Perl/perl5/commit/87f42aa0e0096e9
│                       │       │                  │       a346c9672aa3a0bd3bef8c1dd.patch 
│                       │       │                  ├ [8] : https://linux.oracle.com/cve/CVE-2024-56406.html 
│                       │       │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7500.html 
│                       │       │                  ├ [10]: https://metacpan.org/release/SHAY/perl-5.38.4/changes 
│                       │       │                  ├ [11]: https://metacpan.org/release/SHAY/perl-5.40.2/changes 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56406 
│                       │       │                  ├ [13]: https://ubuntu.com/security/notices/USN-7434-1 
│                       │       │                  ├ [14]: https://ubuntu.com/security/notices/USN-7434-2 
│                       │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-56406 
│                       │       ├ PublishedDate   : 2025-04-13T14:15:14.527Z 
│                       │       ╰ LastModifiedDate: 2025-04-30T15:21:11.547Z 
│                       ├ [96]  ╭ VulnerabilityID : CVE-2024-56406 
│                       │       ├ PkgID           : perl-modules-5.38@5.38.2-5 
│                       │       ├ PkgName         : perl-modules-5.38 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/perl-modules-5.38@5.38.2-5?arch=all&d
│                       │       │                  │       istro=ubuntu-24.10 
│                       │       │                  ╰ UID : ff527c42bac4db7e 
│                       │       ├ InstalledVersion: 5.38.2-5 
│                       │       ├ FixedVersion    : 5.38.2-5ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56406 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : perl: Perl 5.34, 5.36, 5.38 and 5.40 are vulnerable to a
│                       │       │                   heap buffer overflow when transliterating non-ASCII bytes 
│                       │       ├ Description     : A heap buffer overflow vulnerability was discovered in
│                       │       │                   Perl. 
│                       │       │                   
│                       │       │                   Release branches 5.34, 5.36, 5.38 and 5.40 are affected,
│                       │       │                   including development versions from 5.33.1 through
│                       │       │                   5.41.10.
│                       │       │                   When there are non-ASCII bytes in the left-hand-side of the
│                       │       │                    `tr` operator, `S_do_trans_invmap` can overflow the
│                       │       │                   destination pointer `d`.
│                       │       │                      $ perl -e '$_ = "\x{FF}" x 1000000; tr/\xFF/\x{100}/;' 
│                       │       │                      Segmentation fault (core dumped)
│                       │       │                   It is believed that this vulnerability can enable Denial of
│                       │       │                    Service and possibly Code Execution attacks on platforms
│                       │       │                   that lack sufficient defenses. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-122 
│                       │       │                  ╰ [1]: CWE-787 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:H 
│                       │       │                           ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/3 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/4 
│                       │       │                  ├ [2] : http://www.openwall.com/lists/oss-security/2025/04/1
│                       │       │                  │       3/5 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:7500 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2024-56406 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2359290 
│                       │       │                  ├ [6] : https://errata.almalinux.org/10/ALSA-2025-7500.html 
│                       │       │                  ├ [7] : https://github.com/Perl/perl5/commit/87f42aa0e0096e9
│                       │       │                  │       a346c9672aa3a0bd3bef8c1dd.patch 
│                       │       │                  ├ [8] : https://linux.oracle.com/cve/CVE-2024-56406.html 
│                       │       │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-7500.html 
│                       │       │                  ├ [10]: https://metacpan.org/release/SHAY/perl-5.38.4/changes 
│                       │       │                  ├ [11]: https://metacpan.org/release/SHAY/perl-5.40.2/changes 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56406 
│                       │       │                  ├ [13]: https://ubuntu.com/security/notices/USN-7434-1 
│                       │       │                  ├ [14]: https://ubuntu.com/security/notices/USN-7434-2 
│                       │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-56406 
│                       │       ├ PublishedDate   : 2025-04-13T14:15:14.527Z 
│                       │       ╰ LastModifiedDate: 2025-04-30T15:21:11.547Z 
│                       ├ [97]  ╭ VulnerabilityID : CVE-2025-47273 
│                       │       ├ PkgID           : python3-pkg-resources@74.1.2-1 
│                       │       ├ PkgName         : python3-pkg-resources 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3-pkg-resources@74.1.2-1?arch=a
│                       │       │                  │       ll&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 1f33c50c8835e18c 
│                       │       ├ InstalledVersion: 74.1.2-1 
│                       │       ├ FixedVersion    : 74.1.2-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47273 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : setuptools: Path Traversal Vulnerability in setuptools
│                       │       │                   PackageIndex 
│                       │       ├ Description     : setuptools is a package that allows users to download,
│                       │       │                   build, install, upgrade, and uninstall Python packages. A
│                       │       │                   path traversal vulnerability in `PackageIndex` is present
│                       │       │                   in setuptools prior to version 78.1.1. An attacker would be
│                       │       │                    allowed to write files to arbitrary locations on the
│                       │       │                   filesystem with the permissions of the process running the
│                       │       │                   Python code, which could escalate to remote code execution
│                       │       │                   depending on the context. Version 78.1.1 fixes the issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ ghsa       : 3 
│                       │       │                  ├ nvd        : 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           H/A:H 
│                       │       │                  │        ╰ V3Score : 8.8 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           H/A:L 
│                       │       │                           ╰ V3Score : 7.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11463 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-47273 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2366982 
│                       │       │                  ├ [3] : https://errata.almalinux.org/9/ALSA-2025-11463.html 
│                       │       │                  ├ [4] : https://github.com/pypa/advisory-database/tree/main/
│                       │       │                  │       vulns/setuptools/PYSEC-2025-49.yaml 
│                       │       │                  ├ [5] : https://github.com/pypa/setuptools 
│                       │       │                  ├ [6] : https://github.com/pypa/setuptools/blob/6ead555c5fb2
│                       │       │                  │       9bc57fe6105b1bffc163f56fd558/setuptools/package_inde
│                       │       │                  │       x.py#L810C1-L825C88 
│                       │       │                  ├ [7] : https://github.com/pypa/setuptools/commit/250a6d1797
│                       │       │                  │       8f9f6ac3ac887091f2d32886fbbb0b 
│                       │       │                  ├ [8] : https://github.com/pypa/setuptools/issues/4946 
│                       │       │                  ├ [9] : https://github.com/pypa/setuptools/security/advisori
│                       │       │                  │       es/GHSA-5rjg-fvgr-3xxf 
│                       │       │                  ├ [10]: https://linux.oracle.com/cve/CVE-2025-47273.html 
│                       │       │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-9940.html 
│                       │       │                  ├ [12]: https://lists.debian.org/debian-lts-announce/2025/05
│                       │       │                  │       /msg00035.html 
│                       │       │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2025-47273 
│                       │       │                  ├ [14]: https://ubuntu.com/security/notices/USN-7544-1 
│                       │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2025-47273 
│                       │       ├ PublishedDate   : 2025-05-17T16:15:19.11Z 
│                       │       ╰ LastModifiedDate: 2025-06-12T16:29:01.66Z 
│                       ├ [98]  ╭ VulnerabilityID : CVE-2024-12718 
│                       │       ├ PkgID           : python3.12@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12@3.12.7-1ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-24.10 
│                       │       │                  ╰ UID : fd5360dc57c6251c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-12718 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypass extraction filter to modify file
│                       │       │                   metadata outside extraction directory 
│                       │       ├ Description     : Allows modifying some file metadata (e.g. last modified)
│                       │       │                   with filter="data" or file permissions (chmod) with
│                       │       │                   filter="tar" of files outside the extraction directory.
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information. Only Python versions
│                       │       │                   3.12 or later are affected by these vulnerabilities,
│                       │       │                   earlier versions don't include the extraction filter
│                       │       │                   feature.
│                       │       │                   
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-12718 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/127987 
│                       │       │                  ├ [19]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [20]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2024-12718.html 
│                       │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [23]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [24]: https://nvd.nist.gov/vuln/detail/CVE-2024-12718 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2024-12718 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.183Z 
│                       │       ╰ LastModifiedDate: 2025-07-24T16:15:29.157Z 
│                       ├ [99]  ╭ VulnerabilityID : CVE-2025-4138 
│                       │       ├ PkgID           : python3.12@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12@3.12.7-1ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-24.10 
│                       │       │                  ╰ UID : fd5360dc57c6251c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4138 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypassing extraction filter to create
│                       │       │                   symlinks to arbitrary targets outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :N/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :N/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4138 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4138.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4138 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4138 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.377Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.767Z 
│                       ├ [100] ╭ VulnerabilityID : CVE-2025-4330 
│                       │       ├ PkgID           : python3.12@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12@3.12.7-1ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-24.10 
│                       │       │                  ╰ UID : fd5360dc57c6251c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4330 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Extraction filter bypass for linking
│                       │       │                   outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4330 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4330.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4330 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4330 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.503Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.91Z 
│                       ├ [101] ╭ VulnerabilityID : CVE-2025-4435 
│                       │       ├ PkgID           : python3.12@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12@3.12.7-1ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-24.10 
│                       │       │                  ╰ UID : fd5360dc57c6251c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: Tarfile extracts filtered members when errorlevel=0 
│                       │       ├ Description     : When using a TarFile.errorlevel = 0 and extracting with a
│                       │       │                   filter the documented behavior is that any filtered members
│                       │       │                    would be skipped and not extracted. However the actual
│                       │       │                   behavior of TarFile.errorlevel = 0 in affected versions is
│                       │       │                   that the member would still be extracted and not skipped. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-682 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4435 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [17]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [18]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-4435.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [21]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2025-4435 
│                       │       │                  ├ [23]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2025-4435 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.63Z 
│                       │       ╰ LastModifiedDate: 2025-06-04T14:54:33.783Z 
│                       ├ [102] ╭ VulnerabilityID : CVE-2025-4516 
│                       │       ├ PkgID           : python3.12@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12@3.12.7-1ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-24.10 
│                       │       │                  ╰ UID : fd5360dc57c6251c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4516 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: CPython DecodeError Handling Vulnerability 
│                       │       ├ Description     : There is an issue in CPython when using
│                       │       │                   `bytes.decode("unicode_escape", error="ignore|replace")`.
│                       │       │                   If you are not using the "unicode_escape" encoding or an
│                       │       │                   error handler your usage is not affected. To work-around
│                       │       │                   this issue you may stop using the error= handler and
│                       │       │                   instead wrap the bytes.decode() call in a try-except
│                       │       │                   catching the DecodeError. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       6/4 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       9/1 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4516 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/4398b788ffc
│                       │       │                  │       1f954a2c552da285477d42a571292 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/56466486782
│                       │       │                  │       95a44aa82636c6e92826651baf33a 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/6279eb8c076
│                       │       │                  │       d89d3739a6edb393e43c7929b429d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/69b4387f78f
│                       │       │                  │       413e8c47572a85b3478c47eba8142 
│                       │       │                  ├ [7] : https://github.com/python/cpython/commit/73b3040f592
│                       │       │                  │       436385007918887b7e2132aa8431f 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/8d35fd1b349
│                       │       │                  │       35221aff23a1ab69a429dd156be77 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e (main) 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/ab9893c4060
│                       │       │                  │       9935e0d40a6d2a7307ea51aec598b 
│                       │       │                  ├ [12]: https://github.com/python/cpython/issues/133767 
│                       │       │                  ├ [13]: https://github.com/python/cpython/pull/129648 
│                       │       │                  ├ [14]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/L75IPBBTSCYEF56I2M4KIW353BB3AY
│                       │       │                  │       74/ 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4516 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7570-1 
│                       │       │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4516 
│                       │       ├ PublishedDate   : 2025-05-15T14:15:31.753Z 
│                       │       ╰ LastModifiedDate: 2025-06-03T14:15:49.697Z 
│                       ├ [103] ╭ VulnerabilityID : CVE-2025-4517 
│                       │       ├ PkgID           : python3.12@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12@3.12.7-1ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-24.10 
│                       │       │                  ╰ UID : fd5360dc57c6251c 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4517 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : python: cpython: Arbitrary writes via tarfile realpath
│                       │       │                   overflow 
│                       │       ├ Description     : Allows arbitrary filesystem writes outside the extraction
│                       │       │                   directory during extraction with filter="data".
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 4 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :H/A:L 
│                       │       │                  │         ╰ V3Score : 9.4 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4517 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4517.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4517 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4517 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.837Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:33.05Z 
│                       ├ [104] ╭ VulnerabilityID : CVE-2024-12718 
│                       │       ├ PkgID           : python3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12-minimal@3.12.7-1ubuntu2?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 715f22a79a631dd9 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-12718 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypass extraction filter to modify file
│                       │       │                   metadata outside extraction directory 
│                       │       ├ Description     : Allows modifying some file metadata (e.g. last modified)
│                       │       │                   with filter="data" or file permissions (chmod) with
│                       │       │                   filter="tar" of files outside the extraction directory.
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information. Only Python versions
│                       │       │                   3.12 or later are affected by these vulnerabilities,
│                       │       │                   earlier versions don't include the extraction filter
│                       │       │                   feature.
│                       │       │                   
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-12718 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/127987 
│                       │       │                  ├ [19]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [20]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2024-12718.html 
│                       │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [23]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [24]: https://nvd.nist.gov/vuln/detail/CVE-2024-12718 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2024-12718 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.183Z 
│                       │       ╰ LastModifiedDate: 2025-07-24T16:15:29.157Z 
│                       ├ [105] ╭ VulnerabilityID : CVE-2025-4138 
│                       │       ├ PkgID           : python3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12-minimal@3.12.7-1ubuntu2?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 715f22a79a631dd9 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4138 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Bypassing extraction filter to create
│                       │       │                   symlinks to arbitrary targets outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :N/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :N/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4138 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4138.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4138 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4138 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.377Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.767Z 
│                       ├ [106] ╭ VulnerabilityID : CVE-2025-4330 
│                       │       ├ PkgID           : python3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12-minimal@3.12.7-1ubuntu2?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 715f22a79a631dd9 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4330 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: Extraction filter bypass for linking
│                       │       │                   outside extraction directory 
│                       │       ├ Description     : Allows the extraction filter to be ignored, allowing
│                       │       │                   symlink targets to point outside the destination directory,
│                       │       │                    and the modification of some file metadata.
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4330 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4330.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4330 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4330 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.503Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:32.91Z 
│                       ├ [107] ╭ VulnerabilityID : CVE-2025-4435 
│                       │       ├ PkgID           : python3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12-minimal@3.12.7-1ubuntu2?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 715f22a79a631dd9 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: Tarfile extracts filtered members when errorlevel=0 
│                       │       ├ Description     : When using a TarFile.errorlevel = 0 and extracting with a
│                       │       │                   filter the documented behavior is that any filtered members
│                       │       │                    would be skipped and not extracted. However the actual
│                       │       │                   behavior of TarFile.errorlevel = 0 in affected versions is
│                       │       │                   that the member would still be extracted and not skipped. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-682 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                  │         │           :H/A:N 
│                       │       │                  │         ╰ V3Score : 7.5 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4435 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [17]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [18]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [19]: https://linux.oracle.com/cve/CVE-2025-4435.html 
│                       │       │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [21]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2025-4435 
│                       │       │                  ├ [23]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2025-4435 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.63Z 
│                       │       ╰ LastModifiedDate: 2025-06-04T14:54:33.783Z 
│                       ├ [108] ╭ VulnerabilityID : CVE-2025-4516 
│                       │       ├ PkgID           : python3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12-minimal@3.12.7-1ubuntu2?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 715f22a79a631dd9 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4516 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : cpython: python: CPython DecodeError Handling Vulnerability 
│                       │       ├ Description     : There is an issue in CPython when using
│                       │       │                   `bytes.decode("unicode_escape", error="ignore|replace")`.
│                       │       │                   If you are not using the "unicode_escape" encoding or an
│                       │       │                   error handler your usage is not affected. To work-around
│                       │       │                   this issue you may stop using the error= handler and
│                       │       │                   instead wrap the bytes.decode() call in a try-except
│                       │       │                   catching the DecodeError. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       6/4 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/05/1
│                       │       │                  │       9/1 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4516 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/4398b788ffc
│                       │       │                  │       1f954a2c552da285477d42a571292 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/56466486782
│                       │       │                  │       95a44aa82636c6e92826651baf33a 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/6279eb8c076
│                       │       │                  │       d89d3739a6edb393e43c7929b429d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/69b4387f78f
│                       │       │                  │       413e8c47572a85b3478c47eba8142 
│                       │       │                  ├ [7] : https://github.com/python/cpython/commit/73b3040f592
│                       │       │                  │       436385007918887b7e2132aa8431f 
│                       │       │                  ├ [8] : https://github.com/python/cpython/commit/8d35fd1b349
│                       │       │                  │       35221aff23a1ab69a429dd156be77 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/9f69a58623b
│                       │       │                  │       d01349a18ba0c7a9cb1dad6a51e8e (main) 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/ab9893c4060
│                       │       │                  │       9935e0d40a6d2a7307ea51aec598b 
│                       │       │                  ├ [12]: https://github.com/python/cpython/issues/133767 
│                       │       │                  ├ [13]: https://github.com/python/cpython/pull/129648 
│                       │       │                  ├ [14]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/L75IPBBTSCYEF56I2M4KIW353BB3AY
│                       │       │                  │       74/ 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4516 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7570-1 
│                       │       │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4516 
│                       │       ├ PublishedDate   : 2025-05-15T14:15:31.753Z 
│                       │       ╰ LastModifiedDate: 2025-06-03T14:15:49.697Z 
│                       ├ [109] ╭ VulnerabilityID : CVE-2025-4517 
│                       │       ├ PkgID           : python3.12-minimal@3.12.7-1ubuntu2 
│                       │       ├ PkgName         : python3.12-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.12-minimal@3.12.7-1ubuntu2?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 715f22a79a631dd9 
│                       │       ├ InstalledVersion: 3.12.7-1ubuntu2 
│                       │       ├ FixedVersion    : 3.12.7-1ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4517 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : python: cpython: Arbitrary writes via tarfile realpath
│                       │       │                   overflow 
│                       │       ├ Description     : Allows arbitrary filesystem writes outside the extraction
│                       │       │                   directory during extraction with filter="data".
│                       │       │                   
│                       │       │                   You are affected by this vulnerability if using the tarfile
│                       │       │                    module to extract untrusted tar archives using
│                       │       │                   TarFile.extractall() or TarFile.extract() using the filter=
│                       │       │                    parameter with a value of "data" or "tar". See the tarfile
│                       │       │                     extraction filters documentation
│                       │       │                   https://docs.python.org/3/library/tarfile.html#tarfile-extr
│                       │       │                   action-filter  for more information.
│                       │       │                   Note that for Python 3.14 or later the default value of
│                       │       │                   filter= changed from "no filtering" to `"data", so if you
│                       │       │                   are relying on this new default behavior then your usage is
│                       │       │                    also affected.
│                       │       │                   Note that none of these vulnerabilities significantly
│                       │       │                   affect the installation of source distributions which are
│                       │       │                   tar archives as source distributions already allow
│                       │       │                   arbitrary code execution during the build process. However
│                       │       │                   when evaluating source distributions it's important to
│                       │       │                   avoid installing source distributions with suspicious links
│                       │       │                   . 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ cbl-mariner: 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 4 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                       │       │                  │         │           :H/A:L 
│                       │       │                  │         ╰ V3Score : 9.4 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10189 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4517 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2370010 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2370013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2370014 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2370016 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2372426 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-10189.html 
│                       │       │                  ├ [8] : https://gist.github.com/sethmlarson/52398e33eff26132
│                       │       │                  │       9a0180ac1d54f42f 
│                       │       │                  ├ [9] : https://github.com/python/cpython/commit/19de092debb
│                       │       │                  │       3d7e832e5672cc2f7b788d35951da 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/28463dba112
│                       │       │                  │       af719df1e8b0391c46787ad756dd9 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/3612d8f5174
│                       │       │                  │       1b11f36f8fb0494d79086bac9390a 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/4633f3f497b
│                       │       │                  │       1ff70e4a35b6fe2c907cbe2d4cb2e 
│                       │       │                  ├ [13]: https://github.com/python/cpython/commit/98016f7c92a
│                       │       │                  │       a4c1232c68bac1ed6646db31782ec 
│                       │       │                  ├ [14]: https://github.com/python/cpython/commit/9c1110ef665
│                       │       │                  │       2687d7c55f590f909720eddde965a 
│                       │       │                  ├ [15]: https://github.com/python/cpython/commit/9e0ac76d96c
│                       │       │                  │       f80b49055f6d6b9a6763fb9215c2a 
│                       │       │                  ├ [16]: https://github.com/python/cpython/commit/aa9eb5f757c
│                       │       │                  │       eff461e6e996f12c89e5d9b583b01 
│                       │       │                  ├ [17]: https://github.com/python/cpython/commit/dd8f187d074
│                       │       │                  │       6da151e0025c51680979ac5b4cfb1 
│                       │       │                  ├ [18]: https://github.com/python/cpython/issues/135034 
│                       │       │                  ├ [19]: https://github.com/python/cpython/pull/135037 
│                       │       │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-4517.html 
│                       │       │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2025-10189.html 
│                       │       │                  ├ [22]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/MAXIJJCUUMCL7ATZNDVEGGHUMQMUUK
│                       │       │                  │       LG/ 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2025-4517 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-7583-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2025-4517 
│                       │       ├ PublishedDate   : 2025-06-03T13:15:20.837Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T14:15:33.05Z 
│                       ├ [110] ╭ VulnerabilityID : CVE-2025-32462 
│                       │       ├ PkgID           : sudo@1.9.15p5-3ubuntu5 
│                       │       ├ PkgName         : sudo 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/sudo@1.9.15p5-3ubuntu5?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-24.10 
│                       │       │                  ╰ UID : 90f578df02553520 
│                       │       ├ InstalledVersion: 1.9.15p5-3ubuntu5 
│                       │       ├ FixedVersion    : 1.9.15p5-3ubuntu5.24.10.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32462 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : sudo: LPE via host option 
│                       │       ├ Description     : Sudo before 1.9.17p1, when used with a sudoers file that
│                       │       │                   specifies a host that is neither the current host nor ALL,
│                       │       │                   allows listed users to execute commands on unintended
│                       │       │                   machines. 
│                       │       ├ Severity        : HIGH 
│                       │       ├ CweIDs           ─ [0]: CWE-863 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ cbl-mariner: 1 
│                       │       │                  ├ nvd        : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 3 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:
│                       │       │                  │        │           H/A:H 
│                       │       │                  │        ╰ V3Score : 8.8 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:9978 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-32462 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/cve-2025-32462 
│                       │       │                  ├ [3] : https://bugs.gentoo.org/show_bug.cgi?id=CVE-2025-32462 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2374692 
│                       │       │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-9978.html 
│                       │       │                  ├ [6] : https://explore.alas.aws.amazon.com/CVE-2025-32462.h
│                       │       │                  │       tml 
│                       │       │                  ├ [7] : https://linux.oracle.com/cve/CVE-2025-32462.html 
│                       │       │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2025-9978.html 
│                       │       │                  ├ [9] : https://lists.debian.org/debian-security-announce/20
│                       │       │                  │       25/msg00118.html 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-32462 
│                       │       │                  ├ [11]: https://security-tracker.debian.org/tracker/CVE-2025
│                       │       │                  │       -32462 
│                       │       │                  ├ [12]: https://ubuntu.com/security/notices/USN-7604-1 
│                       │       │                  ├ [13]: https://ubuntu.com/security/notices/USN-7604-2 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2025-32462 
│                       │       │                  ├ [15]: https://www.openwall.com/lists/oss-security/2025/06/
│                       │       │                  │       30/2 
│                       │       │                  ├ [16]: https://www.secpod.com/blog/sudo-lpe-vulnerabilities
│                       │       │                  │       -resolved-what-you-need-to-know-about-cve-2025-32462
│                       │       │                  │       -and-cve-2025-32463/ 
│                       │       │                  ├ [17]: https://www.stratascale.com/vulnerability-alert-CVE-
│                       │       │                  │       2025-32462-sudo-host 
│                       │       │                  ├ [18]: https://www.sudo.ws/releases/changelog/ 
│                       │       │                  ├ [19]: https://www.sudo.ws/security/advisories/ 
│                       │       │                  ├ [20]: https://www.sudo.ws/security/advisories/host_any/ 
│                       │       │                  ╰ [21]: https://www.suse.com/security/cve/CVE-2025-32462.html 
│                       │       ├ PublishedDate   : 2025-06-30T21:15:30.08Z 
│                       │       ╰ LastModifiedDate: 2025-07-25T15:15:26.497Z 
│                       ├ [111] ╭ VulnerabilityID : CVE-2025-32463 
│                       │       ├ PkgID           : sudo@1.9.15p5-3ubuntu5 
│                       │       ├ PkgName         : sudo 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/sudo@1.9.15p5-3ubuntu5?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-24.10 
│                       │       │                  ╰ UID : 90f578df02553520 
│                       │       ├ InstalledVersion: 1.9.15p5-3ubuntu5 
│                       │       ├ FixedVersion    : 1.9.15p5-3ubuntu5.24.10.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-32463 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : sudo: LPE via chroot option 
│                       │       ├ Description     : Sudo before 1.9.17p1 allows local users to obtain root
│                       │       │                   access because /etc/nsswitch.conf from a user-controlled
│                       │       │                   directory is used with the --chroot option. 
│                       │       ├ Severity        : HIGH 
│                       │       ├ CweIDs           ─ [0]: CWE-829 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 4 
│                       │       │                  ├ cbl-mariner: 4 
│                       │       │                  ├ nvd        : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ╰ ubuntu     : 3 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           H/A:H 
│                       │       │                  │        ╰ V3Score : 7.8 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:11537 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-32463 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/cve-2025-32463 
│                       │       │                  ├ [3] : https://bugs.gentoo.org/show_bug.cgi?id=CVE-2025-32463 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2374692 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2374693 
│                       │       │                  ├ [6] : https://errata.almalinux.org/10/ALSA-2025-11537.html 
│                       │       │                  ├ [7] : https://explore.alas.aws.amazon.com/CVE-2025-32463.h
│                       │       │                  │       tml 
│                       │       │                  ├ [8] : https://iototsecnews.jp/2025/07/01/linux-sudo-chroot
│                       │       │                  │       -vulnerability-enables-hackers-to-elevate-privileges
│                       │       │                  │       -to-root/ 
│                       │       │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-32463.html 
│                       │       │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-11537.html 
│                       │       │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-32463 
│                       │       │                  ├ [12]: https://security-tracker.debian.org/tracker/CVE-2025
│                       │       │                  │       -32463 
│                       │       │                  ├ [13]: https://ubuntu.com/security/notices/USN-7604-1 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2025-32463 
│                       │       │                  ├ [15]: https://www.openwall.com/lists/oss-security/2025/06/
│                       │       │                  │       30/3 
│                       │       │                  ├ [16]: https://www.secpod.com/blog/sudo-lpe-vulnerabilities
│                       │       │                  │       -resolved-what-you-need-to-know-about-cve-2025-32462
│                       │       │                  │       -and-cve-2025-32463/ 
│                       │       │                  ├ [17]: https://www.stratascale.com/vulnerability-alert-CVE-
│                       │       │                  │       2025-32463-sudo-chroot 
│                       │       │                  ├ [18]: https://www.sudo.ws/releases/changelog/ 
│                       │       │                  ├ [19]: https://www.sudo.ws/security/advisories/ 
│                       │       │                  ├ [20]: https://www.sudo.ws/security/advisories/chroot_bug/ 
│                       │       │                  ├ [21]: https://www.suse.com/security/cve/CVE-2025-32463.html 
│                       │       │                  ├ [22]: https://www.suse.com/support/update/announcement/202
│                       │       │                  │       5/suse-su-202502177-1/ 
│                       │       │                  ├ [23]: https://www.vicarius.io/vsociety/posts/cve-2025-3246
│                       │       │                  │       3-detect-sudo-vulnerability 
│                       │       │                  ╰ [24]: https://www.vicarius.io/vsociety/posts/cve-2025-3246
│                       │       │                          3-mitigate-sudo-vulnerability 
│                       │       ├ PublishedDate   : 2025-06-30T21:15:30.257Z 
│                       │       ╰ LastModifiedDate: 2025-07-22T15:15:26.15Z 
│                       ├ [112] ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : systemd@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : systemd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@256.5-2ubuntu3.1?arch=amd64&d
│                       │       │                  │       istro=ubuntu-24.10 
│                       │       │                  ╰ UID : 8a685176f2c8571a 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [113] ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : systemd-cryptsetup@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : systemd-cryptsetup 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@256.5-2ubuntu3.1?a
│                       │       │                  │       rch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 79fd64da3ab13d51 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [114] ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : systemd-resolved@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : systemd-resolved 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@256.5-2ubuntu3.1?arc
│                       │       │                  │       h=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : e6dccf9809225552 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [115] ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : systemd-sysv@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : systemd-sysv 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@256.5-2ubuntu3.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : c2d667cf94287419 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [116] ╭ VulnerabilityID : CVE-2025-4598 
│                       │       ├ PkgID           : systemd-timesyncd@256.5-2ubuntu3.1 
│                       │       ├ PkgName         : systemd-timesyncd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@256.5-2ubuntu3.1?ar
│                       │       │                  │       ch=amd64&distro=ubuntu-24.10 
│                       │       │                  ╰ UID : 63fea29d8bc0938 
│                       │       ├ InstalledVersion: 256.5-2ubuntu3.1 
│                       │       ├ FixedVersion    : 256.5-2ubuntu3.3 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : systemd-coredump: race condition that allows a local
│                       │       │                   attacker to crash a SUID program and gain read access to
│                       │       │                   the resulting core dump 
│                       │       ├ Description     : A vulnerability was found in systemd-coredump. This flaw
│                       │       │                   allows an attacker to force a SUID process to crash and
│                       │       │                   replace it with a non-SUID binary to access the original's
│                       │       │                   privileged process coredump, allowing the attacker to read
│                       │       │                   sensitive data, such as /etc/shadow content, loaded by the
│                       │       │                   original process.
│                       │       │                   
│                       │       │                   A SUID binary or process has a special type of permission,
│                       │       │                   which allows the process to run with the file owner's
│                       │       │                   permissions, regardless of the user executing the binary.
│                       │       │                   This allows the process to access more restricted data than
│                       │       │                    unprivileged users or processes would be able to. An
│                       │       │                   attacker can leverage this flaw by forcing a SUID process
│                       │       │                   to crash and force the Linux kernel to recycle the process
│                       │       │                   PID before systemd-coredump can analyze the /proc/pid/auxv
│                       │       │                   file. If the attacker wins the race condition, they gain
│                       │       │                   access to the original's SUID process coredump file. They
│                       │       │                   can read sensitive content loaded into memory by the
│                       │       │                   original binary, affecting data confidentiality. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-364 
│                       │       ├ VendorSeverity   ╭ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/1 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/06/0
│                       │       │                  │       5/3 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-4598 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2369242 
│                       │       │                  ├ [4] : https://git.kernel.org/linus/b5325b2a270fcaf7b2a9a0f
│                       │       │                  │       23d422ca8a5a8bdea 
│                       │       │                  ├ [5] : https://github.com/systemd/systemd/commit/0c49e0049b
│                       │       │                  │       7665bb7769a13ef346fef92e1ad4d6 (main) 
│                       │       │                  ├ [6] : https://github.com/systemd/systemd/commit/13902e0253
│                       │       │                  │       21242b1d95c6d8b4e482b37f58cdef (main) 
│                       │       │                  ├ [7] : https://github.com/systemd/systemd/commit/49f1f2d4a7
│                       │       │                  │       612bbed5211a73d11d6a94fbe3bb69 (main) 
│                       │       │                  ├ [8] : https://github.com/systemd/systemd/commit/76e0ab49c4
│                       │       │                  │       7965877c19772a2b3bf55f6417ca39 (main) 
│                       │       │                  ├ [9] : https://github.com/systemd/systemd/commit/868d95577e
│                       │       │                  │       c9f862580ad365726515459be582fc (main) 
│                       │       │                  ├ [10]: https://github.com/systemd/systemd/commit/8fc7b2a211
│                       │       │                  │       eb13ef1a94250b28e1c79cab8bdcb9 (main) 
│                       │       │                  ├ [11]: https://github.com/systemd/systemd/commit/9ce8e3e449
│                       │       │                  │       def92c75ada41b7d10c5bc3946be77 (main) 
│                       │       │                  ├ [12]: https://github.com/systemd/systemd/commit/e6a8687b93
│                       │       │                  │       9ab21854f12f59a3cce703e32768cf (main) 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-4598.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-20344.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-4598 
│                       │       │                  ├ [16]: https://ubuntu.com/security/notices/USN-7559-1 
│                       │       │                  ├ [17]: https://www.cve.org/CVERecord?id=CVE-2025-4598 
│                       │       │                  ├ [18]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                  │       29/3 
│                       │       │                  ╰ [19]: https://www.qualys.com/2025/05/29/apport-coredump/ap
│                       │       │                          port-coredump.txt 
│                       │       ├ PublishedDate   : 2025-05-30T14:15:23.557Z 
│                       │       ╰ LastModifiedDate: 2025-06-05T07:15:23.047Z 
│                       ├ [117] ╭ VulnerabilityID : CVE-2025-1215 
│                       │       ├ PkgID           : vim@2:9.1.0496-1ubuntu6.4 
│                       │       ├ PkgName         : vim 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.0496-1ubuntu6.4?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=2 
│                       │       │                  ╰ UID : 1d06811aa36f1eab 
│                       │       ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │       ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1215 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : vim: vim main.c memory corruption 
│                       │       ├ Description     : A vulnerability classified as problematic was found in vim
│                       │       │                   up to 9.1.1096. This vulnerability affects unknown code of
│                       │       │                   the file src/main.c. The manipulation of the argument --log
│                       │       │                    leads to memory corruption. It is possible to launch the
│                       │       │                   attack on the local host. Upgrading to version 9.1.1097 is
│                       │       │                   able to address this issue. The patch is identified as
│                       │       │                   c5654b84480822817bb7b69ebc97c174c91185e9. It is recommended
│                       │       │                    to upgrade the affected component. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-119 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ cbl-mariner: 1 
│                       │       │                  ├ photon     : 1 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1215 
│                       │       │                  ├ [1] : https://github.com/vim/vim/commit/c5654b84480822817b
│                       │       │                  │       b7b69ebc97c174c91185e9 
│                       │       │                  ├ [2] : https://github.com/vim/vim/issues/16606 
│                       │       │                  ├ [3] : https://github.com/vim/vim/releases/tag/v9.1.1097 
│                       │       │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-1215 
│                       │       │                  ├ [5] : https://security.netapp.com/advisory/ntap-20250321-0
│                       │       │                  │       005/ 
│                       │       │                  ├ [6] : https://ubuntu.com/security/notices/USN-7419-1 
│                       │       │                  ├ [7] : https://vuldb.com/?ctiid.295174 
│                       │       │                  ├ [8] : https://vuldb.com/?id.295174 
│                       │       │                  ├ [9] : https://vuldb.com/?submit.497546 
│                       │       │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1215 
│                       │       ├ PublishedDate   : 2025-02-12T19:15:10.23Z 
│                       │       ╰ LastModifiedDate: 2025-03-21T18:15:34.29Z 
│                       ├ [118] ╭ VulnerabilityID : CVE-2025-26603 
│                       │       ├ PkgID           : vim@2:9.1.0496-1ubuntu6.4 
│                       │       ├ PkgName         : vim 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.0496-1ubuntu6.4?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=2 
│                       │       │                  ╰ UID : 1d06811aa36f1eab 
│                       │       ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │       ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-26603 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : vim: heap-use-after-free in function str_to_reg in vim/vim 
│                       │       ├ Description     : Vim is a greatly improved version of the good old UNIX
│                       │       │                   editor Vi. Vim allows to redirect screen messages using the
│                       │       │                    `:redir` ex command to register, variables and files. It
│                       │       │                   also allows to show the contents of registers using the
│                       │       │                   `:registers` or `:display` ex command. When redirecting the
│                       │       │                    output of `:display` to a register, Vim will free the
│                       │       │                   register content before storing the new content in the
│                       │       │                   register. Now when redirecting the `:display` command to a
│                       │       │                   register that is being displayed, Vim will free the content
│                       │       │                    while shortly afterwards trying to access it, which leads
│                       │       │                   to a use-after-free. Vim pre 9.1.1115 checks in the
│                       │       │                   ex_display() function, that it does not try to redirect to
│                       │       │                   a register while displaying this register at the same time.
│                       │       │                    However this check is not complete, and so Vim does not
│                       │       │                   check the `+` and `*` registers (which typically donate the
│                       │       │                    X11/clipboard registers, and when a clipboard connection
│                       │       │                   is not possible will fall back to use register 0 instead.
│                       │       │                   In Patch 9.1.1115 Vim will therefore skip outputting to
│                       │       │                   register zero when trying to redirect to the clipboard
│                       │       │                   registers `*` or `+`. Users are advised to upgrade. There
│                       │       │                   are no known workarounds for this vulnerability. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 4.2 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-26603 
│                       │       │                  ├ [1]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52
│                       │       │                  │      a131bf6b8 
│                       │       │                  ├ [2]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52
│                       │       │                  │      a131bf6b8 (v9.1.1115) 
│                       │       │                  ├ [3]: https://github.com/vim/vim/security/advisories/GHSA-6
│                       │       │                  │      3p5-mwg2-787v 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-26603 
│                       │       │                  ├ [5]: https://security.netapp.com/advisory/ntap-20250306-00
│                       │       │                  │      03/ 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-7419-1 
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-26603 
│                       │       ├ PublishedDate   : 2025-02-18T19:15:29.387Z 
│                       │       ╰ LastModifiedDate: 2025-03-07T01:15:12.7Z 
│                       ├ [119] ╭ VulnerabilityID : CVE-2025-1215 
│                       │       ├ PkgID           : vim-common@2:9.1.0496-1ubuntu6.4 
│                       │       ├ PkgName         : vim-common 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.0496-1ubuntu6.4?arch=a
│                       │       │                  │       ll&distro=ubuntu-24.10&epoch=2 
│                       │       │                  ╰ UID : 9538ad650d7d4fc 
│                       │       ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │       ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1215 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : vim: vim main.c memory corruption 
│                       │       ├ Description     : A vulnerability classified as problematic was found in vim
│                       │       │                   up to 9.1.1096. This vulnerability affects unknown code of
│                       │       │                   the file src/main.c. The manipulation of the argument --log
│                       │       │                    leads to memory corruption. It is possible to launch the
│                       │       │                   attack on the local host. Upgrading to version 9.1.1097 is
│                       │       │                   able to address this issue. The patch is identified as
│                       │       │                   c5654b84480822817bb7b69ebc97c174c91185e9. It is recommended
│                       │       │                    to upgrade the affected component. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-119 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ cbl-mariner: 1 
│                       │       │                  ├ photon     : 1 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1215 
│                       │       │                  ├ [1] : https://github.com/vim/vim/commit/c5654b84480822817b
│                       │       │                  │       b7b69ebc97c174c91185e9 
│                       │       │                  ├ [2] : https://github.com/vim/vim/issues/16606 
│                       │       │                  ├ [3] : https://github.com/vim/vim/releases/tag/v9.1.1097 
│                       │       │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-1215 
│                       │       │                  ├ [5] : https://security.netapp.com/advisory/ntap-20250321-0
│                       │       │                  │       005/ 
│                       │       │                  ├ [6] : https://ubuntu.com/security/notices/USN-7419-1 
│                       │       │                  ├ [7] : https://vuldb.com/?ctiid.295174 
│                       │       │                  ├ [8] : https://vuldb.com/?id.295174 
│                       │       │                  ├ [9] : https://vuldb.com/?submit.497546 
│                       │       │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1215 
│                       │       ├ PublishedDate   : 2025-02-12T19:15:10.23Z 
│                       │       ╰ LastModifiedDate: 2025-03-21T18:15:34.29Z 
│                       ├ [120] ╭ VulnerabilityID : CVE-2025-26603 
│                       │       ├ PkgID           : vim-common@2:9.1.0496-1ubuntu6.4 
│                       │       ├ PkgName         : vim-common 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.0496-1ubuntu6.4?arch=a
│                       │       │                  │       ll&distro=ubuntu-24.10&epoch=2 
│                       │       │                  ╰ UID : 9538ad650d7d4fc 
│                       │       ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │       ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-26603 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : vim: heap-use-after-free in function str_to_reg in vim/vim 
│                       │       ├ Description     : Vim is a greatly improved version of the good old UNIX
│                       │       │                   editor Vi. Vim allows to redirect screen messages using the
│                       │       │                    `:redir` ex command to register, variables and files. It
│                       │       │                   also allows to show the contents of registers using the
│                       │       │                   `:registers` or `:display` ex command. When redirecting the
│                       │       │                    output of `:display` to a register, Vim will free the
│                       │       │                   register content before storing the new content in the
│                       │       │                   register. Now when redirecting the `:display` command to a
│                       │       │                   register that is being displayed, Vim will free the content
│                       │       │                    while shortly afterwards trying to access it, which leads
│                       │       │                   to a use-after-free. Vim pre 9.1.1115 checks in the
│                       │       │                   ex_display() function, that it does not try to redirect to
│                       │       │                   a register while displaying this register at the same time.
│                       │       │                    However this check is not complete, and so Vim does not
│                       │       │                   check the `+` and `*` registers (which typically donate the
│                       │       │                    X11/clipboard registers, and when a clipboard connection
│                       │       │                   is not possible will fall back to use register 0 instead.
│                       │       │                   In Patch 9.1.1115 Vim will therefore skip outputting to
│                       │       │                   register zero when trying to redirect to the clipboard
│                       │       │                   registers `*` or `+`. Users are advised to upgrade. There
│                       │       │                   are no known workarounds for this vulnerability. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 4.2 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-26603 
│                       │       │                  ├ [1]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52
│                       │       │                  │      a131bf6b8 
│                       │       │                  ├ [2]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52
│                       │       │                  │      a131bf6b8 (v9.1.1115) 
│                       │       │                  ├ [3]: https://github.com/vim/vim/security/advisories/GHSA-6
│                       │       │                  │      3p5-mwg2-787v 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-26603 
│                       │       │                  ├ [5]: https://security.netapp.com/advisory/ntap-20250306-00
│                       │       │                  │      03/ 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-7419-1 
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-26603 
│                       │       ├ PublishedDate   : 2025-02-18T19:15:29.387Z 
│                       │       ╰ LastModifiedDate: 2025-03-07T01:15:12.7Z 
│                       ├ [121] ╭ VulnerabilityID : CVE-2025-1215 
│                       │       ├ PkgID           : vim-runtime@2:9.1.0496-1ubuntu6.4 
│                       │       ├ PkgName         : vim-runtime 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.0496-1ubuntu6.4?arch=
│                       │       │                  │       all&distro=ubuntu-24.10&epoch=2 
│                       │       │                  ╰ UID : d01d837a64e4e5d4 
│                       │       ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │       ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1215 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : vim: vim main.c memory corruption 
│                       │       ├ Description     : A vulnerability classified as problematic was found in vim
│                       │       │                   up to 9.1.1096. This vulnerability affects unknown code of
│                       │       │                   the file src/main.c. The manipulation of the argument --log
│                       │       │                    leads to memory corruption. It is possible to launch the
│                       │       │                   attack on the local host. Upgrading to version 9.1.1097 is
│                       │       │                   able to address this issue. The patch is identified as
│                       │       │                   c5654b84480822817bb7b69ebc97c174c91185e9. It is recommended
│                       │       │                    to upgrade the affected component. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-119 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ cbl-mariner: 1 
│                       │       │                  ├ photon     : 1 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1215 
│                       │       │                  ├ [1] : https://github.com/vim/vim/commit/c5654b84480822817b
│                       │       │                  │       b7b69ebc97c174c91185e9 
│                       │       │                  ├ [2] : https://github.com/vim/vim/issues/16606 
│                       │       │                  ├ [3] : https://github.com/vim/vim/releases/tag/v9.1.1097 
│                       │       │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-1215 
│                       │       │                  ├ [5] : https://security.netapp.com/advisory/ntap-20250321-0
│                       │       │                  │       005/ 
│                       │       │                  ├ [6] : https://ubuntu.com/security/notices/USN-7419-1 
│                       │       │                  ├ [7] : https://vuldb.com/?ctiid.295174 
│                       │       │                  ├ [8] : https://vuldb.com/?id.295174 
│                       │       │                  ├ [9] : https://vuldb.com/?submit.497546 
│                       │       │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1215 
│                       │       ├ PublishedDate   : 2025-02-12T19:15:10.23Z 
│                       │       ╰ LastModifiedDate: 2025-03-21T18:15:34.29Z 
│                       ├ [122] ╭ VulnerabilityID : CVE-2025-26603 
│                       │       ├ PkgID           : vim-runtime@2:9.1.0496-1ubuntu6.4 
│                       │       ├ PkgName         : vim-runtime 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.0496-1ubuntu6.4?arch=
│                       │       │                  │       all&distro=ubuntu-24.10&epoch=2 
│                       │       │                  ╰ UID : d01d837a64e4e5d4 
│                       │       ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │       ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-26603 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : vim: heap-use-after-free in function str_to_reg in vim/vim 
│                       │       ├ Description     : Vim is a greatly improved version of the good old UNIX
│                       │       │                   editor Vi. Vim allows to redirect screen messages using the
│                       │       │                    `:redir` ex command to register, variables and files. It
│                       │       │                   also allows to show the contents of registers using the
│                       │       │                   `:registers` or `:display` ex command. When redirecting the
│                       │       │                    output of `:display` to a register, Vim will free the
│                       │       │                   register content before storing the new content in the
│                       │       │                   register. Now when redirecting the `:display` command to a
│                       │       │                   register that is being displayed, Vim will free the content
│                       │       │                    while shortly afterwards trying to access it, which leads
│                       │       │                   to a use-after-free. Vim pre 9.1.1115 checks in the
│                       │       │                   ex_display() function, that it does not try to redirect to
│                       │       │                   a register while displaying this register at the same time.
│                       │       │                    However this check is not complete, and so Vim does not
│                       │       │                   check the `+` and `*` registers (which typically donate the
│                       │       │                    X11/clipboard registers, and when a clipboard connection
│                       │       │                   is not possible will fall back to use register 0 instead.
│                       │       │                   In Patch 9.1.1115 Vim will therefore skip outputting to
│                       │       │                   register zero when trying to redirect to the clipboard
│                       │       │                   registers `*` or `+`. Users are advised to upgrade. There
│                       │       │                   are no known workarounds for this vulnerability. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 4.2 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-26603 
│                       │       │                  ├ [1]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52
│                       │       │                  │      a131bf6b8 
│                       │       │                  ├ [2]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52
│                       │       │                  │      a131bf6b8 (v9.1.1115) 
│                       │       │                  ├ [3]: https://github.com/vim/vim/security/advisories/GHSA-6
│                       │       │                  │      3p5-mwg2-787v 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-26603 
│                       │       │                  ├ [5]: https://security.netapp.com/advisory/ntap-20250306-00
│                       │       │                  │      03/ 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-7419-1 
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-26603 
│                       │       ├ PublishedDate   : 2025-02-18T19:15:29.387Z 
│                       │       ╰ LastModifiedDate: 2025-03-07T01:15:12.7Z 
│                       ├ [123] ╭ VulnerabilityID : CVE-2025-1215 
│                       │       ├ PkgID           : xxd@2:9.1.0496-1ubuntu6.4 
│                       │       ├ PkgName         : xxd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.0496-1ubuntu6.4?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=2 
│                       │       │                  ╰ UID : 82694743fd1b3a38 
│                       │       ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │       ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1215 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : vim: vim main.c memory corruption 
│                       │       ├ Description     : A vulnerability classified as problematic was found in vim
│                       │       │                   up to 9.1.1096. This vulnerability affects unknown code of
│                       │       │                   the file src/main.c. The manipulation of the argument --log
│                       │       │                    leads to memory corruption. It is possible to launch the
│                       │       │                   attack on the local host. Upgrading to version 9.1.1097 is
│                       │       │                   able to address this issue. The patch is identified as
│                       │       │                   c5654b84480822817bb7b69ebc97c174c91185e9. It is recommended
│                       │       │                    to upgrade the affected component. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-119 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ cbl-mariner: 1 
│                       │       │                  ├ photon     : 1 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1215 
│                       │       │                  ├ [1] : https://github.com/vim/vim/commit/c5654b84480822817b
│                       │       │                  │       b7b69ebc97c174c91185e9 
│                       │       │                  ├ [2] : https://github.com/vim/vim/issues/16606 
│                       │       │                  ├ [3] : https://github.com/vim/vim/releases/tag/v9.1.1097 
│                       │       │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-1215 
│                       │       │                  ├ [5] : https://security.netapp.com/advisory/ntap-20250321-0
│                       │       │                  │       005/ 
│                       │       │                  ├ [6] : https://ubuntu.com/security/notices/USN-7419-1 
│                       │       │                  ├ [7] : https://vuldb.com/?ctiid.295174 
│                       │       │                  ├ [8] : https://vuldb.com/?id.295174 
│                       │       │                  ├ [9] : https://vuldb.com/?submit.497546 
│                       │       │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-1215 
│                       │       ├ PublishedDate   : 2025-02-12T19:15:10.23Z 
│                       │       ╰ LastModifiedDate: 2025-03-21T18:15:34.29Z 
│                       ├ [124] ╭ VulnerabilityID : CVE-2025-26603 
│                       │       ├ PkgID           : xxd@2:9.1.0496-1ubuntu6.4 
│                       │       ├ PkgName         : xxd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.0496-1ubuntu6.4?arch=amd64&di
│                       │       │                  │       stro=ubuntu-24.10&epoch=2 
│                       │       │                  ╰ UID : 82694743fd1b3a38 
│                       │       ├ InstalledVersion: 2:9.1.0496-1ubuntu6.4 
│                       │       ├ FixedVersion    : 2:9.1.0496-1ubuntu6.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                       │       │                  │         6b905ad543ad918ad504c 
│                       │       │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                       │       │                            6a5507fce977ad8d74ed5 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-26603 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Title           : vim: heap-use-after-free in function str_to_reg in vim/vim 
│                       │       ├ Description     : Vim is a greatly improved version of the good old UNIX
│                       │       │                   editor Vi. Vim allows to redirect screen messages using the
│                       │       │                    `:redir` ex command to register, variables and files. It
│                       │       │                   also allows to show the contents of registers using the
│                       │       │                   `:registers` or `:display` ex command. When redirecting the
│                       │       │                    output of `:display` to a register, Vim will free the
│                       │       │                   register content before storing the new content in the
│                       │       │                   register. Now when redirecting the `:display` command to a
│                       │       │                   register that is being displayed, Vim will free the content
│                       │       │                    while shortly afterwards trying to access it, which leads
│                       │       │                   to a use-after-free. Vim pre 9.1.1115 checks in the
│                       │       │                   ex_display() function, that it does not try to redirect to
│                       │       │                   a register while displaying this register at the same time.
│                       │       │                    However this check is not complete, and so Vim does not
│                       │       │                   check the `+` and `*` registers (which typically donate the
│                       │       │                    X11/clipboard registers, and when a clipboard connection
│                       │       │                   is not possible will fall back to use register 0 instead.
│                       │       │                   In Patch 9.1.1115 Vim will therefore skip outputting to
│                       │       │                   register zero when trying to redirect to the clipboard
│                       │       │                   registers `*` or `+`. Users are advised to upgrade. There
│                       │       │                   are no known workarounds for this vulnerability. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ cbl-mariner: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 4.2 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-26603 
│                       │       │                  ├ [1]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52
│                       │       │                  │      a131bf6b8 
│                       │       │                  ├ [2]: https://github.com/vim/vim/commit/c0f0e2380e5954f4a52
│                       │       │                  │      a131bf6b8 (v9.1.1115) 
│                       │       │                  ├ [3]: https://github.com/vim/vim/security/advisories/GHSA-6
│                       │       │                  │      3p5-mwg2-787v 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-26603 
│                       │       │                  ├ [5]: https://security.netapp.com/advisory/ntap-20250306-00
│                       │       │                  │      03/ 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-7419-1 
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-26603 
│                       │       ├ PublishedDate   : 2025-02-18T19:15:29.387Z 
│                       │       ╰ LastModifiedDate: 2025-03-07T01:15:12.7Z 
│                       ╰ [125] ╭ VulnerabilityID : CVE-2025-31115 
│                               ├ PkgID           : xz-utils@5.6.2-2 
│                               ├ PkgName         : xz-utils 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xz-utils@5.6.2-2?arch=amd64&distro=ub
│                               │                  │       untu-24.10 
│                               │                  ╰ UID : 8516467374b51888 
│                               ├ InstalledVersion: 5.6.2-2 
│                               ├ FixedVersion    : 5.6.2-2ubuntu0.2 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd7
│                               │                  │         6b905ad543ad918ad504c 
│                               │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c
│                               │                            6a5507fce977ad8d74ed5 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-31115 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Title           : xz: XZ has a heap-use-after-free bug in threaded .xz decoder 
│                               ├ Description     : XZ Utils provide a general-purpose data-compression library
│                               │                    plus command-line tools. In XZ Utils 5.3.3alpha to 5.8.0,
│                               │                   the multithreaded .xz decoder in liblzma has a bug where
│                               │                   invalid input can at least result in a crash. The effects
│                               │                   include heap use after free and writing to an address based
│                               │                    on the null pointer plus an offset. Applications and
│                               │                   libraries that use the lzma_stream_decoder_mt function are
│                               │                   affected. The bug has been fixed in XZ Utils 5.8.1, and the
│                               │                    fix has been committed to the v5.4, v5.6, v5.8, and master
│                               │                    branches in the xz Git repository. No new release packages
│                               │                    will be made from the old stable branches, but a
│                               │                   standalone patch is available that applies to all affected
│                               │                   releases. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ╭ [0]: CWE-366 
│                               │                  ├ [1]: CWE-416 
│                               │                  ├ [2]: CWE-476 
│                               │                  ╰ [3]: CWE-826 
│                               ├ VendorSeverity   ╭ alma       : 3 
│                               │                  ├ azure      : 3 
│                               │                  ├ oracle-oval: 3 
│                               │                  ├ photon     : 3 
│                               │                  ├ redhat     : 3 
│                               │                  ╰ ubuntu     : 2 
│                               ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                               │                           │           N/A:H 
│                               │                           ╰ V3Score : 7.5 
│                               ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/0
│                               │                  │       3/1 
│                               │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/04/0
│                               │                  │       3/2 
│                               │                  ├ [2] : http://www.openwall.com/lists/oss-security/2025/04/0
│                               │                  │       3/3 
│                               │                  ├ [3] : https://access.redhat.com/errata/RHSA-2025:7524 
│                               │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2025-31115 
│                               │                  ├ [5] : https://bugzilla.redhat.com/2357249 
│                               │                  ├ [6] : https://errata.almalinux.org/10/ALSA-2025-7524.html 
│                               │                  ├ [7] : https://github.com/tukaani-project/xz/commit/d5a2ffe
│                               │                  │       41bb77b918a8c96084885d4dbe4bf6480 
│                               │                  ├ [8] : https://github.com/tukaani-project/xz/security/advis
│                               │                  │       ories/GHSA-6cc8-p5mm-29w2 
│                               │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-31115.html 
│                               │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-7524.html 
│                               │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-31115 
│                               │                  ├ [12]: https://tukaani.org/xz/xz-cve-2025-31115.patch 
│                               │                  ├ [13]: https://ubuntu.com/security/notices/USN-7414-1 
│                               │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2025-31115 
│                               ├ PublishedDate   : 2025-04-03T17:15:30.54Z 
│                               ╰ LastModifiedDate: 2025-04-07T14:18:34.453Z 
├ [1] ╭ Target         : Java 
│     ├ Class          : lang-pkgs 
│     ├ Type           : jar 
│     ╰ Vulnerabilities ─ [0] ╭ VulnerabilityID : CVE-2025-48924 
│                             ├ PkgName         : org.apache.commons:commons-lang3 
│                             ├ PkgPath         : opt/oaf/openaf.jar 
│                             ├ PkgIdentifier    ╭ PURL: pkg:maven/org.apache.commons/commons-lang3@3.17.0 
│                             │                  ╰ UID : 6fdecc45ed75c2ea 
│                             ├ InstalledVersion: 3.17.0 
│                             ├ FixedVersion    : 3.18.0 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                             │                  │         905ad543ad918ad504c 
│                             │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                             │                            5507fce977ad8d74ed5 
│                             ├ SeveritySource  : ghsa 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-48924 
│                             ├ DataSource       ╭ ID  : ghsa 
│                             │                  ├ Name: GitHub Security Advisory Maven 
│                             │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                             │                          osystem%3Amaven 
│                             ├ Title           : commons-lang/commons-lang: org.apache.commons/commons-lang3:
│                             │                   Uncontrolled Recursion vulnerability in Apache Commons Lang 
│                             ├ Description     : Uncontrolled Recursion vulnerability in Apache Commons Lang.
│                             │                   
│                             │                   This issue affects Apache Commons Lang: Starting with
│                             │                   commons-lang:commons-lang 2.0 to 2.6, and, from
│                             │                   org.apache.commons:commons-lang3 3.0 before 3.18.0.
│                             │                   The methods ClassUtils.getClass(...) can throw
│                             │                   StackOverflowError on very long inputs. Because an Error is
│                             │                   usually not handled by applications and libraries, a 
│                             │                   StackOverflowError could cause an application to stop.
│                             │                   Users are recommended to upgrade to version 3.18.0, which
│                             │                   fixes the issue. 
│                             ├ Severity        : MEDIUM 
│                             ├ CweIDs           ─ [0]: CWE-674 
│                             ├ VendorSeverity   ╭ ghsa  : 2 
│                             │                  ╰ redhat: 1 
│                             ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/
│                             │                  │        │           A:N 
│                             │                  │        ╰ V3Score : 6.5 
│                             │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/
│                             │                           │           A:L 
│                             │                           ╰ V3Score : 3.7 
│                             ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-48924 
│                             │                  ├ [1]: https://github.com/apache/commons-lang 
│                             │                  ├ [2]: https://github.com/apache/commons-lang/commit/b424803ab
│                             │                  │      db2bec818e4fbcb251ce031c22aca53 
│                             │                  ├ [3]: https://lists.apache.org/thread/bgv0lpswokgol11tloxnjfz
│                             │                  │      dl7yrc1g1 
│                             │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-48924 
│                             │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-48924 
│                             ├ PublishedDate   : 2025-07-11T15:15:24.347Z 
│                             ╰ LastModifiedDate: 2025-07-15T13:14:49.98Z 
├ [2] ╭ Target         : usr/bin/docker-compose 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2024-40635 
│                       │      ├ PkgID           : github.com/containerd/containerd/v2@v2.0.2 
│                       │      ├ PkgName         : github.com/containerd/containerd/v2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.0.2 
│                       │      │                  ╰ UID : 4430170f375207e 
│                       │      ├ InstalledVersion: v2.0.2 
│                       │      ├ FixedVersion    : 2.0.4 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-40635 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : containerd: containerd has an integer overflow in User ID
│                       │      │                   handling 
│                       │      ├ Description     : containerd is an open-source container runtime. A bug was
│                       │      │                   found in containerd prior to versions 1.6.38, 1.7.27, and
│                       │      │                   2.0.4 where containers launched with a User set as a
│                       │      │                   `UID:GID` larger than the maximum 32-bit signed integer can
│                       │      │                   cause an overflow condition where the container ultimately
│                       │      │                   runs as root (UID 0). This could cause unexpected behavior
│                       │      │                   for environments that require containers to run as a
│                       │      │                   non-root user. This bug has been fixed in containerd 1.6.38,
│                       │      │                    1.7.27, and 2.04. As a workaround, ensure that only trusted
│                       │      │                    images are used and that only trusted users have
│                       │      │                   permissions to import images. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ ghsa       : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.6 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.6 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-40635 
│                       │      │                  ├ [1] : https://github.com/containerd/containerd 
│                       │      │                  ├ [2] : https://github.com/containerd/containerd/commit/05044
│                       │      │                  │       ec0a9a75232cad458027ca83437aae3f4da 
│                       │      │                  ├ [3] : https://github.com/containerd/containerd/commit/11504
│                       │      │                  │       c3fc5f45634f2d93d57743a998194430b82 (v1.7.27) 
│                       │      │                  ├ [4] : https://github.com/containerd/containerd/commit/1a43c
│                       │      │                  │       b6a1035441f9aca8f5666a9b3ef9e70ab20 
│                       │      │                  ├ [5] : https://github.com/containerd/containerd/commit/9639b
│                       │      │                  │       9625554183d0c4d8d072dccb84fedd2320f (v1.6.38) 
│                       │      │                  ├ [6] : https://github.com/containerd/containerd/commit/cf158
│                       │      │                  │       e884cfe4812a6c371b59e4ea9bc4c46e51a 
│                       │      │                  ├ [7] : https://github.com/containerd/containerd/security/adv
│                       │      │                  │       isories/GHSA-265r-hfxg-fhmg 
│                       │      │                  ├ [8] : https://lists.debian.org/debian-lts-announce/2025/05/
│                       │      │                  │       msg00005.html 
│                       │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2024-40635 
│                       │      │                  ├ [10]: https://ubuntu.com/security/notices/USN-7374-1 
│                       │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2024-40635 
│                       │      ├ PublishedDate   : 2025-03-17T22:15:13.15Z 
│                       │      ╰ LastModifiedDate: 2025-05-04T22:15:31.84Z 
│                       ├ [1]  ╭ VulnerabilityID : CVE-2025-47291 
│                       │      ├ PkgID           : github.com/containerd/containerd/v2@v2.0.2 
│                       │      ├ PkgName         : github.com/containerd/containerd/v2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.0.2 
│                       │      │                  ╰ UID : 4430170f375207e 
│                       │      ├ InstalledVersion: v2.0.2 
│                       │      ├ FixedVersion    : 2.0.5 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47291 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : containerd: containerd CRI plugin: Incorrect cgroup
│                       │      │                   hierarchy assignment for containers running in
│                       │      │                   usernamespaced Kubernetes pods. 
│                       │      ├ Description     : containerd is an open-source container runtime. A bug was
│                       │      │                   found in the containerd's CRI implementation where
│                       │      │                   containerd, starting in version 2.0.1 and prior to version
│                       │      │                   2.0.5, doesn't put usernamespaced containers under the
│                       │      │                   Kubernetes' cgroup hierarchy, therefore some Kubernetes
│                       │      │                   limits are not honored. This may cause a denial of service
│                       │      │                   of the Kubernetes node. This bug has been fixed in
│                       │      │                   containerd 2.0.5+ and 2.1.0+. Users should update to these
│                       │      │                   versions to resolve the issue. As a workaround, disable
│                       │      │                   usernamespaced pods in Kubernetes temporarily. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-266 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ ghsa  : 2 
│                       │      │                  ╰ redhat: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-47291 
│                       │      │                  ├ [1]: https://github.com/containerd/containerd 
│                       │      │                  ├ [2]: https://github.com/containerd/containerd/security/advi
│                       │      │                  │      sories/GHSA-cxfp-7pvr-95ff 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-47291 
│                       │      │                  ├ [4]: https://pkg.go.dev/vuln/GO-2025-3701 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-47291 
│                       │      ├ PublishedDate   : 2025-05-21T18:15:52.853Z 
│                       │      ╰ LastModifiedDate: 2025-05-21T20:24:58.133Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2025-0495 
│                       │      ├ PkgID           : github.com/docker/buildx@v0.21.1 
│                       │      ├ PkgName         : github.com/docker/buildx 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/buildx@v0.21.1 
│                       │      │                  ╰ UID : b42fb52acdd404cd 
│                       │      ├ InstalledVersion: v0.21.1 
│                       │      ├ FixedVersion    : 0.21.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0495 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : Buildx is a Docker CLI plugin that extends build
│                       │      │                   capabilities using Bu ... 
│                       │      ├ Description     : Buildx is a Docker CLI plugin that extends build
│                       │      │                   capabilities using BuildKit.
│                       │      │                   
│                       │      │                   Cache backends support credentials by setting secrets
│                       │      │                   directly as attribute values in cache-to/cache-from
│                       │      │                   configuration. When supplied as user input, these secure
│                       │      │                   values may be inadvertently captured in OpenTelemetry traces
│                       │      │                    as part of the arguments and flags for the traced CLI
│                       │      │                   command. OpenTelemetry traces are also saved in BuildKit
│                       │      │                   daemon's history records.
│                       │      │                   This vulnerability does not impact secrets passed to the
│                       │      │                   Github cache backend via environment variables or registry
│                       │      │                   authentication. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-532 
│                       │      ├ VendorSeverity   ╭ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ╰ ghsa       : 2 
│                       │      ├ References       ╭ [0]: https://github.com/docker/buildx 
│                       │      │                  ├ [1]: https://github.com/docker/buildx/commit/18ccba072076dd
│                       │      │                  │      bfb0aeedd6746d7719b0729b58 
│                       │      │                  ├ [2]: https://github.com/docker/buildx/security/advisories/G
│                       │      │                  │      HSA-m4gq-fm9h-8q75 
│                       │      │                  ╰ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0495 
│                       │      ├ PublishedDate   : 2025-03-17T20:15:13.737Z 
│                       │      ╰ LastModifiedDate: 2025-03-17T20:15:13.737Z 
│                       ├ [3]  ╭ VulnerabilityID : GHSA-fv92-fjc5-jj9h 
│                       │      ├ PkgID           : github.com/go-viper/mapstructure/v2@v2.0.0 
│                       │      ├ PkgName         : github.com/go-viper/mapstructure/v2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/go-viper/mapstructure/v2@v2.0.0 
│                       │      │                  ╰ UID : c3a5497114ab930c 
│                       │      ├ InstalledVersion: v2.0.0 
│                       │      ├ FixedVersion    : 2.3.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://github.com/advisories/GHSA-fv92-fjc5-jj9h 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : mapstructure May Leak Sensitive Information in Logs When
│                       │      │                   Processing Malformed Data 
│                       │      ├ Description     : ### Summary
│                       │      │                   
│                       │      │                   Use of this library in a security-critical context may
│                       │      │                   result in leaking sensitive information, if used to process
│                       │      │                   sensitive fields.
│                       │      │                   ### Details
│                       │      │                   OpenBao (and presumably HashiCorp Vault) have surfaced error
│                       │      │                    messages from `mapstructure` as follows:
│                       │      │                   https://github.com/openbao/openbao/blob/98c3a59c040efca72435
│                       │      │                   3ca46ca79bd5cdbab920/sdk/framework/field_data.go#L43-L50
│                       │      │                   ```go
│                       │      │                   			_, _, err := d.getPrimitive(field, schema)
│                       │      │                   			if err != nil {
│                       │      │                   				return fmt.Errorf("error converting input for field %q:
│                       │      │                   %w", field, err)
│                       │      │                   			}
│                       │      │                   ```
│                       │      │                   where this calls `mapstructure.WeakDecode(...)`:
│                       │      │                   3ca46ca79bd5cdbab920/sdk/framework/field_data.go#L181-L193
│                       │      │                   func (d *FieldData) getPrimitive(k string, schema
│                       │      │                   *FieldSchema) (interface{}, bool, error) {
│                       │      │                   	raw, ok := d.Raw[k]
│                       │      │                   	if !ok {
│                       │      │                   		return nil, false, nil
│                       │      │                   	}
│                       │      │                   	switch t := schema.Type; t {
│                       │      │                   	case TypeBool:
│                       │      │                   		var result bool
│                       │      │                   		if err := mapstructure.WeakDecode(raw, &result); err !=
│                       │      │                   nil {
│                       │      │                   			return nil, false, err
│                       │      │                   		}
│                       │      │                   		return result, true, nil
│                       │      │                   Notably, `WeakDecode(...)` eventually calls one of the
│                       │      │                   decode helpers, which surfaces the original value:
│                       │      │                   https://github.com/go-viper/mapstructure/blob/1a66224d5e54d8
│                       │      │                   757f63bd66339cf764c3292c21/mapstructure.go#L679-L686
│                       │      │                   757f63bd66339cf764c3292c21/mapstructure.go#L726-L730
│                       │      │                   757f63bd66339cf764c3292c21/mapstructure.go#L783-L787
│                       │      │                   & more.
│                       │      │                   ### PoC
│                       │      │                   To reproduce with OpenBao:
│                       │      │                   $ podman run -p 8300:8300 openbao/openbao:latest server -dev
│                       │      │                    -dev-root-token-id=root -dev-listen-address=0.0.0.0:8300
│                       │      │                   and in a new tab:
│                       │      │                   $ BAO_TOKEN=root BAO_ADDR=http://localhost:8300 bao auth
│                       │      │                   enable userpass
│                       │      │                   Success! Enabled userpass auth method at: userpass/
│                       │      │                   $ curl -X PUT -H "X-Vault-Request: true" -H "X-Vault-Token:
│                       │      │                   root" -d '{"password":{"asdf":"my-sensitive-value"}}'
│                       │      │                   "http://localhost:8300/v1/auth/userpass/users/adsf"
│                       │      │                   {"errors":["error converting input for field \"password\":
│                       │      │                   '' expected type 'string', got unconvertible type
│                       │      │                   'map[string]interface {}', value:
│                       │      │                   'map[asdf:my-sensitive-value]'"]}
│                       │      │                   ### Impact
│                       │      │                   This is an information disclosure bug with little
│                       │      │                   mitigation. See
│                       │      │                   https://discuss.hashicorp.com/t/hcsec-2025-09-vault-may-expo
│                       │      │                   se-sensitive-information-in-error-logs-when-processing-malfo
│                       │      │                   rmed-data-with-the-kv-v2-plugin/74717 for a previous
│                       │      │                   version. That version was fixed, but this is in the second
│                       │      │                   part of that error message (starting at `'' expected a map,
│                       │      │                   got 'string'` -- when the field type is `string` and a `map`
│                       │      │                    is provided, we see the above information leak -- the
│                       │      │                   previous example had a `map` type field with a `string`
│                       │      │                   value provided).
│                       │      │                   This was rated 4.5 Medium by HashiCorp in the past iteration
│                       │      │                   . 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ ghsa: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:N/A:N 
│                       │      │                         ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://github.com/go-viper/mapstructure 
│                       │      │                  ╰ [1]: https://github.com/go-viper/mapstructure/security/advi
│                       │      │                         sories/GHSA-fv92-fjc5-jj9h 
│                       │      ├ PublishedDate   : 2025-06-27T16:24:59Z 
│                       │      ╰ LastModifiedDate: 2025-06-27T16:24:59Z 
│                       ├ [4]  ╭ VulnerabilityID : CVE-2025-22869 
│                       │      ├ PkgID           : golang.org/x/crypto@v0.31.0 
│                       │      ├ PkgName         : golang.org/x/crypto 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.31.0 
│                       │      │                  ╰ UID : 8aec4fbd6e3ccf1f 
│                       │      ├ InstalledVersion: v0.31.0 
│                       │      ├ FixedVersion    : 0.35.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22869 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/crypto/ssh: Denial of Service in the Key
│                       │      │                   Exchange of golang.org/x/crypto/ssh 
│                       │      ├ Description     : SSH servers which implement file transfer protocols are
│                       │      │                   vulnerable to a denial of service attack from clients which
│                       │      │                   complete the key exchange slowly, or not at all, causing
│                       │      │                   pending content to be read into memory, but never
│                       │      │                   transmitted. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ ghsa       : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ╰ redhat     : 3 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3833 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22869 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2348367 
│                       │      │                  ├ [3] : https://errata.almalinux.org/9/ALSA-2025-3833.html 
│                       │      │                  ├ [4] : https://github.com/golang/crypto 
│                       │      │                  ├ [5] : https://github.com/golang/crypto/commit/7292932d45d55
│                       │      │                  │       c7199324ab0027cc86e8198aa22 
│                       │      │                  ├ [6] : https://go-review.googlesource.com/c/crypto/+/652135 
│                       │      │                  ├ [7] : https://go.dev/cl/652135 
│                       │      │                  ├ [8] : https://go.dev/issue/71931 
│                       │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-22869.html 
│                       │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-7484.html 
│                       │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-22869 
│                       │      │                  ├ [12]: https://pkg.go.dev/vuln/GO-2025-3487 
│                       │      │                  ├ [13]: https://security.netapp.com/advisory/ntap-20250411-0010 
│                       │      │                  ├ [14]: https://security.netapp.com/advisory/ntap-20250411-00
│                       │      │                  │       10/ 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2025-22869 
│                       │      ├ PublishedDate   : 2025-02-26T08:14:24.997Z 
│                       │      ╰ LastModifiedDate: 2025-05-01T19:28:20.74Z 
│                       ├ [5]  ╭ VulnerabilityID : CVE-2025-22870 
│                       │      ├ PkgID           : golang.org/x/net@v0.33.0 
│                       │      ├ PkgName         : golang.org/x/net 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.33.0 
│                       │      │                  ╰ UID : 1e3966db66a3aa1 
│                       │      ├ InstalledVersion: v0.33.0 
│                       │      ├ FixedVersion    : 0.36.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/net/proxy: golang.org/x/net/http/httpproxy:
│                       │      │                   HTTP Proxy bypass using IPv6 Zone IDs in golang.org/x/net 
│                       │      ├ Description     : Matching of hosts against proxy patterns can improperly
│                       │      │                   treat an IPv6 zone ID as a hostname component. For example,
│                       │      │                   when the NO_PROXY environment variable is set to
│                       │      │                   "*.example.com", a request to "[::1%25.example.com]:80` will
│                       │      │                    incorrectly match and not be proxied. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-115 
│                       │      ├ VendorSeverity   ╭ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ ghsa       : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 4.4 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.4 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/07/2 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22870 
│                       │      │                  ├ [2] : https://github.com/golang/go/issues/71984 
│                       │      │                  ├ [3] : https://go-review.googlesource.com/q/project:net 
│                       │      │                  ├ [4] : https://go.dev/cl/654697 
│                       │      │                  ├ [5] : https://go.dev/issue/71984 
│                       │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/4t3lzH3
│                       │      │                  │       I0eI/m/b42ImqrBAQAJ 
│                       │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                       │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2025-3503 
│                       │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250509-0007 
│                       │      │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250509-00
│                       │      │                  │       07/ 
│                       │      │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                       │      ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                       │      ╰ LastModifiedDate: 2025-05-09T20:15:38.727Z 
│                       ├ [6]  ╭ VulnerabilityID : CVE-2025-22872 
│                       │      ├ PkgID           : golang.org/x/net@v0.33.0 
│                       │      ├ PkgName         : golang.org/x/net 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.33.0 
│                       │      │                  ╰ UID : 1e3966db66a3aa1 
│                       │      ├ InstalledVersion: v0.33.0 
│                       │      ├ FixedVersion    : 0.38.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22872 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/net/html: Incorrect Neutralization of Input
│                       │      │                   During Web Page Generation in x/net in golang.org/x/net 
│                       │      ├ Description     : The tokenizer incorrectly interprets tags with unquoted
│                       │      │                   attribute values that end with a solidus character (/) as
│                       │      │                   self-closing. When directly using Tokenizer, this can result
│                       │      │                    in such tags incorrectly being marked as self-closing, and
│                       │      │                   when using the Parse functions, this can result in content
│                       │      │                   following such tags as being placed in the wrong scope
│                       │      │                   during DOM construction, but only when tags are in foreign
│                       │      │                   content (e.g. <math>, <svg>, etc contexts). 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ ghsa       : 2 
│                       │      │                  ╰ redhat     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22872 
│                       │      │                  ├ [1]: https://github.com/advisories/GHSA-vvgc-356p-c3xw 
│                       │      │                  ├ [2]: https://go.dev/cl/662715 
│                       │      │                  ├ [3]: https://go.dev/issue/73070 
│                       │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/ezSKR9vq
│                       │      │                  │      bqA 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22872 
│                       │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3595 
│                       │      │                  ├ [7]: https://security.netapp.com/advisory/ntap-20250516-0007 
│                       │      │                  ├ [8]: https://security.netapp.com/advisory/ntap-20250516-0007/ 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-22872 
│                       │      ├ PublishedDate   : 2025-04-16T18:16:04.183Z 
│                       │      ╰ LastModifiedDate: 2025-05-16T23:15:19.707Z 
│                       ├ [7]  ╭ VulnerabilityID : CVE-2025-22868 
│                       │      ├ PkgID           : golang.org/x/oauth2@v0.24.0 
│                       │      ├ PkgName         : golang.org/x/oauth2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/oauth2@v0.24.0 
│                       │      │                  ╰ UID : 610b1dcf96ca2c4c 
│                       │      ├ InstalledVersion: v0.24.0 
│                       │      ├ FixedVersion    : 0.27.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22868 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/oauth2/jws: Unexpected memory consumption
│                       │      │                   during token parsing in golang.org/x/oauth2/jws 
│                       │      ├ Description     : An attacker can pass a malicious malformed token which
│                       │      │                   causes unexpected memory to be consumed during parsing. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-1286 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ ghsa       : 3 
│                       │      │                  ╰ redhat     : 3 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22868 
│                       │      │                  ├ [1]: https://go.dev/cl/652155 
│                       │      │                  ├ [2]: https://go.dev/issue/71490 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-22868 
│                       │      │                  ├ [4]: https://pkg.go.dev/vuln/GO-2025-3488 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-22868 
│                       │      ├ PublishedDate   : 2025-02-26T08:14:24.897Z 
│                       │      ╰ LastModifiedDate: 2025-05-01T19:27:10.43Z 
│                       ├ [8]  ╭ VulnerabilityID : CVE-2024-45336 
│                       │      ├ PkgID           : stdlib@v1.22.10 
│                       │      ├ PkgName         : stdlib 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │      │                  ╰ UID : afd799025a5d40f9 
│                       │      ├ InstalledVersion: v1.22.10 
│                       │      ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45336 
│                       │      ├ DataSource       ╭ ID  : govulndb 
│                       │      │                  ├ Name: The Go Vulnerability Database 
│                       │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │      ├ Title           : golang: net/http: net/http: sensitive headers incorrectly
│                       │      │                   sent after cross-domain redirect 
│                       │      ├ Description     : The HTTP client drops sensitive headers after following a
│                       │      │                   cross-domain redirect. For example, a request to a.com/
│                       │      │                   containing an Authorization header which is redirected to
│                       │      │                   b.com/ will not send that header to b.com. In the event that
│                       │      │                    the client received a subsequent same-domain redirect,
│                       │      │                   however, the sensitive headers would be restored. For
│                       │      │                   example, a chain of redirects from a.com/, to b.com/1, and
│                       │      │                   finally to b.com/2 would incorrectly send the Authorization
│                       │      │                   header to b.com/2. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ bitnami    : 2 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                       │      │                  │         │           L/A:N 
│                       │      │                  │         ╰ V3Score : 6.1 
│                       │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │      │                            │           N/A:N 
│                       │      │                            ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3772 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-45336 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2341750 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2341751 
│                       │      │                  ├ [4] : https://errata.almalinux.org/8/ALSA-2025-3772.html 
│                       │      │                  ├ [5] : https://go.dev/cl/643100 
│                       │      │                  ├ [6] : https://go.dev/issue/70530 
│                       │      │                  ├ [7] : https://groups.google.com/g/golang-announce/c/sSaUhLA
│                       │      │                  │       -2SI 
│                       │      │                  ├ [8] : https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/
│                       │      │                  │       m/bk9LAa-lCgAJ 
│                       │      │                  ├ [9] : https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/
│                       │      │                  │       m/G461hA6lCgAJ 
│                       │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-45336.html 
│                       │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-7592.html 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-45336 
│                       │      │                  ├ [13]: https://pkg.go.dev/vuln/GO-2025-3420 
│                       │      │                  ├ [14]: https://security.netapp.com/advisory/ntap-20250221-00
│                       │      │                  │       03/ 
│                       │      │                  ├ [15]: https://ubuntu.com/security/notices/USN-7574-1 
│                       │      │                  ╰ [16]: https://www.cve.org/CVERecord?id=CVE-2024-45336 
│                       │      ├ PublishedDate   : 2025-01-28T02:15:28.807Z 
│                       │      ╰ LastModifiedDate: 2025-02-21T18:15:17.4Z 
│                       ├ [9]  ╭ VulnerabilityID : CVE-2024-45341 
│                       │      ├ PkgID           : stdlib@v1.22.10 
│                       │      ├ PkgName         : stdlib 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │      │                  ╰ UID : afd799025a5d40f9 
│                       │      ├ InstalledVersion: v1.22.10 
│                       │      ├ FixedVersion    : 1.22.11, 1.23.5, 1.24.0-rc.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45341 
│                       │      ├ DataSource       ╭ ID  : govulndb 
│                       │      │                  ├ Name: The Go Vulnerability Database 
│                       │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │      ├ Title           : golang: crypto/x509: crypto/x509: usage of IPv6 zone IDs can
│                       │      │                    bypass URI name constraints 
│                       │      ├ Description     : A certificate with a URI which has a IPv6 address with a
│                       │      │                   zone ID may incorrectly satisfy a URI name constraint that
│                       │      │                   applies to the certificate chain. Certificates containing
│                       │      │                   URIs are not permitted in the web PKI, so this only affects
│                       │      │                   users of private PKIs which make use of URIs. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ bitnami    : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                       │      │                  │         │           L/A:N 
│                       │      │                  │         ╰ V3Score : 6.1 
│                       │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │      │                            │           L/A:N 
│                       │      │                            ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3772 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-45341 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2341750 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2341751 
│                       │      │                  ├ [4] : https://errata.almalinux.org/8/ALSA-2025-3772.html 
│                       │      │                  ├ [5] : https://go.dev/cl/643099 
│                       │      │                  ├ [6] : https://go.dev/issue/71156 
│                       │      │                  ├ [7] : https://groups.google.com/g/golang-announce/c/sSaUhLA
│                       │      │                  │       -2SI 
│                       │      │                  ├ [8] : https://groups.google.com/g/golang-dev/c/CAWXhan3Jww/
│                       │      │                  │       m/bk9LAa-lCgAJ 
│                       │      │                  ├ [9] : https://groups.google.com/g/golang-dev/c/bG8cv1muIBM/
│                       │      │                  │       m/G461hA6lCgAJ 
│                       │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-45341.html 
│                       │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-7466.html 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-45341 
│                       │      │                  ├ [13]: https://pkg.go.dev/vuln/GO-2025-3373 
│                       │      │                  ├ [14]: https://security.netapp.com/advisory/ntap-20250221-00
│                       │      │                  │       04/ 
│                       │      │                  ├ [15]: https://ubuntu.com/security/notices/USN-7574-1 
│                       │      │                  ╰ [16]: https://www.cve.org/CVERecord?id=CVE-2024-45341 
│                       │      ├ PublishedDate   : 2025-01-28T02:15:29.147Z 
│                       │      ╰ LastModifiedDate: 2025-02-21T18:15:17.96Z 
│                       ├ [10] ╭ VulnerabilityID : CVE-2025-0913 
│                       │      ├ PkgID           : stdlib@v1.22.10 
│                       │      ├ PkgName         : stdlib 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │      │                  ╰ UID : afd799025a5d40f9 
│                       │      ├ InstalledVersion: v1.22.10 
│                       │      ├ FixedVersion    : 1.23.10, 1.24.4 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0913 
│                       │      ├ DataSource       ╭ ID  : govulndb 
│                       │      │                  ├ Name: The Go Vulnerability Database 
│                       │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │      ├ Title           : Inconsistent handling of O_CREATE|O_EXCL on Unix and Windows
│                       │      │                    in os in syscall 
│                       │      ├ Description     : os.OpenFile(path, os.O_CREATE|O_EXCL) behaved differently on
│                       │      │                    Unix and Windows systems when the target path was a
│                       │      │                   dangling symlink. On Unix systems, OpenFile with O_CREATE
│                       │      │                   and O_EXCL flags never follows symlinks. On Windows, when
│                       │      │                   the target path was a symlink to a nonexistent location,
│                       │      │                   OpenFile would create a file in that location. OpenFile now
│                       │      │                   always returns an error when the O_CREATE and O_EXCL flags
│                       │      │                   are both set and the target path is a symlink. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ bitnami: 2 
│                       │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │      │                            │           H/A:N 
│                       │      │                            ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://go.dev/cl/672396 
│                       │      │                  ├ [1]: https://go.dev/issue/73702 
│                       │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/ufZ8WpEs
│                       │      │                  │      A3A 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0913 
│                       │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2025-3750 
│                       │      ├ PublishedDate   : 2025-06-11T18:15:24.627Z 
│                       │      ╰ LastModifiedDate: 2025-06-12T16:06:20.18Z 
│                       ├ [11] ╭ VulnerabilityID : CVE-2025-22866 
│                       │      ├ PkgID           : stdlib@v1.22.10 
│                       │      ├ PkgName         : stdlib 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │      │                  ╰ UID : afd799025a5d40f9 
│                       │      ├ InstalledVersion: v1.22.10 
│                       │      ├ FixedVersion    : 1.22.12, 1.23.6, 1.24.0-rc.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22866 
│                       │      ├ DataSource       ╭ ID  : govulndb 
│                       │      │                  ├ Name: The Go Vulnerability Database 
│                       │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │      ├ Title           : crypto/internal/nistec: golang: Timing sidechannel for P-256
│                       │      │                    on ppc64le in crypto/internal/nistec 
│                       │      ├ Description     : Due to the usage of a variable time instruction in the
│                       │      │                   assembly implementation of an internal function, a small
│                       │      │                   number of bits of secret scalars are leaked on the ppc64le
│                       │      │                   architecture. Due to the way this function is used, we do
│                       │      │                   not believe this leakage is enough to allow recovery of the
│                       │      │                   private key when P-256 is used in any well known protocols. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ bitnami    : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │      │                  │         │           N/A:N 
│                       │      │                  │         ╰ V3Score : 4 
│                       │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │      │                            │           N/A:N 
│                       │      │                            ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7466 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22866 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2341750 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2341751 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2344219 
│                       │      │                  ├ [5] : https://errata.almalinux.org/10/ALSA-2025-7466.html 
│                       │      │                  ├ [6] : https://github.com/golang/go/commit/0cc45e7ca668b103c
│                       │      │                  │       1055ae84402ad3f3425dd56 (go1.22.12) 
│                       │      │                  ├ [7] : https://github.com/golang/go/commit/6644ed63b1e6ccc12
│                       │      │                  │       9647ef6b0d4647fdbe14056 (go1.23.6) 
│                       │      │                  ├ [8] : https://github.com/golang/go/commit/6fc23a3cff5e38ff7
│                       │      │                  │       2923fee50f51254dcdc6e93 (go1.24rc3) 
│                       │      │                  ├ [9] : https://github.com/golang/go/issues/71383 
│                       │      │                  ├ [10]: https://go.dev/cl/643735 
│                       │      │                  ├ [11]: https://go.dev/issue/71383 
│                       │      │                  ├ [12]: https://groups.google.com/g/golang-announce/c/xU1ZCHU
│                       │      │                  │       Zw3k 
│                       │      │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-22866.html 
│                       │      │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-7466.html 
│                       │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-22866 
│                       │      │                  ├ [16]: https://pkg.go.dev/vuln/GO-2025-3447 
│                       │      │                  ├ [17]: https://security.netapp.com/advisory/ntap-20250221-00
│                       │      │                  │       02/ 
│                       │      │                  ├ [18]: https://ubuntu.com/security/notices/USN-7574-1 
│                       │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2025-22866 
│                       │      ├ PublishedDate   : 2025-02-06T17:15:21.41Z 
│                       │      ╰ LastModifiedDate: 2025-02-21T18:15:32.243Z 
│                       ├ [12] ╭ VulnerabilityID : CVE-2025-22871 
│                       │      ├ PkgID           : stdlib@v1.22.10 
│                       │      ├ PkgName         : stdlib 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                       │      │                  ╰ UID : afd799025a5d40f9 
│                       │      ├ InstalledVersion: v1.22.10 
│                       │      ├ FixedVersion    : 1.23.8, 1.24.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                       │      ├ DataSource       ╭ ID  : govulndb 
│                       │      │                  ├ Name: The Go Vulnerability Database 
│                       │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │      ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                       │      │                   chunked data in net/http 
│                       │      ├ Description     : The net/http package improperly accepts a bare LF as a line
│                       │      │                   terminator in chunked data chunk-size lines. This can permit
│                       │      │                    request smuggling if a net/http server is used in
│                       │      │                   conjunction with a server that incorrectly accepts a bare LF
│                       │      │                    as part of a chunk-ext. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ bitnami    : 4 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ╰ redhat     : 2 
│                       │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                       │      │                  │         │           H/A:N 
│                       │      │                  │         ╰ V3Score : 9.1 
│                       │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:
│                       │      │                            │           L/A:N 
│                       │      │                            ╰ V3Score : 5.4 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/04/4 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:9635 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-22871 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2358493 
│                       │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-9635.html 
│                       │      │                  ├ [5] : https://go.dev/cl/652998 
│                       │      │                  ├ [6] : https://go.dev/issue/71988 
│                       │      │                  ├ [7] : https://groups.google.com/g/golang-announce/c/Y2uBTVK
│                       │      │                  │       jBQk 
│                       │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2025-22871.html 
│                       │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-9845.html 
│                       │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                       │      │                  ├ [11]: https://pkg.go.dev/vuln/GO-2025-3563 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                       │      ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                       │      ╰ LastModifiedDate: 2025-04-18T15:15:57.923Z 
│                       ╰ [13] ╭ VulnerabilityID : CVE-2025-4673 
│                              ├ PkgID           : stdlib@v1.22.10 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.10 
│                              │                  ╰ UID : afd799025a5d40f9 
│                              ├ InstalledVersion: v1.22.10 
│                              ├ FixedVersion    : 1.23.10, 1.24.4 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                              │                  │         b905ad543ad918ad504c 
│                              │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                              │                            a5507fce977ad8d74ed5 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4673 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Title           : net/http: Sensitive headers not cleared on cross-origin
│                              │                   redirect in net/http 
│                              ├ Description     : Proxy-Authorization and Proxy-Authenticate headers persisted
│                              │                    on cross-origin redirects potentially leaking sensitive
│                              │                   information. 
│                              ├ Severity        : MEDIUM 
│                              ├ VendorSeverity   ╭ alma       : 2 
│                              │                  ├ amazon     : 2 
│                              │                  ├ bitnami    : 2 
│                              │                  ├ cbl-mariner: 2 
│                              │                  ├ oracle-oval: 2 
│                              │                  ├ redhat     : 2 
│                              │                  ╰ ubuntu     : 2 
│                              ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:
│                              │                  │         │           N/A:N 
│                              │                  │         ╰ V3Score : 6.8 
│                              │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:
│                              │                            │           N/A:N 
│                              │                            ╰ V3Score : 6.8 
│                              ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10676 
│                              │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4673 
│                              │                  ├ [2] : https://bugzilla.redhat.com/2373305 
│                              │                  ├ [3] : https://errata.almalinux.org/9/ALSA-2025-10676.html 
│                              │                  ├ [4] : https://go.dev/cl/679257 
│                              │                  ├ [5] : https://go.dev/issue/73816 
│                              │                  ├ [6] : https://groups.google.com/g/golang-announce/c/ufZ8WpE
│                              │                  │       sA3A 
│                              │                  ├ [7] : https://linux.oracle.com/cve/CVE-2025-4673.html 
│                              │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2025-10677.html 
│                              │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2025-4673 
│                              │                  ├ [10]: https://pkg.go.dev/vuln/GO-2025-3751 
│                              │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                              │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-4673 
│                              ├ PublishedDate   : 2025-06-11T17:15:42.993Z 
│                              ╰ LastModifiedDate: 2025-06-12T16:06:20.18Z 
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
│                       │     ├ VendorSeverity   ╭ amazon     : 2 
│                       │     │                  ├ azure      : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ├ redhat     : 2 
│                       │     │                  ╰ ubuntu     : 2 
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
│                       │     │                  ├ [8] : https://lists.debian.org/debian-lts-announce/2025/05/m
│                       │     │                  │       sg00005.html 
│                       │     │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2024-40635 
│                       │     │                  ├ [10]: https://ubuntu.com/security/notices/USN-7374-1 
│                       │     │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2024-40635 
│                       │     ├ PublishedDate   : 2025-03-17T22:15:13.15Z 
│                       │     ╰ LastModifiedDate: 2025-05-04T22:15:31.84Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2025-22869 
│                       │     ├ PkgID           : golang.org/x/crypto@v0.31.0 
│                       │     ├ PkgName         : golang.org/x/crypto 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.31.0 
│                       │     │                  ╰ UID : dcba3f8843d534c7 
│                       │     ├ InstalledVersion: v0.31.0 
│                       │     ├ FixedVersion    : 0.35.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22869 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/crypto/ssh: Denial of Service in the Key
│                       │     │                   Exchange of golang.org/x/crypto/ssh 
│                       │     ├ Description     : SSH servers which implement file transfer protocols are
│                       │     │                   vulnerable to a denial of service attack from clients which
│                       │     │                   complete the key exchange slowly, or not at all, causing
│                       │     │                   pending content to be read into memory, but never transmitted
│                       │     │                   . 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ─ [0]: CWE-770 
│                       │     ├ VendorSeverity   ╭ alma       : 3 
│                       │     │                  ├ amazon     : 3 
│                       │     │                  ├ azure      : 3 
│                       │     │                  ├ cbl-mariner: 3 
│                       │     │                  ├ ghsa       : 3 
│                       │     │                  ├ oracle-oval: 3 
│                       │     │                  ╰ redhat     : 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3833 
│                       │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22869 
│                       │     │                  ├ [2] : https://bugzilla.redhat.com/2348367 
│                       │     │                  ├ [3] : https://errata.almalinux.org/9/ALSA-2025-3833.html 
│                       │     │                  ├ [4] : https://github.com/golang/crypto 
│                       │     │                  ├ [5] : https://github.com/golang/crypto/commit/7292932d45d55c
│                       │     │                  │       7199324ab0027cc86e8198aa22 
│                       │     │                  ├ [6] : https://go-review.googlesource.com/c/crypto/+/652135 
│                       │     │                  ├ [7] : https://go.dev/cl/652135 
│                       │     │                  ├ [8] : https://go.dev/issue/71931 
│                       │     │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-22869.html 
│                       │     │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-7484.html 
│                       │     │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-22869 
│                       │     │                  ├ [12]: https://pkg.go.dev/vuln/GO-2025-3487 
│                       │     │                  ├ [13]: https://security.netapp.com/advisory/ntap-20250411-0010 
│                       │     │                  ├ [14]: https://security.netapp.com/advisory/ntap-20250411-0010/ 
│                       │     │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2025-22869 
│                       │     ├ PublishedDate   : 2025-02-26T08:14:24.997Z 
│                       │     ╰ LastModifiedDate: 2025-05-01T19:28:20.74Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2025-22870 
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
│                       │     │                  ├ azure      : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ├ redhat     : 2 
│                       │     │                  ╰ ubuntu     : 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                  │        │           A:L 
│                       │     │                  │        ╰ V3Score : 4.4 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                           │           A:L 
│                       │     │                           ╰ V3Score : 4.4 
│                       │     ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/07/2 
│                       │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22870 
│                       │     │                  ├ [2] : https://github.com/golang/go/issues/71984 
│                       │     │                  ├ [3] : https://go-review.googlesource.com/q/project:net 
│                       │     │                  ├ [4] : https://go.dev/cl/654697 
│                       │     │                  ├ [5] : https://go.dev/issue/71984 
│                       │     │                  ├ [6] : https://groups.google.com/g/golang-announce/c/4t3lzH3I
│                       │     │                  │       0eI/m/b42ImqrBAQAJ 
│                       │     │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                       │     │                  ├ [8] : https://pkg.go.dev/vuln/GO-2025-3503 
│                       │     │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250509-0007 
│                       │     │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250509-0007/ 
│                       │     │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                       │     │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                       │     ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                       │     ╰ LastModifiedDate: 2025-05-09T20:15:38.727Z 
│                       ├ [3] ╭ VulnerabilityID : CVE-2025-22872 
│                       │     ├ PkgID           : golang.org/x/net@v0.33.0 
│                       │     ├ PkgName         : golang.org/x/net 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.33.0 
│                       │     │                  ╰ UID : 5f4e3d9bb22dafc1 
│                       │     ├ InstalledVersion: v0.33.0 
│                       │     ├ FixedVersion    : 0.38.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22872 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/net/html: Incorrect Neutralization of Input
│                       │     │                   During Web Page Generation in x/net in golang.org/x/net 
│                       │     ├ Description     : The tokenizer incorrectly interprets tags with unquoted
│                       │     │                   attribute values that end with a solidus character (/) as
│                       │     │                   self-closing. When directly using Tokenizer, this can result
│                       │     │                   in such tags incorrectly being marked as self-closing, and
│                       │     │                   when using the Parse functions, this can result in content
│                       │     │                   following such tags as being placed in the wrong scope during
│                       │     │                    DOM construction, but only when tags are in foreign content
│                       │     │                   (e.g. <math>, <svg>, etc contexts). 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ╭ amazon     : 3 
│                       │     │                  ├ azure      : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L/
│                       │     │                           │           A:L 
│                       │     │                           ╰ V3Score : 6.5 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22872 
│                       │     │                  ├ [1]: https://github.com/advisories/GHSA-vvgc-356p-c3xw 
│                       │     │                  ├ [2]: https://go.dev/cl/662715 
│                       │     │                  ├ [3]: https://go.dev/issue/73070 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-announce/c/ezSKR9vqbqA 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22872 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3595 
│                       │     │                  ├ [7]: https://security.netapp.com/advisory/ntap-20250516-0007 
│                       │     │                  ├ [8]: https://security.netapp.com/advisory/ntap-20250516-0007/ 
│                       │     │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-22872 
│                       │     ├ PublishedDate   : 2025-04-16T18:16:04.183Z 
│                       │     ╰ LastModifiedDate: 2025-05-16T23:15:19.707Z 
│                       ├ [4] ╭ VulnerabilityID : CVE-2025-22868 
│                       │     ├ PkgID           : golang.org/x/oauth2@v0.23.0 
│                       │     ├ PkgName         : golang.org/x/oauth2 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/oauth2@v0.23.0 
│                       │     │                  ╰ UID : dd06363f7d3128e1 
│                       │     ├ InstalledVersion: v0.23.0 
│                       │     ├ FixedVersion    : 0.27.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22868 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/oauth2/jws: Unexpected memory consumption during
│                       │     │                    token parsing in golang.org/x/oauth2/jws 
│                       │     ├ Description     : An attacker can pass a malicious malformed token which causes
│                       │     │                    unexpected memory to be consumed during parsing. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ─ [0]: CWE-1286 
│                       │     ├ VendorSeverity   ╭ amazon     : 3 
│                       │     │                  ├ azure      : 3 
│                       │     │                  ├ cbl-mariner: 3 
│                       │     │                  ├ ghsa       : 3 
│                       │     │                  ╰ redhat     : 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22868 
│                       │     │                  ├ [1]: https://go.dev/cl/652155 
│                       │     │                  ├ [2]: https://go.dev/issue/71490 
│                       │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-22868 
│                       │     │                  ├ [4]: https://pkg.go.dev/vuln/GO-2025-3488 
│                       │     │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-22868 
│                       │     ├ PublishedDate   : 2025-02-26T08:14:24.897Z 
│                       │     ╰ LastModifiedDate: 2025-05-01T19:27:10.43Z 
│                       ├ [5] ╭ VulnerabilityID : CVE-2025-0913 
│                       │     ├ PkgID           : stdlib@v1.23.5 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.5 
│                       │     │                  ╰ UID : 44e9bcda2169408b 
│                       │     ├ InstalledVersion: v1.23.5 
│                       │     ├ FixedVersion    : 1.23.10, 1.24.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0913 
│                       │     ├ DataSource       ╭ ID  : govulndb 
│                       │     │                  ├ Name: The Go Vulnerability Database 
│                       │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │     ├ Title           : Inconsistent handling of O_CREATE|O_EXCL on Unix and Windows
│                       │     │                   in os in syscall 
│                       │     ├ Description     : os.OpenFile(path, os.O_CREATE|O_EXCL) behaved differently on
│                       │     │                   Unix and Windows systems when the target path was a dangling
│                       │     │                   symlink. On Unix systems, OpenFile with O_CREATE and O_EXCL
│                       │     │                   flags never follows symlinks. On Windows, when the target
│                       │     │                   path was a symlink to a nonexistent location, OpenFile would
│                       │     │                   create a file in that location. OpenFile now always returns
│                       │     │                   an error when the O_CREATE and O_EXCL flags are both set and
│                       │     │                   the target path is a symlink. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ─ bitnami: 2 
│                       │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:H
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.5 
│                       │     ├ References       ╭ [0]: https://go.dev/cl/672396 
│                       │     │                  ├ [1]: https://go.dev/issue/73702 
│                       │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/ufZ8WpEsA3A 
│                       │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0913 
│                       │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2025-3750 
│                       │     ├ PublishedDate   : 2025-06-11T18:15:24.627Z 
│                       │     ╰ LastModifiedDate: 2025-06-12T16:06:20.18Z 
│                       ├ [6] ╭ VulnerabilityID : CVE-2025-22866 
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
│                       │     ├ VendorSeverity   ╭ alma       : 2 
│                       │     │                  ├ bitnami    : 2 
│                       │     │                  ├ oracle-oval: 2 
│                       │     │                  ├ redhat     : 2 
│                       │     │                  ╰ ubuntu     : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 4 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7466 
│                       │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22866 
│                       │     │                  ├ [2] : https://bugzilla.redhat.com/2341750 
│                       │     │                  ├ [3] : https://bugzilla.redhat.com/2341751 
│                       │     │                  ├ [4] : https://bugzilla.redhat.com/2344219 
│                       │     │                  ├ [5] : https://errata.almalinux.org/10/ALSA-2025-7466.html 
│                       │     │                  ├ [6] : https://github.com/golang/go/commit/0cc45e7ca668b103c1
│                       │     │                  │       055ae84402ad3f3425dd56 (go1.22.12) 
│                       │     │                  ├ [7] : https://github.com/golang/go/commit/6644ed63b1e6ccc129
│                       │     │                  │       647ef6b0d4647fdbe14056 (go1.23.6) 
│                       │     │                  ├ [8] : https://github.com/golang/go/commit/6fc23a3cff5e38ff72
│                       │     │                  │       923fee50f51254dcdc6e93 (go1.24rc3) 
│                       │     │                  ├ [9] : https://github.com/golang/go/issues/71383 
│                       │     │                  ├ [10]: https://go.dev/cl/643735 
│                       │     │                  ├ [11]: https://go.dev/issue/71383 
│                       │     │                  ├ [12]: https://groups.google.com/g/golang-announce/c/xU1ZCHUZ
│                       │     │                  │       w3k 
│                       │     │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-22866.html 
│                       │     │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2025-7466.html 
│                       │     │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-22866 
│                       │     │                  ├ [16]: https://pkg.go.dev/vuln/GO-2025-3447 
│                       │     │                  ├ [17]: https://security.netapp.com/advisory/ntap-20250221-0002/ 
│                       │     │                  ├ [18]: https://ubuntu.com/security/notices/USN-7574-1 
│                       │     │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2025-22866 
│                       │     ├ PublishedDate   : 2025-02-06T17:15:21.41Z 
│                       │     ╰ LastModifiedDate: 2025-02-21T18:15:32.243Z 
│                       ├ [7] ╭ VulnerabilityID : CVE-2025-22871 
│                       │     ├ PkgID           : stdlib@v1.23.5 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.5 
│                       │     │                  ╰ UID : 44e9bcda2169408b 
│                       │     ├ InstalledVersion: v1.23.5 
│                       │     ├ FixedVersion    : 1.23.8, 1.24.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                       │     ├ DataSource       ╭ ID  : govulndb 
│                       │     │                  ├ Name: The Go Vulnerability Database 
│                       │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │     ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                       │     │                   chunked data in net/http 
│                       │     ├ Description     : The net/http package improperly accepts a bare LF as a line
│                       │     │                   terminator in chunked data chunk-size lines. This can permit
│                       │     │                   request smuggling if a net/http server is used in conjunction
│                       │     │                    with a server that incorrectly accepts a bare LF as part of
│                       │     │                   a chunk-ext. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ╭ alma       : 2 
│                       │     │                  ├ amazon     : 3 
│                       │     │                  ├ bitnami    : 4 
│                       │     │                  ├ cbl-mariner: 3 
│                       │     │                  ├ oracle-oval: 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 9.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.4 
│                       │     ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/04/4 
│                       │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:9635 
│                       │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-22871 
│                       │     │                  ├ [3] : https://bugzilla.redhat.com/2358493 
│                       │     │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-9635.html 
│                       │     │                  ├ [5] : https://go.dev/cl/652998 
│                       │     │                  ├ [6] : https://go.dev/issue/71988 
│                       │     │                  ├ [7] : https://groups.google.com/g/golang-announce/c/Y2uBTVKj
│                       │     │                  │       BQk 
│                       │     │                  ├ [8] : https://linux.oracle.com/cve/CVE-2025-22871.html 
│                       │     │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-9845.html 
│                       │     │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                       │     │                  ├ [11]: https://pkg.go.dev/vuln/GO-2025-3563 
│                       │     │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                       │     ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                       │     ╰ LastModifiedDate: 2025-04-18T15:15:57.923Z 
│                       ╰ [8] ╭ VulnerabilityID : CVE-2025-4673 
│                             ├ PkgID           : stdlib@v1.23.5 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.5 
│                             │                  ╰ UID : 44e9bcda2169408b 
│                             ├ InstalledVersion: v1.23.5 
│                             ├ FixedVersion    : 1.23.10, 1.24.4 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                             │                  │         905ad543ad918ad504c 
│                             │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                             │                            5507fce977ad8d74ed5 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4673 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : net/http: Sensitive headers not cleared on cross-origin
│                             │                   redirect in net/http 
│                             ├ Description     : Proxy-Authorization and Proxy-Authenticate headers persisted
│                             │                   on cross-origin redirects potentially leaking sensitive
│                             │                   information. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ╭ alma       : 2 
│                             │                  ├ amazon     : 2 
│                             │                  ├ bitnami    : 2 
│                             │                  ├ cbl-mariner: 2 
│                             │                  ├ oracle-oval: 2 
│                             │                  ├ redhat     : 2 
│                             │                  ╰ ubuntu     : 2 
│                             ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:N
│                             │                  │         │           /A:N 
│                             │                  │         ╰ V3Score : 6.8 
│                             │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:N
│                             │                            │           /A:N 
│                             │                            ╰ V3Score : 6.8 
│                             ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10676 
│                             │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4673 
│                             │                  ├ [2] : https://bugzilla.redhat.com/2373305 
│                             │                  ├ [3] : https://errata.almalinux.org/9/ALSA-2025-10676.html 
│                             │                  ├ [4] : https://go.dev/cl/679257 
│                             │                  ├ [5] : https://go.dev/issue/73816 
│                             │                  ├ [6] : https://groups.google.com/g/golang-announce/c/ufZ8WpEs
│                             │                  │       A3A 
│                             │                  ├ [7] : https://linux.oracle.com/cve/CVE-2025-4673.html 
│                             │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2025-10677.html 
│                             │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2025-4673 
│                             │                  ├ [10]: https://pkg.go.dev/vuln/GO-2025-3751 
│                             │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                             │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-4673 
│                             ├ PublishedDate   : 2025-06-11T17:15:42.993Z 
│                             ╰ LastModifiedDate: 2025-06-12T16:06:20.18Z 
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
│                       │     │                  ├ azure      : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ├ redhat     : 2 
│                       │     │                  ╰ ubuntu     : 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                  │        │           A:L 
│                       │     │                  │        ╰ V3Score : 4.4 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │     │                           │           A:L 
│                       │     │                           ╰ V3Score : 4.4 
│                       │     ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/07/2 
│                       │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22870 
│                       │     │                  ├ [2] : https://github.com/golang/go/issues/71984 
│                       │     │                  ├ [3] : https://go-review.googlesource.com/q/project:net 
│                       │     │                  ├ [4] : https://go.dev/cl/654697 
│                       │     │                  ├ [5] : https://go.dev/issue/71984 
│                       │     │                  ├ [6] : https://groups.google.com/g/golang-announce/c/4t3lzH3I
│                       │     │                  │       0eI/m/b42ImqrBAQAJ 
│                       │     │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                       │     │                  ├ [8] : https://pkg.go.dev/vuln/GO-2025-3503 
│                       │     │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250509-0007 
│                       │     │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250509-0007/ 
│                       │     │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                       │     │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                       │     ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                       │     ╰ LastModifiedDate: 2025-05-09T20:15:38.727Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2025-22872 
│                       │     ├ PkgID           : golang.org/x/net@v0.30.0 
│                       │     ├ PkgName         : golang.org/x/net 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.30.0 
│                       │     │                  ╰ UID : 49cea3404592705a 
│                       │     ├ InstalledVersion: v0.30.0 
│                       │     ├ FixedVersion    : 0.38.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22872 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/net/html: Incorrect Neutralization of Input
│                       │     │                   During Web Page Generation in x/net in golang.org/x/net 
│                       │     ├ Description     : The tokenizer incorrectly interprets tags with unquoted
│                       │     │                   attribute values that end with a solidus character (/) as
│                       │     │                   self-closing. When directly using Tokenizer, this can result
│                       │     │                   in such tags incorrectly being marked as self-closing, and
│                       │     │                   when using the Parse functions, this can result in content
│                       │     │                   following such tags as being placed in the wrong scope during
│                       │     │                    DOM construction, but only when tags are in foreign content
│                       │     │                   (e.g. <math>, <svg>, etc contexts). 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ╭ amazon     : 3 
│                       │     │                  ├ azure      : 2 
│                       │     │                  ├ cbl-mariner: 2 
│                       │     │                  ├ ghsa       : 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L/
│                       │     │                           │           A:L 
│                       │     │                           ╰ V3Score : 6.5 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22872 
│                       │     │                  ├ [1]: https://github.com/advisories/GHSA-vvgc-356p-c3xw 
│                       │     │                  ├ [2]: https://go.dev/cl/662715 
│                       │     │                  ├ [3]: https://go.dev/issue/73070 
│                       │     │                  ├ [4]: https://groups.google.com/g/golang-announce/c/ezSKR9vqbqA 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22872 
│                       │     │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3595 
│                       │     │                  ├ [7]: https://security.netapp.com/advisory/ntap-20250516-0007 
│                       │     │                  ├ [8]: https://security.netapp.com/advisory/ntap-20250516-0007/ 
│                       │     │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-22872 
│                       │     ├ PublishedDate   : 2025-04-16T18:16:04.183Z 
│                       │     ╰ LastModifiedDate: 2025-05-16T23:15:19.707Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2025-22868 
│                       │     ├ PkgID           : golang.org/x/oauth2@v0.23.0 
│                       │     ├ PkgName         : golang.org/x/oauth2 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/oauth2@v0.23.0 
│                       │     │                  ╰ UID : d122da832a3f2b15 
│                       │     ├ InstalledVersion: v0.23.0 
│                       │     ├ FixedVersion    : 0.27.0 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22868 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Go 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Ago 
│                       │     ├ Title           : golang.org/x/oauth2/jws: Unexpected memory consumption during
│                       │     │                    token parsing in golang.org/x/oauth2/jws 
│                       │     ├ Description     : An attacker can pass a malicious malformed token which causes
│                       │     │                    unexpected memory to be consumed during parsing. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ─ [0]: CWE-1286 
│                       │     ├ VendorSeverity   ╭ amazon     : 3 
│                       │     │                  ├ azure      : 3 
│                       │     │                  ├ cbl-mariner: 3 
│                       │     │                  ├ ghsa       : 3 
│                       │     │                  ╰ redhat     : 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22868 
│                       │     │                  ├ [1]: https://go.dev/cl/652155 
│                       │     │                  ├ [2]: https://go.dev/issue/71490 
│                       │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-22868 
│                       │     │                  ├ [4]: https://pkg.go.dev/vuln/GO-2025-3488 
│                       │     │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-22868 
│                       │     ├ PublishedDate   : 2025-02-26T08:14:24.897Z 
│                       │     ╰ LastModifiedDate: 2025-05-01T19:27:10.43Z 
│                       ├ [3] ╭ VulnerabilityID : CVE-2025-0913 
│                       │     ├ PkgID           : stdlib@v1.23.6 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.6 
│                       │     │                  ╰ UID : a200578c56ec45c2 
│                       │     ├ InstalledVersion: v1.23.6 
│                       │     ├ FixedVersion    : 1.23.10, 1.24.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0913 
│                       │     ├ DataSource       ╭ ID  : govulndb 
│                       │     │                  ├ Name: The Go Vulnerability Database 
│                       │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │     ├ Title           : Inconsistent handling of O_CREATE|O_EXCL on Unix and Windows
│                       │     │                   in os in syscall 
│                       │     ├ Description     : os.OpenFile(path, os.O_CREATE|O_EXCL) behaved differently on
│                       │     │                   Unix and Windows systems when the target path was a dangling
│                       │     │                   symlink. On Unix systems, OpenFile with O_CREATE and O_EXCL
│                       │     │                   flags never follows symlinks. On Windows, when the target
│                       │     │                   path was a symlink to a nonexistent location, OpenFile would
│                       │     │                   create a file in that location. OpenFile now always returns
│                       │     │                   an error when the O_CREATE and O_EXCL flags are both set and
│                       │     │                   the target path is a symlink. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ─ bitnami: 2 
│                       │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:H
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.5 
│                       │     ├ References       ╭ [0]: https://go.dev/cl/672396 
│                       │     │                  ├ [1]: https://go.dev/issue/73702 
│                       │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/ufZ8WpEsA3A 
│                       │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0913 
│                       │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2025-3750 
│                       │     ├ PublishedDate   : 2025-06-11T18:15:24.627Z 
│                       │     ╰ LastModifiedDate: 2025-06-12T16:06:20.18Z 
│                       ├ [4] ╭ VulnerabilityID : CVE-2025-22871 
│                       │     ├ PkgID           : stdlib@v1.23.6 
│                       │     ├ PkgName         : stdlib 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.6 
│                       │     │                  ╰ UID : a200578c56ec45c2 
│                       │     ├ InstalledVersion: v1.23.6 
│                       │     ├ FixedVersion    : 1.23.8, 1.24.2 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                       │     │                  │         905ad543ad918ad504c 
│                       │     │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                       │     │                            5507fce977ad8d74ed5 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                       │     ├ DataSource       ╭ ID  : govulndb 
│                       │     │                  ├ Name: The Go Vulnerability Database 
│                       │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │     ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                       │     │                   chunked data in net/http 
│                       │     ├ Description     : The net/http package improperly accepts a bare LF as a line
│                       │     │                   terminator in chunked data chunk-size lines. This can permit
│                       │     │                   request smuggling if a net/http server is used in conjunction
│                       │     │                    with a server that incorrectly accepts a bare LF as part of
│                       │     │                   a chunk-ext. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ VendorSeverity   ╭ alma       : 2 
│                       │     │                  ├ amazon     : 3 
│                       │     │                  ├ bitnami    : 4 
│                       │     │                  ├ cbl-mariner: 3 
│                       │     │                  ├ oracle-oval: 2 
│                       │     │                  ╰ redhat     : 2 
│                       │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                       │     │                  │         │           /A:N 
│                       │     │                  │         ╰ V3Score : 9.1 
│                       │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L
│                       │     │                            │           /A:N 
│                       │     │                            ╰ V3Score : 5.4 
│                       │     ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/04/4 
│                       │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:9635 
│                       │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-22871 
│                       │     │                  ├ [3] : https://bugzilla.redhat.com/2358493 
│                       │     │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-9635.html 
│                       │     │                  ├ [5] : https://go.dev/cl/652998 
│                       │     │                  ├ [6] : https://go.dev/issue/71988 
│                       │     │                  ├ [7] : https://groups.google.com/g/golang-announce/c/Y2uBTVKj
│                       │     │                  │       BQk 
│                       │     │                  ├ [8] : https://linux.oracle.com/cve/CVE-2025-22871.html 
│                       │     │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-9845.html 
│                       │     │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                       │     │                  ├ [11]: https://pkg.go.dev/vuln/GO-2025-3563 
│                       │     │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                       │     ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                       │     ╰ LastModifiedDate: 2025-04-18T15:15:57.923Z 
│                       ╰ [5] ╭ VulnerabilityID : CVE-2025-4673 
│                             ├ PkgID           : stdlib@v1.23.6 
│                             ├ PkgName         : stdlib 
│                             ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.23.6 
│                             │                  ╰ UID : a200578c56ec45c2 
│                             ├ InstalledVersion: v1.23.6 
│                             ├ FixedVersion    : 1.23.10, 1.24.4 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76b
│                             │                  │         905ad543ad918ad504c 
│                             │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6a
│                             │                            5507fce977ad8d74ed5 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4673 
│                             ├ DataSource       ╭ ID  : govulndb 
│                             │                  ├ Name: The Go Vulnerability Database 
│                             │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                             ├ Title           : net/http: Sensitive headers not cleared on cross-origin
│                             │                   redirect in net/http 
│                             ├ Description     : Proxy-Authorization and Proxy-Authenticate headers persisted
│                             │                   on cross-origin redirects potentially leaking sensitive
│                             │                   information. 
│                             ├ Severity        : MEDIUM 
│                             ├ VendorSeverity   ╭ alma       : 2 
│                             │                  ├ amazon     : 2 
│                             │                  ├ bitnami    : 2 
│                             │                  ├ cbl-mariner: 2 
│                             │                  ├ oracle-oval: 2 
│                             │                  ├ redhat     : 2 
│                             │                  ╰ ubuntu     : 2 
│                             ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:N
│                             │                  │         │           /A:N 
│                             │                  │         ╰ V3Score : 6.8 
│                             │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:N
│                             │                            │           /A:N 
│                             │                            ╰ V3Score : 6.8 
│                             ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10676 
│                             │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4673 
│                             │                  ├ [2] : https://bugzilla.redhat.com/2373305 
│                             │                  ├ [3] : https://errata.almalinux.org/9/ALSA-2025-10676.html 
│                             │                  ├ [4] : https://go.dev/cl/679257 
│                             │                  ├ [5] : https://go.dev/issue/73816 
│                             │                  ├ [6] : https://groups.google.com/g/golang-announce/c/ufZ8WpEs
│                             │                  │       A3A 
│                             │                  ├ [7] : https://linux.oracle.com/cve/CVE-2025-4673.html 
│                             │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2025-10677.html 
│                             │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2025-4673 
│                             │                  ├ [10]: https://pkg.go.dev/vuln/GO-2025-3751 
│                             │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                             │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-4673 
│                             ├ PublishedDate   : 2025-06-11T17:15:42.993Z 
│                             ╰ LastModifiedDate: 2025-06-12T16:06:20.18Z 
├ [5] ╭ Target         : usr/local/bin/k3d 
│     ├ Class          : lang-pkgs 
│     ├ Type           : gobinary 
│     ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2024-40635 
│                       │      ├ PkgID           : github.com/containerd/containerd@v1.7.19 
│                       │      ├ PkgName         : github.com/containerd/containerd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd@v1.7.19 
│                       │      │                  ╰ UID : 1b5ac4bc1bc375ec 
│                       │      ├ InstalledVersion: v1.7.19 
│                       │      ├ FixedVersion    : 1.7.27, 1.6.38 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-40635 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : containerd: containerd has an integer overflow in User ID
│                       │      │                   handling 
│                       │      ├ Description     : containerd is an open-source container runtime. A bug was
│                       │      │                   found in containerd prior to versions 1.6.38, 1.7.27, and
│                       │      │                   2.0.4 where containers launched with a User set as a
│                       │      │                   `UID:GID` larger than the maximum 32-bit signed integer can
│                       │      │                   cause an overflow condition where the container ultimately
│                       │      │                   runs as root (UID 0). This could cause unexpected behavior
│                       │      │                   for environments that require containers to run as a
│                       │      │                   non-root user. This bug has been fixed in containerd 1.6.38,
│                       │      │                    1.7.27, and 2.04. As a workaround, ensure that only trusted
│                       │      │                    images are used and that only trusted users have
│                       │      │                   permissions to import images. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ ghsa       : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.6 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.6 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-40635 
│                       │      │                  ├ [1] : https://github.com/containerd/containerd 
│                       │      │                  ├ [2] : https://github.com/containerd/containerd/commit/05044
│                       │      │                  │       ec0a9a75232cad458027ca83437aae3f4da 
│                       │      │                  ├ [3] : https://github.com/containerd/containerd/commit/11504
│                       │      │                  │       c3fc5f45634f2d93d57743a998194430b82 (v1.7.27) 
│                       │      │                  ├ [4] : https://github.com/containerd/containerd/commit/1a43c
│                       │      │                  │       b6a1035441f9aca8f5666a9b3ef9e70ab20 
│                       │      │                  ├ [5] : https://github.com/containerd/containerd/commit/9639b
│                       │      │                  │       9625554183d0c4d8d072dccb84fedd2320f (v1.6.38) 
│                       │      │                  ├ [6] : https://github.com/containerd/containerd/commit/cf158
│                       │      │                  │       e884cfe4812a6c371b59e4ea9bc4c46e51a 
│                       │      │                  ├ [7] : https://github.com/containerd/containerd/security/adv
│                       │      │                  │       isories/GHSA-265r-hfxg-fhmg 
│                       │      │                  ├ [8] : https://lists.debian.org/debian-lts-announce/2025/05/
│                       │      │                  │       msg00005.html 
│                       │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2024-40635 
│                       │      │                  ├ [10]: https://ubuntu.com/security/notices/USN-7374-1 
│                       │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2024-40635 
│                       │      ├ PublishedDate   : 2025-03-17T22:15:13.15Z 
│                       │      ╰ LastModifiedDate: 2025-05-04T22:15:31.84Z 
│                       ├ [1]  ╭ VulnerabilityID : CVE-2024-41110 
│                       │      ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                       │      ├ PkgName         : github.com/docker/docker 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincompa
│                       │      │                  │       tible 
│                       │      │                  ╰ UID : 18d926a57b74d388 
│                       │      ├ InstalledVersion: v27.0.3+incompatible 
│                       │      ├ FixedVersion    : 23.0.15, 26.1.5, 27.1.1, 25.0.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-41110 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : moby: Authz zero length regression 
│                       │      ├ Description     : Moby is an open-source project created by Docker for
│                       │      │                   software containerization. A security vulnerability has been
│                       │      │                    detected in certain versions of Docker Engine, which could
│                       │      │                   allow an attacker to bypass authorization plugins (AuthZ)
│                       │      │                   under specific circumstances. The base likelihood of this
│                       │      │                   being exploited is low.
│                       │      │                   
│                       │      │                   Using a specially-crafted API request, an Engine API client
│                       │      │                   could make the daemon forward the request or response to an
│                       │      │                   authorization plugin without the body. In certain
│                       │      │                   circumstances, the authorization plugin may allow a request
│                       │      │                   which it would have otherwise denied if the body had been
│                       │      │                   forwarded to it.
│                       │      │                   A security issue was discovered In 2018, where an attacker
│                       │      │                   could bypass AuthZ plugins using a specially crafted API
│                       │      │                   request. This could lead to unauthorized actions, including
│                       │      │                   privilege escalation. Although this issue was fixed in
│                       │      │                   Docker Engine v18.09.1 in January 2019, the fix was not
│                       │      │                   carried forward to later major versions, resulting in a
│                       │      │                   regression. Anyone who depends on authorization plugins that
│                       │      │                    introspect the request and/or response body to make access
│                       │      │                   control decisions is potentially impacted.
│                       │      │                   Docker EE v19.03.x and all versions of Mirantis Container
│                       │      │                   Runtime are not vulnerable.
│                       │      │                   docker-ce v27.1.1 containes patches to fix the
│                       │      │                   vulnerability. Patches have also been merged into the
│                       │      │                   master, 19.03, 20.0, 23.0, 24.0, 25.0, 26.0, and 26.1
│                       │      │                   release branches. If one is unable to upgrade immediately,
│                       │      │                   avoid using AuthZ plugins and/or restrict access to the
│                       │      │                   Docker API to trusted parties, following the principle of
│                       │      │                   least privilege. 
│                       │      ├ Severity        : CRITICAL 
│                       │      ├ CweIDs           ╭ [0]: CWE-187 
│                       │      │                  ├ [1]: CWE-444 
│                       │      │                  ╰ [2]: CWE-863 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 4 
│                       │      │                  ├ cbl-mariner: 4 
│                       │      │                  ├ ghsa       : 4 
│                       │      │                  ├ redhat     : 4 
│                       │      │                  ╰ ubuntu     : 3 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 10 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 9.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-41110 
│                       │      │                  ├ [1] : https://github.com/moby/moby 
│                       │      │                  ├ [2] : https://github.com/moby/moby/commit/411e817ddf710ff8e
│                       │      │                  │       08fa193da80cb78af708191 
│                       │      │                  ├ [3] : https://github.com/moby/moby/commit/42f40b1d6dd756234
│                       │      │                  │       2f832b9cd2adf9e668eeb76 
│                       │      │                  ├ [4] : https://github.com/moby/moby/commit/65cc597cea28cdc25
│                       │      │                  │       bea3b8a86384b4251872919 
│                       │      │                  ├ [5] : https://github.com/moby/moby/commit/852759a7df454cbf8
│                       │      │                  │       8db4e954c919becd48faa9b 
│                       │      │                  ├ [6] : https://github.com/moby/moby/commit/a31260625655cff9a
│                       │      │                  │       e226b51757915e275e304b0 
│                       │      │                  ├ [7] : https://github.com/moby/moby/commit/a79fabbfe84117696
│                       │      │                  │       a19671f4aa88b82d0f64fc1 
│                       │      │                  ├ [8] : https://github.com/moby/moby/commit/ae160b4edddb72ef4
│                       │      │                  │       bd71f66b975a1a1cc434f00 
│                       │      │                  ├ [9] : https://github.com/moby/moby/commit/ae2b3666c517c96cb
│                       │      │                  │       c2adf1af5591a6b00d4ec0f 
│                       │      │                  ├ [10]: https://github.com/moby/moby/commit/cc13f952511154a28
│                       │      │                  │       66bddbb7dddebfe9e83b801 
│                       │      │                  ├ [11]: https://github.com/moby/moby/commit/fc274cd2ff4cf3b48
│                       │      │                  │       c91697fb327dd1fb95588fb 
│                       │      │                  ├ [12]: https://github.com/moby/moby/security/advisories/GHSA
│                       │      │                  │       -v23v-6jw2-98fq 
│                       │      │                  ├ [13]: https://lists.debian.org/debian-lts-announce/2024/10/
│                       │      │                  │       msg00009.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-41110 
│                       │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240802-00
│                       │      │                  │       01/ 
│                       │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7161-1 
│                       │      │                  ├ [17]: https://ubuntu.com/security/notices/USN-7161-2 
│                       │      │                  ├ [18]: https://ubuntu.com/security/notices/USN-7161-3 
│                       │      │                  ├ [19]: https://www.cve.org/CVERecord?id=CVE-2024-41110 
│                       │      │                  ├ [20]: https://www.docker.com/blog/docker-security-advisory-
│                       │      │                  │       docker-engine-authz-plugin 
│                       │      │                  ╰ [21]: https://www.docker.com/blog/docker-security-advisory-
│                       │      │                          docker-engine-authz-plugin/ 
│                       │      ├ PublishedDate   : 2024-07-24T17:15:11.053Z 
│                       │      ╰ LastModifiedDate: 2024-11-21T09:32:15.16Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2024-45337 
│                       │      ├ PkgID           : golang.org/x/crypto@v0.24.0 
│                       │      ├ PkgName         : golang.org/x/crypto 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.24.0 
│                       │      │                  ╰ UID : 51665884b15027a5 
│                       │      ├ InstalledVersion: v0.24.0 
│                       │      ├ FixedVersion    : 0.31.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45337 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/crypto/ssh: Misuse of
│                       │      │                   ServerConfig.PublicKeyCallback may cause authorization
│                       │      │                   bypass in golang.org/x/crypto 
│                       │      ├ Description     : Applications and libraries which misuse
│                       │      │                   connection.serverAuthenticate (via callback field
│                       │      │                   ServerConfig.PublicKeyCallback) may be susceptible to an
│                       │      │                   authorization bypass. The documentation for
│                       │      │                   ServerConfig.PublicKeyCallback says that "A call to this
│                       │      │                   function does not guarantee that the key offered is in fact
│                       │      │                   used to authenticate." Specifically, the SSH protocol allows
│                       │      │                    clients to inquire about whether a public key is acceptable
│                       │      │                    before proving control of the corresponding private key.
│                       │      │                   PublicKeyCallback may be called with multiple keys, and the
│                       │      │                   order in which the keys were provided cannot be used to
│                       │      │                   infer which key the client successfully authenticated with,
│                       │      │                   if any. Some applications, which store the key(s) passed to
│                       │      │                   PublicKeyCallback (or derived information) and make security
│                       │      │                    relevant determinations based on it once the connection is
│                       │      │                   established, may make incorrect assumptions. For example, an
│                       │      │                    attacker may send public keys A and B, and then
│                       │      │                   authenticate with A. PublicKeyCallback would be called only
│                       │      │                   twice, first with A and then with B. A vulnerable
│                       │      │                   application may then make authorization decisions based on
│                       │      │                   key B for which the attacker does not actually control the
│                       │      │                   private key. Since this API is widely misused, as a partial
│                       │      │                   mitigation golang.org/x/cry...@v0.31.0 enforces the property
│                       │      │                    that, when successfully authenticating via public key, the
│                       │      │                   last key passed to ServerConfig.PublicKeyCallback will be
│                       │      │                   the key used to authenticate the connection.
│                       │      │                   PublicKeyCallback will now be called multiple times with the
│                       │      │                    same key, if necessary. Note that the client may still not
│                       │      │                   control the last key passed to PublicKeyCallback if the
│                       │      │                   connection is then authenticated with a different method,
│                       │      │                   such as PasswordCallback, KeyboardInteractiveCallback, or
│                       │      │                   NoClientAuth. Users should be using the Extensions field of
│                       │      │                   the Permissions return value from the various authentication
│                       │      │                    callbacks to record data associated with the authentication
│                       │      │                    attempt instead of referencing external state. Once the
│                       │      │                   connection is established the state corresponding to the
│                       │      │                   successful authentication attempt can be retrieved via the
│                       │      │                   ServerConn.Permissions field. Note that some third-party
│                       │      │                   libraries misuse the Permissions type by sharing it across
│                       │      │                   authentication attempts; users of third-party libraries
│                       │      │                   should refer to the relevant projects for guidance. 
│                       │      ├ Severity        : CRITICAL 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 4 
│                       │      │                  ├ cbl-mariner: 4 
│                       │      │                  ├ ghsa       : 4 
│                       │      │                  ╰ redhat     : 3 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 9.1 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 8.2 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2024/12/11/2 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-45337 
│                       │      │                  ├ [2] : https://github.com/golang/crypto 
│                       │      │                  ├ [3] : https://github.com/golang/crypto/commit/b4f1988a35dee
│                       │      │                  │       11ec3e05d6bf3e90b695fbd8909 
│                       │      │                  ├ [4] : https://go.dev/cl/635315 
│                       │      │                  ├ [5] : https://go.dev/issue/70779 
│                       │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/-nPEi39
│                       │      │                  │       gI4Q/m/cGVPJCqdAQAJ 
│                       │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2024-45337 
│                       │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2024-3321 
│                       │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250131-0007 
│                       │      │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250131-00
│                       │      │                  │       07/ 
│                       │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2024-45337 
│                       │      ├ PublishedDate   : 2024-12-12T02:02:07.97Z 
│                       │      ╰ LastModifiedDate: 2025-02-18T21:15:22.187Z 
│                       ├ [3]  ╭ VulnerabilityID : CVE-2025-22869 
│                       │      ├ PkgID           : golang.org/x/crypto@v0.24.0 
│                       │      ├ PkgName         : golang.org/x/crypto 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.24.0 
│                       │      │                  ╰ UID : 51665884b15027a5 
│                       │      ├ InstalledVersion: v0.24.0 
│                       │      ├ FixedVersion    : 0.35.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22869 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/crypto/ssh: Denial of Service in the Key
│                       │      │                   Exchange of golang.org/x/crypto/ssh 
│                       │      ├ Description     : SSH servers which implement file transfer protocols are
│                       │      │                   vulnerable to a denial of service attack from clients which
│                       │      │                   complete the key exchange slowly, or not at all, causing
│                       │      │                   pending content to be read into memory, but never
│                       │      │                   transmitted. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ ghsa       : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ╰ redhat     : 3 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3833 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22869 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2348367 
│                       │      │                  ├ [3] : https://errata.almalinux.org/9/ALSA-2025-3833.html 
│                       │      │                  ├ [4] : https://github.com/golang/crypto 
│                       │      │                  ├ [5] : https://github.com/golang/crypto/commit/7292932d45d55
│                       │      │                  │       c7199324ab0027cc86e8198aa22 
│                       │      │                  ├ [6] : https://go-review.googlesource.com/c/crypto/+/652135 
│                       │      │                  ├ [7] : https://go.dev/cl/652135 
│                       │      │                  ├ [8] : https://go.dev/issue/71931 
│                       │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-22869.html 
│                       │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-7484.html 
│                       │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-22869 
│                       │      │                  ├ [12]: https://pkg.go.dev/vuln/GO-2025-3487 
│                       │      │                  ├ [13]: https://security.netapp.com/advisory/ntap-20250411-0010 
│                       │      │                  ├ [14]: https://security.netapp.com/advisory/ntap-20250411-00
│                       │      │                  │       10/ 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2025-22869 
│                       │      ├ PublishedDate   : 2025-02-26T08:14:24.997Z 
│                       │      ╰ LastModifiedDate: 2025-05-01T19:28:20.74Z 
│                       ├ [4]  ╭ VulnerabilityID : CVE-2025-22870 
│                       │      ├ PkgID           : golang.org/x/net@v0.26.0 
│                       │      ├ PkgName         : golang.org/x/net 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.26.0 
│                       │      │                  ╰ UID : d33d648a9a9d02d2 
│                       │      ├ InstalledVersion: v0.26.0 
│                       │      ├ FixedVersion    : 0.36.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/net/proxy: golang.org/x/net/http/httpproxy:
│                       │      │                   HTTP Proxy bypass using IPv6 Zone IDs in golang.org/x/net 
│                       │      ├ Description     : Matching of hosts against proxy patterns can improperly
│                       │      │                   treat an IPv6 zone ID as a hostname component. For example,
│                       │      │                   when the NO_PROXY environment variable is set to
│                       │      │                   "*.example.com", a request to "[::1%25.example.com]:80` will
│                       │      │                    incorrectly match and not be proxied. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-115 
│                       │      ├ VendorSeverity   ╭ amazon     : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ ghsa       : 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 4.4 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.4 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/07/2 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22870 
│                       │      │                  ├ [2] : https://github.com/golang/go/issues/71984 
│                       │      │                  ├ [3] : https://go-review.googlesource.com/q/project:net 
│                       │      │                  ├ [4] : https://go.dev/cl/654697 
│                       │      │                  ├ [5] : https://go.dev/issue/71984 
│                       │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/4t3lzH3
│                       │      │                  │       I0eI/m/b42ImqrBAQAJ 
│                       │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                       │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2025-3503 
│                       │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250509-0007 
│                       │      │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250509-00
│                       │      │                  │       07/ 
│                       │      │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                       │      ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                       │      ╰ LastModifiedDate: 2025-05-09T20:15:38.727Z 
│                       ├ [5]  ╭ VulnerabilityID : CVE-2025-22872 
│                       │      ├ PkgID           : golang.org/x/net@v0.26.0 
│                       │      ├ PkgName         : golang.org/x/net 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.26.0 
│                       │      │                  ╰ UID : d33d648a9a9d02d2 
│                       │      ├ InstalledVersion: v0.26.0 
│                       │      ├ FixedVersion    : 0.38.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22872 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/net/html: Incorrect Neutralization of Input
│                       │      │                   During Web Page Generation in x/net in golang.org/x/net 
│                       │      ├ Description     : The tokenizer incorrectly interprets tags with unquoted
│                       │      │                   attribute values that end with a solidus character (/) as
│                       │      │                   self-closing. When directly using Tokenizer, this can result
│                       │      │                    in such tags incorrectly being marked as self-closing, and
│                       │      │                   when using the Parse functions, this can result in content
│                       │      │                   following such tags as being placed in the wrong scope
│                       │      │                   during DOM construction, but only when tags are in foreign
│                       │      │                   content (e.g. <math>, <svg>, etc contexts). 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ cbl-mariner: 2 
│                       │      │                  ├ ghsa       : 2 
│                       │      │                  ╰ redhat     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22872 
│                       │      │                  ├ [1]: https://github.com/advisories/GHSA-vvgc-356p-c3xw 
│                       │      │                  ├ [2]: https://go.dev/cl/662715 
│                       │      │                  ├ [3]: https://go.dev/issue/73070 
│                       │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/ezSKR9vq
│                       │      │                  │      bqA 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22872 
│                       │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-3595 
│                       │      │                  ├ [7]: https://security.netapp.com/advisory/ntap-20250516-0007 
│                       │      │                  ├ [8]: https://security.netapp.com/advisory/ntap-20250516-0007/ 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-22872 
│                       │      ├ PublishedDate   : 2025-04-16T18:16:04.183Z 
│                       │      ╰ LastModifiedDate: 2025-05-16T23:15:19.707Z 
│                       ├ [6]  ╭ VulnerabilityID : CVE-2025-22868 
│                       │      ├ PkgID           : golang.org/x/oauth2@v0.20.0 
│                       │      ├ PkgName         : golang.org/x/oauth2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/oauth2@v0.20.0 
│                       │      │                  ╰ UID : c01a4947e7e4c9b2 
│                       │      ├ InstalledVersion: v0.20.0 
│                       │      ├ FixedVersion    : 0.27.0 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22868 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : golang.org/x/oauth2/jws: Unexpected memory consumption
│                       │      │                   during token parsing in golang.org/x/oauth2/jws 
│                       │      ├ Description     : An attacker can pass a malicious malformed token which
│                       │      │                   causes unexpected memory to be consumed during parsing. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-1286 
│                       │      ├ VendorSeverity   ╭ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ ghsa       : 3 
│                       │      │                  ╰ redhat     : 3 
│                       │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-22868 
│                       │      │                  ├ [1]: https://go.dev/cl/652155 
│                       │      │                  ├ [2]: https://go.dev/issue/71490 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-22868 
│                       │      │                  ├ [4]: https://pkg.go.dev/vuln/GO-2025-3488 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-22868 
│                       │      ├ PublishedDate   : 2025-02-26T08:14:24.897Z 
│                       │      ╰ LastModifiedDate: 2025-05-01T19:27:10.43Z 
│                       ├ [7]  ╭ VulnerabilityID : GHSA-xr7q-jx4m-x55m 
│                       │      ├ PkgID           : google.golang.org/grpc@v1.64.0 
│                       │      ├ PkgName         : google.golang.org/grpc 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.64.0 
│                       │      │                  ╰ UID : 5b0d1d1c015eeeb3 
│                       │      ├ InstalledVersion: v1.64.0 
│                       │      ├ FixedVersion    : 1.64.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ SeveritySource  : ghsa 
│                       │      ├ PrimaryURL      : https://github.com/advisories/GHSA-xr7q-jx4m-x55m 
│                       │      ├ DataSource       ╭ ID  : ghsa 
│                       │      │                  ├ Name: GitHub Security Advisory Go 
│                       │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                       │      │                          cosystem%3Ago 
│                       │      ├ Title           : Private tokens could appear in logs if context containing
│                       │      │                   gRPC metadata is logged in github.com/grpc/grpc-go 
│                       │      ├ Description     : ### Impact
│                       │      │                   This issue represents a potential PII concern.  If
│                       │      │                   applications were printing or logging a context containing
│                       │      │                   gRPC metadata, the affected versions will contain all the
│                       │      │                   metadata, which may include private information.
│                       │      │                   
│                       │      │                   ### Patches
│                       │      │                   The issue first appeared in 1.64.0 and is patched in 1.64.1
│                       │      │                   and 1.65.0
│                       │      │                   ### Workarounds
│                       │      │                   If using an affected version and upgrading is not possible,
│                       │      │                   ensuring you do not log or print contexts will avoid the
│                       │      │                   problem. 
│                       │      ├ Severity        : LOW 
│                       │      ├ VendorSeverity   ─ ghsa: 1 
│                       │      ├ References       ╭ [0]: https://github.com/grpc/grpc-go 
│                       │      │                  ├ [1]: https://github.com/grpc/grpc-go/commit/ab292411ddc0f3b
│                       │      │                  │      7a7786754d1fe05264c3021eb 
│                       │      │                  ╰ [2]: https://github.com/grpc/grpc-go/security/advisories/GH
│                       │      │                         SA-xr7q-jx4m-x55m 
│                       │      ├ PublishedDate   : 2024-07-05T20:07:01Z 
│                       │      ╰ LastModifiedDate: 2024-07-09T21:38:29Z 
│                       ├ [8]  ╭ VulnerabilityID : CVE-2025-0913 
│                       │      ├ PkgID           : stdlib@v1.22.12 
│                       │      ├ PkgName         : stdlib 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                       │      │                  ╰ UID : 156a2e832bd2e3cc 
│                       │      ├ InstalledVersion: v1.22.12 
│                       │      ├ FixedVersion    : 1.23.10, 1.24.4 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0913 
│                       │      ├ DataSource       ╭ ID  : govulndb 
│                       │      │                  ├ Name: The Go Vulnerability Database 
│                       │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │      ├ Title           : Inconsistent handling of O_CREATE|O_EXCL on Unix and Windows
│                       │      │                    in os in syscall 
│                       │      ├ Description     : os.OpenFile(path, os.O_CREATE|O_EXCL) behaved differently on
│                       │      │                    Unix and Windows systems when the target path was a
│                       │      │                   dangling symlink. On Unix systems, OpenFile with O_CREATE
│                       │      │                   and O_EXCL flags never follows symlinks. On Windows, when
│                       │      │                   the target path was a symlink to a nonexistent location,
│                       │      │                   OpenFile would create a file in that location. OpenFile now
│                       │      │                   always returns an error when the O_CREATE and O_EXCL flags
│                       │      │                   are both set and the target path is a symlink. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ bitnami: 2 
│                       │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │      │                            │           H/A:N 
│                       │      │                            ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://go.dev/cl/672396 
│                       │      │                  ├ [1]: https://go.dev/issue/73702 
│                       │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/ufZ8WpEs
│                       │      │                  │      A3A 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0913 
│                       │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2025-3750 
│                       │      ├ PublishedDate   : 2025-06-11T18:15:24.627Z 
│                       │      ╰ LastModifiedDate: 2025-06-12T16:06:20.18Z 
│                       ├ [9]  ╭ VulnerabilityID : CVE-2025-22871 
│                       │      ├ PkgID           : stdlib@v1.22.12 
│                       │      ├ PkgName         : stdlib 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                       │      │                  ╰ UID : 156a2e832bd2e3cc 
│                       │      ├ InstalledVersion: v1.22.12 
│                       │      ├ FixedVersion    : 1.23.8, 1.24.2 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                       │      │                  │         b905ad543ad918ad504c 
│                       │      │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                       │      │                            a5507fce977ad8d74ed5 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                       │      ├ DataSource       ╭ ID  : govulndb 
│                       │      │                  ├ Name: The Go Vulnerability Database 
│                       │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                       │      ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                       │      │                   chunked data in net/http 
│                       │      ├ Description     : The net/http package improperly accepts a bare LF as a line
│                       │      │                   terminator in chunked data chunk-size lines. This can permit
│                       │      │                    request smuggling if a net/http server is used in
│                       │      │                   conjunction with a server that incorrectly accepts a bare LF
│                       │      │                    as part of a chunk-ext. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ bitnami    : 4 
│                       │      │                  ├ cbl-mariner: 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ╰ redhat     : 2 
│                       │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                       │      │                  │         │           H/A:N 
│                       │      │                  │         ╰ V3Score : 9.1 
│                       │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:
│                       │      │                            │           L/A:N 
│                       │      │                            ╰ V3Score : 5.4 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/04/4 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:9635 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-22871 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2358493 
│                       │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-9635.html 
│                       │      │                  ├ [5] : https://go.dev/cl/652998 
│                       │      │                  ├ [6] : https://go.dev/issue/71988 
│                       │      │                  ├ [7] : https://groups.google.com/g/golang-announce/c/Y2uBTVK
│                       │      │                  │       jBQk 
│                       │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2025-22871.html 
│                       │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-9845.html 
│                       │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                       │      │                  ├ [11]: https://pkg.go.dev/vuln/GO-2025-3563 
│                       │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                       │      ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                       │      ╰ LastModifiedDate: 2025-04-18T15:15:57.923Z 
│                       ╰ [10] ╭ VulnerabilityID : CVE-2025-4673 
│                              ├ PkgID           : stdlib@v1.22.12 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                              │                  ╰ UID : 156a2e832bd2e3cc 
│                              ├ InstalledVersion: v1.22.12 
│                              ├ FixedVersion    : 1.23.10, 1.24.4 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:1e46d2734c533db123d693189d46049643b92917cd76
│                              │                  │         b905ad543ad918ad504c 
│                              │                  ╰ DiffID: sha256:09ba9222196b3218ef2d94841fd44fd4753f6e8bb4c6
│                              │                            a5507fce977ad8d74ed5 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4673 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Title           : net/http: Sensitive headers not cleared on cross-origin
│                              │                   redirect in net/http 
│                              ├ Description     : Proxy-Authorization and Proxy-Authenticate headers persisted
│                              │                    on cross-origin redirects potentially leaking sensitive
│                              │                   information. 
│                              ├ Severity        : MEDIUM 
│                              ├ VendorSeverity   ╭ alma       : 2 
│                              │                  ├ amazon     : 2 
│                              │                  ├ bitnami    : 2 
│                              │                  ├ cbl-mariner: 2 
│                              │                  ├ oracle-oval: 2 
│                              │                  ├ redhat     : 2 
│                              │                  ╰ ubuntu     : 2 
│                              ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:
│                              │                  │         │           N/A:N 
│                              │                  │         ╰ V3Score : 6.8 
│                              │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:
│                              │                            │           N/A:N 
│                              │                            ╰ V3Score : 6.8 
│                              ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:10676 
│                              │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4673 
│                              │                  ├ [2] : https://bugzilla.redhat.com/2373305 
│                              │                  ├ [3] : https://errata.almalinux.org/9/ALSA-2025-10676.html 
│                              │                  ├ [4] : https://go.dev/cl/679257 
│                              │                  ├ [5] : https://go.dev/issue/73816 
│                              │                  ├ [6] : https://groups.google.com/g/golang-announce/c/ufZ8WpE
│                              │                  │       sA3A 
│                              │                  ├ [7] : https://linux.oracle.com/cve/CVE-2025-4673.html 
│                              │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2025-10677.html 
│                              │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2025-4673 
│                              │                  ├ [10]: https://pkg.go.dev/vuln/GO-2025-3751 
│                              │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                              │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-4673 
│                              ├ PublishedDate   : 2025-06-11T17:15:42.993Z 
│                              ╰ LastModifiedDate: 2025-06-12T16:06:20.18Z 
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
