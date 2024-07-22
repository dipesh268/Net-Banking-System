 <%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .div1{
            width:450px;
            padding:70px 0 70px 0;
            border-radius:12px;
            color:black;
           height:auto;
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%, -50%);
            box-shadow:0 16px 50px 0 black;
        }
        h1{
            font-size:30pt;
        }
        .txt1{
            /*font-family:'Times New Roman';*/
            height:25pt;
            width:200pt;
            border-radius:8px;
        }
        .btn1{
    width:100px;
            height:35px;
            font-size:13pt;
            color:White;
            background-color:Blue;
            border-color:White;
             border-radius:5px;
}
.btn1:hover{
    border-color:Lime;
}
.fp
{
    margin-left:100px;
    color:Black;
    text-decoration:underline;
    }
    .fp:hover
{
    color:Blue;
   
    transition-duration:0.5s;
    }
    .res:hover
    {
    
   text-decoration:underline;
    transition-duration:0.5s;
        }
        .rdb{
    display:inline-block;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="div1">
        <center>
            <h1>Welcome to Login</h1><br /><br />
            <DIV class="rdb">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="rb" Checked="true"/>User&nbsp&nbsp&nbsp<asp:RadioButton ID="RadioButton2" runat="server" GroupName="rb"/>Admin<br /><br /><br />
            </DIV>
            </center>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label1" runat="server" Text="Email-ID" CssClass="label1"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox 
            ID="TextBox1" runat="server" CssClass="txt1" Font-Size="Medium" 
            TextMode="Email"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Enter valid Email" ForeColor="Red" 
            ControlToValidate="TextBox1" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        <br />
            <br /><br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label2" runat="server" Text="Password" CssClass="label1"></asp:Label>&nbsp&nbsp&nbsp<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="txt1" style="margin-left:15px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter Password" ForeColor="Red" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
        <br /><br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />&nbsp&nbsp&nbsp<asp:Label ID="Label3" runat="server" Text="Remember Me...."></asp:Label><a href="forget_password.aspx" class="fp">Forget Password</a><br /><br />
        <center>
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Login" 
                Width="180px" CssClass="btn1" Font-Size="Medium" Font-Bold="True" onclick="Button1_Click1"
                />
        <br /><br /><br />
        <asp:Label ID="Label4" runat="server" Text="Don't have an Account ?"></asp:Label><a href="Registraction.aspx" class="res">Register Now</a><br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </center>

        
    </div>
</asp:Content>

