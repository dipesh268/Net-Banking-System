<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Change_pass.aspx.cs" Inherits="Change_pass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .div1{
    width:500px;
    padding:10px 0 20px 0;
    
    border-radius:13px;
    color:black;
    height:430px;
    position:absolute;
    top:50%;
    left:50%;
    margin-left:auto;
    margin-right:auto;
    transform:translate(-50%, -50%);
   border:solid Gray 2px;
    margin-top:0px;
}
    h1 {
        font-size: 30pt;
        margin-top: 0px;
        text-align: center;
        text-decoration: underline;
         padding:20px 0 20px 0;
    }
    .label1{
     margin-left:20px;
    }
        .txt1{
    /*font-family:'Times New Roman';*/
    height:25pt;
    width:200pt;
    border-radius:10px;
    margin-left:20px;
    margin-bottom:10px;
    text-align:center;
}
                .btn1{
    text-align:center;
   background-color: #007BFF;
        border: none;
        border-radius: 4px;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
    height:40px;
    width:30%;
    font-size:20px;
}
.btn1:hover{
    background-color: #0056b3;
}


 .lbl1
        {
            
            font-size:15pt;
            color:Green;
            font-weight:500;
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
        .acc
        {
            padding-top:20px;
            padding-left:20px;
        }
         .lbl
        {
            font-size:13pt;
            color:#4F4F4F;
            
            
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
        h2
        {
            font-weight: bold; 
            color: #4F4F4F;
            font-size:20pt;
            font-family:Monospace;
            margin-left:30px;
            margin-top:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >Change Password/Pin</h2>
   <br /><hr />
<div class="self">
  
      <div class="head">
          <asp:Label ID="Label5" runat="server" Text="Change Password/Pin" CssClass="lbl1"></asp:Label>
      </div>
      <table>
      <tr>
      <td class="acc">
       <label class="lbl">Email </label>
         <br />
         <asp:TextBox ID="TextBox5" runat="server" CssClass="txt" ReadOnly="True"></asp:TextBox>
      
      </td>
       <td class="acc">
       <label class="lbl">Old Password</label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ControlToValidate="TextBox6" ErrorMessage="Enter old password" ForeColor="Red">*</asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox6" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
      
      </td>
      </tr>
        <tr>
      <td class="acc">
       <label class="lbl">New Password</label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="TextBox7" ForeColor="Red" 
            
            
              ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$">*</asp:RegularExpressionValidator>
         <br />
         <asp:TextBox ID="TextBox7" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
      
      </td>
       <td class="acc">
      <label class="lbl">Confirm Password</label>
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
              ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
              ErrorMessage="Please Enter Same password" ForeColor="Red">*</asp:CompareValidator>
         <br />
         <asp:TextBox ID="TextBox8" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
      </td>
      </tr>
      </table>

   </div>
    <asp:Button ID="Button2" runat="server" Text="Change"  CssClass="btn" 
        onclick="Button2_Click"/>
    <input id="Reset1" type="reset" value="reset" class="btn" style=" background-color:red"/><br />
<br />
</asp:Content>

