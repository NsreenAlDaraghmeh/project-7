<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project_7.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 pt-5 text-center">
            <p class="breadcrumbs"><span class="me-2"><a href="Default.aspx">Home <i class="fa fa-chevron-right"></i></a></span> <span>Contact <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">Contact us</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row no-gutters justify-content-center">
          <div class="col-md-12">
            <div class="wrapper">
              <div class="row g-0">
                <div class="col-lg-6">
                  <div class="contact-wrap w-100 p-md-5 p-4">
                    <h3>Contact us</h3>
                    <p class="mb-4">We're open for any suggestion or just to have a chat</p>
                    <div class="row mb-4">
                      <div class="col-md-4">
                        <div class="dbox w-100 d-flex align-items-start">
                          <div class="text">
                            <p><span>Address:</span> Jordan, Aqaba,Abdullah Street 123</p>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="dbox w-100 d-flex align-items-start">
                          <div class="text">
                            <p><span>Email:</span> <a href="mailto:nsreennedal@gmail.com">Almanarah@gmail.com</a></p>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="dbox w-100 d-flex align-items-start">
                          <div class="text">
                            <p><span>Phone:</span> <a href="tel://1234567920">0799374127</a></p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <form id="contactForm" name="contactForm" class="contactForm">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="text" class="form-control" runat="server" name="name" id="name" placeholder="Name">
                          </div>
                        </div>
                        <div class="col-md-12"> 
                          <div class="form-group">
                            <input type="email" class="form-control" runat="server" name="email" id="email" placeholder="Email">
                          </div>
                        </div>
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="text" class="form-control" runat="server" name="subject" id="subject" placeholder="Subject">
                          </div>
                        </div>
                        <div class="col-md-12">
                          <div class="form-group">
                            <textarea name="message" class="form-control" runat="server" id="message" cols="30" rows="4" placeholder="Create a message here"></textarea>
                          </div>
                        </div>
                        <div class="col-md-12">
                          <div class="form-group">
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Send Message" OnClick="Button1_Click1" />
<%--                            <input type="submit" value="Send Message" class="btn btn-primary" runat="server">--%>
                            <div class="submitting"></div>
                          </div>
                        </div>
                      </div>
                    </form>
                    <div class="w-100 social-media mt-5">
                      <h3>Follow us here</h3>
                      <p>
                        <a href="#">Facebook</a>
                        <a href="#">Twitter</a>
                        <a href="#">Instagram</a>
<%--                        <a href="#">Dribbble</a>--%>
                      </p>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 d-flex align-items-stretch">
<%--                  <div id="map" class="bg-white"></div>--%>
                            <div class="mapouter"><div class="gmap_canvas"><iframe style="border-radius:10px" width="1080" height="546" id="gmap_canvas" src="https://maps.google.com/maps?q=amman&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-to.org"></a><br><style>.mapouter{position:relative;text-align:right;height:546px;width:1080px;}</style><a href="https://www.embedgooglemap.net">embed google map into website</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:546px;width:1080px;}</style></div></div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
     <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your message has been sent succesfully !',
                html: '<a href="https://localhost:44348/Default">Return To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location = "https://localhost:44348/Contact";
            });


        }
    </script>
</asp:Content>
