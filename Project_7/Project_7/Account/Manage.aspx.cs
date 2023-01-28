using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using Owin;
using Project_7.Models;

namespace Project_7.Account
{
    public partial class Manage : System.Web.UI.Page
    {
        protected string SuccessMessage
        {
            get;
            private set;
        }

        private bool HasPassword(ApplicationUserManager manager)
        {
            return manager.HasPassword(User.Identity.GetUserId());
        }

        public bool HasPhoneNumber { get; private set; }

        public bool TwoFactorEnabled { get; private set; }

        public bool TwoFactorBrowserRemembered { get; private set; }

        public int LoginsCount { get; set; }
        project7Entities3 db=new project7Entities3();
        RateRoom feed = new RateRoom();
        protected void Page_Load()
        {
 

            row1.Visible= false;
           string id = Context.User.Identity.GetUserId();
        


            var rec = from rate in db.RateRooms where rate.IDuser == id select new { rate.comment };

            var record = db.AspNetUsers.Find(id);
          
            Name1.Text = record.Name;
            Phone.Text = Convert.ToString(record.PhoneNumber);
            UserName.Text = record.UserName.ToString();
            City.Text = record.City;
            Address.Text = record.Adress;
            Email.Text = record.Email;
            Name2.Text= record.Name;
            Email1.Text= record.Email;
            image.Src = record.image;
            foreach(var item in rec)
            {
                feeds.Text = item.comment;
            }
           




            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

            HasPhoneNumber = String.IsNullOrEmpty(manager.GetPhoneNumber(User.Identity.GetUserId()));

            // Enable this after setting up two-factor authentientication
            //PhoneNumber.Text = manager.GetPhoneNumber(User.Identity.GetUserId()) ?? String.Empty;

            TwoFactorEnabled = manager.GetTwoFactorEnabled(User.Identity.GetUserId());

            LoginsCount = manager.GetLogins(User.Identity.GetUserId()).Count;

            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            if (!IsPostBack)
            {
                
                // Determine the sections to render
                //if (HasPassword(manager))
                //{
                //    ChangePassword.Visible = true;
                //}
                //else
                //{
                //    CreatePassword.Visible = true;
                //    ChangePassword.Visible = false;
                //}

                // Render success message
                var message = Request.QueryString["m"];
                if (message != null)
                {
                    // Strip the query string from action
                    Form.Action = ResolveUrl("~/Account/Manage");

                    SuccessMessage =
                        message == "ChangePwdSuccess" ? "Your password has been changed."
                        : message == "SetPwdSuccess" ? "Your password has been set."
                        : message == "RemoveLoginSuccess" ? "The account was removed."
                        : message == "AddPhoneNumberSuccess" ? "Phone number has been added"
                        : message == "RemovePhoneNumberSuccess" ? "Phone number was removed"
                        : String.Empty;
                    //successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
                }
            }
        }


        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        // Remove phonenumber from user
        protected void RemovePhone_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var result = manager.SetPhoneNumber(User.Identity.GetUserId(), null);
            if (!result.Succeeded)
            {
                return;
            }
            var user = manager.FindById(User.Identity.GetUserId());
            if (user != null)
            {
                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                Response.Redirect("/Account/Manage?m=RemovePhoneNumberSuccess");
            }
        }

        // DisableTwoFactorAuthentication
        protected void TwoFactorDisable_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            manager.SetTwoFactorEnabled(User.Identity.GetUserId(), false);

            Response.Redirect("/Account/Manage");
        }

        //EnableTwoFactorAuthentication 
        protected void TwoFactorEnable_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            manager.SetTwoFactorEnabled(User.Identity.GetUserId(), true);

            Response.Redirect("/Account/Manage");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string id = Context.User.Identity.GetUserId();
            //var record = db.RateRooms.Find(id);
            //record.comment = feedback.Value.ToString();
            if (feedback.Value == "")
            {
                return;
            }
            else
            {
                feed.IDuser = User.Identity.GetUserId();
                feed.IDroom = 1;
                feed.comment = feedback.InnerText.ToString();
                //db.RateRooms.Add();
                db.RateRooms.Add(feed);
                db.SaveChanges();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);
            }
     
         

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            row2.Visible= false;
            row1.Visible = true;
            string id = Context.User.Identity.GetUserId();

            var rec = from rate in db.RateRooms where rate.IDuser == id select new { rate.comment };

            var record = db.AspNetUsers.Find(id);

            TextBox2.Text = record.Name;
            TextBox6.Text = Convert.ToString(record.PhoneNumber);
            TextBox1.Text = record.UserName.ToString();
            TextBox3.Text = record.City;
            TextBox4.Text = record.Adress;
            TextBox5.Text = record.Email;
            //Name2.Text = record.Name;
            //Email1.Text = record.Email;
            image.Src = record.image;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //var id = Request.QueryString["id"];
            //var id2 = Convert.ToInt32(id);
            string id = Context.User.Identity.GetUserId();

            var record = db.AspNetUsers.Find(id);
            record.UserName = TextBox1.Text;
            record.Adress = TextBox4.Text;
            record.PhoneNumber = TextBox6.Text;
            record.Name = TextBox2.Text;
            record.Email = TextBox5.Text;
            record.City = TextBox3.Text;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("../images/"), FileUpload1.FileName));
                record.image = "../images/" + FileUpload1.FileName;   
            }
            

            db.SaveChanges();
            Response.Redirect("Manage.aspx");
        }
    }
}