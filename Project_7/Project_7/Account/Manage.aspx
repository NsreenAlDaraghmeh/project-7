<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="Project_7.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
   <style>
       #ctl01{
           background-color:#c5a880;
       }
       .editt{
   /* background-color:none;
    border:none;
    padding:0 40px 0 0;
    color:gray;
    text-align:left;*/
     border: none;
    background: none;
    cursor: pointer;
    margin: 0;
    padding: 0;
    color:gray;

}
    #MainContent_FileUpload1{
        color:white;
    }   

   </style>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="..\css\managestyle.css" rel="stylesheet" />
<div class="container bootstrap snippets bootdey" style="margin-top:100px;background-color:floralwhite ;height:600px;">
<div class="row">
  <div class="profile-nav col-md-3">
      <div class="panel">
          <div class="user-heading round" style="color:#c5a880">
              <a href="#">
                  <img runat="server" id="image" src="../images/profile.jpg" />
              </a>
              <h1>
                  <asp:Label ID="Name2" runat="server" Text=""></asp:Label></h1>
              <p>
                  <asp:Label ID="Email1" runat="server" Text=""></asp:Label></p>
          </div>

          <ul class="nav nav-pills nav-stacked" style="display: block;">
              <li class="active"><a href="Manage.aspx"> <i class="fa fa-user"></i> Profile</a></li>
              <li><a href="#"> <i class="fa fa-calendar"></i> Recent Activity <span class="label label-warning pull-right r-activity">9</span></a></li>
              <li><a href="#"> <i class="fa fa-edit"></i>  <asp:Button ID="Button3" runat="server" Text=" Edit profile "  CssClass="editt" OnClick="Button3_Click"/></a></li>
          </ul>
      </div>
  </div>
  <div class="profile-info col-md-9">
      <div class="panel">
  
              <textarea placeholder="Write your feedback ?" runat="server" id="feedback" rows="2" class="form-control"></textarea>
         
          <footer class="panel-footer">
<%--              <button class="btn btn-warning pull-right">Post</button>--%>
<%--              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
              <asp:Button class="btn btn-warning pull-right" ID="Button1" runat="server" Text="Post" OnClick="Button1_Click" />
                      </ContentTemplate>
                  </asp:UpdatePanel>
           <%--   <ul class="nav nav-pills">
                  <li>
                      <a href="#"><i class="fa fa-map-marker"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class="fa fa-camera"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class=" fa fa-film"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class="fa fa-microphone"></i></a>
                  </li>
              </ul>--%>
          </footer>
      </div>
      <div class="panel">
          <div class="bio-graph-heading" style="/*background-color:#c5a880 ;*/ color:#c5a880">
              <asp:Label ID="feeds" runat="server" Text=""></asp:Label>
          </div>
          <div class="panel-body bio-graph-info">
              <h1>Your Information </h1>
              <div class="row" id="row2" runat="server">
                  <div class="bio-row">
                      <p><span>User Name :</span>
                          <asp:Label ID="UserName" runat="server" Text=""></asp:Label></p>
                  </div>
                  <div class="bio-row">
                      <p><span> Name : </span><asp:Label ID="Name1" runat="server" Text=""></asp:Label></p>
                  </div>
                  <div class="bio-row">
                      <p><span>City : </span><asp:Label ID="City" runat="server" Text=""></asp:Label></p>
                  </div>
                  <div class="bio-row">
                      <p><span>Address :</span><asp:Label ID="Address" runat="server" Text=""></asp:Label></p>
                  </div>
                 
                  <div class="bio-row">
                      <p><span>Email :</span><asp:Label ID="Email" runat="server" Text=""></asp:Label></p>
                  </div>
                  
                  <div class="bio-row">
                      <p><span>Phone Number : </span><asp:Label ID="Phone" runat="server" Text=""></asp:Label></p>
                  </div>
              </div>
<%--             ........... Edit--%>
              <div id="row1" runat="server">
                     <div class="row" >
                  <div class="bio-row">
                      <p><span>User Name </span>
                          <asp:TextBox class="form-control"  ID="TextBox1" runat="server"></asp:TextBox>
                          <%--<asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%></p>
                  </div>
                  <div class="bio-row">
                      <p><span> Name </span>
                          <asp:TextBox class="form-control"  ID="TextBox2"  runat="server" ></asp:TextBox>
                          <%--<asp:Label ID="Label2" runat="server" Text=""></asp:Label>--%></p>
                  </div>
                  <div class="bio-row">
                      <p><span>City </span>
                          <asp:TextBox class="form-control"  ID="TextBox3" runat="server"></asp:TextBox>
                          <%--<asp:Label ID="Label3" runat="server" Text=""></asp:Label>--%></p>
                  </div>
                  <div class="bio-row">
                      <p><span>Address</span>
                          <asp:TextBox class="form-control"  ID="TextBox4" runat="server"></asp:TextBox>
                          <%--<asp:Label ID="Label4" runat="server" Text=""></asp:Label>--%></p>
                  </div>
                 
                  <div class="bio-row">
                      <p><span>Email </span>
                          <asp:TextBox class="form-control"  ID="TextBox5" runat="server"></asp:TextBox>
                          <%--<asp:Label ID="Label5" runat="server" Text=""></asp:Label>--%></p>
                  </div>
                  
                  <div class="bio-row">
                      <p><span>Phone Number </span>
                          <asp:TextBox class="form-control"  ID="TextBox6" runat="server"></asp:TextBox>
                         <%-- <asp:Label ID="Label6" runat="server" Text=""></asp:Label>--%></p>
                  </div>
                         

                         
                  <div class="bio-row" >
                      <p> <span  style="width:208px;">Edit Your Photo</span> <br><asp:FileUpload  class="btn btn-primary"  ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" /></p>
                          </div>
                         <div class="bio-row">
                             <span  style="width:208px;"></span><br />
                      <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Update" OnClick="Button2_Click" />

                  </div>
                         </div>

            

              </div>



<%--              .......Edit--%>
          </div>
      </div>
      <div>
          <%--<div class="row">
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="35" data-fgcolor="#e06b7d" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(224, 107, 125); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="red">Envato Website</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="63" data-fgcolor="#4CC5CD" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(76, 197, 205); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="terques">ThemeForest CMS </h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="75" data-fgcolor="#96be4b" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(150, 190, 75); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="green">VectorLab Portfolio</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="50" data-fgcolor="#cba4db" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(203, 164, 219); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="purple">Adobe Muse Template</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
          </div>--%>

  </div>
                          <%--<div id="GridContainer" runat="server"></div>--%>
      </div>
</div>
</div>
    <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon="{&quot;rayId&quot;:&quot;786c5de60e322c5d&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2022.11.3&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function pass(quantity, donation) {
            Swal.fire({
                icon: 'success',
                title: 'Your feedback has been sent succesfully !',
                html: '<a href="https://localhost:44348/Default">Return To Home Page</a>',
                //footer: '<a href="">Why do I have this issue?</a>'

            }).then(function () {
                window.location = "https://localhost:44348/Account/Manage";
            });


        }
    </script>

</asp:Content>
