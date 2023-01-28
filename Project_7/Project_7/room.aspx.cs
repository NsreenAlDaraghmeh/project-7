using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_7
{
    public partial class room : System.Web.UI.Page
    {
        project7Entities3 db = new project7Entities3();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //var id = Request.QueryString["id"];
                //int idd = Convert.ToInt32(id);


                var select1 = from C in db.CategoryRooms

                              select new { C.discriptioncategory, C.Namecategory, C.Imgcategory, C.IDcategory };
                foreach (var item in select1)
                {

                    Label2.Text += $"<div class=\"col-md-6 col-lg-4 \" data-aos=\"flip-left\" data-aos-delay=\"100\" data-aos-duration=\"1000\" style='display:inline-block ;'>\r\n    \t\t\t\t<div class=\"room-wrap d-md-flex flex-md-column-reverse\" style='width:90%; margin-left:5%;'>\r\n        \t\t\t<a href=\"RoomSingle.aspx?id={item.IDcategory}\" class=\"img img-room\" style=\"background-image: url({item.Imgcategory});\">\r\n        \t\t\t</a>\r\n        \t\t\t<div class=\"text p-5 text-center\">\r\n        \t\t\t\t<h3><a href=\"\" id=\"head1\" runat=\"server\">{item.Namecategory}</a></h3>\r\n        \t\t\t\t<p>{item.discriptioncategory}</p>\r\n        \t\t\t\t<p class=\"mb-0 mt-2\"><a href='RoomSingle.aspx?id={item.IDcategory}' class=\"btn-custom\">Rooms</a></p>\r\n        \t\t\t</div>\r\n        \t\t</div>\r\n    \t\t\t</div>";
                }

            }
        }
    }
}