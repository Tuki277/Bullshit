using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bullshit
{
    public partial class ThemSinhvien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertedCmd(object sender, FormViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.KeepInInsertMode = true;
                e.ExceptionHandled = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Có lỗi xảy ra: " + e.Exception.Message;
            } else
            {
                errMsg.ForeColor = System.Drawing.Color.Blue;
                errMsg.Text = "OK";
            }
        }
    }
}