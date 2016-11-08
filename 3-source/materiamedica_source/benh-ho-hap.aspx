<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="benh-ho-hap.aspx.cs" Inherits="benh_ho_hap" %>

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
        <div class="news-main">
            <div class="wrapper-news">
                <div class="main-news">
                    <div class="main-news-left">
                        <asp:ListView ID="lstNewHot" runat="server" DataSourceID="odsNewHot" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="news-image">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                        <img id="Img2" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                            runat="server" />
                                    </a>
                                </div>
                                <div class="main-title">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                        <%# Eval("ProductName") %></a>
                                    <p>
                                        <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 120)%></p>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsNewHot" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
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
                    <div class="main-news-right">
                         <asp:ListView ID="lstVideoCategory" runat="server" DataSourceID="odsVideoCategory"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="banner-img">
                                    <a href="javascript:void(0);">
                                        <img id="Img1" alt="<%# Eval("ImageName") %>" src='<%# "res/videocategory/" + Eval("ImageName") %>'
                                             visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' /></a>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                    </div>
                    <div class="quangcao">
                        <asp:ListView ID="lstVideo" runat="server" DataSourceID="odsVideo" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="video-main">
                                    <div class="wrapper-video">
                                        <div class="video-details">
                                            <div id="jwplayer3">
                                            </div>
                                            <script type="text/javascript">
                                                $(document).ready(function () {
                                                    jwplayer('jwplayer3').setup({
                                                        image: '<%# string.IsNullOrEmpty(Eval("ImagePath").ToString()) ? "" : "res/video/thumbs/" + Eval("ImagePath") %>',
                                                        file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>',
                                                        flashplayer: "assets/js/jwplayer.flash.swf",
                                                        width: '100%',
                                                        aspectratio: '16:9',
                                                        primary: "html5"
                                                    });
                                                });
                                            </script>
                                        </div>
                                    </div>
                                    <div class="video-title">
                                        <%# Eval("Title")%>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsVideo" runat="server" SelectMethod="VideoSelectAll"
                            TypeName="TLLib.Video">
                            <SelectParameters>
                                <asp:Parameter Name="Title" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DefaultValue="1" Name="VideoCategoryID" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                       
                        <asp:ObjectDataSource ID="odsVideoCategory" runat="server" SelectMethod="VideoCategorySelectOne"
                            TypeName="TLLib.VideoCategory">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="VideoCategoryID" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
                <div class="clr">
                </div>
                <div class="thumb-items">
                    <asp:ListView ID="lstBenhHoHap" runat="server" DataSourceID="odsBenhHoHap" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item">
                                <div class="item-wrap">
                                    <div class="img">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                            <img id="Img2" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                runat="server" /></a>
                                    </div>
                                    <div class="title">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                            <%# Eval("ProductName") %></a>
                                        <p>
                                            <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 120)%></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsBenhHoHap" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
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
                    <div class="clr">
                    </div>
                </div>
            </div>
        </div>
        <div class="clr">
        </div>
        <div class="pager">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstBenhHoHap">
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
