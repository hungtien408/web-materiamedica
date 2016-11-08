<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>MateriaMedica</title>
    <meta name="description" content="MateriaMedica" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="myModal" class="popup-modal">
          <div class="popup-content tracnghiem">
              <p>Dấu hiệu nào sau đây không phải là dấu hiệu nguy cơ trong nhiểm khuẩn hô hấp cấp tính ở trẻ từ 2thang - 5 tuổi</p>
              <div class="answer">
                  <div class="btn-radio">
                      <input type="radio" name="gender" value=""><strong>A.</strong> Không bú được<br>
                  </div>
                  <div class="btn-radio">
                      <input type="radio" name="gender" value=""><strong>B.</strong> Bú kém<br>
                  </div>
                  <div class="btn-radio">
                        <input type="radio" name="gender" value=""><strong>C.</strong> Thở rít khi nằm yên<br>
                  </div>
                  <div class="btn-radio">
                        <input type="radio" name="gender" value=""><strong>D.</strong> Ngủ li bì khống đánh thức<br>
                  </div>
                  <div class="btn-radio">
                        <input type="radio" name="gender" value=""><strong>E.</strong> Co giật<br>
                  </div>
              </div>
              <div class="btn-traloi">
                  <a href="#">Trả lời</a>
              </div>
          </div>
          <div class="popup-content dung">
            <p>BẠN ĐÃ TRẢ LỜI ĐÚNG. <br /> VUI LÒNG ĐIỀN THÔNG TIN ĐỂ NHẬN QUÀ</p>
               <div class="wrap-send">
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="TextBox3" CssClass="contact-textbox" runat="server" placeholder="Họ Tên"></asp:TextBox>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="TextBox1" CssClass="contact-textbox" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                   <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="TextBox2" CssClass="contact-textbox" runat="server" placeholder="Số điện thoại"></asp:TextBox>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="TextBox4" CssClass="contact-textbox" runat="server" placeholder="Địa chỉ"></asp:TextBox>
                        </div>
                    </div>
                   <div class="btn-traloi">
                  <a href="#">Gửi</a>
              </div>
              </div>
          </div>
          <div class="popup-content sai">
             <p>CHÚC BẠN MAY MẮN LẦN SAU</p>
              <div class="btn-traloi">
                  <a href="#">TRANG CHỦ</a>
              </div>
          </div>
		<a class="close-popup-modal">X</a>
	</div>		
    <div id="banner">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	  	<!-- Indicators -->
	  	<ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-id="li-1"></li>
		    <li data-target="#carousel-example-generic" data-id="li-2"></li>
		    <li data-target="#carousel-example-generic" data-id="li-3"></li>
		    <li data-target="#carousel-example-generic" data-id="li-4"></li>
	  	</ol>
	  	<!-- Wrapper for slides -->
	  	<div class="carousel-inner" role="listbox">
	    	<div class="item" id="li-1">
	      		<img src="assets/images/1.jpg" alt=" " />
	      		<div class="carousel-caption">
	      			<p>BỆNH LÝ</p>
	      			<h3>VIÊM HÔ HẤP</h3>
	      			<span>trên 70% do virus</span>
	      		</div>
	    	</div>
		    <div class="item" id="li-2">
		      	<img src="assets/images/2.jpg" alt=" " />
		      	<div class="carousel-caption">
	      			<p>BỆNH LÝ</p>
	      			<h3>VIÊM HÔ HẤP</h3>
	      			<span>trên 70% do virus</span>
	      		</div>
		    </div>
		    <div class="item" id="li-3">
	      		<img src="assets/images/3.jpg" alt=" " />
	      		<div class="carousel-caption">
	      			<p>BỆNH LÝ</p>
	      			<h3>VIÊM HÔ HẤP</h3>
	      			<span>trên 70% do virus</span>
	      		</div>
	    	</div>
		    <div class="item" id="li-4">
		      	<img src="assets/images/4.jpg" alt=" " />
		      	<div class="carousel-caption">
	      			<p>BỆNH LÝ</p>
	      			<h3>VIÊM HÔ HẤP</h3>
	      			<span>trên 70% do virus</span>
	      		</div>
		    </div>
	  	</div>
	  	<!-- Controls -->
	  	<!-- <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
	  	</a>
	  	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
	  	</a> -->
	</div>
    </div>
    <div class="wrapper-top">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="df-box about-df">
                        <div class="title-df">
                            <h1>About us</h1>
                        </div>
                        <div class="about-main">
                            <div class="about-img">
                                <a href="cong-ty.aspx"><img src="assets/images/about-img1.png" alt=" " /></a>
                            </div>
                            <div class="about-name">
                                <a href="cong-ty.aspx">TOP-10<br>pharmaceutical companies<br>on OTC market</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="df-box news-df">
                        <div class="news-archire"><a href="tin.tuc.aspx">News archive</a></div>
                        <div class="title-df">
                            <h1>News</h1>
                        </div>
                        <div class="news-main">
                            <div class="news-box">
                                <div class="days-post">26.04.2016</div>
                                <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Start-up meeting associated with initiation of clinical studies of Ergoferon</a></div>
                            </div>
                            <div class="news-box">
                                <div class="days-post">18.02.2016</div>
                                <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Start-up meeting associated with initiation of clinical studies of Ergoferon</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="product-df">
            <h1>Product</h1>
            <div class="wrapper-product">
                <div class="product-img">
                    <a href="san-pham-chi-tiet.aspx"><img src="assets/images/product1.jpg" alt=" " /></a>
                </div>
                <div class="product-content">
                    <h1>Anaferon</h1>
                    <p>An innovative drug for the treatment and preventin of influenza. For sale in Mongolia</p>
                    <div class="product-text">
                        <p>Эм хэрэглэх заавар </p>
                        <p><strong>Анаферон (Anaferon)</strong></p>
                        <p><strong>Бүртгэлийн дугаар:</strong></p>
                        <p><strong>Худалдааны нэр: </strong>Анаферон</p>
                        <p><strong>Найрлага:</strong></p>
                        <p>Үйлчлэгч бодис: хүний цэвэршүүлсэн гамма интерфероны антител 0.003г*</p>
                        <p>Туслах бодис: лактоза, бичил талст целлюлоза, магнийн стеарат.</p>                        <p>* үйлчлэгч бодисын идэвхтэй хэлбэр нь ус спиртийн холимог хэлбэрээр байна1</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="productSlider" class="owl-carousel">
            <div class="item">
                <div class="product-box">
                   <div class="pro-img"> <a href="san-pham-chi-tiet.aspx"><img src="assets/images/img1.png" alt=" " /></a></div>
                   <div class="pro-name"><a href="san-pham-chi-tiet.aspx">Afala</a></div>
                    <div class="description">Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                   <div class="pro-img"> <a href="san-pham-chi-tiet.aspx"><img src="assets/images/img2.png" alt=" " /></a></div>
                   <div class="pro-name"><a href="san-pham-chi-tiet.aspx">Afala</a></div>
                    <div class="description">Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                   <div class="pro-img"> <a href="san-pham-chi-tiet.aspx"><img src="assets/images/img3.png" alt=" " /></a></div>
                   <div class="pro-name"><a href="san-pham-chi-tiet.aspx">Afala</a></div>
                    <div class="description">Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                   <div class="pro-img"> <a href="#"><img src="assets/images/img4.png" alt=" " /></a></div>
                   <div class="pro-name"><a href="#">Afala</a></div>
                    <div class="description">Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                   <div class="pro-img"> <a href="#"><img src="assets/images/img5.png" alt=" " /></a></div>
                   <div class="pro-name"><a href="#">Afala</a></div>
                    <div class="description">Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy and chronic prostatitis.</div>
                </div>
            </div>
             <div class="item">
                <div class="product-box">
                   <div class="pro-img"> <a href="#"><img src="assets/images/img6.png" alt=" " /></a></div>
                   <div class="pro-name"><a href="#">Afala</a></div>
                    <div class="description">Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy and chronic prostatitis.</div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



