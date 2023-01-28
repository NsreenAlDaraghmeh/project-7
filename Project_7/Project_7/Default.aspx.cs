using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_7
{
    public partial class _Default : Page
    {
        project7Entities3 db = new project7Entities3();

        protected void Page_Load(object sender, EventArgs e)
        {
            RatingCard.InnerHtml = "";
            
            foreach (var comment in db.RateRooms)
            {
                string image = comment.AspNetUser.image;
                string image1 = image.Substring(10);
                //string image2 = image1.Replace('\\', "&#92");
                //string image2 = image1.Remove(6,1);
                
                RatingCard.InnerHtml += $"             <div class='item'>" +
                    $"             <div class='testimony-wrap'>\r\n      " +
                    $"            <div class='text'> " +
                    $"         \t<div class='d-flex align-items-center mb-4'>\r\n    " +
                    $"                \t<div class='user-img' style='background-image: url(images/{image1})'>\r\n  " +
                    $"                  \t\t<div class='icon d-flex align-items-center justify-content-center'><span class='fa fa-quote-left'></div>\r\n        " +
                    $"            \t</div>\r\n                    \t<div class='ps - 3 tx'>\r\n\t\t          " +
                    $"          <p class='name'>{comment.AspNetUser.Name}</p>\r\n\t\t             " +
                    $"       <span class='position'>Marketing Manager</span>\r\n\t\t        " +
                    $"          </div>\r\n\t        " +
                    $"          </div>\r\n            " +
                    $"        <p class='mb-4 msg'> {comment.comment}.</p>\r\n        " +
                    $"          </div>\r\n      " +
                    $"          </div>\r\n       " +
                    $"       </div>";

                guest.InnerText=db.RateRooms.Count().ToString();
                rooms.InnerText = (from R in db.SingleRooms select R.quntity).Sum().ToString();
                customer.InnerText=db.AspNetUsers.Count().ToString();
                booking.InnerText=db.Bookings.Count().ToString();




            }
        }
    }
}