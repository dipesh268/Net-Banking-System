<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="User_Account(Balance).aspx.cs" Inherits="User_home" %>

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
        .head
        {
            margin-left:150px;
            margin-top:20px;
            height:100px;
            width:1000px;
            padding-top:10px;
              background-color:#FBFBFB;
          
        }
        .info
        {
             margin-left:150px;
            margin-top:20px;
            height:400px;
            width:1000px;
           
             background-color:#FBFBFB;
        }
         .acc
        {
            padding-top:20px;
            padding-left:250px;
        }
         .acc1
        {
            padding-top:20px;
            padding-left:80px;
        }
          .lbl
        {
            font-size:15pt;
            color:#4F4F4F;
        }
        .text
        {
             font-size:16pt;
            
        }
        
            .lbl1
        {
            
            font-size:12pt;
            color:#4F4F4F;
        }
        .text1
        {
             font-size:16pt;
               vertical-align:middle;
            
        }
          .btn
        {
            width:100px;
            height:35px;
            font-size:10pt;
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
       
       
       
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="main">
      <h2 >Account Information</h2>
   <br /><hr />
   
   <div class="head">
  
    <label class="lbl1" style="margin-left:50px">Saving Account Number</label>

     <label class="lbl1" style="margin-left:500px">Available Balance</label>
     <br /><br />
   
        <asp:Label ID="Label8" runat="server" Text="397626451201" Class="text1" style="margin-left:50px"></asp:Label>
         <asp:Label ID="Label10" runat="server" Text="₹45,000.00" Class="text1" style="margin-left:530px"></asp:Label>
       <asp:Button ID="Button1" runat="server" Text="Fund Transfer" CssClass="btn" 
           onclick="Button1_Click" />
   
     
   </div>

   <div class="info">
   
   <table>
   <tr>
    <td class="acc">
    <label class="lbl">Account Type</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label1" runat="server" Text="HSS-GEN-PUB-RAL-INR" Class="text"></asp:Label>
    </td>
   </tr>

    <tr>
    <td class="acc">
    <label class="lbl">Account Number</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label2" runat="server" Text="397626451201" Class="text"></asp:Label>
    </td>
   </tr>

   <tr>
    <td class="acc">
    <label class="lbl">Email</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label11" runat="server" Text="397626451201" Class="text"></asp:Label>
    </td>
   </tr>

    <tr>
    <td class="acc">
    <label class="lbl">Holder Name</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label3" runat="server" Text="Mr. DIPESH K. MUNDHARA" Class="text"></asp:Label>
    </td>
   </tr>

   <tr>
    <td class="acc">
    <label class="lbl">Birth Date</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label4" runat="server" Text="251" Class="text"></asp:Label>
    </td>
   </tr>

    <tr>
    <td class="acc">
    <label class="lbl">Opening Balance</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label5" runat="server" Text="₹2000" Class="text"></asp:Label>
    </td>
   </tr>

    <tr>
    <td class="acc">
    <label class="lbl">Current Balance</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label6" runat="server" Text="₹45000" Class="text"></asp:Label>
    </td>
   </tr>

    <tr>
    <td class="acc">
    <label class="lbl">Uncleared Balance</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label7" runat="server" Text="₹0.00" Class="text"></asp:Label>
    </td>
   </tr>

   <%-- <tr>
    <td class="acc">
    <label class="lbl">Currency</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label8" runat="server" Text="INR" Class="text"></asp:Label>
    </td>
   </tr>--%>
    <tr>
    <td class="acc">
    <label class="lbl">Account/Ifsc</label>
    </td>
    <td class="acc1">
        <asp:Label ID="Label9" runat="server" Text="CBIN0284992" Class="text"></asp:Label>
    </td>
   </tr>


   </table>
  
     
   </div>
  
   </div>

    
  

</asp:Content>

