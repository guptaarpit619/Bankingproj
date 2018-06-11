using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    // DatabaseManager dm = new DatabaseManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string s;
        if (RbtnMale.Checked == true)
            s = "male";
        else
            s = "female";
        //  string mycmd = "insert into ContactUs values('" + TxtName.Text + "','" + TxtAddress.Text + "','" + s + "','" + TxtContactNo.Text + "','" + TxtEmailAddress.Text + "','" + TxtMessage.Text + "')";
        // bool x = dm.NonQuery(mycmd);
        // if (x == true)
        // {
        Response.Write("<script>alert('Thanks for contacting Us!')</script>");
        string msg = "Hello" + TxtName.Text + ".Thanks for enquiry.We will contact You shortly.Regards-Ebanking";
        SMSSender ss = new SMSSender();
        bool y = ss.SendMySMS(TxtContactNo.Text, msg);
        if(y==true)
            Response.Write("<script>alert('sucess!')</script>");
        else
            Response.Write("<script>alert('fali!')</script>");

        // }
        //  else
        //  Response.Write("<script>alert('Error..try again!')</script>");   
    }
}