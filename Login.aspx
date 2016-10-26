<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>eMart website admin Page</title>
    <link href="images/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div style="text-align: center">
            <table style="width: 400px">
                <tr>
                    <td colspan="3">
                        Admin login</td>
                </tr>
                <tr>
                    <td>
                        admin name：</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="inputInfo"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                            ErrorMessage="Please enter admin name"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        Password：</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="inputInfo"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                            ErrorMessage="Please enter password"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        Valid Code：</td>
                    <td>
                        <asp:TextBox ID="txtVaild" runat="server"  CssClass="inputInfo"></asp:TextBox></td>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl="VaildImg.aspx" onclick="this.src=this.src+'?'"/></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click"/></td>
                    <td>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
