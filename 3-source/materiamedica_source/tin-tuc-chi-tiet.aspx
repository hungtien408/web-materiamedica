<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="tin-tuc-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet" %>

<%@ Register TagPrefix="uc1" TagName="bannersub" Src="~/uc/banner-sub.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <uc1:bannersub ID="bannersub1" runat="server" />
        <%--<div class="text-banner">
            <span>Tin tức</span>
        </div>--%>
    </div>
    <div class="container">
        <div class="wrapper-main">
            <asp:ListView ID="lstNewDetails" runat="server" DataSourceID="odsNewDetails" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="days">
                        <span>
                            <%# string.Format("{0:dd.MM.yyyy}", Eval("CreateDate"))%></span>
                    </div>
                    <div class="wrapper-content">
                        <h1>
                            <%# Eval("ProductName") %></h1>
                        <div class="wrapper-text">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsNewDetails" runat="server" SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="tt" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="more-news">
            <h2>
                Tin liên quan</h2>
            <asp:ListView ID="lstNewSame" runat="server" DataSourceID="odsNewSame" EnableModelValidation="True">
                <ItemTemplate>
                    <li><a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul>
                        <li runat="server" id="itemPlaceholder"></li>
                    </ul>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsNewSame" runat="server" 
                SelectMethod="ProductSameSelectAll" TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                    <asp:QueryStringParameter DefaultValue="" Name="ProductID" 
                        QueryStringField="tt" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
