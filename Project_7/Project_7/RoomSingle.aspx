<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoomSingle.aspx.cs" Inherits="Project_7.RoomSingle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

    <style>
         #connt{
display:grid;
grid-auto-rows:auto auto; 
height:100%; 

        }

        .searchh{
            width:100%;
            display:flex;
            flex-direction:row;
            justify-content:center;
/*            margin-top:10%;
*/
        }
        @media all and (min-device-width:0 ) and (max-device-width:480px ) {
           #connt{
display:grid;
grid-auto-rows:auto ; 
height:90%; 

        }

        }
    </style>
     <section class="hero-wrap hero-wrap-2" style="background-image: url('https://cache.marriott.com/content/dam/marriott-renditions/AQJLC/aqjlc-exterior-9703-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1215px:*');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 pt-5 text-center">
            <p class="breadcrumbs"><span class="me-2"><a href="Default.aspx">Home <i class="fa fa-chevron-right"></i></a></span> <span class="me-2"><a href="Blog.aspx">Blog <i class="fa fa-chevron-right"></i></a></span> <span>Room Single <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">Room Details</h1>
          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section ftco-room-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 blog-single">
      <%--      <div class="carousel-room">
              <div class="item">
                <div class="room-detail img" style="background-image: url(images/room-1.jpg)">
                </div>
              </div>
              <div class="item">
                <div class="room-detail img" style="background-image: url(images/room-1.jpg)">
                </div>
              </div>
              <div class="item">
                <div class="room-detail img" style="background-image: url(images/room-1.jpg)">
                </div>
              </div><div class="item">
                <div class="room-detail img" style="background-image: url(images/room-1.jpg)">
                </div>
              </div>
            </div>--%>

           <%-- <h2>Luxury Room</h2>

            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
            <div class="d-md-flex mt-5 mb-5">
              <ul class="list">
                <li><span>Max:</span> 3 Persons</li>
                <li><span>Size:</span> 45 m2</li>
              </ul>
              <ul class="list ms-md-5">
                <li><span>View:</span> Sea View</li>
                <li><span>Bed:</span> 1</li>
              </ul>
            </div>--%>

   <%--         <div class="properties-single mb-5 mt-4">
              <h4 class="mb-4">Review &amp; Ratings</h4>
              <div class="row">
                <div class="col-md-6">
                  <form method="post" class="star-rating">
                    <div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">
                        <p class="rate"><span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 10K+ Ratings</span></p>
                      </label>
                    </div>
                    <div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">
                         <p class="rate"><span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i> 6k+ Ratings</span></p>
                      </label>
                    </div>
                    <div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">
                        <p class="rate"><span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i> 0 Ratings</span></p>
                     </label>
                    </div>
                    <div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">
                        <p class="rate"><span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i> 0 Ratings</span></p>
                      </label>
                    </div>
                    <div class="form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">
                        <p class="rate"><span><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i> 0 Ratings</span></p>
                      </label>
                    </div>
                  </form>
                </div>
              </div>
            </div>--%>

<%--              ....Image--%>
     
              <div id="connt" class="row justify content center carousel-room" >
        <div id="a" runat="server" style="display:inline-block; " >
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
</div>
  </div>

  
<%--              ...Image--%>
       <%--     <div class="row justify-content-center mb-5">
              <div class="col-md-12 heading-section" data-aos="fade-up" data-aos-duration="1000">
                <h2>Related Rooms</h2>
              </div>
            </div> 
            <div class="row">
              <div class="col-md-6 d-flex align-items-stretch" data-aos="flip-left" data-aos-delay="200" data-aos-duration="1000">
                <div class="room-wrap">
                  <a href="#" class="img img-room" style="background-image: url(images/room-2.jpg);">
                  </a>
                  <div class="text p-5 text-center">
                    <h3><a href="RoomSingle.aspx?id=2">Family Room</a></h3>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="mb-0 mt-2"><span class="me-3 price">$450 <small>/ night</small></span><a href="RoomSingle.aspx?id=2" class="btn-custom">Book Now</a></p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 d-flex align-items-stretch" data-aos="flip-left" data-aos-delay="300" data-aos-duration="1000">
                <div class="room-wrap d-md-flex flex-md-column-reverse">
                  <a href="#" class="img img-room" style="background-image: url(images/room-3.jpg);">
                  </a>
                  <div class="text p-5 text-center">
                    <h3><a href="RoomSingle.aspx?id=3">Deluxe Room</a></h3>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p class="mb-0 mt-2"><span class="me-3 price">$450 <small>/ night</small></span><a href="RoomSingle.aspx?id=3" class="btn-custom">Book Now</a></p>
                  </div>
                </div>
              </div>
            </div>--%>

          </div> <!-- .col-md-8 -->
          <div class="col-lg-4 sidebar ps-md-4">
<%--              ...Search--%>

          <%--  <div class="sidebar-box bg-light rounded">
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon fa fa-search"></span>
                  <input type="text" class="form-control" placeholder="Search...">
                </div>
              </form>
            </div>--%>
   
              <div class="searchh">
        <asp:TextBox ID="Textsearch" class="form-control rounded " runat="server"  ></asp:TextBox><asp:Button ID="search" class="btn btn-dark" runat="server" Text="search" OnClick="search_Click" />
            <br />
    </div>
  

<%--              ...Search--%>
            <div class="sidebar-box">
              <h3>Hotel Services</h3>
              <div class="d-md-flex">
                <ul class="categories me-md-4">
                  <li><a href="#">Free Wifi</a></li>
                  <li><a href="#">Easy Booking</a></li>
                  <li><a href="#">Restaurant</a></li>
                  <li><a href="#">Swimming Pool</a></li>
                </ul>
                <ul class="categories ms-md-4">
                  <li><a href="#">Beauty &amp; Health</a></li>
                  <li><a href="#">60" Flatscreen TV</a></li>
                  <li><a href="#">Cold Aircondition</a></li>
                  <li><a href="#">Help &amp; Support</a></li>
                </ul>
              </div>
            </div>

            <div class="sidebar-box">
              <h3>Recent Blog</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img me-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Far far away, behind the word mountains</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="fa fa-calendar"></span> December 24, 2020</a></div>
                    <div><a href="#"><span class="fa fa-user"></span> Admin</a></div>
                    <div><a href="#"><span class="fa fa-comment"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img me-4" style="background-image: url(images/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Far far away, behind the word mountains</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="fa fa-calendar"></span> December 24, 2020</a></div>
                    <div><a href="#"><span class="fa fa-user"></span> Admin</a></div>
                    <div><a href="#"><span class="fa fa-comment"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img me-4" style="background-image: url(images/image_3.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Far far away, behind the word mountains</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="fa fa-calendar"></span> December 24, 2020</a></div>
                    <div><a href="#"><span class="fa fa-user"></span> Admin</a></div>
                    <div><a href="#"><span class="fa fa-comment"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>

          <%--  <div class="sidebar-box">
              <h3>Tag Cloud</h3>
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">hotel</a>
                <a href="#" class="tag-cloud-link">pool</a>
                <a href="#" class="tag-cloud-link">tv</a>
                <a href="#" class="tag-cloud-link">aircon</a>
                <a href="#" class="tag-cloud-link">relax</a>
                <a href="#" class="tag-cloud-link">cozzy</a>
                <a href="#" class="tag-cloud-link">room</a>
                <a href="#" class="tag-cloud-link">resto</a>
                <a href="#" class="tag-cloud-link">bar</a>
              </div>
            </div>--%>

            <div class="sidebar-box">
              <h3>Paragraph</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
            </div>
          </div>

        </div>
      </div>
    </section> <!-- .section -->
<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function button(quantity, donation) {
            Swal.fire({
                icon: 'error',
                title: 'Please Log in First !',
                html: '<a href="https://localhost:44348/Account/Login">Log in</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

                     })
                


        }
    </script>
</asp:Content>
