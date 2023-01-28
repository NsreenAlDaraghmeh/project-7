using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_7
{
    public partial class RoomSingle : System.Web.UI.Page
    {
        project7Entities3 db = new project7Entities3();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"];
                int idd = Convert.ToInt32(id);


                var select1 = from C in db.SingleRooms
                              where C.IDcategory == idd
                              select new { C.discriptionRoom, C.ImgRoom1, C.price, C.CategoryRoom.Namecategory, C.IDroom };
                foreach (var item in select1)
                {
                    if (Context.User.Identity.GetUserId() != null)
                    {
                        Label2.Text += $"<div class=\"col-md-6 col-lg-6 \" data-aos=\"flip-left\" data-aos-delay=\"100\" data-aos-duration=\"1000\" style='display:inline-block ;'>\r\n    \t\t\t\t<div class=\"room-wrap d-md-flex flex-md-column-reverse\" style='width:90%; margin-left:5%;'>\r\n        \t\t\t<a href=\"Booking.aspx?id={item.IDroom}\" class=\"img img-room\" style=\"background-image: url({item.ImgRoom1});\">\r\n        \t\t\t</a>\r\n        \t\t\t<div class=\"text p-5 text-center\">\r\n        \t\t\t\t<h3><a href=\"\" id=\"head1\" runat=\"server\">{item.Namecategory}</a></h3>\r\n        \t\t\t\t<p>{item.discriptionRoom}</p>\r\n        \t\t\t\t<p class=\"mb-0 mt-2\"><span class=\"me-3 price\">{item.price}<small>/ night</small></span><a href='Booking.aspx?id={item.IDroom}' class=\"btn-custom\">Book Now</a></p>\r\n        \t\t\t</div>\r\n        \t\t</div>\r\n    \t\t\t</div>";
                    }
                    else
                    {
                        Label2.Text += $"<div class=\"col-md-6 col-lg-6 \" data-aos=\"flip-left\" data-aos-delay=\"100\" data-aos-duration=\"1000\" style='display:inline-block ;'>\r\n    \t\t\t\t<div class=\"room-wrap d-md-flex flex-md-column-reverse\" style='width:90%; margin-left:5%;'>\r\n        \t\t\t<a class=\"img img-room\" style=\"background-image: url({item.ImgRoom1});\">\r\n        \t\t\t</a>\r\n        \t\t\t<div class=\"text p-5 text-center\">\r\n        \t\t\t\t<h3><a href=\"\" id=\"head1\" runat=\"server\">{item.Namecategory}</a></h3>\r\n        \t\t\t\t<p>{item.discriptionRoom}</p>\r\n        \t\t\t\t<p class=\"mb-0 mt-2\"><span class=\"me-3 price\">{item.price}<small>/ night</small></span><a onclick='button()' class=\"btn-custom\">Book Now</a></p>\r\n        \t\t\t</div>\r\n        \t\t</div>\r\n    \t\t\t</div>";

                    }
                }

            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            
            
                var id = Request.QueryString["id"];
                int idd = Convert.ToInt32(id);

                var search1 = from C in db.SingleRooms
                              where C.discriptionRoom.Contains(Textsearch.Text)
                              where C.IDcategory == idd
                              select new { C.discriptionRoom, C.ImgRoom1, C.price, C.CategoryRoom.Namecategory, C.IDroom };
                foreach (var item1 in search1)
                {
                    Label2.Visible = false;
                    Label1.Text += $"<div class=\"col-md-6 col-lg-6 \" data-aos=\"flip-left\" data-aos-delay=\"100\" data-aos-duration=\"1000\" style='display:inline-block ;'>\r\n    \t\t\t\t<div class=\"room-wrap d-md-flex flex-md-column-reverse\" style='width:90%; margin-left:5%;'>\r\n        \t\t\t<a href=\"Rooms.aspx?id=1\" class=\"img img-room\" style=\"background-image: url({item1.ImgRoom1});\">\r\n        \t\t\t</a>\r\n        \t\t\t<div class=\"text p-5 text-center\">\r\n        \t\t\t\t<h3><a href=\"\" id=\"head1\" runat=\"server\">{item1.Namecategory}</a></h3>\r\n        \t\t\t\t<p>{item1.discriptionRoom}</p>\r\n        \t\t\t\t<p class=\"mb-0 mt-2\"><span class=\"me-3 price\">{item1.price}<small>/ night</small></span><a href='Booking.aspx?id={item1.IDroom}' class=\"btn-custom\">Book Now</a></p>\r\n        \t\t\t</div>\r\n        \t\t</div>\r\n    \t\t\t</div>";
                }
            
        }
    }
}