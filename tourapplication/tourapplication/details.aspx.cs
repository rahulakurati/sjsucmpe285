﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace tourapplication
{
    
    public partial class details : System.Web.UI.Page
    {
        string strConn = "Server=RAHUL\\SQLEXPRESS;Database=master;Trusted_Connection=True";
        SqlConnection conn = null;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da;
        int iTourId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                liLogin.InnerHtml = "<a href=\"myaccount.aspx\">My Account</a>";
                liRegister.InnerHtml = "<a href=\"logout.aspx\">Logout</a>";
            }
            else
                Response.Redirect("index.aspx");

            //string strDescription = Session["description"].ToString();
            //Session.Remove("description");
            //conn = new SqlConnection(strConn);
            //cmd = new SqlCommand("select tourid from tbl_tourtypes where description='"+strDescription+"'", conn);
            //conn.Open();
            //iTourId = Convert.ToInt32(cmd.ExecuteScalar());
            //conn.Close();
            imgCarousel1.Src = "pictures\\1\\test1.jpg";
            imgCarousel2.Src="pictures\\1\\test2.jpg";
            imgCarousel3.Src = "pictures\\1\\test3.jpg";
            
            img1.Src = "pictures\\1\\1\\1.jpg";
            img2.Src = "pictures\\1\\1\\2.jpg";
            
        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            Response.Redirect("summary.aspx");
        }
    }
}