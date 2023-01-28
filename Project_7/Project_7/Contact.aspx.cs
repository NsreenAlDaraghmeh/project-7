using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project_7
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (name.Value == "" && email.Value == "" && subject.Value == "" && message.Value == "")
            {
                return;
            }

            else
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("nsreennedal@gmail.com");
                mail.From = new MailAddress($"{email.Value}");
                mail.Subject = subject.Value;

                mail.Body = message.Value;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("nsreennedal", "jmvcufnewgrwmaov");
                smtp.Send(mail);


                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);
                //Response.Redirect("contact.aspx");
                name.Value = "";
                email.Value = "";
                subject.Value = "";
                message.Value = "";

            }



        }
    }
}