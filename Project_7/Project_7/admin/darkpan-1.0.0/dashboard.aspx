<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Project_7.admin.darkpan_1._0._0.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

<title>DarkPan - Bootstrap 5 Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body>
 
    <form id="form1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
      <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark" style="height:353px;">
                <a href="dashboard.aspx" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>Dashboard</h3>
                </a>
             
                <div class="navbar-nav w-100">
                    <asp:LinkButton  class="nav-item nav-link" ID="dashboard1" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</asp:LinkButton>
                  <%--  <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Elements</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="button.html" class="dropdown-item">Buttons</a>
                            <a href="typography.html" class="dropdown-item">Typography</a>
                            <a href="element.html" class="dropdown-item">Other Elements</a>
                        </div>
                    </div>--%>
                   <asp:LinkButton  class="nav-item nav-link " ID="Room1" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-th me-2"></i>Room</asp:LinkButton>
                    <a href="check.aspx" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>CheckOut</a>
                                 <asp:LinkButton  class="nav-item nav-link " ID="users" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-th me-2"></i>Users</asp:LinkButton>

                    <a href="../../Default.aspx" class="nav-item nav-link"><i class="fa fa-home me-2"></i>Back to Home</a>
                   <%-- <a href="table.html" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Tables</a>
                    <a href="chart.html" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Charts</a>--%>
                    <%--<div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="signin.html" class="dropdown-item">Sign In</a>
                            <a href="signup.html" class="dropdown-item">Sign Up</a>
                            <a href="404.html" class="dropdown-item">404 Error</a>
                            <a href="blank.html" class="dropdown-item">Blank Page</a>
                        </div>
                    </div>--%>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
           
        <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a style="color:#c5a880;" href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="d-none d-md-flex ms-4">
                    <asp:LinkButton ID="Buttonbox" runat="server"  class="btn btn-square btn-primary m-2"  OnClick="search_click" ><i class="fa fa-search"></i></asp:LinkButton>
<%--                    <asp:Button ID="Button1" runat="server" Text="sh" OnClick="search_click"  />--%>
<%--                     <button type="button" runat="server" class="btn btn-square btn-outline-danger m-2"><i class="fa fa-home"></i></button>--%>
                        <input id="searchbox" runat="server" class="form-control bg-dark border-0" type="search" placeholder="Search" />


                </div>
                <div class="navbar-nav align-items-center ms-auto">
                    <%--<div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-envelope me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Message</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider"/>
              
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all message</a>
                        </div>
                    </div>--%>
                    <%--<div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-bell me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Notificatin</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Profile updated</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">New user added</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Password changed</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all notifications</a>
                        </div>
                    </div>--%>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="../../images/nsreen.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex" id="AdminName" runat="server">Nsreen Al-Daraghmeh</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
<%--                            <a href="..\..\Manage.aspx" class="dropdown-item">My Profile</a>--%>
<%--                            <a href="#" class="dropdown-item">Log Out</a>--%>
                              <asp:LoginView runat="server" ViewStateMode="Disabled">
                      
                        <LoggedInTemplate>
                          
                                    <asp:LoginStatus runat="server" class="dropdown-item" style="color:white;" LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/" OnLoggingOut="Unnamed_LoggingOut" />
                                
                        </LoggedInTemplate>
                    </asp:LoginView>

                        </div>
                    </div>
                </div>
            </nav>
            
            <!-- Navbar End -->







            <!-- Sale & Revenue Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-line fa-3x text-sohaib"></i>
                            <div class="ms-3">
                                <span class="mb-2">Booking</span><br />
<%--                                <h6 class="mb-0">$1234</h6>--%>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-bar fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Sale</p>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-area fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Customers</p>
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-pie fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Rooms</p>
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sale & Revenue End -->


            <!-- Sales Chart Start -->
           
            <!-- Sales Chart End -->

            <!-- Recent Sales Start -->
            <div class="container-fluid pt-4 px-4"">
                <div class="bg-secondary text-center rounded p-4"  style="position:relative;height:100%;">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 id="SpanTitle" runat="server" class="mb-0">Booking</h6>
                    </div>
                    <div class="table-responsive">

                        <asp:GridView class="table text-start align-middle table-bordered table-hover mb-0"  ID="GridView3" runat="server" OnRowDataBound="GridView3_RowDataBound"></asp:GridView>





                        <asp:GridView ID="GridView1"   class="table text-start align-middle table-bordered table-hover mb-0"  runat="server">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="IDbooking" DataNavigateUrlFormatString="dashboard.aspx?cancelid={0}" Text="Cancel" />
                                <asp:HyperLinkField DataNavigateUrlFields="IDbooking" DataNavigateUrlFormatString="dashboard.aspx?editid={0}" Text="Edit" />
                                <asp:HyperLinkField DataNavigateUrlFields="IDbooking" DataNavigateUrlFormatString="dashboard.aspx?id={0}" Text="CheckOut" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="GridView2" class="table text-start align-middle table-bordered table-hover mb-0" runat="server" OnRowDataBound="GridView2_RowDataBound">
                            <Columns>
                                <asp:HyperLinkField  DataNavigateUrlFields="IDroom" DataNavigateUrlFormatString="dashboard.aspx?editroomid={0}&tab=room1" Text="Edit" />
                            </Columns>
                        </asp:GridView>
                        <div id="divdetail" runat="server">
                        <asp:DetailsView ID="DetailsView1" class="table text-start align-middle table-bordered table-hover mb-0" runat="server"  Height="50px"  Width="125px">
                        </asp:DetailsView>

                        <asp:Button ID="btndelete" CssClass="btn-primary"  runat="server" Text="Delete" OnClick="Unnamed1_Click" />
                            </div>
                          </div>
                    <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                      <ajaxToolkit:ModalPopupExtender ID="mpe" runat="server" TargetControlId="LinkButton1" 
                            PopupControlID="ModalPanel" OkControlID="but" />
                   <asp:Panel ID="ModalPanel" runat="server">

                        <div id="modalTest" class="form-controle" runat="server" style="border: 1px solid black;background-color:#191C24;">
                            <asp:DetailsView class="table text-start align-middle table-bordered table-hover mb-0" ID="DetailsView2" runat="server" Height="50px" Width="650px"></asp:DetailsView>
                        </div>
                       <asp:Button ID="but" Text="text" runat="server" Style="display:none;" />
                             <asp:Button ID="OKButton" CssClass="btn-primary" runat="server" Text="CheckOut" OnClick="checkout_Click" />
                             <asp:Button ID="Button3" CssClass="btn-primary" runat="server" Text="Cancel" OnClick="cancleCheckout" />


                    </asp:Panel>
<%--                    ------------------------ booking----------------------------------%>
                    <div id="editform" runat="server">
                         <div class="form-floating mb-3">
                                <input runat="server" type="text" class="form-control" id="Numchildid" placeholder="Numer of child"/>
                                <label for="floatingInput">Numer of child</label>
                            </div>
                         <div class="form-floating mb-3">
                                <input runat="server" type="text" class="form-control" id="Numpeopleid"
                                    placeholder=""/>
                                <label for="floatingInput">Numer of people</label>
                            </div>
                  
                           
                      <%--  <div id="date-picker-example" class="md-form md-outline input-with-post-icon datepicker" inline="true">
                            <input runat="server" placeholder="Select date" type="text" id="datef" class="form-control"/>
                            <label for="example">Try me...</label>
                            <i class="fas fa-calendar input-prefix"></i>
 
                        </div>
                         <div id="date-picker-example1" class="md-form md-outline input-with-post-icon datepicker" inline="true">
                            <input runat="server" placeholder="Select date" type="text" id="datet" class="form-control"/>
                            <label for="example">Try me...</label>
                            <i class="fas fa-calendar input-prefix"></i>
 
                        </div>--%>

                        <div class="row">
                            <div class="col-sm-6 form-group">

                                <label for="">Arrival Date</label>
                                <div style="position: relative;">
                                    <asp:TextBox CssClass="form-control" ID="txtStartDate" runat="server" Text="" ReadOnly="true"></asp:TextBox>
                                    <asp:ImageButton runat="server" ID="ImgButton1" OnClick="ImgButton1_Click" CssClass="icon" ImageUrl="images/calender.png" Style="position: absolute; right: 10px; top: 10px; width: 15px; height: 20px;" />
                                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar2_DayRender"></asp:Calendar>
                                    <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>

                                </div>
                            </div>
                            
                            <div class="col-sm-6 form-group">

                                <label for="">Departure Date</label>
                                <div style="position: relative;">
                                    <asp:TextBox CssClass="form-control" ID="txtEndDate" runat="server" Text="" ReadOnly="true"></asp:TextBox>
                                    <asp:ImageButton runat="server" ID="ImageButton2" OnClick="ImageButton2_Click" CssClass="icon" ImageUrl="images/calender.png" Style="position: absolute; right: 10px; top: 10px; width: 15px; height: 20px;" />
                                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" OnDayRender="Calendar2_DayRender1"></asp:Calendar>
                                    <asp:Label ID="Label4" runat="server" Text="" ForeColor="Red"></asp:Label>

                                </div>
                            </div>
                            <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Date" ForeColor="Red"
                                runat="server" ControlToValidate="txtStartDate" ControlToCompare="txtEndDate"
                                Operator="LessThan" Type="Date" ErrorMessage="Start date must be less than End date."></asp:CompareValidator>

                        </div>
                          <asp:Button ID="Button1" CssClass="btn-primary"  runat="server" Text="Update" OnClick="edit_Click" />

                    </div>
<%--                    ----------------------------- Room ---------------------------%>
                    <div id="roomedit" runat="server">
                         <div class="form-floating mb-3" style="height:65px;">
                                <input runat="server" type="text" class="form-control" id="roomnumber" placeholder="Room Number"/>
                                <label for="floatingInput">Room Number</label>
                            </div>
                        <div class="form-floating mb-3" style="height:65px;">
                            <textarea  id="discriptionroom" runat="server" class="form-control" cols="20"  rows="3"></textarea>
<%--                                <input runat="server" type="text" class="form-control" id="Text1" placeholder="Room Number"/>--%>
                                <label for="floatingInput">DiscriptionRoom</label>
                            </div>
                        <div class="form-floating mb-3" style="height:65px;">
                                <input runat="server" type="text" class="form-control" id="Quntity" placeholder="Quntity"/>
                                <label for="floatingInput">Quntity</label>
                            </div>
                        <div class="form-floating mb-3" style="height:65px;">
                                <input runat="server" type="text" class="form-control" id="price" placeholder="Price"/>
                                <label for="floatingInput">Price</label>
                            </div>
                         <div class="mb-3">
                                <label for="formFile" class="form-label">choose another image1</label>
                             <asp:FileUpload ID="formFile1" runat="server"  class="form-control bg-dark" />
<%--                                <input runat="server" class="form-control bg-dark" type="file" id="formFile1"/>--%>
                            </div>
                        <div class="mb-3">
                                <label  for="formFile" class="form-label">choose another image2</label>
                            <asp:FileUpload ID="formFile2" runat="server"  class="form-control bg-dark" />

<%--                                <input runat="server" class="form-control bg-dark" type="file" id="formFile2"/>--%>
                            </div>
                        <div class="mb-3">
                            <label for="formFile" class="form-label">choose another image3</label>
                            <asp:FileUpload ID="formFile3" runat="server" class="form-control bg-dark" />

                            <%--                                <input runat="server" class="form-control bg-dark" type="file" id="formFile3"/>--%>
                        </div>
                        <div class="mb-3">
                                <label for="formFile" class="form-label">choose another image4</label>
                                 <asp:FileUpload ID="formFile4" runat="server"  class="form-control bg-dark" />

<%--                                <input runat="server" class="form-control bg-dark" type="file" id="formFile4"/>--%>
                            </div>

                            <asp:Button ID="Button2" CssClass="btn-primary"  runat="server" Text="Update Room" OnClick="UpdateRoom" />

                    </div>
                 </div>

                </div>
            </div>
            </div>
        
            
            <!-- Recent Sales End -->
        
            <!-- Widgets Start -->
       
            <!-- Widgets End -->

            <!-- Footer Start -->
           
            <!-- Footer End -->
        
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    

    <!-- JavaScript Libraries -->
            <script>                          
                $('.datepicker').datepicker({
                    inline: true
                });</script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
            <script src="js/main.js"></script>
            <%-- <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
             <script>
                 function pass () { 
                 const swalWithBootstrapButtons = Swal.mixin({
                     customClass: {
                         confirmButton: 'btn btn-success',
                         cancelButton: 'btn btn-danger'
                     },
                     buttonsStyling: false
                 })

                     swalWithBootstrapButtons.fire({
                         title: 'Are you sure?',
                         text: "You won't be able to revert this!",
                         icon: 'warning',
                         showCancelButton: true,
                         confirmButtonText: 'Yes, delete it!',
                         cancelButtonText: 'No, cancel!',
                         reverseButtons: true
                     }).then((result) => {
                         if (result.isConfirmed) {
                             swalWithBootstrapButtons.fire(
                                 'Deleted!',
                                 'Your file has been deleted.',
                                 'success'
                             )
                         } else if (
                             /* Read more about handling dismissals below */
                             result.dismiss === Swal.DismissReason.cancel
                         ) {
                             swalWithBootstrapButtons.fire(
                                 'Cancelled',
                                 'Your imaginary file is safe :)',
                                 'error'
                             )
                         }
                     }
             </script>--%>
    </form>
</body>

</html>
