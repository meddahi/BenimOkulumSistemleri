﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="BenimOkulumSistemleri.AddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12 col-smx-6 col-sm-offset-3 col-md-6 col-md-offset-3"
            style="background-color: #eee; margin-bottom: 70px; margin-top: 30px">
            <div class="page-header">
                <h1 class="text-center" style="color: blue">Ders Ekle</h1>
            </div>
            <div class="form-group">

                <asp:TextBox ID="TextBoxBranch" placeholder="Alan Adı" runat="server" class="form-control input-lg"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxBranch" ErrorMessage="Alan adı giriniz" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group">

                <asp:TextBox ID="TextBoxID" placeholder="Ders No" runat="server" class="form-control input-lg"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxID" ErrorMessage="Ders adı giriniz" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group">

                <asp:TextBox ID="TextBoxCourse" placeholder="Ders Adı" runat="server" class="form-control input-lg"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxCourse" ErrorMessage="Ders adı giriniz" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group">

                <asp:TextBox ID="TextBoxSem" placeholder="Dönem" runat="server" class="form-control input-lg"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxSem" ErrorMessage="Dönem giriniz" ForeColor="#CC0000" style="font-size: large; font-weight: 700"></asp:RequiredFieldValidator>

            </div>
            <div class="text-center">
                <asp:Button ID="SubmitBtn" type="submit" runat="server" OnClick="Button1_Click" Text="EKLE" class="btn btn-success btn-lg" />

            </div>

        </div>
    </div>
</asp:Content>

