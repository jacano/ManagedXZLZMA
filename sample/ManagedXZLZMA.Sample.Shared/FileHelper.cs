using System;
using System.IO;
using System.Reflection;

namespace ManagedXZLZMA.Sample.Shared
{
    public static class FileHelper
    {
        public static bool ProcessEmbeddedFile(string name, Func<byte[], bool> func)
        {
            using (var stream = typeof(FileHelper).GetTypeInfo().Assembly.GetManifestResourceStream(name))
            {
                var buffer = new byte[stream.Length];
                using (var memoryStream = new MemoryStream(buffer))
                {
                    stream.CopyTo(memoryStream);
                    return func(buffer);
                }
            }
        }
    }
}
