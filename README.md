# ManagedXZLZMA
Managed wrapper for XZ LZMA stream decoder from XZ project(https://tukaani.org/xz/)

[![Build status](https://ci.appveyor.com/api/projects/status/9yvh8b7a652ie35b?svg=true)](https://ci.appveyor.com/project/jacano/managedxzlzma)
[![NuGet Badge](https://buildstats.info/nuget/ManagedXZLZMA)](https://www.nuget.org/packages/ManagedXZLZMA/)

ManagedXZLZMA provides XZDecompressStream to decompress a given Stream using almost direct Pinvokes to C/C++ code.

The following functions are getting call under the hood to process the given stream:
* lzma_code
* lzma_end
* lzma_auto_decoder

| Platforms      |
| ------------   |
| netstandard1.2 |
| net451         |
| MonoAndroid    |
| uap10.0        |
