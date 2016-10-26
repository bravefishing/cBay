<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TopFrame.aspx.cs" Inherits="Admin_Frame_TopFrame" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link href="../images/style.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:White">
<form id="Form1" runat="server">
  <div id="top">
  
    <div id="logo">
        eMart website admin page</div>
   
    <div id="top-menu" style="padding-left:60px"><strong></strong> [<a href="#" onClick="top.close();">Sign Out</a>]
     
    </div>
  
  </div>
  <div id="top-nav" style="text-align:left; padding-left:180px " > <span style="cursor:pointer" id="p1" onclick="showMenu()"> &gt;&gt;&gt;</span></div>

  <script type="text/javascript">
 function $(_Id){return document.getElementById(_Id);}
function setseachmenu(setoption)
{  //alert( $('searchoption'));
   $('searchoption').style.display=setoption;
 
}
//cancelbubble($('searchoption'));
//function Redirect() {
    //if (confirm("确定要退出吗")) {
       
        //document.URL = "../Login.aspx";
    //}
//}
function selectTag(selfObj){
	
	var tag = document.getElementById("top-tags").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "top-selectTag";
}

function showMenu()
{
 var f=parent.document.getElementById('setFrame');
 
 if(f.cols=='220,*')
  {
   f.cols='0,*';
   document.getElementById('p1').innerHTML="&lt;&lt;&lt;";
 
  }else
  {
    f.cols='220,*';
      document.getElementById('p1').innerHTML="&gt;&gt;&gt;"; 
  }
}
</script>
</form>
</body>
</html>