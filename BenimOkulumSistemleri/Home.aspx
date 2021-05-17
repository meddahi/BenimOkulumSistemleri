<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BenimOkulumSistemleri.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          
        <div style="margin-top:50px" class="jumbotron">
            <h2><asp:Label ID="LabelWelcome" runat="server" Text="Merhaba "></asp:Label>,&nbsp; Öğrenci Portalına Hoşgeldiniz</h2>
            <p>daha fazla bilgi için ziyaret edin <a href="https://www.turtep.edu.tr/index.php?sayfa=anasayfa" target="_blank">Ahmet Yesevi Üniversitesi</a></p>
        </div>
</asp:Content>