<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BenimOkulumSistemleri.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
     <div class="row">
            <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="background-color:#eee;margin-bottom:70px;margin-top:30px" >
                  <div class="page-header">
                      <h1 class="text-center" style="color:blue"> Giriş Yapınız!!</h1>
                  </div>
                  <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxUN" placeholder="Kullanıcı" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Kullanıcı Adınızı Giriniz" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
                    
                  </div>
                  <div class="form-group">
                    
                       <asp:TextBox ID="TextBoxPass" placeholder="Sifre" runat="server" TextMode="Password" class="form-control input-lg"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Lütfen Şifrenizi Giriniz" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>
                  </div>
                  <div class="text-center">
                    <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="Giriş" class="btn btn-success btn-lg"/>
                    
                  </div>
             </div>
        </div>
 </asp:Content>
