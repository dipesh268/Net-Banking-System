<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Add-user.aspx.cs" Inherits="Add_user_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
        .body{
            height:100%;
        }
       
        .div1{
    width:950px;
       border:2px solid #E5E5E5;
    height:auto;
    position:absolute; 
    margin-left:230px;
    margin-top:15px;
    display:fix;
}
.div1 .head
        {
            padding-top:7px;
            padding-left:20px;
            margin-bottom:20px;
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
.label1{
    margin-left:30px;
    margin-bottom:20px;
}
.label2{
    margin-left:30px;
    margin-bottom:20px;
}
.txt1{
    /*font-family:'Times New Roman';*/
    height:25pt;
    width:200pt;
    border-radius:10px;
    margin-left:20px;
    margin-bottom:20px;
    text-align:center;
}
.txt2{
    /*font-family:'Times New Roman';*/
    height:25pt;
    width:200pt;
    border-radius:10px;
    margin-left:20px;
margin-bottom:20px;
text-align:center;
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
 .btn2{
    width:166px;
            height:41px;
            font-size:13pt;
            color:White;
            background-color:Blue;
            border-color:White;
            margin-left:40px;
         
             border-radius:5px;
}
.btn2:hover{
     border-color:Lime;
}

.validation
{
       background-image:linear-gradient(rgb(255, 71, 26),rgb(255, 153, 102),rgb(243 118 23));
       height:350px;
       width:40%;
          padding:70px 0 70px 0;
          position:absolute;
          border-radius:30px;
    top:130%;
    left:50%;
    transform:translate(-50%, -50%);
    box-shadow:0 16px 50px 0 black;
    margin-top:10px;
          
    }
    .valid-summ
    {
        text-align:center;
        border:2px bold black;
        color:Red;
        border-radius: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="div1">
        <div class="head">
          <asp:Label ID="Label18" runat="server" Text="Registraction From" CssClass="lbl1"></asp:Label>
      </div>
        <asp:Label ID="Label1" runat="server" Text="Email-ID" CssClass="label1"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="txt1" 
            style="margin-left:55px" placeholder="Email" TextMode="Email"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label2" runat="server" Text="First Name" CssClass="label2"></asp:Label>&nbsp; <asp:TextBox ID="TextBox2" runat="server" CssClass="txt2" style="margin-left:65px"  placeholder="First Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter First Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Last Name" CssClass="label1"></asp:Label><asp:TextBox ID="TextBox3" runat="server" CssClass="txt1" style="margin-left:45px"  placeholder="Last Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter Last Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        &nbsp;
        <asp:Label ID="Label4" runat="server" Text="Date Of Birth" CssClass="label2"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="txt2" 
            style="margin-left:45px" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Select Date of birth" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Address" CssClass="label1"></asp:Label><asp:TextBox ID="TextBox5" runat="server" CssClass="txt1" style="margin-left:62px"  placeholder="Address"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Enter Address" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:Label ID="Label6" runat="server" Text="City" CssClass="label2"></asp:Label>&nbsp; <asp:TextBox ID="TextBox6" runat="server" CssClass="txt2" style="margin-left:110px"  placeholder="City"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Enter City" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Text="State" CssClass="label1"></asp:Label><asp:TextBox ID="TextBox7" runat="server" CssClass="txt1" style="margin-left:82px"  placeholder="State"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Enter State" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:Label ID="Label8" runat="server" Text="Pincode" CssClass="label2"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox8" runat="server" CssClass="txt2" 
            style="margin-left:87px"  placeholder="Pincode" TextMode="Number"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox8" ForeColor="Red" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Gender" CssClass="label1"></asp:Label><asp:DropDownList ID="DropDownList2" runat="server" CssClass="txt1" style="margin-left:65px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label10" runat="server" Text="Account No." CssClass="label2" style="margin-left:40px"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox10" runat="server" CssClass="txt2" 
            style="margin-left:60px" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Pan Card No." CssClass="label1"></asp:Label><asp:TextBox ID="TextBox11" runat="server" CssClass="txt1" style="margin-left:25px"  placeholder="Pancard No."></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox11" ForeColor="Red" 
            ValidationExpression="([A-Z]){5}([0-9]){4}([A-Z]){1}$">*</asp:RegularExpressionValidator>
        <asp:Label ID="Label12" runat="server" Text="Aadhar Card No." CssClass="label2"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox12" runat="server" CssClass="txt2" 
            style="margin-left:30px"  placeholder="Aadharcard No." TextMode="Number"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox12" ForeColor="Red" 
            ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Password" CssClass="label1"></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server" CssClass="txt1" 
            style="margin-left:48px"  placeholder="Password" TextMode="Password"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="TextBox13" ForeColor="Red" 
            
            ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$">*</asp:RegularExpressionValidator>
        <asp:Label ID="Label14" runat="server" Text="Confirm Password" CssClass="label2"></asp:Label>
        <asp:TextBox ID="TextBox14" runat="server" CssClass="txt2" 
            style="margin-left:30px"  placeholder="Re-Enter Password" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox14" ControlToValidate="TextBox13" 
            ErrorMessage="CompareValidator" ForeColor="Red">*</asp:CompareValidator>
        <br />
        <asp:Label ID="Label15" runat="server" Text="Mobile No." CssClass="label1" style="align-content:center"></asp:Label>
        <asp:TextBox ID="TextBox15"  placeholder="Mobile No" runat="server" 
            CssClass="txt1" style="margin-left:35px" TextMode="Number"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="TextBox15" ForeColor="Red" 
            ValidationExpression="^[6-9]\d{9}$">*</asp:RegularExpressionValidator>
        <asp:Label ID="Label16" runat="server" Text="Account Type" CssClass="label2"></asp:Label>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt2" style="margin-left:55px">
            <asp:ListItem>NRI</asp:ListItem>
            <asp:ListItem>Recurring Deposit</asp:ListItem>
            <asp:ListItem>Salary</asp:ListItem>
            <asp:ListItem>Fixed Deposit</asp:ListItem>
            <asp:ListItem>Current</asp:ListItem>
            <asp:ListItem Selected="True">Saving</asp:ListItem>
        </asp:DropDownList><br />
        <center><asp:Label ID="Label17" runat="server" Text="Balance in Account" CssClass="label1"></asp:Label><asp:TextBox ID="TextBox17" runat="server" CssClass="txt1" TextMode="Number"></asp:TextBox>
        </center>
            <center>
            <asp:Button ID="Button1" runat="server" Text="register Now" Height="40px" 
                    Width="180px" CssClass="btn1" onclick="Button1_Click" />
                <%--<asp:Button ID="Button2" Height="40px" Width="180px" CssClass="btn1" 
                    runat="server" Text="Reset" Style="margin-left: 20px" 
                  />--%><input type="reset" name="Reset" value="Reset" class="btn2" />
            </center>
            <br /><br />
    </div>
</asp:Content>

