<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_dtl-account.aspx.cs" Inherits="Admin_dtl_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .grid
        {
            margin-left:10px;
            }
            .btn
        {
            width:100px;
            height:35px;
            font-size:13pt;
            color:White;
            background-color:Blue;
            border-color:White;
             border-radius:5px;
        }
        .btn:hover
        {
             border-color:Lime;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >&nbsp;Account Detail</h2>
   <br /><hr />
    <br />
    <br />
      <label class="lbl" >Find Account :</label>
        
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Class="txt" AutoPostBack="True"></asp:TextBox>
       <asp:Button ID="Button3" runat="server" Text="Find" CssClass="btn"  />
       <br />
       <br />
       <%if (TextBox2.Text == "")
         { %>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" Width="987px" 
        onselectedindexchanged="CheckBox1_CheckedChanged" AllowPaging="True">
        <Columns>
        <asp:TemplateField >
                                       <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" oncheckedchanged="CheckBox1_CheckedChanged"/>
                                       </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                   </asp:TemplateField>
            <asp:BoundField DataField="Account_no" HeaderText="Account_no" 
                SortExpression="Account_no" />
            <asp:BoundField DataField="Account_type" HeaderText="Account_type" 
                SortExpression="Account_type" />
            <asp:BoundField DataField="Account_Balance" HeaderText="Account_Balance" 
                SortExpression="Account_Balance" />
            <asp:BoundField DataField="Opening_Balance" HeaderText="Opening_Balance" 
                SortExpression="Opening_Balance" />
            <asp:BoundField DataField="Current_Balance" HeaderText="Current_Balance" 
                SortExpression="Current_Balance" />
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
        SelectCommand="SELECT * FROM [Account_Master]"></asp:SqlDataSource>
    <%    }
             %>
             <%else
           { %>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource2" 
        onselectedindexchanged="CheckBox2_CheckedChanged" Width="991px">
        <Columns>
        <asp:TemplateField >
                                       <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" oncheckedchanged="CheckBox2_CheckedChanged"/>
                                       </ItemTemplate>
                                        <ItemStyle Width="30px" />
                                   </asp:TemplateField>
            <asp:BoundField DataField="Account_no" HeaderText="Account_no" 
                SortExpression="Account_no" />
            <asp:BoundField DataField="Account_type" HeaderText="Account_type" 
                SortExpression="Account_type" />
            <asp:BoundField DataField="Account_Balance" HeaderText="Account_Balance" 
                SortExpression="Account_Balance" />
            <asp:BoundField DataField="Opening_Balance" HeaderText="Opening_Balance" 
                SortExpression="Opening_Balance" />
            <asp:BoundField DataField="Current_Balance" HeaderText="Current_Balance" 
                SortExpression="Current_Balance" />
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
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [Account_Master] WHERE ([Account_no] = @Account_no)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox2" Name="Account_no" 
                         PropertyName="Text" Type="Decimal" />
                 </SelectParameters>
    </asp:SqlDataSource>
             <%} %>
   <div class="head">
   <br /><br />
       <asp:Label ID="Label1" runat="server" Text="You select this Account :" 
           CssClass="lbl" Visible=false></asp:Label>
        
        <br />
       <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Visible="False"></asp:TextBox>
       <asp:Button ID="Button2" runat="server" Text="Delete" CssClass="btn" 
           style="background-color:red" onclick="Button2_Click" Visible=false/>
       <br />
       <br />

    
    </div>
</asp:Content>

