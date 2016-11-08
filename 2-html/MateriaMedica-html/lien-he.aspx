 <%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

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
            <span>Liên hệ</span>
        </div>
    </div>
    <div class="container">
        <div class="row wrap-contact">
            <div class="col-md-6">
                <div class="address-contact">
                    <h4 class="text-uppercase">địa chỉ của chúng tôi</h4>
                    <p><span class="fa fa-map-marker"></span>111, Tên Lửa, P.Bình Trị Đông B, Q.Bình Tân, Tp.HCM</p>                    <p><span class="fa fa-phone"></span>091 737 7999</p>                    <p><span class="fa fa-envelope"></span><a href="http://www.tranlegroup.com/">tranlegroup.com</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <h4 class="text-uppercase">Chúng tôi có thể giúp gì cho bạn ?</h4>
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
                                <asp:TextBox ID="TextBox2" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Lời nhắn"></asp:TextBox>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-btn">
                                <asp:button ID="Button1" CssClass="button-btn" runat="server" text="Gởi lời nhắn" />
                            </div>
                        </div>
               
              </div>
           </div>
        </div>
    </div>
   <%-- <div id="mapshow"></div>--%>
</asp:Content>


