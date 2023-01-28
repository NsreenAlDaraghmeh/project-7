﻿<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project_7.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 pt-5 text-center">
            <p class="breadcrumbs"><span class="me-2"><a href="Default.aspx">Home <i class="fa fa-chevron-right"></i></a></span> <span>About us <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">About Us</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-about-section">
      <div class="container-xl">
        <div class="row g-xl-5">
          <div class="col-md-6" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
            <div class="row">
              <div class="col-md-6">
                <div class="f-services d-md-flex flex-md-column-reverse">
                  <div class="img w-100" style="background-image: url(images/f-services.jpg);"></div>
                  <div class="text w-100 p-4 text-center mb-md-4">
                    <div class="icon"><span class="flaticon-pillow"></span></div>
                    <h3>Cozy Room</h3>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="f-services">
                  <div class="img w-100 mb-md-4" style="background-image: url(images/f-services-2.jpg);"></div>
                  <div class="text w-100 p-4 text-center">
                    <div class="icon"><span class="flaticon-special"></span></div>
                    <h3>Special Offers</h3>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 heading-section d-flex align-items-center" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
            <div class="mt-5 mt-md-0">
              <span class="subheading">About Us</span>
              <h2 class="mb-4">Almanara A Hotel Booking Agency</h2>
              <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
              <p><a href="#" class="btn btn-primary py-3 px-4">Book Your Room Now</a></p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-intro ftco-no-pt ftco-no-pb img" style="background-image: url(images/bg_1.jpg);">
      <div class="overlay"></div>
      <div class="container-xl py-5">
        <div class="row justify-content-center">
          <div class="col-lg-10 col-xl-8">
            <div class="row" data-aos="fade-up" data-aos-duration="1000">
              <div class="col-md-8 d-flex align-items-center">
                <div>
                  <span class="subheading">Find Best Hotel For Leaving</span>
                  <h1 class="mb-md-0 mb-4">Find the Best Hotel in Your Next Vacation</h1>
                </div>
              </div>
              <div class="col-md-4 d-flex align-items-center">
                <p class="mb-0"><a href="#" class="btn btn-primary py-md-4 py-3 px-md-5 px-4">Book Now</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="img vid-section" style="background-image: url(images/bg_2.jpg);">
      <div class="overlay"></div>
      <div class="container-xl">
        <div class="row justify-content-center">
          <div class="col-md-10 vid-height d-flex align-items-center justify-content-center text-center">
            <div class="video-wrap" data-aos="fade-up">
              <span class="subheading">Watch our luxurious hotel</span>
              <h3>Take A Tour</h3>
              <a href="https://vimeo.com/115041822" class="video-icon glightbox d-flex align-items-center justify-content-center">
                <span class="ion-ios-play"></span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>


    <section class="ftco-section testimony-section bg-light">
      <div class="container-xl">
        <%--<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section" data-aos="fade-up" data-aos-duration="1000">
            <span class="subheading">Testimonial</span>
            <h2 class="mb-3">Happy Guests</h2>
          </div>
        </div>--%>
        <%--<div class="row">
          <div class="col-md-12" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">
            <div class="carousel-testimony">
              <div class="item">
                <div class="testimony-wrap">
                  <div class="text">
                    <div class="d-flex align-items-center mb-4">
                      <div class="user-img" style="background-image: url(images/person_1.jpg)">
                        <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                      </div>
                      <div class="ps-3 tx">
                        <p class="name">Roger Scott</p>
                        <span class="position">Marketing Manager</span>
                      </div>
                    </div>
                    <p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap">
                  <div class="text">
                    <div class="d-flex align-items-center mb-4">
                      <div class="user-img" style="background-image: url(images/person_2.jpg)">
                        <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                      </div>
                      <div class="ps-3 tx">
                        <p class="name">Roger Scott</p>
                        <span class="position">Marketing Manager</span>
                      </div>
                    </div>
                    <p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap">
                  <div class="text">
                    <div class="d-flex align-items-center mb-4">
                      <div class="user-img" style="background-image: url(images/person_3.jpg)">
                        <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                      </div>
                      <div class="ps-3 tx">
                        <p class="name">Roger Scott</p>
                        <span class="position">Marketing Manager</span>
                      </div>
                    </div>
                    <p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap">
                  <div class="text">
                    <div class="d-flex align-items-center mb-4">
                      <div class="user-img" style="background-image: url(images/person_1.jpg)">
                        <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                      </div>
                      <div class="ps-3 tx">
                        <p class="name">Roger Scott</p>
                        <span class="position">Marketing Manager</span>
                      </div>
                    </div>
                    <p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap">
                  <div class="text">
                    <div class="d-flex align-items-center mb-4">
                      <div class="user-img" style="background-image: url(images/person_2.jpg)">
                        <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                      </div>
                      <div class="ps-3 tx">
                        <p class="name">Roger Scott</p>
                        <span class="position">Marketing Manager</span>
                      </div>
                    </div>
                    <p class="mb-4 msg">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>--%>
      </div>
    </section>

    <section class="ftco-gallery">
      <div class="container-fluid">
        <div class="row g-3">
          <div class="col-md" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
            <a href="images/gallery-1.jpg" class="gallery-wrap img d-flex align-items-center justify-content-center glightbox" style="background-image: url(images/gallery-1.jpg);">
              <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
            </a>
          </div>
          <div class="col-md" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
            <a href="images/gallery-1.jpg" class="gallery-wrap img d-flex align-items-center justify-content-center glightbox" style="background-image: url(images/gallery-2.jpg);">
              <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
            </a>
          </div>
          <div class="col-md" data-aos="fade-up" data-aos-delay="300" data-aos-duration="1000">
            <a href="images/gallery-3.jpg" class="gallery-wrap img d-flex align-items-center justify-content-center glightbox" style="background-image: url(images/gallery-3.jpg);">
              <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
            </a>
          </div>
          <div class="col-md" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
            <a href="images/gallery-4.jpg" class="gallery-wrap img d-flex align-items-center justify-content-center glightbox" style="background-image: url(images/gallery-4.jpg);">
              <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
            </a>
          </div>
          <div class="col-md" data-aos="fade-up" data-aos-delay="500" data-aos-duration="1000">
            <a href="images/gallery-5.jpg" class="gallery-wrap img d-flex align-items-center justify-content-center glightbox" style="background-image: url(images/gallery-5.jpg);">
              <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-search"></span></div>
            </a>
          </div>
        </div>
      </div>
    </section>
</asp:Content>
