using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        int a = int.Parse(TextBox1.Text);
        int b = int.Parse(TextBox2.Text);
        Label1.Text = (a + b).ToString();
    }
    protected void BtnSub_Click(object sender, EventArgs e)
    {
        int a = int.Parse(TextBox1.Text);
        int b = int.Parse(TextBox2.Text);
        Label1.Text = (a - b).ToString();

    }
    protected void BtnMul_Click(object sender, EventArgs e)
    {
        int a = int.Parse(TextBox1.Text);
        int b = int.Parse(TextBox2.Text);
        Label1.Text = (a * b).ToString();
    }
    protected void BtnDiv_Click(object sender, EventArgs e)
    {
        try
        {
            int a = int.Parse(TextBox1.Text);
            int b = int.Parse(TextBox2.Text);
            Label1.Text = (a / b).ToString();
        }
        catch(DivideByZeroException)
        {
        Label1.Text="cant divide ny zero";
        }
    }
}