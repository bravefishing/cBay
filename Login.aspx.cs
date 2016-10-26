using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class Admin_Login : System.Web.UI.Page
{

    SqlHelper db = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        string name = this.txtName.Text;
        string password= this.txtPwd.Text;


        SqlConnection conn = new SqlConnection(SqlHelper.connstring);

        string sql = string.Format("select count(*) from guanliyuan where [name]='{0}' and Password='{1}'", name, password);
        SqlCommand comm = new SqlCommand(sql, conn);
        conn.Open();
        int i = (int)comm.ExecuteScalar();
        
       
        conn.Close();
        if (Session["VaildCode"].ToString().ToLower() == this.txtVaild.Text.ToLower())
        {
            if (i!=0)
            {
                Session["admin"] = this.txtName.Text;
                //创建身份验证票
                FormsAuthentication.SetAuthCookie(this.txtName.Text, false);
                //判断是否是返回回来的页面
                if (string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                {
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    Response.Redirect(Request.QueryString["ReturnUrl"]);
                }

            }
        }  
    }
}
