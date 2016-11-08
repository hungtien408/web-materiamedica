<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="benh-ho-hap.aspx.cs" Inherits="benh_ho_hap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            <span>Tin tức</span>
        </div>
    </div>
    <div class="container">
        <div class="news-main">
            <div class="wrapper-news">
           <div class="main-news">
            <div class="main-news-left">
                <div class="news-image">
                    <a href="tin-tuc-chi-tiet.aspx">
                        <img src="assets/images/main-news1.png" />
                    </a>
                </div>
                <div class="main-title">
                    <a href="tin-tuc-chi-tiet.aspx">Tin tức 1</a>
                    <p>Nations transform the world. Medical advocate social entrepreneurship social challenges catalytic effect dedicated clean water. Nonprofit results combat poverty pathway to a better life design thinking. pathway to a better life design thinking.</p>
                </div>
            </div>
            <div class="main-news-right">
                <div class="news-thumb">
                    <div class="item">
                        <div class="thumb-img">
                            <a href="tin-tuc-chi-tiet.aspx">
                                <img src="assets/images/main-news.png" alt="" />
                            </a>
                        </div>
                        <div class="thumb-tit">
                            <a href="tin-tuc-chi-tiet.aspx">
                                Tin tức 2
                            </a>
                           <p>Nations transform the world. Medical advocate social...</p>
                            <div class="view-detail"><a href="#">Xem tiếp</a></div>
                        </div>
                        
                    </div>
                    <div class="item">
                        <div class="thumb-img">
                            <a href="tin-tuc-chi-tiet.aspx">
                                <img src="assets/images/main-news.png" alt="" />
                            </a>
                        </div>
                        <div class="thumb-tit">
                            <a href="tin-tuc-chi-tiet.aspx">
                                Tin tức 3
                            </a>
                           <p>Nations transform the world. Medical advocate social...</p>
                            <div class="view-detail"><a href="#">Xem tiếp</a></div>
                        </div>
                        
                    </div>
                    <div class="item">
                        <div class="thumb-img">
                            <a href="tin-tuc-chi-tiet.aspx">
                                <img src="assets/images/main-news.png" alt="" />
                            </a>
                        </div>
                        <div class="thumb-tit">
                            <a href="tin-tuc-chi-tiet.aspx">
                                Tin tức 4
                            </a>
                           <p>Nations transform the world. Medical advocate social...</p>
                            <div class="view-detail"><a href="#">Xem tiếp</a></div>
                        </div>
                        
                    </div>
                    <div class="item">
                        <div class="thumb-img">
                            <a href="tin-tuc-chi-tiet.aspx">
                                <img src="assets/images/main-news.png" alt="" />
                            </a>
                        </div>
                        <div class="thumb-tit">
                            <a href="tin-tuc-chi-tiet.aspx">
                                Tin tức 5
                            </a>
                           <p>Nations transform the world. Medical advocate social...</p>
                            <div class="view-detail"><a href="#">Xem tiếp</a></div>
                        </div>
                        
                    </div>

                </div>
            </div>
            <div class="quangcao">
                <div class="video-main">
                    <div class="wrapper-video">
                            <div class="video-details">
                                <div id="jwplayer3"></div>
                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        jwplayer('jwplayer3').setup({
                                            "image": "",
                                            //image: '<%# "res/product/" + Eval("ImageName") %>',
                                            //file: '<%# !string.IsNullOrEmpty( Eval("VideoPath").ToString()) ? "res/product/video/" + Eval("VideoPath") : ""%>',
                                            file: "https://youtu.be/PDZH-x2nNRM",
                                            flashplayer: "assets/js/jwplayer.flash.swf",
                                            width: '100%',
                                            aspectratio: '16:9',
                                            primary: "html5",
                                            width: '100%',
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    <div class="video-title">
                       VIDEO 1
                    </div>
                </div>
                <div class="banner-img">
                     <a href="#"><img src="assets/images/img5.png" /></a>
                </div>
            </div>
        </div>
           <div class="clr"></div>
           <div class="thumb-items">
                <div class="item">
                    <div class="item-wrap">
                        <div class="img">
                            <a href="#"><img src="assets/images/main-news.png" /></a>
                        </div>
                        <div class="title">
                            <a href="#">Tin tức 6</a>
                            <p>Nations transform the world. Medical advocate social entrepreneurship social challenges catalytic effect dedicated clean water...</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="item-wrap">
                        <div class="img">
                            <a href="#"><img src="assets/images/main-news.png" /></a>
                        </div>
                        <div class="title">
                            <a href="#">Tin tức 7</a>
                            <p>Nations transform the world. Medical advocate social entrepreneurship social challenges catalytic effect dedicated clean water...</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="item-wrap">
                        <div class="img">
                            <a href="#"><img src="assets/images/main-news.png" /></a>
                        </div>
                        <div class="title">
                            <a href="#">Tin tức 8</a>
                            <p>Nations transform the world. Medical advocate social entrepreneurship social challenges catalytic effect dedicated clean water...</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="item-wrap">
                        <div class="img">
                            <a href="#"><img src="assets/images/main-news.png" /></a>
                        </div>
                        <div class="title">
                            <a href="#">Tin tức 9</a>
                            <p>Nations transform the world. Medical advocate social entrepreneurship social challenges catalytic effect dedicated clean water...</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="item-wrap">
                        <div class="img">
                            <a href="#"><img src="assets/images/main-news.png" /></a>
                        </div>
                        <div class="title">
                            <a href="#">Tin tức 10</a>
                            <p>Nations transform the world. Medical advocate social entrepreneurship social challenges catalytic effect dedicated clean water...</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="item-wrap">
                        <div class="img">
                            <a href="#"><img src="assets/images/main-news.png" /></a>
                        </div>
                        <div class="title">
                            <a href="#">Tin tức 11</a>
                            <p>Nations transform the world. Medical advocate social entrepreneurship social challenges catalytic effect dedicated clean water...</p>
                        </div>
                    </div>
                </div>
                <div class="clr"></div>
                  
            </div>
       </div>
        </div>
        <div class="clr"></div>
        <div class="pager">
            <a href="#" class="prev fa fa-caret-left"></a>
            <a href="#" class="current">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#" class="next fa fa-caret-right"></a>
            <a href="#" class="last fa fa-forward"></a>
        </div>
    </div>
</asp:Content>

