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


public partial class Admin_GoodsManger : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sqlstr = "select * from shangpin";
            gvGoodsInfo.DataKeyNames = new string[] { "GoodsID" };
            sqloperate.gvDataBind(gvGoodsInfo, sqlstr);
        }
    }
    protected void btnSel_Click(object sender, EventArgs e)
    {
        if (txtKey.Text == "")
        {
            string sqlstr = "select * from shangpin";
            sqloperate.gvDataBind(gvGoodsInfo, sqlstr);
        }
        else
        {
            string sqlstr = "select * from shangpin where " + ddlCondition.SelectedValue + " like '%" + txtKey.Text.Trim() + "%'";
            sqloperate.gvDataBind(gvGoodsInfo, sqlstr);
        }
    }
    protected void gvGoodsInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ((LinkButton)(e.Row.Cells[4].Controls[0])).Attributes.Add("onclick", "return confirm('Make sure to delete？')");
        }
    }
    protected void gvGoodsInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr = "delete from shangpin where GoodsID='" + gvGoodsInfo.DataKeys[e.RowIndex].Value + "'";
        sqloperate.DataCom(sqlstr);
        Response.Redirect("GoodsManger.aspx");
    }
    protected void gvGoodsInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvGoodsInfo.PageIndex = e.NewPageIndex;
        string sqlstr = "select * from shangpin where " + ddlCondition.SelectedValue + " like '%" + txtKey.Text.Trim() + "%'";
        sqloperate.gvDataBind(gvGoodsInfo, sqlstr);
    }
}
