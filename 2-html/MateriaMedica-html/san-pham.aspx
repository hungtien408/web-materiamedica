<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="san-pham.aspx.cs" Inherits="san_pham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>MateriaMedica</title>
    <meta name="description" content="MateriaMedica" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner-main">
         <div id="sliderBanner" class="nivoSlider">
            <div class="slide"><img src="assets/images/about.jpg" alt=""/></div>
            <div class="slide"><img src="assets/images/sp.jpg" alt=""/></div>
            <div class="slide"><img src="assets/images/contact.jpg" alt=""/></div>
            <div class="slide"><img src="assets/images/tin-tuc.jpg" alt=""/></div>
        </div>
        <div class="text-banner">
            <span>Anaferon</span>
        </div>
    </div>
    
    <div class="container">
        <div class="title">Mongolia</div>
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
                   <div class="pro-img"> <a href="#"><img src="assets/images/img2.png" alt=" " /></a></div>
                   <div class="pro-name"><a href="#">Afala</a></div>
                    <div class="description">Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                   <div class="pro-img"> <a href="#"><img src="assets/images/img3.png" alt=" " /></a></div>
                   <div class="pro-name"><a href="#">Afala</a></div>
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

