<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GoodsManger.aspx.cs" Inherits="Admin_GoodsManger" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Product information</title>
    <link href="images/style.css" type="text/css" rel="stylesheet" />
</head>
<body style="width: 98%;">
    <form id="form1" runat="server">
        <div id="wrap">
            <ul id="tags">
                <li class="selectTag" style="left: 0px; top: 0px">product management</li>
            </ul>
            <div id="tagContent">
                <table cellspacing="1" width="100%" cellpadding="3" bgcolor="#E1EFF8">
                    <tr  >
                        <td >
                            <table align="center" cellpadding="0" cellspacing="0" height="339" style="font-size: 12pt;
                                background-image: url(../Image/例图/后台/后台页.jpg); width: 100%">
                                <tr>
                                    <td colspan="3" style="text-align: right">
                                        <asp:HyperLink ID="Add" runat="server" NavigateUrl="AddGoods.aspx" Text="Add"></asp:HyperLink>
                                        <asp:Label ID="Label2" runat="server" Text="Search："></asp:Label>
                                        <asp:DropDownList ID="ddlCondition" runat="server">
                                            <asp:ListItem Value="GoodsID">Item No.</asp:ListItem>
                                            <asp:ListItem Value="GoodsName">Name</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:Label ID="Label1" runat="server" Text="Key word："></asp:Label>
                                        <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>
                                        <asp:Button ID="btnSel" runat="server" Height="20px" OnClick="btnSel_Click" Text="Search"
                                            Width="58px" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="vertical-align: top; height: 181px; text-align: center">
                                        <br />
                                        <asp:GridView ID="gvGoodsInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                                            CellPadding="4" Font-Size="12pt" GridLines="Horizontal" Height="83px" OnPageIndexChanging="gvGoodsInfo_PageIndexChanging"
                                            OnRowDataBound="gvGoodsInfo_RowDataBound" OnRowDeleting="gvGoodsInfo_RowDeleting"
                                            PageSize="8" Width="100%">
                                            <FooterStyle BackColor="White" ForeColor="#333333" />
                                            <RowStyle BackColor="White" ForeColor="#333333" />
                                            <Columns>
                                                <asp:BoundField DataField="GoodsID" HeaderText="Item No." />
                                                <asp:BoundField DataField="GoodsName" HeaderText="Name" />
                                
                                                <asp:BoundField DataField="GoodsPrice" HeaderText="Price" />
                                     
                                                <asp:HyperLinkField DataNavigateUrlFields="GoodsID" DataNavigateUrlFormatString="EditGoods.aspx?GoodsID={0}"
                                                    HeaderText="detailed information" Text="detailed information">
                                                    <ControlStyle Font-Underline="False" ForeColor="Black" />
                                                </asp:HyperLinkField>
                                                <asp:CommandField HeaderText="delete" ShowDeleteButton="True">
                                                    <ControlStyle Font-Underline="False" ForeColor="Black" />
                                                </asp:CommandField>
                                            </Columns>
                                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                            </td>
                            </tr>
                            </table>
              
            </div>
            <div id="bot">
              </div>
        </div>


      
                  
    </form>
</body>
</html>
