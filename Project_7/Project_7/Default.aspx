﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project_7._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <section class="hero-wrap" style="background-image: url('images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
        	<div class="col-lg-10 text-center">
        		<span class="subheading">Enjoy Your Wonderful Holidays With A Great Luxury Experience!</span>
        		<h1 class="mb-4">Most Relaxing Place</h1>
        		<p><a href="https://localhost:44348/Default#gallery" class="btn btn-primary p-4 py-3">Take A Tour <span class="ion-ios-arrow-round-forward"></span></a> <a href="About.aspx" class="btn btn-white btn-outline-white p-4 py-3">Learn More <span class="ion-ios-arrow-round-forward"></span></a></p>
        	</div>
        </div>
      </div>
    </section>

		<section class="ftco-section ftco-no-pb ftco-no-pt ftco-booking">
    	<div class="container">
	    	<div class="row">
					<div class="col-md-12">
						<div action="#" class="booking-form">
	        		<div class="row g-0">
	        			<div class="col-md-6 col-lg form-wrap d-flex py-3 py-lg-5 px-4">
	        				<div class="form-group ps-4 border-0">
	        					<label for="#">Check-In</label>
	          				<div class="form-field">
	          					<div class="icon"><span class="fa fa-calendar"></span></div>
			            		<input type="text" class="form-control arrival_date" placeholder="Check-In Date">
			              </div>
		              </div>
	        			</div>
	        			<div class="col-md-6 col-lg form-wrap d-flex py-3 py-lg-5 px-4">
	        				<div class="form-group ps-4">
	        					<label for="#">Check-Out</label>
	          				<div class="form-field">
	          					<div class="icon"><span class="fa fa-calendar"></span></div>
			            		<input type="text" class="form-control departure_date" placeholder="Check-Out Date">
			              </div>
		              </div>
	        			</div>
	        			<div class="col-md-6 col-lg form-wrap d-flex py-3 py-lg-5 px-4">
	        				<div class="form-group ps-4">
	        					<label for="#">Rooms</label>
	        					<div class="form-field">
	          					<div class="select-wrap">
	                      <div class="icon"><span class="fa fa-chevron-down"></span></div>
	                      <select name="" id="" class="form-control">
	                        <option value="">Suite</option>
	                        <option value="">Family Room</option>
	                        <option value="">Classic Room</option>
	                        <option value="">Superior Room</option>
	                        <option value="">Luxury Room</option>
	                      </select>
	                    </div>
			              </div>
		              </div>
	        			</div>
	        			<div class="col-md-6 col-lg form-wrap d-flex py-3 py-lg-5 px-4">
	        				<div class="form-group ps-4">
	        					<label for="#">Guests</label>
	        					<div class="form-field">
	          					<div class="select-wrap">
	                      <div class="icon"><span class="fa fa-chevron-down"></span></div>
	                      <select name="" id="" class="form-control">
	                        <option value="">1 Person</option>
	                        <option value="">2 Person</option>
	                        <option value="">3 Person</option>
	                        <option value="">4 Person</option>
	                        <option value="">5 Person</option>
	                        <option value="">6-9 Person</option>
	                        <option value="">10+ Person</option>
	                      </select>
	                    </div>
			              </div>
		              </div>
	        			</div>
	        			<div class="col-md-12 col-lg d-flex">
	        				<div class="form-group d-flex border-0">
	        					<div class="form-field w-100 align-items-center d-flex">
	        						<a href="#" type="submit" class="d-flex justify-content-center align-items-center align-self-stretch form-control btn btn-primary py-lg-4 py-xl-0"><span>Check Availability</span></a>
			                <!-- <input type="submit" value="Check Availability" class="align-self-stretch form-control btn btn-primary"> -->
			              </div>
		              </div>
	        			</div>
	        		</div>
	        	</div>
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
	            <h2 class="mb-4">Al Manara A Hotel Booking Agency</h2>
	            <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
	            <p><a href="room.aspx" class="btn btn-primary py-3 px-4">Book Your Room Now</a></p>
            </div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section">
    	<div class="container-xl">
    		<div class="row justify-content-center">
    			<div class="col-md-8 heading-section text-center mb-5" data-aos="fade-up" data-aos-duration="1000">
          	<span class="subheading">Al Manara Services</span>
            <h2 class="mb-4">Explore Our Hotel Services</h2>
          </div>
    		</div>
    		<div class="row justify-content-center">
    			<div class="col-md-3 col-xl-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
    				<a  class="services">
    					<div class="icon"><span class="flaticon-wifi-signal"></span></div>
    					<div class="text">
    						<h2>Free Wifi</h2>
    					</div>
    				</a>
    			</div>
    			<div class="col-md-3 col-xl-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
    				<a class="services">
    					<div class="icon"><span class="flaticon-online-booking"></span></div>
    					<div class="text">
    						<h2>Easy Booking</h2>
    					</div>
    				</a>
    			</div>
    			<div class="col-md-3 col-xl-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300" data-aos-duration="1000">
    				<a  class="services">
    					<div class="icon"><span class="flaticon-cooking"></span></div>
    					<div class="text">
    						<h2>Restaurant</h2>
    					</div>
    				</a>
    			</div>
    			<div class="col-md-3 col-xl-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
    				<a class="services">
    					<div class="icon"><span class="flaticon-swimming-pool"></span></div>
    					<div class="text">
    						<h2>Swimming Pool</h2>
    					</div>
    				</a>
    			</div>
    			<div class="col-md-3 col-xl-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
    				<a  class="services">
    					<div class="icon"><span class="flaticon-cosmetics"></span></div>
    					<div class="text">
    						<h2>Beauty &amp; Health</h2>
    					</div>
    				</a>
    			</div>
    			<div class="col-md-3 col-xl-2 text-center d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
    				<a  class="services">
    					<div class="icon"><span class="flaticon-reception"></span></div>
    					<div class="text">
    						<h2>Help &amp; Support</h2>
    					</div>
    				</a>
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
								<p class="mb-0"><a href="room.aspx" class="btn btn-primary py-md-4 py-3 px-md-5 px-4">Book Now</a></p>
							</div>
		        </div>
					</div>
				</div>
			</div>
		</section>

    <section class="ftco-section bg-light">
    	<div class="container-xl">
    		<div class="row justify-content-center">
    			<div class="col-md-8 heading-section text-center mb-5" data-aos="fade-up" data-aos-duration="1000">
          	<span class="subheading">Our Rooms</span>
            <h2 class="mb-4">Featured Rooms</h2>
          </div>
    		</div>
    		<div class="row justify-content-center">
    			<div class="col-md-6 col-lg-4 d-flex align-items-stretch" data-aos="flip-left" data-aos-delay="100" data-aos-duration="1000">
    				<div class="room-wrap d-md-flex flex-md-column-reverse">
        			<a href="../RoomSingle.aspx?id=1" class="img img-room" style="background-image: url(images/room-1.jpg);">
        			</a>
        			<div class="text p-5 text-center">
        				<h3><a href="../RoomSingle.aspx?id=1">Suite Room</a></h3>
        				<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
        				<p class="mb-0 mt-2"><span class="me-3 price">$450 <small>/ night</small></span><a href="../RoomSingle.aspx?id=1" class="btn-custom">Book Now</a></p>
        			</div>
        		</div>
    			</div>
    			<div class="col-md-6 col-lg-4 d-flex align-items-stretch" data-aos="flip-left" data-aos-delay="200" data-aos-duration="1000">
    				<div class="room-wrap">
        			<a href="RoomSingle.aspx?id=2" class="img img-room" style="background-image: url(images/room-2.jpg);">
        			</a>
        			<div class="text p-5 text-center">
        				<h3><a href="../RoomSingle.aspx?id=2">Family Room</a></h3>
        				<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
        				<p class="mb-0 mt-2"><span class="me-3 price">$450 <small>/ night</small></span><a href="../RoomSingle.aspx?id=2" class="btn-custom">Book Now</a></p>
        			</div>
        		</div>
    			</div>
    			<div class="col-md-6 col-lg-4 d-flex align-items-stretch" data-aos="flip-left" data-aos-delay="300" data-aos-duration="1000">
    				<div class="room-wrap d-md-flex flex-md-column-reverse">
        			<a href="RoomSingle.aspx?id=3" class="img img-room" style="background-image: url(images/room-3.jpg);">
        			</a>
        			<div class="text p-5 text-center">
        				<h3><a href="../RoomSingle.aspx?id=3">Deluxe Room</a></h3>
        				<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
        				<p class="mb-0 mt-2"><span class="me-3 price">$450 <small>/ night</small></span><a href="../RoomSingle.aspx?id=3" class="btn-custom">Book Now</a></p>
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
	    				<a href="VideoEditor_20230127_024328.mp4" class="video-icon glightbox d-flex align-items-center justify-content-center">
	    					<span class="ion-ios-play"></span>
	    				</a>

	    			</div>
    			</div>
    		</div>
    	</div>
    </section>


    <section class="ftco-section">
    	<div class="container-fluid">
    		<div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section" data-aos="fade-up" data-aos-duration="1000">
          	<span class="subheading">Resto &amp; Bar</span>
            <h2 class="mb-3">Restaurant &amp; Bar</h2>
          </div>
        </div>
        <div class="row g-md-5">
        	<div class="col-md-12 col-xl-5 d-flex align-items-stretch">
        		<div class="img w-100 img-cuisine" style="background-image: url(images/resto-bar.jpg);" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
        			<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-cooking"></span></div>
        		</div>
        	</div>
        	<div class="col-md-12 col-xl-7 ps-xl-5">
		        <div class="row g-md-2">
		        	<div class="col-md-6">
		        		<div class="pricing-entry d-flex align-items-center" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
		        			<div class="img" style="background-image: url(images/menu-1.jpg);"></div>
		        			<div class="desc ps-3">
			        			<div class="d-flex text">
			        				<h3><span>Grilled Beef with potatoes</span></h3>
			        				<span class="price">$20.00</span>
			        			</div>
		        			</div>
		        		</div>
		        		<div class="pricing-entry d-flex align-items-center" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
		        			<div class="img" style="background-image: url(images/menu-2.jpg);"></div>
		        			<div class="desc ps-3">
			        			<div class="d-flex text">
			        				<h3><span>Grilled Beef with potatoes</span></h3>
			        				<span class="price">$29.00</span>
			        			</div>
			        		</div>
		        		</div>
		        		<div class="pricing-entry d-flex align-items-center" data-aos="fade-up" data-aos-delay="300" data-aos-duration="1000">
		        			<div class="img" style="background-image: url(images/menu-3.jpg);"></div>
		        			<div class="desc ps-3">
			        			<div class="d-flex text">
			        				<h3><span>Grilled Beef with potatoes</span></h3>
			        				<span class="price">$20.00</span>
			        			</div>
			        		</div>
		        		</div>
		        		<div class="pricing-entry d-flex align-items-center" data-aos="fade-up" data-aos-delay="400" data-aos-duration="1000">
		        			<div class="img" style="background-image: url(images/menu-4.jpg);"></div>
		        			<div class="desc ps-3">
			        			<div class="d-flex text">
			        				<h3><span>Grilled Beef with potatoes</span></h3>
			        				<span class="price">$20.00</span>
			        			</div>
			        		</div>
		        		</div>
		        	</div>

		        	<div class="col-md-6">
		        		<div class="pricing-entry d-flex align-items-center" data-aos="fade-up" data-aos-delay="500" data-aos-duration="1000">
		        			<div class="img" style="background-image: url(images/menu-5.jpg);"></div>
		        			<div class="desc ps-3">
			        			<div class="d-flex text">
			        				<h3><span>Grilled Beef with potatoes</span></h3>
			        				<span class="price">$49.91</span>
			        			</div>
			        		</div>
		        		</div>
		        		<div class="pricing-entry d-flex align-items-center" data-aos="fade-up" data-aos-delay="600" data-aos-duration="1000">
		        			<div class="img" style="background-image: url(images/menu-6.jpg);"></div>
		        			<div class="desc ps-3">
			        			<div class="d-flex text">
			        				<h3><span>Ultimate Overload</span></h3>
			        				<span class="price">$20.00</span>
			        			</div>
			        		</div>
		        		</div>
		        		<div class="pricing-entry d-flex align-items-center" data-aos="fade-up" data-aos-delay="700" data-aos-duration="1000">
		        			<div class="img" style="background-image: url(images/menu-7.jpg);"></div>
		        			<div class="desc ps-3">
			        			<div class="d-flex text">
			        				<h3><span>Grilled Beef with potatoes</span></h3>
			        				<span class="price">$20.00</span>
			        			</div>
			        		</div>
		        		</div>
		        		<div class="pricing-entry d-flex align-items-center" data-aos="fade-up" data-aos-delay="800" data-aos-duration="1000">
		        			<div class="img" style="background-image: url(images/menu-8.jpg);"></div>
		        			<div class="desc ps-3">
			        			<div class="d-flex text">
			        				<h3><span>Ham &amp; Pineapple</span></h3>
			        				<span class="price">$20.00</span>
			        			</div>
			        		</div>
		        		</div>
		        	</div>
		        </div>
		      </div>
		    </div>
    	</div>
    </section>


    <section class="ftco-section testimony-section bg-light">
      <div class="container-xl">
        <div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section" data-aos="fade-up" data-aos-duration="1000">
          	<span class="subheading">Testimonial</span>
            <h2 class="mb-3">Happy Guests</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">
            <div class="carousel-testimony" id="RatingCard" runat="server">
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
        </div>
      </div>
    </section>

    <section class="ftco-section-counter">
    	<div class="container">
    		<div class="row section-counter">
					<div class="col-6 col-sm-6 col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
						<div class="counter-wrap">
							<span class="number"><span id="guest" runat="server">38900</span></span>
							<span class="caption"># of Happy Guests</span>
						</div>
					</div>
					<div class="col-6 col-sm-6 col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
						<div class="counter-wrap">
							<span class="number"><span id="rooms" runat="server">320</span></span>
							<span class="caption"># of Rooms</span>
						</div>
					</div>
					<div class="col-6 col-sm-6 col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
						<div class="counter-wrap">
							<span class="number"><span id="customer" runat="server">1000</span></span>
							<span class="caption"># of Customers</span>
						</div>
					</div>
					<div class="col-6 col-sm-6 col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400">
						<div class="counter-wrap">
							<span class="number"><span id="booking" runat="server">587</span></span>
							<span class="caption"># of Bookings</span>
						</div>
					</div>
				</div>
    		<div class="row">
    			
    		</div>
    	</div>
    </section>

    <section class="ftco-section bg-light">
      <div class="container-xl">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center" data-aos="fade-up" data-aos-duration="1000">
          	<span class="subheading">Our Blog</span>
            <h2>Recent Blog</h2>
  		  	</div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex">
          	<div class="blog-entry justify-content-end" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">
          		<a href="../Blog-Single.aspx" class="block-20 img d-flex align-items-end" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text">
              	<p class="meta"><span>Admin</span> <span>Dec. 23, 2020</span><a href="#">3 Comments</a></p>
                <h3 class="heading mb-3"><a href="#">Best Hotel Near Beach in Hawaii</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex">
          	<div class="blog-entry justify-content-end" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
          		<a href="../Blog-Single.aspx" class="block-20 img d-flex align-items-end" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text">
              	<p class="meta"><span>Admin</span> <span>Dec. 23, 2020</span><a href="#">3 Comments</a></p>
                <h3 class="heading mb-3"><a href="#">Best Hotel Near Beach in Hawaii</a></h3>
                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex">
          	<div class="blog-entry justify-content-end" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">
          		<a href="../Blog-Single.aspx" class="block-20 img d-flex align-items-end" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text">
              	<p class="meta"><span>Admin</span> <span>Dec. 23, 2020</span><a href="#">3 Comments</a></p>
                <h3 class="heading mb-3"><a href="#">Best Hotel Near Beach in Hawaii</a mb-3></h3>
								<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>              
							</div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex">
          	<div class="blog-entry justify-content-end" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">
          		<a href="../Blog-Single.aspx" class="block-20 img d-flex align-items-end" style="background-image: url('images/image_4.jpg');">
              </a>
              <div class="text">
              	<p class="meta"><span>Admin</span> <span>Dec. 23, 2020</span><a href="#">3 Comments</a></p>
                <h3 class="heading mb-3"><a href="#">Best Hotel Near Beach in Hawaii</a mb-3></h3>
								<p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>              
							</div>
            </div>
          </div>
        </div>
      </div>
    </section>	

    <section class="ftco-gallery" id="gallery">
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
