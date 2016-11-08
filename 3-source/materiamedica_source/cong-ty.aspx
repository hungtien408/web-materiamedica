<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="cong-ty.aspx.cs" Inherits="cong_ty" %>

<%@ Register TagPrefix="uc1" TagName="bannersub" Src="~/uc/banner-sub.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <uc1:bannersub ID="bannersub1" runat="server" />
        <div class="text-banner">
            <span>
                <img src="assets/images/logo1.png" alt="" /></span>
        </div>
    </div>
    <div class="container">
        <div class="news-main1">
            <asp:ListView ID="lstAbout" runat="server" DataSourceID="odsAbout" EnableModelValidation="True">
                <ItemTemplate>
                    <li>
                        <div class="wrapper-news1">
                            <div class="days-news">
                                <span>
                                    <%# string.Format("{0:dd.MM.yyyy}", Eval("CreateDate"))%></span>
                            </div>
                            <div class="clr">
                            </div>
                            <div class="news-content">
                                <div class="news-title">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-ct-" + Eval("ProductID") + ".aspx" %>'>
                                        <%# Eval("ProductName") %></a>
                                </div>
                                <div class="description">
                                    <%# Eval("Description") %>
                                </div>
                            </div>
                        </div>
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul class="ul-first">
                        <li runat="server" id="itemPlaceholder"></li>
                    </ul>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsAbout" runat="server" SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter DefaultValue="1" Name="CategoryID" Type="String" />
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
        <div class="clr">
        </div>
        <div class="pager">
            <%--<a href="#" class="prev fa fa-caret-left"></a><a href="#" class="current">1</a>
            <a href="#">2</a> <a href="#">3</a> <a href="#" class="next fa fa-caret-right"></a>
            <a href="#" class="last fa fa-forward"></a>--%>
            <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstAbout">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                        ShowPreviousPageButton="false" ButtonCssClass="first fa fa-backward" RenderDisabledButtonsAsLabels="true"
                        FirstPageText="" />
                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                        ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                        PreviousPageText="" />
                    <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                        ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                        NextPageText="" />
                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-forward"
                        ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                        LastPageText="" />
                </Fields>
            </asp:DataPager>
        </div>
    </div>
</asp:Content>
