using Android.App;
using Android.Widget;
using Android.OS;
using System.IO;
using ManagedXZLZMA.Sample.Shared;

namespace ManagedXZLZMA.Sample.Android
{
    [Activity(Label = "ManagedXZLZMA.Sample.Android", MainLauncher = true)]
    public class MainActivity : Activity
    {
        protected unsafe override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);

            FileHelper.ProcessEmbeddedFile("kodim15.crn", (b) =>
            {
                //var dxt1Texture = CrunchHelper.CrnDecompress(b);
                // 196608
            });
        }
    }
}

