# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2025-11-08

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.3.3`](#flutter_releaser---v033)
 - [`flutter_releaser_cli` - `v0.0.4`](#flutter_releaser_cli---v004)
 - [`flutter_releaser_flutter` - `v0.1.2+1`](#flutter_releaser_flutter---v0121)
 - [`flutter_releaser_dio` - `v0.1.1+2`](#flutter_releaser_dio---v0112)
 - [`flutter_releaser_hooks` - `v0.1.1+2`](#flutter_releaser_hooks---v0112)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_dio` - `v0.1.1+2`
 - `flutter_releaser_hooks` - `v0.1.1+2`

---

#### `flutter_releaser` - `v0.3.3`

 - **REFACTOR**: rename extract method to prepare for update.
 - **FIX**: use api request headers provider to send request to server.
 - **FIX**: upload.
 - **FIX**: remove http package for now.
 - **FIX**: http response.
 - **FIX**: convert to json.
 - **FEAT**: implement upload command for cli.
 - **FEAT**: add archive as well.

#### `flutter_releaser_cli` - `v0.0.4`

 - **FIX**: delete recursively.
 - **FIX**: upload.
 - **FEAT**: implement upload command for cli.

#### `flutter_releaser_flutter` - `v0.1.2+1`

 - **REFACTOR**: rename extract method to prepare for update.


## 2025-10-31

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.3.2`](#flutter_releaser---v032)
 - [`flutter_releaser_cli` - `v0.0.3`](#flutter_releaser_cli---v003)
 - [`flutter_releaser_flutter` - `v0.1.2`](#flutter_releaser_flutter---v012)
 - [`flutter_releaser_http` - `v0.1.1+1`](#flutter_releaser_http---v0111)
 - [`flutter_releaser_dio` - `v0.1.1+1`](#flutter_releaser_dio---v0111)
 - [`flutter_releaser_hooks` - `v0.1.1+1`](#flutter_releaser_hooks---v0111)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_http` - `v0.1.1+1`
 - `flutter_releaser_dio` - `v0.1.1+1`
 - `flutter_releaser_hooks` - `v0.1.1+1`

---

#### `flutter_releaser` - `v0.3.2`

 - **FEAT**: start wokring on upload command.

#### `flutter_releaser_cli` - `v0.0.3`

 - **FIX**: str interpolation.
 - **FEAT**: start wokring on upload command.

#### `flutter_releaser_flutter` - `v0.1.2`

 - **FEAT**: start wokring on upload command.


## 2025-10-31

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.3.1`](#flutter_releaser---v031)
 - [`flutter_releaser_cli` - `v0.0.2`](#flutter_releaser_cli---v002)
 - [`flutter_releaser_dio` - `v0.1.1`](#flutter_releaser_dio---v011)
 - [`flutter_releaser_flutter` - `v0.1.1`](#flutter_releaser_flutter---v011)
 - [`flutter_releaser_hooks` - `v0.1.1`](#flutter_releaser_hooks---v011)
 - [`flutter_releaser_http` - `v0.1.1`](#flutter_releaser_http---v011)

---

#### `flutter_releaser` - `v0.3.1`

 - **REFACTOR**: rename/move plugin into flutter_releaser_flutter. ([#8](https://github.com/Infumia/flutter_releaser//issues/8)).
 - **FEAT**: separate the bin folder into cli application.

#### `flutter_releaser_cli` - `v0.0.2`

 - **FEAT**: separate the bin folder into cli application.

#### `flutter_releaser_dio` - `v0.1.1`

 - **FEAT**: separate the bin folder into cli application.

#### `flutter_releaser_flutter` - `v0.1.1`

 - **REFACTOR**: rename/move plugin into flutter_releaser_flutter. ([#8](https://github.com/Infumia/flutter_releaser//issues/8)).
 - **FEAT**: separate the bin folder into cli application.

#### `flutter_releaser_hooks` - `v0.1.1`

 - **FEAT**: separate the bin folder into cli application.

#### `flutter_releaser_http` - `v0.1.1`

 - **FEAT**: separate the bin folder into cli application.


## 2025-10-30

### Changes

---

Packages with breaking changes:

 - [`flutter_releaser` - `v0.3.0`](#flutter_releaser---v030)
 - [`flutter_releaser_flutter` - `v0.1.0`](#flutter_releaser_flutter---v010)
 - [`flutter_releaser_hooks` - `v0.1.0`](#flutter_releaser_hooks---v010)
 - [`flutter_releaser_plugin` - `v0.1.0`](#flutter_releaser_plugin---v010)

Packages with other changes:

 - [`flutter_releaser_http` - `v0.1.0+3`](#flutter_releaser_http---v0103)
 - [`flutter_releaser_dio` - `v0.1.0+3`](#flutter_releaser_dio---v0103)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_http` - `v0.1.0+3`
 - `flutter_releaser_dio` - `v0.1.0+3`

---

#### `flutter_releaser` - `v0.3.0`

 - **FEAT**: move to flutter_releaser_cli.
 - **FEAT**: platforms.
 - **BREAKING** **FEAT**: create flutter_releaser_flutter  and plugin/flutter_releaser_plugin.

#### `flutter_releaser_flutter` - `v0.1.0`

 - **BREAKING** **FEAT**: create flutter_releaser_flutter  and plugin/flutter_releaser_plugin.

#### `flutter_releaser_hooks` - `v0.1.0`

 - **BREAKING** **FEAT**: create flutter_releaser_flutter  and plugin/flutter_releaser_plugin.

#### `flutter_releaser_plugin` - `v0.1.0`

 - **BREAKING** **FEAT**: create flutter_releaser_flutter  and plugin/flutter_releaser_plugin.


## 2025-10-30

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.2.0+1`](#flutter_releaser---v0201)
 - [`flutter_releaser_hooks` - `v0.0.3+5`](#flutter_releaser_hooks---v0035)
 - [`flutter_releaser_http` - `v0.1.0+2`](#flutter_releaser_http---v0102)
 - [`flutter_releaser_dio` - `v0.1.0+2`](#flutter_releaser_dio---v0102)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_hooks` - `v0.0.3+5`
 - `flutter_releaser_http` - `v0.1.0+2`
 - `flutter_releaser_dio` - `v0.1.0+2`

---

#### `flutter_releaser` - `v0.2.0+1`

 - **FIX**: remove unused variable.


## 2025-10-30

### Changes

---

Packages with breaking changes:

 - [`flutter_releaser` - `v0.2.0`](#flutter_releaser---v020)

Packages with other changes:

 - [`flutter_releaser_hooks` - `v0.0.3+4`](#flutter_releaser_hooks---v0034)
 - [`flutter_releaser_http` - `v0.1.0+1`](#flutter_releaser_http---v0101)
 - [`flutter_releaser_dio` - `v0.1.0+1`](#flutter_releaser_dio---v0101)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_hooks` - `v0.0.3+4`
 - `flutter_releaser_http` - `v0.1.0+1`
 - `flutter_releaser_dio` - `v0.1.0+1`

---

#### `flutter_releaser` - `v0.2.0`

 - **REFACTOR**: rename platform to targetplatform.
 - **FIX**: add listener to upload progress notifier as well.
 - **FIX**: macos plugin.
 - **FIX**: give archive path.
 - **FEAT**: add flutter_releaser:build cli.
 - **FEAT**: add pubspec parser for the cli.
 - **FEAT**: upload with new parameters.
 - **FEAT**: implement upload system.
 - **FEAT**: const.
 - **FEAT**: abstraction layer for http requests. ([#2](https://github.com/Infumia/flutter_releaser//issues/2)).
 - **FEAT**: add update function.
 - **FEAT**: initial version. ([#1](https://github.com/Infumia/flutter_releaser//issues/1)).
 - **FEAT**: test.
 - **BREAKING** **FEAT**: start working on upload system.
 - **BREAKING** **CHANGE**: implementing the new api specifications. ([#3](https://github.com/Infumia/flutter_releaser//issues/3)).


## 2025-10-29

### Changes

---

Packages with breaking changes:

 - [`flutter_releaser` - `v0.1.0`](#flutter_releaser---v010)
 - [`flutter_releaser_dio` - `v0.1.0`](#flutter_releaser_dio---v010)
 - [`flutter_releaser_http` - `v0.1.0`](#flutter_releaser_http---v010)

Packages with other changes:

 - [`flutter_releaser_hooks` - `v0.0.3+3`](#flutter_releaser_hooks---v0033)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_hooks` - `v0.0.3+3`

---

#### `flutter_releaser` - `v0.1.0`

 - **FIX**: add listener to upload progress notifier as well.
 - **FIX**: macos plugin.
 - **FIX**: give archive path.
 - **FEAT**: upload with new parameters.
 - **FEAT**: implement upload system.
 - **FEAT**: const.
 - **BREAKING** **FEAT**: start working on upload system.
 - **BREAKING** **CHANGE**: implementing the new api specifications. ([#3](https://github.com/Infumia/flutter_releaser//issues/3)).

#### `flutter_releaser_dio` - `v0.1.0`

 - **FEAT**: implement upload system.
 - **BREAKING** **CHANGE**: implementing the new api specifications. ([#3](https://github.com/Infumia/flutter_releaser//issues/3)).

#### `flutter_releaser_http` - `v0.1.0`

 - **FEAT**: implement upload system.
 - **BREAKING** **CHANGE**: implementing the new api specifications. ([#3](https://github.com/Infumia/flutter_releaser//issues/3)).


## 2025-10-26

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.0.6`](#flutter_releaser---v006)
 - [`flutter_releaser_dio` - `v0.0.2`](#flutter_releaser_dio---v002)
 - [`flutter_releaser_http` - `v0.0.2`](#flutter_releaser_http---v002)
 - [`flutter_releaser_hooks` - `v0.0.3+2`](#flutter_releaser_hooks---v0032)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_hooks` - `v0.0.3+2`

---

#### `flutter_releaser` - `v0.0.6`

 - **FEAT**: abstraction layer for http requests. ([#2](https://github.com/Infumia/flutter_releaser//issues/2)).

#### `flutter_releaser_dio` - `v0.0.2`

 - **FEAT**: abstraction layer for http requests. ([#2](https://github.com/Infumia/flutter_releaser//issues/2)).

#### `flutter_releaser_http` - `v0.0.2`

 - **FEAT**: abstraction layer for http requests. ([#2](https://github.com/Infumia/flutter_releaser//issues/2)).


## 2025-10-26

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.0.5`](#flutter_releaser---v005)
 - [`flutter_releaser_hooks` - `v0.0.3+1`](#flutter_releaser_hooks---v0031)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_hooks` - `v0.0.3+1`

---

#### `flutter_releaser` - `v0.0.5`

 - **FEAT**: add update function.


## 2025-10-26

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.0.4`](#flutter_releaser---v004)
 - [`flutter_releaser_hooks` - `v0.0.3`](#flutter_releaser_hooks---v003)

---

#### `flutter_releaser` - `v0.0.4`

 - **FEAT**: initial version. ([#1](https://github.com/Infumia/flutter_releaser//issues/1)).
 - **FEAT**: return version in check and notify method as well.
 - **FEAT**: add logger export.

#### `flutter_releaser_hooks` - `v0.0.3`

 - **FEAT**: implement flutter_releaser_hooks.


## 2025-10-26

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.0.3`](#flutter_releaser---v003)
 - [`flutter_releaser_hooks` - `v0.0.2`](#flutter_releaser_hooks---v002)
 - [`flutter_releaser_widgets` - `v0.0.1+2`](#flutter_releaser_widgets---v0012)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_widgets` - `v0.0.1+2`

---

#### `flutter_releaser` - `v0.0.3`

 - **FEAT**: initial version. ([#1](https://github.com/Infumia/flutter_releaser//issues/1)).

#### `flutter_releaser_hooks` - `v0.0.2`

 - **FEAT**: initial version. ([#1](https://github.com/Infumia/flutter_releaser//issues/1)).


## 2025-10-24

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_releaser` - `v0.0.2`](#flutter_releaser---v002)
 - [`flutter_releaser_widgets` - `v0.0.1+1`](#flutter_releaser_widgets---v0011)
 - [`flutter_releaser_hooks` - `v0.0.1+1`](#flutter_releaser_hooks---v0011)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_releaser_widgets` - `v0.0.1+1`
 - `flutter_releaser_hooks` - `v0.0.1+1`

---

#### `flutter_releaser` - `v0.0.2`

 - **FEAT**: test.

