<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Request.aspx.cs" Inherits="Admin_Request" %>

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
              margin-left:10px;
            margin-top:20px;
            height:530px;
            width:1250px;
            padding-top:10px;
             padding-left:50px;
            
        }
          .lbl
        {
            
            font-size:14pt;
            color:#4F4F4F;
        }
         .txt
        {
            width:230px;
            height:30px;
          
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
        .grid
        {
            margin-left:50px;
            }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
      <h2 >User Request</h2>
   <br />
       <hr />
       <br />
       <br />
        <asp:Label ID="Label11" runat="server" Text="Label" Visible=false></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid"
          BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
          CellPadding="3" DataKeyNames="Account_no" DataSourceID="SqlDataSource1" 
          onselectedindexchanged="CheckBox1_CheckedChanged" Width="1273px">
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
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                SortExpression="Pincode" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Pan_card_no" HeaderText="Pan_card_no" 
                SortExpression="Pan_card_no" />
            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
            <asp:BoundField DataField="Account_no" HeaderText="Account_no" ReadOnly="True" 
                SortExpression="Account_no" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
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
          SelectCommand="SELECT [Email], [F_Name], [L_Name], [DOB], [City], [Pincode], [Gender], [Pan_card_no], [phno], [Account_no], [status] FROM [User_Master] WHERE ([status] = @status)">
          <SelectParameters>
              <asp:Parameter DefaultValue="pending" Name="status" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>

   <div class="head">
       <asp:Label ID="Label1" runat="server" Text="You select this id :" 
           CssClass="lbl" Visible="False"></asp:Label>
        
        <br />
       <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Visible="False"></asp:TextBox>
       <asp:Button ID="Button1" runat="server" Text="Accept" CssClass="btn" 
           style="background-color:Green" Visible="False" onclick="Button1_Click"/>
       <asp:Button ID="Button2"
           runat="server" Text="Reject" CssClass="btn" style="background-color:red" 
            Visible="False" onclick="Button2_Click"/>
       <br />
       <br />

    
    </div>
    </div>
</asp:Content>

