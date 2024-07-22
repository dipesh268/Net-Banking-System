<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Transaction-histroy.aspx.cs" Inherits="Transaction_histroy" %>

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
            
            font-size:12pt;
            color:#4F4F4F;
        }
         .txt
        {
            width:180px;
            height:30px;
          
           
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="main">
      <h2 >Transaction History</h2>
   <br /><hr />

   <div class="head">
           <br /><br />

       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
               CellPadding="3" DataSourceID="SqlDataSource1" Height="55px" Width="845px">
           <Columns>
               <asp:BoundField DataField="Tran_id" HeaderText="Tran_id" 
                   SortExpression="Tran_id" />
               <asp:BoundField DataField="Subject" HeaderText="Subject" 
                   SortExpression="Subject" />
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
               SelectCommand="SELECT [Tran_id], [Subject], [To_Acc_no], [Amount], [Date] FROM [Tran_Master] WHERE ([From_Acc_no] = @From_Acc_no)">
               <SelectParameters>
                   <asp:SessionParameter Name="From_Acc_no" SessionField="Act_no" Type="Decimal" />
               </SelectParameters>
           </asp:SqlDataSource>
    
           
    
    </div>
    </div>
</asp:Content>

