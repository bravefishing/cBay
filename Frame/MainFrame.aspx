<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainFrame.aspx.cs" Inherits="Frame_MainFrame" %>

<%--<%@ Register src="../UserControls/WorkPlanControl.ascx" tagname="WorkPlanControl" tagprefix="uc1" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link href="../images/style.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#6190cd">
    <form id="form1" runat="server">
    <div id="wrap">
        <ul id="tags">
            <li class="selectTag" style="left: 0px; top: 0px">Admin Page</li>
        </ul>
        <div id="tagContent">
            <div id="tagContent1" class="tagContent selectTag content">
                Welcome to <b><asp:Label ID="Label1" runat="server" Text=""></asp:Label></b></div>
            <div id="bot">
               </div>
        </div>
    </form>
</body>
</html>
