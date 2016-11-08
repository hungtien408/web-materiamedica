<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<%@ Register TagPrefix="uc1" TagName="bannersub" Src="~/uc/banner-sub.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--<title>MateriaMedica</title>
    <meta name="description" content="MateriaMedica" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <uc1:bannersub ID="bannersub1" runat="server" />
        <%--<div class="text-banner">
            <span>Anaferon</span>
        </div>--%>
    </div>
    <div class="container">
        <div class="wrapper-product1">
            <asp:ListView ID="lstProductDetails" runat="server" DataSourceID="odsProductDetails"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="product-picture">
                        <img id="Img2" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                            runat="server" />
                    </div>
                    <div class="pro-box">
                        <h1>
                            Hướng dẫn sử dụng</h1>
                        <div id="productShow" class="product-main">
                            <h1>
                                <%# Eval("ProductName") %></h1>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                        </div>
                        <div class="link-show">
                            <a href="#productShow"><span class="ic-up">Xem hướng dẫn</span><span class="ic-down">Tắt
                                hướng dẫn</span></a></div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
