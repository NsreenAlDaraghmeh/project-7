using AjaxControlToolkit.Bundling;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_7.admin.darkpan_1._0._0
{
    public partial class check : System.Web.UI.Page
    {
        project7Entities3 p = new project7Entities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Context.User.IsInRole("Admin"))
            {
                Response.Redirect("../../Default.aspx");
            }
           
            var cancelbook = from b in p.checkouts
                             select new
                             {
                                 b.AspNetUser.UserName,
                                 b.IDcheckout,
                                 b.AspNetUser.PhoneNumber,
                                 b.IDroom,
                                 b.DateFrom,
                                 b.DateTo,
                                 b.Datecheckout,
                                 b.SingleRoom.price,
                                 b.Totalprice,
                             };

            GridView1.DataSource = cancelbook.ToList();
            GridView1.DataBind();



            Label1.Text = (from bnum in p.Bookings select bnum.IDbooking).Count().ToString();
            Label2.Text = (from ch in p.checkouts select ch.Totalprice).Sum().ToString();


        }
        protected void search_click(object sender, EventArgs e)
        {
            var stringNumber = searchbox.Value;
            int numericValue;
            bool isNumber = int.TryParse(stringNumber , out numericValue);
            if (!isNumber)
            {

                var search = from b in p.checkouts

                             where b.AspNetUser.UserName.Contains(searchbox.Value)
                             select new
                             {
                                 b.AspNetUser.UserName,
                                 b.IDcheckout,
                                 b.AspNetUser.PhoneNumber,
                                 b.IDroom,
                                 b.DateFrom,
                                 b.DateTo,
                                 b.Datecheckout,
                                 b.SingleRoom.price,
                                 b.Totalprice,

                             };
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();


            }
            else
            {
                var search = from b in p.checkouts

                             where b.IDcheckout == numericValue
                             select b;

                GridView1.DataSource = search.ToList();
                GridView1.DataBind();
            }
           
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }
    }   }