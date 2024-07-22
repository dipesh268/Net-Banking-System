<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        *{
            padding:0;
            margin:0;
            text-decoration:none;
            list-style:none;
            box-sizing:border-box;
        }
        html{
            height:100%;
        }
        body{
            background-color:floralwhite;
            width:100%;
            height: 323px;
        }
        h1{
             color:black;
         }
         .btn1{
             width:100px;
            height:35px;
            font-size:13pt;
            color:White;
            background-color:Blue;
            border-color:White;
            margin-left:40px;
         
             border-radius:5px;
         }
         .btn1:hover{
            border-color:Lime;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
   
    
   &nbsp
      <center>  <img src="image/final_home_logo.png" style="height: 422px; width: 760px">
    <h1>Welcome To Net Banking...</h1>&nbsp<br />
          <asp:Button ID="Button1" runat="server" Height="60px" Text="Login" 
              Width="172px" CssClass="btn1" onclick="Button1_Click"/>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button2" runat="server" Height="60px" Text="SignUp" 
              Width="172px" CssClass="btn1" onclick="Button2_Click"/>
  
  
      </center>
        </div>
</asp:Content>

