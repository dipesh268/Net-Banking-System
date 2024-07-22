<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        h2
        {
            font-weight: bold; 
            color: #4F4F4F;
            font-size:20pt;
            font-family:Monospace;
            margin-left:30px;
            margin-top:20px;
        }
        .main
        {
           
            height:700px;
        }
        .self
        {
            
            border:2px solid #E5E5E5;
            width:600px;
            height:220px;
            margin-top:20px;
            margin-left:30px;
            position:absolute;
        }
        .self .head
        {
            padding-top:7px;
            padding-left:20px;
            width:597px;
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
         .lbl
        {
            font-size:13pt;
            color:#4F4F4F;
            
            
        }
       
        .acc
        {
            padding-top:20px;
            padding-left:20px;
        }
        .txt
        {
            width:270px;
            height:30px;
            background-color:#E5E5E5;
            border-color:white;
            padding-left:10px;
            font-size:13pt;
            color:#4F4F4F;
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
            margin-left:30px;
            margin-top:280px;
             border-radius:5px;
        }
        .btn:hover
        {
             border-color:Lime;
        }
        
        .btn1
        {
            width:70px;
            height:30px;
            margin-top:15px;
            color:White;
            background-color:#4F4F4F;
            font-size:12pt;
            font-weight:500;
            border-radius:5px;
        }

    .style1
    {
        padding-top: 20px;
        padding-left: 20px;
        width: 296px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
      <h2 >Transfer Money</h2>
   <br /><hr />
   
   <div class="self">
      <div class="head">
          <asp:Label ID="Label1" runat="server" Text="Sourced Account" CssClass="lbl1"></asp:Label>
      </div>
      <table>
      <tr>
      <td class="style1">
       <label class="lbl">Account Number</label>
         <br />
         <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" ReadOnly="True"></asp:TextBox>
      
      </td>
       <td class="acc">
       <label class="lbl">Account Name</label>
         <br />
         <asp:TextBox ID="TextBox2" runat="server" CssClass="txt" ReadOnly="True"></asp:TextBox>
      
      </td>
      </tr>
        <tr>
      <td class="style1">
       <label class="lbl">Amount to Transfer</label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="TextBox3" ErrorMessage="Amount" ForeColor="Red">*</asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox3" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
      
      </td>
       <td class="acc">
      
      </td>
      </tr>
      </table>

   </div>




    <div class="other">
      <div class="head">
          <asp:Label ID="Label2" runat="server" Text="Beneficiary Account" CssClass="lbl1"></asp:Label>
      </div>
      <table>
      <tr>
      <td class="acc">
       <label class="lbl">Account Number</label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
              ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
         <br />
         <asp:TextBox ID="TextBox4" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
      
      </td>
       <td class="acc">
           <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn1" 
               onclick="Button1_Click" />
      
      </td>
      </tr>
        <tr>
      <td class="acc">
       <label class="lbl">Account Name</label>
         <br />
         <asp:TextBox ID="TextBox6" runat="server" CssClass="txt" ReadOnly="True"></asp:TextBox>
      
      </td>
       <td class="acc">
       <label class="lbl">Transaction Description</label>
         <br />
         <asp:TextBox ID="TextBox5" runat="server" CssClass="txt"></asp:TextBox>
      </td>
      </tr>
      </table>

   </div>

     <asp:Button ID="Button2" runat="server" Text="Transfer"  CssClass="btn" 
          onclick="Button2_Click1"/>
     <asp:Button ID="Button3" runat="server" Text="Reset" 
          style=" background-color:red" CssClass="btn" onclick="Button3_Click" />
   </div>

</asp:Content>

