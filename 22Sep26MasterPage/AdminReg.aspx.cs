using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace _22Sep26MasterPage
{
    public partial class AdminReg : System.Web.UI.Page
    {
        ConnectionCls cls = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //select max(reg_id) from logins
            string sel = "select max(reg_id) from logins";
            string maxRegId = cls.Exec_Scalar(sel);

            int RegId = 0;
            if (maxRegId == "")
            {
                RegId = 1;
            }
            else
            {
                RegId = Convert.ToInt32(maxRegId) + 1;
            }
            //insert into admins values(1,'name',phone, 'email');
            string adm_ins = $"insert into admins values({RegId},'{txtFullName.Text}',{txtPhone.Text},'{txtEmail.Text}')";
            int i = cls.Exec_NonQuery(adm_ins);
            if (i == 1)
            {
                //insert into logins values(regid,username,password,log_type);
                string log_ins = $"insert into logins values({RegId},'{txtUsername.Text}','{txtPassword.Text}','admin')";
                int j = cls.Exec_NonQuery(log_ins);

                //if (i == 1 && j == 1)
                if(j==1)
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Successfully Registered!!";
                }
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Invalid Entry";
            }
        }
    }
}