<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateBranch.aspx.cs" Inherits="BenimOkulumSistemleri.UpdateBranch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="background-color:#eee;margin-bottom:70px;margin-top:30px" >
                <div class="page-header">
                      <h1 class="text-center" style="color:blue">Branş Güncelleme</h1>
                </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxBranchId" placeholder="Branş No" runat="server" class="form-control input-lg" ReadOnly="True"></asp:TextBox>
                    
                 </div>
                <div class="form-group">
                  
                    <asp:TextBox ID="TextBoxBranchName" placeholder="Branş" runat="server" class="form-control input-lg"></asp:TextBox>
                    
                    
                 </div>
                <div class="text-center">
                    <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="GÜNCELLE" class="btn btn-success btn-lg"/>
                    
                </div>
                
            </div>
    </div>
</asp:Content>

