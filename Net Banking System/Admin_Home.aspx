<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    .Just
    {
        background-color:#EEEEEE;
        margin-top:10px;
        margin-left:5px;
        font-size:35px;
        height:50px;
        }
        h4
        {
            margin-left:20px;
            }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="Just">
    <h4>Welcome Back,
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
</div>
</asp:Content>

