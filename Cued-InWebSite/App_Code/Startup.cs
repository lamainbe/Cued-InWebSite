using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Cued_InWebSite.Startup))]
namespace Cued_InWebSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
