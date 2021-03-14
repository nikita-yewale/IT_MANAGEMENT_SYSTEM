using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Library_return : System.Web.UI.Page
{
    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        SqlDataSource2.SelectCommand = "SELECT [Id], [rollno], [uniquecode], [returndate], [dateofreturn], [fine] FROM [libreturnbook] WHERE (" + Searchby + " like '%" + search + "%') ORDER BY [Id] DESC";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool success = true;
        string rollno = TextBox1.Text;
        string uniquecode = TextBox2.Text;
        bool checkcode = checkuniquecode(uniquecode);

        if (checkcode)
        {
            try
            {
                SqlConnection con1 = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("INSERT INTO libissubook (rollno,uniquecode,returndate,dateofreturn,fine,status) VALUES('" + rollno + "','" + uniquecode + "','" + uniquecode + "','" + DateTime.Today + "','" + DateTime.Today.AddDays(7) +  "',' Not Returned',0,'pending')", con1);
                con1.Open();
                cmd.ExecuteNonQuery();
                con1.Close();

                success = true;
                // setting success message
                message.InnerText = "Book Added Successfully";
                success = true;
            }
            catch (Exception ex)
            {
                success = false;
                message.InnerText = "exception as " + ex;
            }
        }
        else
        {
            success = false;
            message.InnerText = "Unique Code Doesnt fount";
        }
        // removing a class
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        TextBox6.InnerText += "  ";
        if (success)
        {

            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success", }).Concat(new string[] { "alert-success" }).ToArray()));
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "show", }).Concat(new string[] { "show" }).ToArray()));
            strong1.InnerText = "Success!";
        }
        else
        {
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger", }).Concat(new string[] { "alert-danger" }).ToArray()));
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "show" }).Concat(new string[] { "show" }).ToArray()));
            strong1.InnerText = "Error!";
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        // removing a class
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        TextBox1.Text = Searchby;
        TextBox2.Text = search;

        //string query = "SELECT * from libaddbook where(" + Searchby + " like '%" + search + "%') ";
        //SqlDataSource2.SelectCommand = query;

        SqlDataSource2.SelectCommand = "SELECT[Id], [rollno], [uniquecode], [returndate], [dateofreturn],[fine] FROM [libreturnbook] WHERE (" + Searchby + " like '%" + search + "%') ORDER BY [Id] DESC";


        TextBox7.Text = search;
        DropDownList1.SelectedValue = Searchby;
    }

    bool checkuniquecode(string bookcode1)
    {
        // connection 1
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand myCommand = con.CreateCommand();
        myCommand.CommandText = ("SELECT uniquecode,avquantity from libissubook "); // Where Login is your table . UserName and Password Columns
        SqlDataReader myReader = myCommand.ExecuteReader();



        // Check Email and phone no.
        while (myReader.Read())
        {
            //checkme.InnerHtml += bookcode1+ " " + myReader["bookcode"].ToString() + "<br>";
            if (bookcode1.CompareTo(myReader["uniquecode"].ToString()) == 0) // passwordBox.Text.CompareTo(myReader["Password"].ToString()) == 0) // A little messy but does the job to compare your infos assuming your using a textbox for username and password
            {
                string avbook = myReader["avquantity"].ToString();
                int avlablebook = Convert.ToInt32(avbook);

                avlablebook = avlablebook - 1;
                SqlConnection con2 = new SqlConnection(cs);
                SqlCommand cmd2 = new SqlCommand("UPDATE libissubook SET avquantity = " + avlablebook + "WHERE uniquecode='" + bookcode1 + "'", con2);
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
                return true;
            }

        }
        myReader.Close();
        con.Close(); // Just close everything



        return false;
    }
}