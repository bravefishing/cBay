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
public partial class Admin_AddGoods : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlconn.Open();
        if (!IsPostBack)
        {
            string sqlstr = "select * from shangpinLiebie";
          ddlGType.DataSource=  sqloperate.GetDataReader(sqlstr);
          ddlGType.DataTextField = "GoodsTypeName";
          ddlGType.DataValueField = "GoodsTypeID";
          ddlGType.DataBind();

        }
        sqlconn.Close();

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string sqlstr = "insert into shangpin"
                    + "(GoodsName,GoodsPrice,GoodsTypeID,GoodsIntroduce,GoodsPhoto) "
                    + "values('" + txtGName.Text.Trim() + "'," + txtGPrice.Text.Trim()
                    + ",'" + ddlGType.SelectedValue + "','" + TextBox1.Value.Trim() + "','" + pic.Text + "')";
        sqloperate.RunSql(sqlstr);
        Alert.AlertAndRedirect("add successful!!!", "GoodsManger.aspx");
        
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploadfiles/");

        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../uploadfiles/" + pic.Text;
    }
}
