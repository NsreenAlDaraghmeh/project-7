using System;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Collections.Generic;

namespace Project_7
{
    public partial class Booking1 : System.Web.UI.Page
    {
        project7Entities3 obj = new project7Entities3();
        Booking info = new Booking();
        protected void Page_Load(object sender, EventArgs e)
        {

            var x = Request.QueryString["id"];
            int w = Convert.ToInt32(Request.QueryString["id"]);
            var userid = Context.User.Identity.GetUserId().ToString();

            maiin2.Visible = false;


            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }

            if (x != null)
            {
                var img = (from i in obj.SingleRooms
                           where i.IDroom == w
                           select i.ImgRoom1).FirstOrDefault();
                img1.Src = img.ToString();

                var nameRoom = (from i in obj.SingleRooms
                                where i.IDroom == w
                                select i.CategoryRoom.Namecategory).FirstOrDefault();
                room_name.Text = nameRoom.ToString();
                product.Text = nameRoom.ToString();
                product2.Text = nameRoom.ToString();
                var price_txt = (from i in obj.SingleRooms
                                 where i.IDroom == w
                                 select i.price).FirstOrDefault();
                pricetxt.Text = price_txt.ToString();
                price1.Text = price_txt.ToString();
                price2.Text = price_txt.ToString();
                var describtion = (from i in obj.SingleRooms
                                   where i.IDroom == w
                                   select i.discriptionRoom).FirstOrDefault();
                Descr.Text = describtion.ToString();
                descc.Text = describtion.ToString();
                descc1.Text = describtion.ToString();


                var email = (from f in obj.AspNetUsers
                             where f.Id == userid
                             select f.Email).FirstOrDefault();
                Eemail.Text = email.ToString();
                var phone1 = (from f in obj.AspNetUsers
                              where f.Id == userid
                              select f.PhoneNumber).FirstOrDefault();
                Phonenum.Text = phone1.ToString();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }




        }

        protected void ImgButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }

        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label8.Text= string.Empty;
            DateTime dateTime = Calendar1.SelectedDate;
            if (dateTime < DateTime.Now)
            {
                Label1.Text = "Please choose correct date";
            }
            else
            {
                txtStartDate.Text = dateTime.ToShortDateString();
                Label1.Visible = false;
            }
            Calendar1.Visible = false;
            var x = Request.QueryString["id"];
            int idQuery = Convert.ToInt32(Request.QueryString["id"]);
            var w = txtEndDate.Text.ToString();
            DateTime ddd = Convert.ToDateTime(txtStartDate.Text);
            var userid = Context.User.Identity.GetUserId();
            var numberOfRoom = (from i in obj.Bookings
                                where i.IDroom == idQuery
                                 & i.DateFrom == ddd
                                select i.IDbooking).Count();
            if (numberOfRoom >= 2)
            {
                main11.Visible = true;

                Label8.Text = "Sorry This Room isn't Avaliable on this date";
            }
        }




        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

            DateTime dateTime2 = Calendar2.SelectedDate;
            if (txtStartDate.Text != string.Empty)
            {

                var x = txtStartDate.Text;

                DateTime dt2 = DateTime.Parse(x);
                if (dateTime2 < dt2)
                {

                    Label2.Text = "please choose valid date";
                }
                else
                {
                    txtEndDate.Text = dateTime2.ToShortDateString();
                    Label2.Visible = false;

                }
                Calendar2.Visible = false;

            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "please choose Arrive date first";

            }
            Calendar2.Visible = false;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"];
            int aa = Convert.ToInt32(Request.QueryString["id"]);

            var w = txtEndDate.Text.ToString();
            var userid = Context.User.Identity.GetUserId();
            var price_txt = (from i in obj.SingleRooms
                             where i.IDroom == aa
                             select i.price).FirstOrDefault();
            int priceTotal = Convert.ToInt32(price_txt);
            if ((firstName.Text == "") || (COUNTRY.Text == "") || (CITY.Text == "") || (Zipcode.Text == ""))
            {
                Label7.Text = "Please Fill All Fields";
            }
            else
            {

                if (userid == null) { Response.Redirect("Account\\Login.aspx"); }
                else
                {
                    if (x != null)
                    {

                        var dd1 = txtStartDate.Text;
                        DateTime dt1 = DateTime.Parse(dd1);
                        var dd2 = txtEndDate.Text;
                        DateTime dt2 = DateTime.Parse(dd2);
                        TimeSpan differense = dt2.Subtract(dt1);
                        Label3.Text = differense.Days.ToString();
                        Label5.Text = differense.Days.ToString();
                        int www = Convert.ToInt32(differense.Days) * priceTotal;
                        Label6.Text = www.ToString();
                        Label4.Text = www.ToString();
                        maiin2.Visible = true;
                        main11.Visible = false;
                        foot.Visible = false;


                    }
                }
            }
        }


        protected void Calendar2_DayRender1(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var x = Request.QueryString["id"];
            int idQuery = Convert.ToInt32(Request.QueryString["id"]);
            var w = txtEndDate.Text.ToString();
            DateTime ddd = Convert.ToDateTime(txtStartDate.Text);
            var userid = Context.User.Identity.GetUserId();
            var numberOfRoom = (from i in obj.Bookings
                                where i.IDroom == idQuery
                                 & i.DateFrom == ddd
                                select i.IDbooking).Count();

            if (userid == null) { Response.Redirect("Account\\Login.aspx"); }
            else
            {
                if (x != null)
                {

                   
                        info.IDroom = Convert.ToInt32(x);
                        info.DateFrom = Convert.ToDateTime(txtStartDate.Text);
                        info.DateTo = Convert.ToDateTime(w);
                        info.Numpeople = Convert.ToInt32(DropDownList1.SelectedValue);
                        info.Numchild = Convert.ToInt32(DropDownList2.SelectedValue);
                        info.IDuser = Context.User.Identity.GetUserId();
                        info.FullName = firstName.Text;
                        info.Country = COUNTRY.Text;
                        info.City = CITY.Text;
                        obj.Bookings.Add(info);
                        obj.SaveChanges();
                        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);

                        //Response.Redirect("Default.aspx");
                 
                }
            }
        }
    }
}
