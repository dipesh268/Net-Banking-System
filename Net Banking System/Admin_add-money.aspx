<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_add-money.aspx.cs" Inherits="Admin_add_money" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style>
  h2
        {
            font-weight: bold; 
            color: #4F4F4F;
            font-size:20pt;
            font-family:Monospace;
            margin-left:30px;
            margin-top:20px;
        }
        .grid
        {
            margin-left:30px;
            }
            .txt
        {
            width:230px;
            height:30px;
          margin-left:50px;
           text-align:center;
            padding-left:10px;
            font-size:13pt;
            vertical-align:middle;
             border-radius:5px;
        }
               .btn
        {
            width:100px;
            height:35px;
            font-size:13pt;
            color:White;
            background-color:Blue;
            border-color:White;
            margin-left:40px;
         
             border-radius:5px;
        }
        .btn:hover
        {
             border-color:Lime;
        }
          .lbl
        {
            margin-left:50px;
            font-size:14pt;
            color:#4F4F4F;
        }
        .main1
        {
            border:2px solid #E5E5E5;
            width:900px;
            height:300px;
            margin-left:20px;
            
            }
            .main1 .head
        {
            padding-top:7px;
            padding-left:20px;
            width:900px;
            height:40px;
            background-color:#B9FFFF;
        }
            .other
        {
            border:2px solid #E5E5E5;
            width:600px;
            height:220px;
            margin-top:20px;
            margin-left:650px;
            position:absolute;
        }
            .other .head
        {
            padding-top:7px;
            padding-left:20px;
            width:597px;
            height:40px;
            background-color:#B9FFFF;
        }
         .lbl1
        {
            
            font-size:15pt;
            color:Green;
            font-weight:500;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h2 >Add Amount to Account</h2>
   <br /><hr />
    <br />
    <br />

      <div class="main1">
      <div class="head">
          <asp:Label ID="Label2" runat="server" Text="Add Amount to Account" CssClass="lbl1"></asp:Label>
      </div>
      <label class="lbl" >Find Account :</label>
        
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
              ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
        
        <br />
         <asp:TextBox ID="TextBox1" runat="server" Class="txt"></asp:TextBox>
       <asp:Button ID="Button3" runat="server" Text="Find" CssClass="btn" onclick="Button3_Click" 
                /><asp:Label
           ID="Label1" runat="server" Text="Label" Visible=false></asp:Label>
       <br />
       <br />
        <label class="lbl" >Account Holder :</label>
        
        <br />
         <asp:TextBox ID="TextBox2" runat="server" Class="txt" AutoPostBack="True" 
              ReadOnly="True"></asp:TextBox>
            <br /><br />
           <label class="lbl" >Amount :</label><asp:RequiredFieldValidator 
              ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" 
              ForeColor="Red">*</asp:RequiredFieldValidator>
          <label class="lbl" style="margin-left:220px;">Password :</label><asp:CompareValidator 
              ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" 
              ControlToValidate="TextBox5" ForeColor="Red">*</asp:CompareValidator>
          <label class="lbl" style="margin-left:200px;">Confirm Password :</label>
       <br />
       <asp:TextBox ID="TextBox3" runat="server" Class="txt"></asp:TextBox>
       <asp:TextBox ID="TextBox4" runat="server" Class="txt" TextMode="Password"></asp:TextBox>
       <asp:TextBox ID="TextBox5" runat="server" Class="txt" TextMode="Password"></asp:TextBox>
       <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Transfer" CssClass="btn" onclick="Button1_Click" 
              />
      </div>
</asp:Content>

