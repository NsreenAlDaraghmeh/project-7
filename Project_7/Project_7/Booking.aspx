<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Project_7.Booking1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
              <asp:UpdatePanel ID="UpdatePanel1"

         runat="server" UpdateMode="Conditional">

    <ContentTemplate>
   <div id="contain1">
     <section class="hero-wrap hero-wrap-2" style="background-image: url('https://cache.marriott.com/content/dam/marriott-renditions/AQJLC/aqjlc-suite-terrace-4955-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1215px:*');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 pt-5 text-center">
            <p class="breadcrumbs"><span class="me-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Booking <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">Booking Now</h1>
          </div>
        </div>
      </div>
    </section>
     <section class="site-hero site-hero-innerpage overlay" data-stellar-background-ratio="0.5" style="background-image: url(images/big_image_1.jpg);">
      <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
          <div class="col-md-12 text-center">

            <div class="mb-5 element-animate" >
              <h1 style="margin-top:50px;">Reservation</h1>
            </div>

          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <section id="main11" class="site-section" runat="server">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2 class="mb-5">Reservation Form</h2>
                
    

   

   
      
  
                  <div class="row">
                      <div class="col-sm-6 form-group">
                          
                          <label for="">Arrival Date</label>
                          <div style="position: relative;">
                               <asp:TextBox CssClass="form-control" ID="txtStartDate" runat="server" Text="" ReadOnly="true" ></asp:TextBox>
    <asp:ImageButton runat="server" ID="ImgButton1" OnClick="ImgButton1_Click" CssClass="icon" ImageUrl="images/calender.jpeg" style="position: absolute; right: 10px; top: 10px; width:15px; height:20px;" />
         <asp:Calendar ID="Calendar1"  runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar2_DayRender" >
                               </asp:Calendar>
                      <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                           
                               &nbsp;<asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
                           
                          </div>
                      </div>

                      <div class="col-sm-6 form-group">
                          
                          <label for="">Departure Date</label>
                          <div style="position: relative;">
                                       <asp:TextBox CssClass="form-control" ID="txtEndDate" runat="server" Text="" ReadOnly="true" ></asp:TextBox>
    <asp:ImageButton runat="server" ID="ImageButton2" OnClick="ImageButton2_Click"  CssClass="icon" ImageUrl="images/calender.jpeg" style="position: absolute; right: 10px; top: 10px; width:15px; height:20px;" />
         <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" OnDayRender="Calendar2_DayRender1" >
                                       </asp:Calendar>
        <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                            
                          </div>
                      </div>
                    <%--    <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Date" ForeColor="Red"
        runat="server" ControlToValidate="txtStartDate" ControlToCompare="txtEndDate"
        Operator="LessThan" Type="Date" ErrorMessage="Start date must be less than End date."></asp:CompareValidator>--%>
                    <%-- <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Date" ForeColor="Red"
        runat="server" ControlToValidate="txtStartDate" ControlToCompare="txtEndDate"
        Operator="LessThan" Type="Date" ErrorMessage="Start date must be less than End date."></asp:CompareValidator>  --%> 
                  </div>



                  <div class="row" style="margin-top:10px;" >
                  
                    <div class="col-md-6 form-group">
                      <label for="room">Guests</label>
                         <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control" >
                             <asp:ListItem>1 </asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem>3</asp:ListItem>
                             <asp:ListItem>4</asp:ListItem>
                        
                    </asp:DropDownList>
                    
                    </div>
                        <div class="col-md-6 form-group">
                      <label for="room">Children</label>
                      <asp:DropDownList ID="DropDownList2" runat="server"  CssClass="form-control" >
                             <asp:ListItem>1 </asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem>3</asp:ListItem>
                             <asp:ListItem>4</asp:ListItem>
                        
                    </asp:DropDownList>
                    </div>
                  </div>
                  <div class="row"  style="margin-top:20px;">
                        <div class="col-md-6 form-group">
                           <label for="room" >Full Name</label>
                         <asp:TextBox ID="firstName" runat="server" class="form-control "></asp:TextBox>
                    
                    </div>
                        <div class="col-md-6 form-group">
                        <label for="room">Email</label>
                     <asp:TextBox ID="Eemail" runat="server" class="form-control " ReadOnly="true"></asp:TextBox>
                    
                    </div>
                  </div>
                  <div class="row" style="margin-top:20px;">
                    <div class="col-md-6 form-group">
                  <label for="room">Phone Number</label>
                   <asp:TextBox ID="Phonenum" runat="server" class="form-control " ReadOnly="true" ></asp:TextBox>
                    
                    </div>
                       <div class="col-md-6 form-group">
                       <label for="room">Country</label>

                        <asp:TextBox ID="COUNTRY" runat="server" class="form-control " ></asp:TextBox>
                         </div>
                    </div>

             <div class="row" style="margin-top:20px;">
                    <div class="col-md-6 form-group">
                         <label for="room">City</label>

                        <asp:TextBox ID="CITY" runat="server" class="form-control " ></asp:TextBox>
                    </div>
                  <div class="col-md-6 form-group">
                                            <label for="room">Zip Code</label>

                        <asp:TextBox ID="Zipcode" runat="server" class="form-control "></asp:TextBox>
                    </div>
               </div>
                


                  <div class="row" style="margin-top:30px;">
                    <div class="col-md-6 form-group">
            <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="Button1_Click" />
                              &nbsp;<asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>          

                    </div>
                  </div>
              </div>
              <div class="col-md-1"></div>
              <div class="col-md-5">
<h3><asp:Label ID="room_name" runat="server" Text="" class="mb-5"></asp:Label></h3>
                <div class="media d-block room mb-0">
              <figure>
                <img src="images/bg_1.jpg" ID="img1" runat="server" alt="Generic placeholder image" class="img-fluid">
                <div class="overlap-text">
                  <span>
                    Featured Room 
                    <span class="ion-ios-star"></span>
                    <span class="ion-ios-star"></span>
                    <span class="ion-ios-star"></span>
                  </span>
                </div>
              </figure>
              <div class="media-body">
                <h3 class="mt-0">
                <asp:Label ID="Descr" runat="server" Text=""></asp:Label></h3>
                       <ul class="room-specs">
                  <li><span class="ion-ios-people-outline"></span> Room service, 24-hour</li>
                  <li><span class="ion-ios-crop"></span> Bottled water, complimentary</li>
                  <li><span class="ion-ios-people-outline"></span> Coffee/tea maker</li>
                  <li><span class="ion-ios-people-outline"></span> Instant hot water</li>
                  <li><span class="ion-ios-people-outline"></span>Air-conditioned</li>
                  <li><span class="ion-ios-people-outline"></span>This room is non-smoking</li>

                </ul>

                <p class="btn btn-primary btn-sm"> <asp:Label ID="pricetxt" runat="server" Text=""></asp:Label> /Night</p>
              </div>
            </div>
              </div>
            </div>
          </div>
    </section>
    <!-- END section -->
   
    <section class="section-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/img_5.jpg);">
      <div class="container" id="foot" runat="server">
        <div class="row justify-content-center align-items-center intro">
          <div class="col-md-9 text-center element-animate">
            <h2 style="margin-top:50px;">Relax and Enjoy your Holiday</h2>
          </div>
        </div>
      </div>
    </section>
         </div>




    <section id="maiin2" runat="server">
        <div class="container">

        <div class="row">
            
            <div class="col-12 mt-4">
                <div class="card p-3">
                    <p class="mb-0 fw-bold h4">Payment Methods</p>
                </div>
            </div>
            <div class="col-12">
                <div class="card p-3">
                    <div class="card-body border p-0">
                        <p>
                            <a class="btn btn-primary w-100 h-100 d-flex align-items-center justify-content-between"
                                data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                                aria-controls="collapseExample">
                                <span class="fw-bold">PayPal</span>
                                <span class="fab fa-cc-paypal">
                                </span>
                            </a>
                        </p>
                        <div class="collapse p-3 pt-0" id="collapseExample">
                            <div class="row">
                                <div class="col-8">
                                    <p class="h4 mb-0">Summary</p>
                                    <p class="mb-0"><span class="fw-bold">Room:</span><span class="c-green"><asp:Label ID="product" runat="server" Text="Label"></asp:Label>
                                            </span></p>
                                    <p class="mb-0"><span class="fw-bold">Price</span><span
                                            class="c-green">: <asp:Label ID="price1" runat="server" Text="Label"></asp:Label>$/Night</span></p>
                                     <p class="mb-0"><span class="fw-bold"> Number of days:</span><span
                                            class="c-green"> <asp:Label ID="Label3" runat="server" Text=""></asp:Label>Day</span></p>
                                     <p class="mb-0"><span class="fw-bold"> Total Price:</span><span
                                            class="c-green"> <asp:Label ID="Label4" runat="server" Text=""></asp:Label>$</span></p>
                                    <p class="mb-0">
                                        <asp:Label ID="descc1" runat="server" Text=""></asp:Label></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body border p-0">
                        <p>
                            <a class="btn btn-primary p-2 w-100 h-100 d-flex align-items-center justify-content-between"
                                data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                                aria-controls="collapseExample">
                                <span class="fw-bold">Credit Card</span>
                                <span class="">
                                    <span class="fab fa-cc-amex"></span>
                                    <span class="fab fa-cc-mastercard"></span>
                                    <span class="fab fa-cc-discover"></span>
                                </span>
                            </a>
                        </p>
                        <div class="collapse show p-3 pt-0" id="collapseExample">
                            <div class="row">
                                <div class="col-lg-5 mb-lg-0 mb-3">
                                    <p class="h4 mb-0">Summary</p>
                                    <p class="mb-0"><span class="fw-bold">Room:</span><span class="c-green"><asp:Label ID="product2" runat="server" Text=""></asp:Label>
                                            </span></p>
                                    <p class="mb-0"><span class="fw-bold">Price:</span><span
                                            class="c-green"> <asp:Label ID="price2" runat="server" Text=""></asp:Label>$/Night</span></p>
                                    <p class="mb-0"><span class="fw-bold"> Number of days:</span><span
                                            class="c-green"> <asp:Label ID="Label5" runat="server" Text=""></asp:Label>Day</span></p>
                                     <p class="mb-0"><span class="fw-bold"> Total Price:</span><span
                                            class="c-green"> <asp:Label ID="Label6" runat="server" Text=""></asp:Label>$</span></p>

                                    <p class="mb-0">
                                        <asp:Label ID="descc" runat="server" Text=""></asp:Label></p>
                                </div>
                                <div class="col-lg-7">
                                    <div action="" class="form">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" ">
                                                    <label for="" class="form__label">Card Number</label>
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" ">
                                                    <label for="" class="form__label">Email</label>
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form__div">
                                                    <input type="password" class="form-control" placeholder=" ">
                                                    <label for="" class="form__label">cvv code</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" ">
                                                    <label for="" class="form__label">name on the card</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                          
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                <ContentTemplate>
                                                <asp:Button ID="Button2" runat="server" class="btn btn-primary w-100" Text="Submit" OnClick="Button2_Click" />
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        </div>
                </section>
      
                 </ContentTemplate>
                    </asp:UpdatePanel> 
<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your Booking Done !',
                html: '<a href="https://localhost:44348/Default">Return To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location = "https://localhost:44348/room";
            });


        }
    </script>
</asp:Content>
