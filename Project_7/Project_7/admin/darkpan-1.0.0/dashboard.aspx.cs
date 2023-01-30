using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project_7.admin.darkpan_1._0._0
{
    public partial class dashboard : System.Web.UI.Page
    {
        project7Entities3 p = new project7Entities3();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Context.User.IsInRole("Admin"))
            {
                Response.Redirect("../../Default.aspx");
            }
            if (Request.QueryString["id"] != null)
            {
         
                int qid = Convert.ToInt32(Request.QueryString["id"].ToString());
                var cancelbook = from b in p.Bookings
                                 where b.IDbooking==qid
                                 select new
                {

                                     b.IDbooking,
                                     b.Numpeople,
                                     b.AspNetUser.Name,
                                     b.Numchild,
                                     b.DateFrom,
                                     b.DateTo,
                                     b.AspNetUser.PhoneNumber,
                                     b.SingleRoom.price
                                 };

                DetailsView2.DataSource = cancelbook.ToList();
                DetailsView2.DataBind();

                mpe.Show();
            }
           
            if (!IsPostBack)
            {


                roomedit.Visible = false;
                GridView2.Visible = false;
                editform.Visible = false;
         

                dashboard1.Attributes.Remove("class");
                dashboard1.Attributes.Add("class", "nav-item nav-link active");


                AdminName.InnerText = $"{Context.User.Identity.GetUserName()}";
                if (Request.QueryString["cancelid"] != null)
                {
                 
                    //divdetail.Attributes.Add("style", "display:grid;justify-content:center;position:absolute;width:100%;height:100%;top:0;left:0;");

                    int qid = Convert.ToInt32(Request.QueryString["cancelid"].ToString());
                    var cancelbook = from b in p.Bookings
                                     select new
                                     {

                                         b.IDbooking,
                                         b.Numpeople,
                                         b.AspNetUser.Name,
                                         b.Numchild,
                                         b.DateFrom,
                                         b.DateTo,
                                         b.AspNetUser.PhoneNumber,
                                         b.SingleRoom.price
                                     };

                    DetailsView1.DataSource = cancelbook.ToList();
                    DetailsView1.DataBind();
         
                    GridView1.Visible = false;
                   
                }




                else
                {

                    var book = from b in p.Bookings
                               select new
                               {

                                   b.IDbooking,
                                   b.Numpeople,
                                   b.AspNetUser.Name,
                                   b.Numchild,
                                   b.DateFrom,
                                   b.DateTo,
                                   b.AspNetUser.PhoneNumber,
                                   b.SingleRoom.price
                               };

                    GridView1.DataSource = book.ToList();
                    GridView1.DataBind();
                    btndelete.Visible = false;
                

                }





                //-------------------Edit----------------------------------------------------//
 

               


                    if (Request.QueryString["editid"] != null)
                {
                    editform.Visible = true;
                    //TableEdit.Attributes.Remove("style");
                    //TableEdit.Attributes.Add("style", "display:unset");
                    int bId = Convert.ToInt32(Request.QueryString["editid"]);
                    var sel = from b in p.Bookings
                              where b.IDbooking == bId

                              select new
                              {

                                  b.IDbooking,
                                  b.Numpeople,
                                  b.AspNetUser.Name,
                                  b.Numchild,
                                  b.DateFrom,
                                  b.DateTo,
                                  b.AspNetUser.PhoneNumber,
                                  b.SingleRoom.price
                              };

                    var record = p.Bookings.Find(bId);
                    Numpeopleid.Value = Convert.ToString(record.Numpeople);
                    Numchildid.Value = Convert.ToString(record.Numchild);
                    //priceid.Value = Convert.ToString(record.SingleRoom.price);
                    txtStartDate.Text = Convert.ToString(record.DateFrom);
                    txtEndDate.Text = Convert.ToString(record.DateTo);


                    GridView1.DataSource = sel.ToList();
                    GridView1.DataBind();

                 



                }
                else
                {
                    var book = from b in p.Bookings
                               select new
                               {

                                   b.IDbooking,
                                   b.Numpeople,
                                   b.AspNetUser.Name,
                                   b.Numchild,
                                   b.DateFrom,
                                   b.DateTo,
                                   b.AspNetUser.PhoneNumber,
                                   b.SingleRoom.price

                               };

                    //editform.Visible = false;
                    GridView1.DataSource = book.ToList();
                    GridView1.DataBind();
                 

                }


                //----------------- Room -----------------
                if (Request.QueryString["editroomid"] != null)
                {
                    GridView2.Visible = false;
                    roomedit.Visible = true;

                    int rId = Convert.ToInt32(Request.QueryString["editroomid"]);
                    var select = from r in p.SingleRooms
                                 where r.IDroom == rId

                                 select new
                                 {
                                     r.IDroom,
                                     r.roomNumber,
                                     r.discriptionRoom,
                                     r.quntity,
                                     r.price,
                                     r.ImgRoom1,
                                     r.ImgRoom2,
                                     r.ImgRoom3,
                                     r.ImgRoom4,

                                 };

                    var record = p.SingleRooms.Find(rId);
                    roomnumber.Value = Convert.ToString(record.roomNumber);
                    discriptionroom.Value = record.discriptionRoom;
                    Quntity.Value = Convert.ToString(record.quntity);
                    price.Value = Convert.ToString(record.price);
                    SpanTitle.InnerText = "Edit Room";

                }

                if (Request.QueryString["tab"] != null)
                {

                    dashboard1.Attributes.Remove("class");
                    dashboard1.Attributes.Add("class", "nav-item nav-link");
                    LinkButton btn = (LinkButton)FindControl($"{Request.QueryString["tab"]}");
                    btn.Attributes.Remove("class");
                    btn.Attributes.Add("class", "nav-item nav-link active");


                    //int rId = Convert.ToInt32(Request.QueryString["tab"]);
                    var select = from r in p.SingleRooms

                                 select new
                                 {
                                     r.IDroom,
                                     r.roomNumber,
                                     r.discriptionRoom,
                                     r.quntity,
                                     r.price,
                                     r.ImgRoom1,
                                     r.ImgRoom2,
                                     r.ImgRoom3,
                                     r.ImgRoom4,

                                 };

                    GridView2.Visible = true;
                    GridView1.Visible = false;
                    GridView2.DataSource = select.ToList();
                    GridView2.DataBind();
                    if (Request.QueryString["tab"] == "dashboard1")
                    {
                        GridView2.Visible = false;
                        GridView1.Visible = true;
                        SpanTitle.InnerText = "Bookings";

                    }
                    if (Request.QueryString["editroomid"] == null)
                    {
                        GridView2.Visible = false;
                    }
                    if (Request.QueryString["tab"] == "Room1")
                    {
                        SpanTitle.InnerText = "Rooms";
                        GridView2.Visible = true;
                        GridView1.Visible = false;
                    }
                    if (Request.QueryString["editroomid"] != null)
                    {
                        GridView2.Visible = false;
                    }

                    if (Request.QueryString["tab"] == "users")
                    {
                        var users1 = from b in p.AspNetUsers
                                     select new
                        {

                            b.Name,
                            b.Email,
                            b.PhoneNumber,
                            b.Adress,
                            b.image,
                           

                        };

                        //editform.Visible = false;
                        SpanTitle.InnerText = "Users";
                        GridView3.DataSource = users1.ToList();
                        GridView3.DataBind();

                    }

                }
                else
                {
                    var book = from b in p.Bookings
                               select new
                               {

                                   b.IDbooking,
                                   b.Numpeople,
                                   b.AspNetUser.Name,
                                   b.Numchild,
                                   b.DateFrom,
                                   b.DateTo,
                                   b.AspNetUser.PhoneNumber,
                                   b.SingleRoom.price

                               };

                    GridView1.DataSource = book.ToList();
                    GridView1.DataBind();
                    SpanTitle.InnerText = "Bookings";

                }










                //int roomid = Request.QueryString["id"];
                //var room = p.Bookings.Find(room);
                Label1.Text = (from bnum in p.Bookings select bnum.IDbooking).Count().ToString();
                Label2.Text=(from ch in p.checkouts select ch.Totalprice).Sum().ToString();
                Label5.Text= p.AspNetUsers.Count().ToString();
                Label6.Text= (from R in p.SingleRooms select R.quntity).Sum().ToString();


            }


        }



        protected void edit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["editid"]);
            var record = p.Bookings.Find(id);
            record.Numpeople = Convert.ToInt16(Numpeopleid.Value);
            record.DateFrom = Convert.ToDateTime(txtStartDate.Text);
            record.DateTo = Convert.ToDateTime(txtEndDate.Text);
            record.Numchild = Convert.ToInt32(Numchildid.Value);

            p.SaveChanges();
            Response.Redirect("dashboard.aspx");

        }

        protected void UpdateRoom(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["editroomid"]);
            var record = p.SingleRooms.Find(id);
            //record.AspNetUser.Name = name.Value;
            record.roomNumber = roomnumber.Value;
            record.discriptionRoom = discriptionroom.Value;
            record.quntity = Convert.ToInt32(Quntity.Value);
            record.price = Convert.ToInt32(price.Value);
            string image = "";
    
          
            if (formFile1.HasFile)
            {
                image = "/images/" + formFile1.FileName;
                formFile1.SaveAs(Server.MapPath("/images/") + formFile1.FileName);
                record.ImgRoom1 = image;

            }

            if (formFile2.HasFile)
            {
                image = "/images/" + formFile2.FileName;
                formFile2.SaveAs(Server.MapPath("/images/") + formFile2.FileName);
                record.ImgRoom2 = image;

            }

            if (formFile3.HasFile)
            {
                image = "/images/" + formFile3.FileName;
                formFile3.SaveAs(Server.MapPath("/images/") + formFile3.FileName);
                record.ImgRoom3 = image;

            }

            if (formFile4.HasFile)
            {
                image = "/images/" + formFile4.FileName;
                formFile4.SaveAs(Server.MapPath("/images/") + formFile4.FileName);
                record.ImgRoom4 = image;
            }

            p.SaveChanges();
            Response.Redirect("dashboard.aspx?tab=Room1");




        }





        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["cancelid"]);

            var c = p.Bookings.Find(id);


            p.Bookings.Remove(c);
            p.SaveChanges();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);

            //Response.Redirect("dashboard.aspx");
        }
        protected void cancleCheckout(object sender, EventArgs e)
        {
            mpe.Hide();
        }
        protected void checkout_Click(object sender, EventArgs e)
        {

            //Label5.Text = $"{Request.QueryString["id"]}";
            int id = Convert.ToInt32(Request.QueryString["id"]);

            mpe.Hide();
            //Response.Redirect("Defualt.aspx");
            var c = p.Bookings.Find(id);
            checkout check = new checkout();
            check.DateFrom = c.DateFrom;
            check.DateTo = c.DateTo;
            check.States = Convert.ToBoolean(0);
            check.IDuser = c.IDuser;
            check.IDroom= c.IDroom;
            check.Datecheckout = DateTime.Now;
            //var x = (c.DateFrom - c.DateTo).to

            DateTime dt1 = DateTime.Parse(c.DateFrom.ToString());
            DateTime dt2 = DateTime.Parse(c.DateTo.ToString());
            TimeSpan differense = dt2.Subtract(dt1);
            check.Totalprice =differense.TotalDays*c.SingleRoom.price;

            p.checkouts.Add(check);
            

            p.Bookings.Remove(c);
            p.SaveChanges();
            Response.Redirect("dashboard.aspx");

        }





        protected void search_click(object sender, EventArgs e)
        {
            var stringNumber = searchbox.Value;
            int numericValue;
            bool isNumber = int.TryParse(stringNumber, out numericValue);
            if (!isNumber)
            {

                var search = from b in p.Bookings

                             where b.AspNetUser.Name.Contains(searchbox.Value)
                             select new
                             {
                                 b.IDbooking,
                                 b.Numpeople,
                                 b.AspNetUser.Name,
                                 b.Numchild,
                                 b.DateFrom,
                                 b.DateTo,
                                 b.AspNetUser.City,
                                 b.AspNetUser.PhoneNumber,

                             };
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();


                var search1 = from b in p.SingleRooms

                              where b.discriptionRoom.Contains(searchbox.Value)
                              select b;

                GridView2.DataSource = search1.ToList();
                GridView2.DataBind();



            }
            else
            {
                var search = from b in p.Bookings
                                
                             where b.IDbooking == numericValue
                             select new
                             {
                                 b.IDbooking,
                                 b.Numpeople,
                                 b.AspNetUser.Name,
                                 b.Numchild,
                                 b.DateFrom,
                                 b.DateTo,
                                 b.AspNetUser.City,
                                 b.AspNetUser.PhoneNumber,
                             };
                GridView1.DataSource = search.ToList();
                GridView1.DataBind();


                var select = from r in p.SingleRooms
                             where r.IDroom == numericValue
                             select r;



                GridView2.DataSource = select.ToList();
                GridView2.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            LinkButton button = sender as LinkButton;
            dashboard1.Attributes.Remove("class");
            dashboard1.Attributes.Add("class", "nav-item nav-link");
            Response.Redirect($"dashboard.aspx?tab={button.ID}");


        }



        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {


            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var imagePath = (e.Row.DataItem as dynamic).ImgRoom1;
                var image = new Image();
                image.ImageUrl = "../../"+imagePath;
                image.Height = 200;
                image.Width = 200;
                e.Row.Cells[6].Controls.Add(image);
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
            DateTime dateTime = Calendar1.SelectedDate;
            if (dateTime < DateTime.Now)
            {
                Label1.Text = "Please choose correct date";
            }
            if(dateTime > DateTime.Now)
            {
                txtStartDate.Text = dateTime.ToShortDateString();
                Label1.Visible = false;
            }
            else 
            {
                txtStartDate.Text = DateTime.Now.ToShortDateString();
                Calendar1.Visible = false;
            }
           
        }




        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

            DateTime dateTime2 = Calendar2.SelectedDate;
            if (txtStartDate.Text != string.Empty)
            {

                var x = txtStartDate.Text;
                DateTime dt2 = DateTime.Parse(x);
                if (dateTime2 <= dt2)
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

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {

        }

        protected void Calendar2_DayRender1(object sender, DayRenderEventArgs e)
        {

        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var imagePath = (e.Row.DataItem as dynamic).image;
                var image = new Image();
                image.ImageUrl = "../../" + imagePath;
                image.Height = 200;
                image.Width = 200;
                e.Row.Cells[4].Controls.Add(image);
            }
        }
    }

}