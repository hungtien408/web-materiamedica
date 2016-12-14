<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="san-pham.aspx.cs" Inherits="san_pham" %>

<%@ Register TagPrefix="uc1" TagName="bannersub" Src="~/uc/banner-sub.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <uc1:bannersub ID="bannersub1" runat="server" />
        <%--<div class="text-banner">
            <span>Anaferon</span>
        </div>--%>
    </div>
    <div class="container">
        <%--<div class="title">Mongolia</div>--%>
        <div class="product-df">
            <h1>
                Sản phẩm</h1>
            <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="wrapper-product">
                        <div class="product-img">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <img id="Img2" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
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
        </div>--%>
    </div>
</asp:Content>
