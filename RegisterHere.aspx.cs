using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterHere : System.Web.UI.Page
{
    DatabaseManager dm = new DatabaseManager();
    EncryptionManager em = new EncryptionManager();
    CaptchaGenerator cg = new CaptchaGenerator();
    static string[] CodeAndImagePath = new string[2];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            CodeAndImagePath = cg.GetRandomCodeAndImagePath("CaptchaImages");
            ImgCaptcha.ImageUrl = CodeAndImagePath[1];
        }
    }
    protected void ImgBtnRegister_Click(object sender, ImageClickEventArgs e)
    {
        if (TxtCaptchaCode.Text == CodeAndImagePath[0])
        {
            //code for Registration
            string gender = "", mycmd1, mycmd2, EncryptedPassword;

            if (RdBtnMale.Checked == true)
                gender = "Male";

            if (RdBtnFemale.Checked == true)
                gender = "Female";

            EncryptedPassword = em.EncryptMyData(TxtPassword.Text);

            mycmd1 = "insert into GeneralInfo values('" + TxtYourName.Text + "','"+TxtFatherName.Text+"','" + gender + "','"+TxtDOB.Text+"','" + TxtClgName.Text + "','" +TxtCourse.Text + "','" + TxtYear.Text + "','" +TxtAddress.Text + "','" + TxtContactNo.Text + "','"+TxtEmailAddress.Text+"','" + FUPicture.FileName + "','" + EncryptedPassword + "','" + DateTime.Now.ToShortDateString() + "','user')";

         //   mycmd2 = "insert into Login values('" + TxtEmail.Text + "','" + EncryptedPassword + "','User')";

            bool n1 = dm.NonQuery(mycmd1);
            if (n1 == true)
            {
               // bool n2 = dm.NonQuery(mycmd2);
               // if (n2 == true)
               // {
                    FUPicture.SaveAs(Server.MapPath("Profile/" + FUPicture.FileName));
                    LblMessage.Text = "Registration has been Done Successfully";
            }

              //  else
               // {
                 //   LblMessage.Text = "Registration Failed";
               // }
          //  }

            else
           {
                LblMessage.Text = "Registration Failed";
            }

        }
        else
        {
            LblMessage.Text = "Invalid Captcha";
            CodeAndImagePath = cg.GetRandomCodeAndImagePath("CaptchaImages");
            ImgCaptcha.ImageUrl = CodeAndImagePath[1];
        }

    }
    protected void ImgBtnRefresh_Click(object sender, ImageClickEventArgs e)
    {
        CodeAndImagePath = cg.GetRandomCodeAndImagePath("CaptchaImages");
        ImgCaptcha.ImageUrl = CodeAndImagePath[1];
    }
}