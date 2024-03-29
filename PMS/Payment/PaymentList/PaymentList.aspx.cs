﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMS.Payment.PaymentList
{
    public partial class PaymentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadProjectName();
            LoadInovoiceNo();
        }
        private void LoadProjectName()
        {
            try
            {
                ddlpname.Items.Clear();
                DataTable dt = code.ReturnTable("SELECT * FROM tbl_project");
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        ddlpname.Items.Add(new ListItem(row["project_name"].ToString(), row["project_id"].ToString()));
                    }

                }
                else
                {
                    ddlpname.Items.Clear();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        private void LoadInovoiceNo()
        {
            try
            {
                DDlinvo.Items.Clear();
                DataTable dt = code.ReturnTable("SELECT * FROM tbl_invoice");
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        DDlinvo.Items.Add(new ListItem(row["invoice_No"].ToString(), row["invo_id"].ToString()));
                    }

                }
                else
                {
                    DDlinvo.Items.Clear();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
       
        protected void btnedit_Click1(object sender, EventArgs e)
        {

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Dashboard.aspx");
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string payId = "";

            DataTable dt = code.ReturnTable("SELECT TOP 1 pay_id FROM tbl_payment ORDER BY pay_id DESC");
            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];

                payId = row["pay_id"].ToString();
                payId = payId.Replace("pay", "");
                int newId = int.Parse(payId) + 1;
                payId = newId.ToString();
                payId = payId.PadLeft(5, '0');
                payId = "pay" + payId;
            }
            else
            {
                payId = "pay00001";
            }

            string pId, invoNo;
            pId = ddlpname.SelectedValue.ToString();
            invoNo = DDlinvo.Text;
            //payDate =
            //payName =
            //pName = ddlpname.Text;
            //payMethod = 
            //AccontNo =
            //totalpay =
            try
            {
                string SQLQuery = "INSERT INTO tbl_payment(project_id,Invoice_No) VALUES('" + pId + "','" + invoNo + "')";
                //code.Execute(SQLQuery);
                Response.Write("<script>alert('Success...!'); window.location = 'ADDNEWPAYMENT.aspx?pid=" + pId + "';</script>");//WHAT TO DO FOR PID
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Error...!'); window.location = 'ADDNEWPAYMENT.aspx';</script>");


            }
        }
    }
}