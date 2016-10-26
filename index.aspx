<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Admin_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>eMart website admin page</title>
    <meta http-equiv="pragma" content="no-cache"/>
</head>
<frameset rows="80,*" cols="*" frameborder="no" border="0" framespacing="0" id="a">
  <frame src="Frame/TopFrame.aspx" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
	<frameset cols="220,*" rows="*" id="setFrame" frameborder="no" border="0" framespacing="0">
    <frame src="Frame/LeftFrame.aspx" name="leftFrame" noresize="noresize" scrolling="auto" id="leftFrame" title="leftFrame" />
    <frame src="Frame/MainFrame.aspx" name="Main" noresize="noresize" scrolling="auto" id="Main" title="mainFrame" />
  </frameset>
</frameset>

</html>

