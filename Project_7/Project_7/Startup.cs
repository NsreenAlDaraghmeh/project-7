using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Project_7.Startup))]
namespace Project_7
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
