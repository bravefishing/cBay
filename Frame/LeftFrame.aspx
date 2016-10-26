<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeftFrame.aspx.cs" Inherits="Frame_LeftFrame" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>LeftMenu</title>
    <link href="../images/style.css" rel="stylesheet" type="text/css" />
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR"/>
    <meta content="C#" name="CODE_LANGUAGE"/>
    <meta content="JavaScript" name="vs_defaultClientScript"/>
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
    <base target="main" />

    <script type="text/javascript">
    function display(title, content) {

        var p = title.parent || title.parentNode;

        var v = p.getElementsByTagName('div');
        var curDiv = null;
        for (var i = 0; v[i] != null; i++) {
            if (v[i] && v[i].className == 'menu-left')
            //if(v[i]&&v[i].tagName=='UL')
            {
                if (v[i].style.display == 'none') {
                    v[i].style.display = '';
                    title.className = "title-left";

                } else {
                    v[i].style.display = 'none';
                    title.className = "title-left up";
                }
                curDiv = v[i];
                break;
            }

        }
        if (curDiv == null) return;
        var all = document.getElementById('wrap');
        var allMenu = all.getElementsByTagName('div');

        for (var i = 0; allMenu[i] != null; i++) {
            if (allMenu[i] != curDiv && allMenu[i].className == 'menu-left') {
                allMenu[i].style.display = 'none';
            }
            if (allMenu[i].className == "title-left") {
                if (allMenu[i] != title)
                    allMenu[i].className = "title-left up";
            }
        }
    }
    function initMenu() {
        var all = document.getElementById('wrap');
        var allMenu = all.getElementsByTagName('div');

        for (var i = 0; allMenu[i] != null; i++) {
            if (allMenu[i].className == 'menu-left') {
                allMenu[i].style.display = 'none';
            }
            if (allMenu[i].className == "title-left") {
                allMenu[i].className = "title-left up";
            }
        }
    }
    </script>

</head>
<body onload="initMenu();">
    <form id="Form1" method="post" runat="server">
        <div id="wrap">
            <div class="class">
                <div class="title-left" onclick="display(this)">
                    Manage Product</div>
                <div class="menu-left">
                    <ul class="menulist" id="Ul1">
                      <li><a href="../AddGoods.aspx" target="Main">add product</a></li>
                        <li><a href="../GoodsManger.aspx" target="Main">edit product</a></li>
                    </ul>
                </div>
            </div>
            </form>
</body>
</html>
