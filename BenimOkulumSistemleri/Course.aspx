<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="BenimOkulumSistemleri.Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12 col-smx-6 col-sm-offset-2 col-md-8 col-md-offset-2"
               style="margin-bottom:70px;margin-top:30px" >
        <asp:GridView ID="GridView1" style="width:100%;font-size:18px;height:100%" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" DataKeyNames="CourseId">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="BRANCHNAME" HeaderText="BRANCHNAME" SortExpression="BRANCHNAME" />
                <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" ReadOnly="True" />
                <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                <asp:BoundField DataField="BranchId" HeaderText="BranchId" SortExpression="BranchId" />
                <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BRANCH.BRANCHNAME, COURSE.* FROM BRANCH INNER JOIN COURSE ON BRANCH.BRANCHID =COURSE.BRANCHID"></asp:SqlDataSource>
    </div>
    </div>
</asp:Content>
