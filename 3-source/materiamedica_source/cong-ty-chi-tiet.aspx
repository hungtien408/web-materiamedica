<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="cong-ty-chi-tiet.aspx.cs" Inherits="cong_ty_chi_tiet" %>

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
        <div class="wrapper-text about-us">
            <asp:ListView ID="lstAboutDetails" runat="server" DataSourceID="odsAboutDetails"
                EnableModelValidation="True">
                <ItemTemplate>
                    <h4 class="text-uppercase title mo-640">
                        <%# Eval("ProductName") %></h4>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsAboutDetails" runat="server" SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="ct" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
