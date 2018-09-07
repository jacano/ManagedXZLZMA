using System.IO;

namespace ManagedXZLZMA.Sample.Shared
{
    public static class TestHelper
    {
        public static void TestMethod()
        {
            FileHelper.ProcessEmbeddedFile("data.lzma", (b) =>
            {
                using (var ms = new MemoryStream(b))
                {
                    using (var xzDecompressStream = new XZDecompressStream(ms))
                    {
                        var buffer = new byte[4];
                        xzDecompressStream.Read(buffer, 0, 4);
                    }
                }
            });
        }
    }
}
