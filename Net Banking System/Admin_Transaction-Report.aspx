<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_Transaction-Report.aspx.cs" Inherits="Admin_Transaction_Report" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 >Transaction Detail</h2>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass="grid"
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" Width="1074px" 
        AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="Tran_id" HeaderText="Tran_id" 
                SortExpression="Tran_id" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                SortExpression="Subject" />
            <asp:BoundField DataField="From_Acc_no" HeaderText="From_Acc_no" 
                SortExpression="From_Acc_no" />
            <asp:BoundField DataField="To_Acc_no" HeaderText="To_Acc_no" 
                SortExpression="To_Acc_no" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
        SelectCommand="SELECT [Tran_id], [Subject], [From_Acc_no], [To_Acc_no], [Amount], [Date] FROM [Tran_Master]">
    </asp:SqlDataSource>
    <%    }
             %>
             <%else
           { %>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="grid"
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource2" Width="1078px" >
        <Columns>
         
            <asp:BoundField DataField="Tran_id" HeaderText="Tran_id" 
                SortExpression="Tran_id" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                SortExpression="Subject" />
            <asp:BoundField DataField="From_Acc_no" HeaderText="From_Acc_no" 
                SortExpression="From_Acc_no" />
            <asp:BoundField DataField="To_Acc_no" HeaderText="To_Acc_no" 
                SortExpression="To_Acc_no" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
        SelectCommand="SELECT Tran_id, Subject, From_Acc_no, To_Acc_no, Amount, Date FROM Tran_Master where From_Acc_no=@From_Acc_no">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox2" Name="From_Acc_no" 
                         PropertyName="Text" />
                 </SelectParameters>
    </asp:SqlDataSource>
             <%} %>
   <div class="head">
   <br /><br />
       
       <asp:Button ID="Button2" runat="server" Text="Get PDF" CssClass="btn" 
           style="background-color:Blue" onclick="Button2_Click"/>
       <br />
       <br />
       <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource1"
           Visible=False AutoGenerateColumns="False">
           <Columns>
               <asp:BoundField DataField="Tran_id" HeaderText="Tran_id" 
                   SortExpression="Tran_id" />
               <asp:BoundField DataField="Subject" HeaderText="Subject" 
                   SortExpression="Subject" />
               <asp:BoundField DataField="From_Acc_no" HeaderText="From_Acc_no" 
                   SortExpression="From_Acc_no" />
               <asp:BoundField DataField="To_Acc_no" HeaderText="To_Acc_no" 
                   SortExpression="To_Acc_no" />
               <asp:BoundField DataField="Amount" HeaderText="Amount" 
                   SortExpression="Amount" />
               <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
           </Columns>
       </asp:GridView>
       <asp:GridView ID="GridView4" runat="server" DataSourceID="SqlDataSource2"
           Visible=False AutoGenerateColumns="False">
           <Columns>
               <asp:BoundField DataField="Tran_id" HeaderText="Tran_id" 
                   SortExpression="Tran_id" />
               <asp:BoundField DataField="Subject" HeaderText="Subject" 
                   SortExpression="Subject" />
               <asp:BoundField DataField="From_Acc_no" HeaderText="From_Acc_no" 
                   SortExpression="From_Acc_no" />
               <asp:BoundField DataField="To_Acc_no" HeaderText="To_Acc_no" 
                   SortExpression="To_Acc_no" />
               <asp:BoundField DataField="Amount" HeaderText="Amount" 
                   SortExpression="Amount" />
               <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
           </Columns>
       </asp:GridView>
    
    </div>
</asp:Content>

