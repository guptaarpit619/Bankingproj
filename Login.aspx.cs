using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    DatabaseManager dm = new DatabaseManager();
    EncryptionManager em = new EncryptionManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string EncryptedPassword = em.EncryptMyData(TxtPasswd.Text);
        string mycmd = "select UserType from GeneralInfo where Email='" + TxtUserId.Text + "' and Password = '" + EncryptedPassword + "'";
        dt = dm.SelectQuery(mycmd);
        if (dt.Rows.Count > 0)
        {
            string usertype = dt.Rows[0][0].ToString();
            if (usertype.ToLower() == "user")
            {
                Session["userid"] = TxtUserId.Text; //to make login secure here userid is email id
                Response.Write("<script>alert('Valid User for User Zone')</script>");
                Response.Redirect("userzone/UserHome.aspx");
            }
            else {
                Session["adminid"] = TxtUserId.Text;
                Response.Redirect("adminzone/AdminHome.aspx");
            
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid user')</script>");
        }
    }
}   