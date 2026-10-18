# Immutable starting references

Captured 2026-10-18 from Docker Hub; source revision
`ad705d18d4cdd82c09e3adc966b9d863199d64b7`.
Index digests are also recorded in `versions.yaml`.

| Reference | amd64 manifest | arm64 manifest |
|---|---|---|
| Published build | `sha256:57653929b3a4b8227cb135878446632da671f4d4d0a8017364ba6e7e4440e1a8` | `sha256:c9e9f5ef79bf4d4e89231746cfc78ef15e2c97518638330c49d13343f5e6f3ef` |
| Published latest | `sha256:7ecdf47d328680369962b7f79b69f7469d4f4fa1c3dcf47b4b1f70867408655d` | `sha256:485ae490079fcef766029f878e37ecd7762f6e720f699ba57fd3f6307ed30a99` |
| Published build-full | `sha256:3873f3cfd86ca0339492dfaff1bbf08b645b38d776e431e795bbe39ca2378a8f` | `sha256:db0fc72a4a3a2ec35d584d06b8362157feb89971b28bd85fd19cc762fb4339a3` |
| Debian trixie-slim | `sha256:918311b7b6c4c6f68b232ba516584925f6c78ad82b6fd534b98979df6438e483` | `sha256:a2ca65377c251208de42e1a2722cb949211236c161b634f6f3663754e2d06850` |
| Ubuntu rolling control | `sha256:1b798ba0017f24244ca02af25e3cfb1160db35e270e7b3beef708910b468bd92` | `sha256:4219c91ebf0378e2cb78fdb441b1aa0787edf0438f721d28ba2445f9d2585e23` |

The local published-build arm64 image ID is
`sha256:0c1c07238f6e9e355e8b954e99a2e2cd04922436f51b5512d51b97fc2313bcf4`.
Its inventory reports Ubuntu 26.04.1, OpenAF 20261015, Temurin 21.0.12.1,
Docker 29.9.1, k3d 5.9.0, kubectl 1.37.1, Helm 4.3.1, Compose 5.6.0.
The Debian candidate deliberately aligns kubectl to K3s 1.35.5.

Legacy Handlebars flag characterization using that image's OpenAF:
empty string is false, string `false` is true, and string `0` is true.
`status.js` separately checked presence, explaining inconsistent empty flags.
The new parser deliberately normalizes these values.

Raw manifests, inventories and logs are kept under `.evidence/` (ignored to avoid
committing large archives or sensitive runtime logs). Reproduce registry reads
with `bash scripts/capture-references.sh NEW_DIRECTORY`.

The local legacy full-image ID
`sha256:7d693e1eec37dff5f0c890970d279d57deef746bcf837dc32e05c285f7a089af`
has no `GITHUB_TOKEN` variable in its image configuration. Its repository digest
differs from today's published full-image index. This limited check is neither
a layer audit nor proof about other published images.

The **current published** full-image arm64 manifest listed above was checked
separately through `skopeo inspect --config --override-os linux --override-arch
arm64`. Its configuration contains a nonempty `GITHUB_TOKEN`. Only presence
booleans were retained; the value was not displayed. Treat that artifact as
credential-exposed pending credential-owner review. Full-image publication is
withheld. No token revocation, remote artifact deletion, or release change was
performed as part of this local implementation.
