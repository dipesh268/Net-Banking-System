<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Profile(Update_Profile).aspx.cs" Inherits="Profile_Update_Profile_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type = "text/css">

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
        .lbl
        {
            font-size:13pt;
            color:#4F4F4F;
            
            
        }
       
        .acc
        {
            padding-top:40px;
            padding-left:100px;
        }
        .txt
        {
            width:300px;
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
            width:150px;
            height:35px;
            font-size:13pt;
            color:White;
            background-color:Blue;
            border-color:White;
            margin-left:100px;
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
      <h2 >
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> Profile - Update</h2>
   <br /><hr />
   
   <table>
   <tr >
     <td class="acc"> 
         <label class="lbl">Email-Id</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="TextBox1" ErrorMessage="Enter Email" ForeColor="Red">*</asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" ReadOnly="True"></asp:TextBox>
     </td>
     <td class="acc">
      <label class="lbl">First Name</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="TextBox2" ErrorMessage="Enter First Name" ForeColor="Red">*</asp:RequiredFieldValidator>
       <br />
         <asp:TextBox ID="TextBox2" runat="server" CssClass="txt"></asp:TextBox>
     </td >
       <td class="acc">
      <label class="lbl">Last Name</label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
             ControlToValidate="TextBox3" ErrorMessage="Enter Last Name" ForeColor="Red">*</asp:RequiredFieldValidator>
       <br />
         <asp:TextBox ID="TextBox3" runat="server" CssClass="txt"></asp:TextBox>
     </td>
     </tr>
     
     <tr >
     <td class="acc">
    
         <label class="lbl">Date Of Birth</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
             ControlToValidate="TextBox4" ErrorMessage="Enter Birthday" ForeColor="Red">*</asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox4" runat="server" CssClass="txt"></asp:TextBox>
     </td>
     <td class="acc">
      <label class="lbl">Address</label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
             ControlToValidate="TextBox5" ErrorMessage="Enter Address" ForeColor="Red">*</asp:RequiredFieldValidator>
       <br />
         <asp:TextBox ID="TextBox5" runat="server" CssClass="txt"></asp:TextBox>
     </td >
       <td class="acc">
      <label class="lbl">City</label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
             ControlToValidate="TextBox6" ErrorMessage="Enter City" ForeColor="Red">*</asp:RequiredFieldValidator>
       <br />
         <asp:TextBox ID="TextBox6" runat="server" CssClass="txt"></asp:TextBox>
     </td>
   </tr>

     <tr >
     <td class="acc">
    
         <label class="lbl">State</label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
             ControlToValidate="TextBox7" ErrorMessage="Enter State" ForeColor="Red">*</asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox7" runat="server" CssClass="txt"></asp:TextBox>
     </td>
     <td class="acc">
      <label class="lbl">Pincode</label>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
             ControlToValidate="TextBox8" ForeColor="Red" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
       <br />
         <asp:TextBox ID="TextBox8" runat="server" CssClass="txt"></asp:TextBox>
     </td >
       <td class="acc">
      <label class="lbl">Gender</label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
             ControlToValidate="TextBox9" ErrorMessage="Enter State" ForeColor="Red">*</asp:RequiredFieldValidator>
       <br />
          <asp:TextBox ID="TextBox9" runat="server" CssClass="txt"></asp:TextBox>
     </td>
   </tr>

     <tr >
     <td class="acc">
    
         <label class="lbl">Pan Card No</label>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
             ControlToValidate="TextBox10" ForeColor="Red" 
             ValidationExpression="([A-Z]){5}([0-9]){4}([A-Z]){1}$">*</asp:RegularExpressionValidator>
         <br />
         <asp:TextBox ID="TextBox10" runat="server" CssClass="txt"></asp:TextBox>
     </td>
     <td class="acc">
      <label class="lbl">Aadhar Card NO</label>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
             ControlToValidate="TextBox11" ForeColor="Red" 
             ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
       <br />
         <asp:TextBox ID="TextBox11" runat="server" CssClass="txt"></asp:TextBox>
     </td >
       <td class="acc">
      <label class="lbl">Phone NO</label>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
               ControlToValidate="TextBox12" ForeColor="Red" 
               ValidationExpression="^[6-9]\d{9}$">*</asp:RegularExpressionValidator>
       <br />
         <asp:TextBox ID="TextBox12" runat="server" CssClass="txt"></asp:TextBox>
     </td>
   </tr>
  


   </table>
   <br /><br />
       <asp:Button ID="Button1" runat="server" Text="Update Profile" CssClass="btn" 
          onclick="Button1_Click" />
   </div>
</asp:Content>

