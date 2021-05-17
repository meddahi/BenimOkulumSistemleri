﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="BenimOkulumSistemleri.UpdateStudent" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
               style="background-color:#eee;margin-bottom:70px;margin-top:30px" >
                  <div class="page-header">
                      <h1 class="text-center" style="color:blue">Register Student</h1>
                  </div>
                   
                  <!-- PRN no -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxPRN" placeholder="PRN number" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPRN" runat="server" ControlToValidate="TextBoxPRN" ErrorMessage="PRN number required" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>
                  
                  <!-- Student Name -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxName" placeholder="Student Name" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNm" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Student name required" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>
                 
                  <!-- Branch name -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxBranch" placeholder="Branch Name" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorBranch" runat="server" ControlToValidate="TextBoxBranch" ErrorMessage="Branch name required" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>
                
                  <!-- Contact Number -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxContact" placeholder="Contact Number" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContact" runat="server" ControlToValidate="TextBoxContact" ErrorMessage="Contact number please" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>
                  
                  <!-- Address -->
                  <div class="form-group">
                    <asp:TextBox ID="TextBoxAddr" placeholder="Address" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddr" runat="server" ControlToValidate="TextBoxAddr" ErrorMessage="Provide Address" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>

                <!-- Email -->
                <div class="form-group">
                    <asp:TextBox ID="TextBoxEmail" placeholder="Email Address" runat="server" class="form-control input-sm"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email field required" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                    
                  </div>

                <!-- Password -->
                 <div class="form-group">
                    
                       <asp:TextBox ID="TextBoxPass" placeholder="Password" runat="server" TextMode="Password" class="form-control input-sm"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter password" ForeColor="#CC0000" style="font-size: large;"></asp:RequiredFieldValidator>
                  </div>

                  <div class="text-center">
                    <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="Register" class="btn btn-success btn-lg"/>
                    
                  </div>
             </div>
        </div>
</asp:Content>


