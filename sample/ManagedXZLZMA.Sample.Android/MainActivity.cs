using Android.App;
using Android.OS;
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

            TestHelper.TestMethod();
        }
    }
}

