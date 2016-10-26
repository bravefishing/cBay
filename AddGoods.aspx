<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddGoods.aspx.cs" validateRequest="false"  EnableEventValidation="false"  Inherits="Admin_AddGoods" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add product</title>
    <link href="images/style.css" type="text/css" rel="stylesheet" />
</head>
<body style="width: 98%;">
    <form id="form1" runat="server">
        <div id="wrap">
            <ul id="tags">
                <li class="selectTag" style="left: 0px; top: 0px">Add product</li>
            </ul>
            <div id="tagContent">
                <table cellspacing="1" width="100%" cellpadding="3" bgcolor="#E1EFF8">
                    <tr  >
                        <td >
                            <table align="center" border="1" bordercolor="#cccc66" cellpadding="0" cellspacing="0"
                                style="font-size: 9pt; background-image: url(../Image/例图/后台/后台页.jpg); height: 314px"
                                width="100%">
                                <tr>
                                    <td style="height: 18px; text-align: center">
                                        Name：</td>
                                    <td style="height: 18px">
                                        <asp:TextBox ID="txtGName" runat="server" Width="260px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="height: 18px; text-align: center">
                                        Price：</td>
                                    <td style="height: 18px">
                                        <asp:TextBox ID="txtGPrice" runat="server" Width="135px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="height: 15px; text-align: center">
                                        Classification：</td>
                                    <td style="height: 15px">
                                        <asp:DropDownList ID="ddlGType" runat="server"   Width="155px">
                                        </asp:DropDownList></td>
                                </tr>
                            <tr>
                                    <td style="height: 15px; text-align: center">
                                        Image：</td>
                                    <td style="height: 15px">
                                        <asp:Image ID="Image1" runat="server" Width="147px" /><br />
                                        <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                                            id="file1" runat="server" class="inputBox" style="width: 141px" type="file" title="Select" />
                                        <asp:Label ID="Label2" runat="server" Visible="False" Width="60px"></asp:Label>
                                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CssClass="formbutton"
                                            Height="22px" OnClick="Button1_Click" Text="Upload" Width="58px" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2" rowspan="1" style="vertical-align: top; height: 24px; text-align: center">
                                        Description</td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="vertical-align: top; text-indent: 8pt; height: 80px">
                                        <FCKeditorV2:FCKeditor ID="TextBox1" runat="server" Height="400px" Width="100%">
                                        </FCKeditorV2:FCKeditor>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" rowspan="1" style="height: 30px; text-align: center">
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Submit" />
                                   
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
