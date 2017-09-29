using ManagedXZLZMA.Sample.Shared;

namespace ManagedXZLZMA.Test
{
    public class Program
    {
        public static void Main()
        {
            FileHelper.ProcessEmbeddedFile("kodim15.crn", (b) =>
            {
                //var dxt1Texture = CrunchHelper.CrnDecompress(b);
                // 196608
            });
        }
    }
}
