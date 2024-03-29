﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentHistory.aspx.cs" Inherits="PMS.Payment.PaymentHistory.PaymentHistory" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PAYMENT HISTORY</title>
   
    <style type="text/css">
        .auto-style4 {
            height: 10px;
        }
        .auto-style5 {
            height: 36px;
            width: 301px;
        }
        .auto-style6 {
            height: 50px;
        }
        .auto-style8 {
            height: 10px;
            width: 301px;
        }
        .auto-style9 {
            height: 50px;
            width: 301px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            margin-left: 213px;
        }
        .auto-style13 {
            height: 57px;
        }
        .auto-style14 {
            height: 352px;
            width: 900px;
        }
        </style>
   
</head>
<body style="background-image: url(images/mandala5x.jpg); background-repeat: no-repeat; border: 20px solid #882464;">
    <form id="frmMonthlyReport" runat="server">
        <div>
            <center style="height: 540px; width: 1128px; margin-left: 116px">

            <table style="margin-right: 0px; margin-bottom: 0px;" class="auto-style14">
                <tr>
                    <th class="auto-style5"> <h3 style="color: #3D1963; height: 40px;"> PAYMENT HISTORY </h3></th>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="LblSdate" runat="server" Text="Project name" ForeColor="#882464"></asp:Label></td>
                        <td><asp:DropDownList ID="ddlpname" runat="server" BackColor="#EEE4E4" BorderWidth="0px" Height="21px" Width="268px" ForeColor="#882464" CssClass="auto-style11">
                            <asp:ListItem Text="search" Value="search"></asp:ListItem>
                            <asp:ListItem Text="project name 1" Value="project name 1"></asp:ListItem>
                            <asp:ListItem Text="project name 2" Value="project name 2"></asp:ListItem>
                            <asp:ListItem Text=" project name 3" Value="project name 3"></asp:ListItem>
                            <asp:ListItem Text="project name 4" Value="project name 4"></asp:ListItem>
                            <asp:ListItem Text="project name 5" Value="project name 5"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                        <td class="auto-style4"></td>

                      <td class="auto-style4"> </td>
            
                </tr>
                <div>
                <tr>
                    <td>
                        <asp:Label ID="LblEdate" runat="server" Text="Invoice no" ForeColor="#882464"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlinvono" runat="server" BackColor="#EEE4E4" BorderWidth="0px" Height="21px" Width="268px" ForeColor="#882464">
                            <asp:ListItem Text="search" Value="search"></asp:ListItem>
                            <asp:ListItem Text="invoice no1" Value="invoice no 1"></asp:ListItem>
                            <asp:ListItem Text="invoice no 2" Value="invoice no 2"></asp:ListItem>
                            <asp:ListItem Text=" invoice no 3" Value="invoice no 3"></asp:ListItem>
                            <asp:ListItem Text="invoice no 4" Value="invoice no 4"></asp:ListItem>
                            <asp:ListItem Text="invoice no 5" Value="invoice no 5"></asp:ListItem>
                        </asp:DropDownList>
                        
                </tr>
                     </div>

                <div>
                    <asp:Table ID="TMReport" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="center" width="80%">
                        <asp:TableRow>
                            <asp:TableCell ForeColor="#882464"> Date </asp:TableCell>
                            <asp:TableCell ForeColor="#882464"> Payment ID </asp:TableCell>
                              <asp:TableCell ForeColor="#882464">Invoice No  </asp:TableCell>
                             <asp:TableCell ForeColor="#882464"> Project Name</asp:TableCell>
                             <asp:TableCell ForeColor="#882464"> Client Name</asp:TableCell>
                            <asp:TableCell ForeColor="#882464"> Phone no</asp:TableCell>
                            <asp:TableCell ForeColor="#882464"> Payment Method</asp:TableCell>
                            <asp:TableCell ForeColor="#882464"> Account No</asp:TableCell>
                            <asp:TableCell ForeColor="#882464"> Total Payment </asp:TableCell>
                            <asp:TableCell ForeColor="#882464">  Paid Payment</asp:TableCell>
                            <asp:TableCell ForeColor="#882464"> Due Payment</asp:TableCell>
                          
                           
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                             <asp:TableCell></asp:TableCell>
                             <asp:TableCell></asp:TableCell>
                             <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                             <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                             <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                    
                </div>

                     </table>
           
            
                    <table>
           
               
                     <tr>
                      <center>
                        <td class="auto-style12"><asp:Button ID="btnedit" runat="server" Text="EDIT" ForeColor="#FFFFFF" BackColor="#882464" Height="37px" Width="110px" BorderWidth="0px" CssClass="auto-style12" OnClick="btnedit_Click"></asp:Button></td>
                         <td><asp:Button ID="btnback" runat="server" Text="BACK" Text="EDIT" ForeColor="#FFFFFF" BackColor="#882464" Height="37px" Width="110px" BorderWidth="0px" CssClass="auto-style12" OnClick="btnback_Click"></asp:Button></td>
                         <td><asp:Button ID="btnSAVE" runat="server" Text="SAVE" Text="EDIT" ForeColor="#FFFFFF" BackColor="#882464" Height="37px" Width="110px" BorderWidth="0px" CssClass="auto-style12" OnClick="btnSAVE_Click"></asp:Button></td>
                      </center>
                           </tr>
                  
                    
                    </table>
                 
            
                
                </center>
            </div>
        
    </form>

</body>
</html>