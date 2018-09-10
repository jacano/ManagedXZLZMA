# ManagedXZLZMA
Managed wrapper for XZ LZMA stream decoder from XZ project (https://tukaani.org/xz/)

[![Build Status](https://jacanovsts.visualstudio.com/ManagedXZLZMA/_apis/build/status/jacano.ManagedXZLZMA)](https://jacanovsts.visualstudio.com/ManagedXZLZMA/_build/latest?definitionId=2)
[![NuGet Badge](https://buildstats.info/nuget/ManagedXZLZMA)](https://www.nuget.org/packages/ManagedXZLZMA/)

ManagedXZLZMA provides the XZDecompressStream class to decompress in C# a given Stream using almost direct Pinvokes to C/C++ code.

The following functions are getting call under the hood to process it:
* lzma_code
* lzma_end
* lzma_auto_decoder

| Platforms      |
| ------------   |
| netstandard1.2 |
| net45          |
| MonoAndroid    |
| XamariniOS     |
| uap10.0        |
