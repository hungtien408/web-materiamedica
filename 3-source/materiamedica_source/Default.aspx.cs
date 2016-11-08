using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
    private void sendEmail()
    {
        string msg = "<h3>MATERIA MEDICA: NHẬN QUÀ</h3><br/>";
        msg += "<b>Họ tên: </b>" + txtFullName.Text.Trim().ToString() + "<br />";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Điện thoại: </b>" + txtPhone.Text.Trim().ToString();
        msg += "<b>Địa chỉ: </b>" + txtAddress.Text.Trim().ToString();
        Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", "cc@tranlegroup.com", "", "NHẬN QUÀ", msg, true);
    }
    protected void btnGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (RadCaptcha1.IsValid)
            {

                //send email         
                sendEmail();
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã trả lời câu hỏi của Materia Medica. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!')});", true);
                //
                //Clear text
                //
                txtFullName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtAddress.Text = "";
            }
            //else
            //{
            //    lblMessage.Text = "Chuỗi xác nhận chưa đúng !";
            //}
        }
    }
    
}