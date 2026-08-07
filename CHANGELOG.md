# Changelog

## [0.2.2](https://github.com/autorender/autorender-ruby/compare/v0.2.1...v0.2.2) (2026-07-12)


### Chores

* rename autorenderhq -&gt; autorender references (GitHub org rename) ([#11](https://github.com/autorender/autorender-ruby/issues/11)) ([36a12a6](https://github.com/autorender/autorender-ruby/commit/36a12a61bf4824ce266a5294911f74cd3075da6a))

## [0.2.1](https://github.com/autorender/autorender-ruby/compare/v0.2.0...v0.2.1) (2026-06-29)


### Chores

* remove Stainless attribution from README and SECURITY ([32ce08b](https://github.com/autorender/autorender-ruby/commit/32ce08b5603dd5e667b5eccccddf94fae9851e84))
* strip internal workflows; preserve production-managed files ([0a1a663](https://github.com/autorender/autorender-ruby/commit/0a1a663a70d3ac323769ca574a3e86d1c3cbbed4))

## [0.2.0](https://github.com/autorender/autorender-ruby/compare/v0.1.0...v0.2.0) (2026-06-12)


### Features

* **java:** enable maven publishing with release-please ([1786303](https://github.com/autorender/autorender-ruby/commit/1786303cbb54cff6672d54e610b9ade78c7c5854))
* **ruby:** enable rubygems publishing with release-please ([bc8804f](https://github.com/autorender/autorender-ruby/commit/bc8804f6dcb6942d92c55b45da53010aa0f7655a))


### Bug Fixes

* preserve production-managed files in release branch ([37f9bd5](https://github.com/autorender/autorender-ruby/commit/37f9bd51d07018eff16ef491dc3fc4f747fc07ec))
* strip internal workflows from production release branch ([cd8fd3f](https://github.com/autorender/autorender-ruby/commit/cd8fd3f3dce0f1e02440ae92d9f5f6f5bd9fa087))
* update promote workflow and add back-sync from production ([8604ca6](https://github.com/autorender/autorender-ruby/commit/8604ca61b2b63aa688a5387fc2dd0b741996249d))
* use blob comparison in overlay; add language-specific version files ([383f0ae](https://github.com/autorender/autorender-ruby/commit/383f0ae3e39903225c4f22aecffb72b1745dba23))
* use persist-credentials: false in sync workflow ([22a5b7c](https://github.com/autorender/autorender-ruby/commit/22a5b7cd5104fa7addc8d8da5408a8aa53b6d542))


### Chores

* preserve production-managed files ([04101d4](https://github.com/autorender/autorender-ruby/commit/04101d4aad8a09a5e00a383c35f9b7fb1bba3481))
* remove staging-only workflows from production ([446e9ad](https://github.com/autorender/autorender-ruby/commit/446e9ad2ca81b41c7d18f62bb341c2303c0906a5))
* remove staging-only workflows from production ([79686f1](https://github.com/autorender/autorender-ruby/commit/79686f15b7c6c5f130bc05e00e8fe595c4877236))
* strip internal workflows; preserve production-managed files ([c2cb80d](https://github.com/autorender/autorender-ruby/commit/c2cb80de0aab1a578c5798c3fd99efc8bf8f4b77))


### Documentation

* add auto-generated notice to CONTRIBUTING.md ([802ed52](https://github.com/autorender/autorender-ruby/commit/802ed521f5609bfedbc004c755835a97b060eff0))

## [0.1.0](https://github.com/autorender/autorender-ruby/compare/v0.0.1...v0.1.0) (2026-05-25)


### Features

* add stlc generate workflow and setup-stlc action ([33702ec](https://github.com/autorender/autorender-ruby/commit/33702eca050ca28e7f94e57cfec04b73f23c9df5))
* add test CI job ([a8fbe66](https://github.com/autorender/autorender-ruby/commit/a8fbe662d965ca5f29d9e3c6c22d566f4c2a8fc1))
* **api:** api update ([5e0fc16](https://github.com/autorender/autorender-ruby/commit/5e0fc16a5851c3352fbde1e93e7dfe113c01174d))
* **api:** api update ([6dc9820](https://github.com/autorender/autorender-ruby/commit/6dc98208876904a00fe6060c77bf37444402772b))
* **api:** api update ([dd609a7](https://github.com/autorender/autorender-ruby/commit/dd609a73898016e39ade678854a3eeeaa2b48238))
* **api:** api update ([4cc94ad](https://github.com/autorender/autorender-ruby/commit/4cc94adc26ad538f01d79808130029bd744a2ee3))
* **api:** api update ([c8a41c7](https://github.com/autorender/autorender-ruby/commit/c8a41c7d7564bc736de43fa4c791608348bdb0f7))
* **api:** api update ([0e228df](https://github.com/autorender/autorender-ruby/commit/0e228df68c6f36ce4daa497df77bbb053c2244f7))
* **api:** api update ([4367475](https://github.com/autorender/autorender-ruby/commit/4367475283baab31f04e1617ea462ae8784758d1))
* **api:** api update ([a9470bb](https://github.com/autorender/autorender-ruby/commit/a9470bb8ea34fd597ba981dd1aedbceda9bd0210))
* **api:** api update ([df3c1b1](https://github.com/autorender/autorender-ruby/commit/df3c1b1561943ccc9de1b51abe60adabcd576aa8))
* **api:** api update ([fb07d3e](https://github.com/autorender/autorender-ruby/commit/fb07d3eff80815340117fca67aae513e3a91b987))
* initial stlc build ([8972f10](https://github.com/autorender/autorender-ruby/commit/8972f10cca09ae385f9757795c55e658923c949b))
* support setting headers via env ([3707a7d](https://github.com/autorender/autorender-ruby/commit/3707a7d00abf789957185ad54eeddca000b3e398))


### Bug Fixes

* **client:** elide content type header on requests without body ([553ad30](https://github.com/autorender/autorender-ruby/commit/553ad304fe2053211d95d0cefce4ed9c922f1d92))
* patch multipart buffer replay, bodyless DELETE content-type, and test adapter ([eb66723](https://github.com/autorender/autorender-ruby/commit/eb667233b4b537e158d25f357bf91adee5304675))
* **python:** rename pagination field has_next_page -&gt; has_next to fix pyright lint ([d49e480](https://github.com/autorender/autorender-ruby/commit/d49e480c617a82896affa131551605b80ab84004))
* restore content-type stripping and eager multipart buffering ([a67c6fb](https://github.com/autorender/autorender-ruby/commit/a67c6fb5b4e7efc52152d6a8d9b642e198ab406b))
* restore content-type stripping and eager multipart buffering ([5ae6d69](https://github.com/autorender/autorender-ruby/commit/5ae6d69493de87916ed23ddaf7753fae116a4aa8))
* restore content-type stripping and eager multipart buffering for retries ([8fc3542](https://github.com/autorender/autorender-ruby/commit/8fc3542cbd8a1a5df00057846b890dbb2f1fde24))
* restore content-type stripping and eager multipart buffering for retries ([c1ea3dd](https://github.com/autorender/autorender-ruby/commit/c1ea3dd618ab041d7753b6d7ec0b99a5f94c349f))
* restore content-type stripping and eager multipart buffering for retries ([16b199f](https://github.com/autorender/autorender-ruby/commit/16b199ff3f5541ace9bc55bee9724db1c398c153))
* **test:** pass body as String to ReadIOAdapter so CGI can multi-read ([09e3684](https://github.com/autorender/autorender-ruby/commit/09e3684b6a6e9a921f4bf2ea2927d360622b5189))
* update FakeCGI test helper to handle buffered String body ([b0bd179](https://github.com/autorender/autorender-ruby/commit/b0bd179fb8ac25c6953fc75db832fe2ab734dd16))


### Chores

* **internal:** more robust bootstrap script ([127a1d1](https://github.com/autorender/autorender-ruby/commit/127a1d1ae9215aff1f662e563de5dc48d269115e))
* **tests:** bump steady to v0.22.1 ([9ddf2e0](https://github.com/autorender/autorender-ruby/commit/9ddf2e0d1b60a4dd82f50d6c6c74e6e901c01e11))
