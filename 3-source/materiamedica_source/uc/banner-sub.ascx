<%@ Control Language="C#" AutoEventWireup="true" CodeFile="banner-sub.ascx.cs" Inherits="uc_banner_sub" %>
<div id="sliderBanner" class="nivoSlider">
    <asp:ListView ID="lstBannerSub" runat="server" DataSourceID="odsBannerSub" EnableModelValidation="True">
        <ItemTemplate>
            
                <a href='<%# Eval("Website") %>'><img id="Img1" src='<%# "~/res/advertisement/" + Eval("FileName") %>' runat="server"
                    alt='<%# Eval("FileName") %>' /></a>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsBannerSub" runat="server" SelectMethod="AdsBannerSelectAll"
        TypeName="TLLib.AdsBanner">
        <SelectParameters>
            <asp:Parameter Name="StartRowIndex" Type="String" />
            <asp:Parameter Name="EndRowIndex" Type="String" />
            <asp:Parameter DefaultValue="6" Name="AdsCategoryID" Type="String" />
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
