<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_User-dtl.aspx.cs" Inherits="Admin_Account_dtl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
    <h2 >User(Customer) Details</h2>
   <br /><hr />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="grid" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Account_no" 
        DataSourceID="SqlDataSource1" Width="1343px" 
        onselectedindexchanged="CheckBox1_CheckedChanged" AllowPaging="True">
        <Columns>
        <asp:TemplateField >
                                       <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" oncheckedchanged="CheckBox1_CheckedChanged"
                               />
                                       </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                   </asp:TemplateField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="F_Name" HeaderText="F_Name" 
                SortExpression="F_Name" />
            <asp:BoundField DataField="L_Name" HeaderText="L_Name" 
                SortExpression="L_Name" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="User_addr" HeaderText="User_addr" 
                SortExpression="User_addr" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                SortExpression="Pincode" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Pan_card_no" HeaderText="Pan_card_no" 
                SortExpression="Pan_card_no" />
            <asp:BoundField DataField="Addhar_card_no" HeaderText="Addhar_card_no" 
                SortExpression="Addhar_card_no" />
            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
            <asp:BoundField DataField="Account_no" HeaderText="Account_no" ReadOnly="True" 
                SortExpression="Account_no" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Size="Larger" 
               ForeColor="White" Height="39px" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle Font-Size="Large" ForeColor="#000066" Height="30px" 
               HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT [Email], [F_Name], [L_Name], [DOB], [User_addr], [City], [State], [Pincode], [Gender], [Pan_card_no], [Addhar_card_no], [phno], [Account_no] FROM [User_Master]">
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="You select this Account :" 
           CssClass="lbl" Visible=false></asp:Label>
        
        <br />
       <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Visible="false"></asp:TextBox>
       <asp:Button ID="Button1" runat="server" Text="Get PDF" CssClass="btn" 
             Visible=false onclick="Button1_Click"/>
    <asp:Button ID="Button2" runat="server" Text="Delete" 
        style="background-color:red" CssClass="btn" onclick="Button2_Click" Visible=false/>
    <asp:Button ID="Button3"
        runat="server" Text="Update" CssClass="btn" onclick="Button3_Click" Visible=false/>
   
  
       <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Visible=false
        DataKeyNames="Account_no" DataSourceID="SqlDataSource2" Height="50px"
        Width="125px">
        <Fields>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="F_Name" HeaderText="F_Name" 
                SortExpression="F_Name" />
            <asp:BoundField DataField="L_Name" HeaderText="L_Name" 
                SortExpression="L_Name" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="User_addr" HeaderText="User_addr" 
                SortExpression="User_addr" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                SortExpression="Pincode" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Pan_card_no" HeaderText="Pan_card_no" 
                SortExpression="Pan_card_no" />
            <asp:BoundField DataField="Addhar_card_no" HeaderText="Addhar_card_no" 
                SortExpression="Addhar_card_no" />
            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
            <asp:BoundField DataField="Account_no" HeaderText="Account_no" ReadOnly="True" 
                SortExpression="Account_no" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT Email, F_Name, L_Name, DOB, User_addr, City, State, Pincode, Gender, Pan_card_no, Addhar_card_no, phno, Account_no FROM User_Master where Account_no=@Account_no">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Account_no" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
   
  
       <br />
       <br />
</asp:Content>

