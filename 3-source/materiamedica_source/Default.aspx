<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.40412.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2012.3.1016.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Materia Medica</title>
    <meta name="description" content="Materia Medica" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("input[name=gender]:radio").click(function () {
                $(this).addClass("radchecked");
            });
            $(".btn-traloi a").click(function () {
                $("input[name=gender]:radio").each(function () {
                    if ($(this).hasClass("radchecked")) {
                        if ($(this).attr("value") == "True") {
                            $(".popup-content").removeClass("showtracnghiem");
                            $(".popup-content").removeClass("dung");
                        }
                        if ($(this).attr("value") == "False") {
                            $(".popup-content").removeClass("showtracnghiem");
                            $(".popup-content").removeClass("sai");
                        }
                    }
                });
            });

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="myModal" class="popup-modal">
        <div class="popup-content tracnghiem showtracnghiem">
            <asp:ListView ID="lstQuestion" runat="server" DataSourceID="odsQuestion" EnableModelValidation="True">
                <ItemTemplate>
                    <p>
                        <%# Eval("ProductCategoryName") %></p>
                    <asp:HiddenField ID="hdnQuestion" runat="server" Value='<%# Eval("ProductCategoryID") %>' />
                    <div class="answer">
                        <asp:ListView ID="lstAnswer" runat="server" DataSourceID="odsAnswer" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="btn-radio">
                                    <input id='<%# Eval("ProductID") %>' type="radio" name="gender" value='<%# Eval("IsHot") %>' /><strong><%# Container.DataItemIndex + 1 + "." %></strong>
                                    <%# Eval("ProductName") %><br>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsAnswer" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:ControlParameter ControlID="hdnQuestion" Name="CategoryID" PropertyName="Value"
                                    Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="btn-traloi">
                        <a href="javascript:void(0);">Trả lời</a>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsQuestion" runat="server" SelectMethod="ProductCategorySelectAll"
                TypeName="TLLib.ProductCategory">
                <SelectParameters>
                    <asp:Parameter DefaultValue="6" Name="parentID" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                    <asp:Parameter Name="IsShowOnMenu" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="popup-content dung">
            <p>
                BẠN ĐÃ TRẢ LỜI ĐÚNG.
                <br />
                VUI LÒNG ĐIỀN THÔNG TIN ĐỂ NHẬN QUÀ</p>
            <div class="wrap-send">
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                            WatermarkText="Họ Tên" TargetControlID="txtFullName">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                            Display="Dynamic" ValidationGroup="SendQuestion" ControlToValidate="txtFullName"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                            WatermarkText="Email" TargetControlID="txtEmail">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                            runat="server" ValidationGroup="SendQuestion" ControlToValidate="txtEmail" ErrorMessage="Email không đúng!"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                            ValidationGroup="SendQuestion" ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!"
                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtPhone_WatermarkExtender" runat="server" Enabled="True"
                            WatermarkText="Số điện thoại" TargetControlID="txtPhone">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                            Display="Dynamic" ValidationGroup="SendQuestion" ControlToValidate="txtPhone"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox ID="txtAddress" CssClass="contact-textbox" runat="server"></asp:TextBox>
                         <asp:TextBoxWatermarkExtender ID="txtAddress_WatermarkExtender" runat="server" Enabled="True"
                            WatermarkText="Địa chỉ" TargetControlID="txtAddress">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                            Display="Dynamic" ValidationGroup="SendQuestion" ControlToValidate="txtAddress"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <div class="wcodes">
                                        <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                            Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                        </asp:TextBoxWatermarkExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <div class="wcodes">
                                        <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="SendQuestion"
                                            runat="server" ErrorMessage="+ Mã an toàn: không chính xác." ValidatedTextBoxID="txtVerifyCode"
                                            Display="Dynamic">
                                            <CaptchaImage Height="35" Width="135" RenderImageOnly="True" />
                                        </asp:RadCaptcha>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="btn-traloi">
                    <%--<a href="#">Gửi</a>--%>
                    <asp:Button ID="btnGui" runat="server" Text="Gửi" onclick="btnGui_Click"  />
                </div>
            </div>
        </div>
        <div class="popup-content sai">
            <p>
                CHÚC BẠN MAY MẮN LẦN SAU</p>
            <%--<div class="btn-traloi">
                <a href="~/" runat="server">TRANG CHỦ</a>
            </div>--%>
        </div>
        <a class="close-popup-modal">X</a>
    </div>
    <div id="banner">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <asp:ListView ID="lstListBanner" runat="server" DataSourceID="odsBanner" EnableModelValidation="True">
                    <ItemTemplate>
                        <li data-target="#carousel-example-generic" data-id='<%# "li-1" + Eval("AdsBannerID") %>'>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <asp:ListView ID="lstBanner" runat="server" DataSourceID="odsBanner" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item" id='<%# "li-1" + Eval("AdsBannerID") %>'>
                            <img id="Img1" src='<%# "~/res/advertisement/" + Eval("FileName") %>' runat="server"
                                alt='<%# Eval("FileName") %>' />
                            <div class="carousel-caption">
                                <%# Eval("CompanyName") %>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBanner" runat="server" SelectMethod="AdsBannerSelectAll"
                    TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="Website" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
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
                            <h1>
                                 Về chúng tôi</h1>
                        </div>
                        <div class="about-main">
                            <div class="about-img">
                                <a href="cong-ty.aspx">
                                    <img src="assets/images/about-img1.png" alt=" " /></a>
                            </div>
                            <div class="about-name">
                                <a href="cong-ty.aspx">TOP-10<br>
                                    pharmaceutical companies<br>
                                    on OTC market</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="df-box news-df">
                        <%--<div class="news-archire"><a href="tin.tuc.aspx">News archive</a></div>--%>
                        <div class="title-df">
                            <h1>
                                Tin tức</h1>
                        </div>
                        <div class="news-main">
                            <asp:ListView ID="lstNews" runat="server" DataSourceID="odsNews" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="news-box">
                                        <div class="days-post">
                                            <%# string.Format("{0:dd.MM.yyyy}", Eval("CreateDate"))%></div>
                                        <div class="news-name">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                <%# Eval("ProductName") %></a></div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsNews" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                    <asp:Parameter DefaultValue="2" Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                    <asp:Parameter Name="OriginID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="InStock" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsNew" Type="String" />
                                    <asp:Parameter Name="IsBestSeller" Type="String" />
                                    <asp:Parameter Name="IsSaleOff" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter Name="FromDate" Type="String" />
                                    <asp:Parameter Name="ToDate" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="product-df">
            <h1>
                Sản phẩm</h1>
            <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="wrapper-product">
                        <div class="product-img">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <img id="Img2" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                    visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>'
                                    runat="server" /></a>
                        </div>
                        <div class="product-content">
                            <h1>
                                <%# Eval("ProductName") %></h1>
                            <div class="product-text">
                                <%# Eval("Description") %>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProduct" runat="server" SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter DefaultValue="5" Name="CategoryID" Type="String" />
                    <asp:Parameter Name="ManufacturerID" Type="String" />
                    <asp:Parameter Name="OriginID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="InStock" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="IsBestSeller" Type="String" />
                    <asp:Parameter Name="IsSaleOff" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <%--<div id="productSlider" class="owl-carousel">
            <div class="item">
                <div class="product-box">
                    <div class="pro-img">
                        <a href="san-pham-chi-tiet.aspx">
                            <img src="assets/images/img1.png" alt=" " /></a></div>
                    <div class="pro-name">
                        <a href="san-pham-chi-tiet.aspx">Afala</a></div>
                    <div class="description">
                        Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy
                        and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                    <div class="pro-img">
                        <a href="san-pham-chi-tiet.aspx">
                            <img src="assets/images/img2.png" alt=" " /></a></div>
                    <div class="pro-name">
                        <a href="san-pham-chi-tiet.aspx">Afala</a></div>
                    <div class="description">
                        Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy
                        and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                    <div class="pro-img">
                        <a href="san-pham-chi-tiet.aspx">
                            <img src="assets/images/img3.png" alt=" " /></a></div>
                    <div class="pro-name">
                        <a href="san-pham-chi-tiet.aspx">Afala</a></div>
                    <div class="description">
                        Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy
                        and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                    <div class="pro-img">
                        <a href="#">
                            <img src="assets/images/img4.png" alt=" " /></a></div>
                    <div class="pro-name">
                        <a href="#">Afala</a></div>
                    <div class="description">
                        Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy
                        and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                    <div class="pro-img">
                        <a href="#">
                            <img src="assets/images/img5.png" alt=" " /></a></div>
                    <div class="pro-name">
                        <a href="#">Afala</a></div>
                    <div class="description">
                        Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy
                        and chronic prostatitis.</div>
                </div>
            </div>
            <div class="item">
                <div class="product-box">
                    <div class="pro-img">
                        <a href="#">
                            <img src="assets/images/img6.png" alt=" " /></a></div>
                    <div class="pro-name">
                        <a href="#">Afala</a></div>
                    <div class="description">
                        Afala® is a state-of the-art drug designed to treat benign prostatic hypertrophy
                        and chronic prostatitis.</div>
                </div>
            </div>
        </div>--%>
    </div>
</asp:Content>
