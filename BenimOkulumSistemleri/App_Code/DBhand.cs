using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BenimOkulumSistemleri
{
    public class DBhand
    {
        SqlConnection con;
        public DBhand()
        {


        }
        public SqlConnection Db()
        {
            var con = new SqlConnection(@"Server=(localdb)\mssqllocaldb;Database=DbOkul;Trusted_Connection=true");
            con.Open();
            return con;
        }
        public String Login(String username, String password)
        {

            String role, query;
            int cnt = 0;
            if (username.Equals("Admin") && password.Equals("password"))
            {
                role = "admin";

            }
            else
            {

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                DataTable dt = new DataTable();
                if (username.StartsWith("t"))
                {
                    query = "select count(*) from Teacher where username='" + username + "' and password='" + password + "'";
                    role = "teacher";
                }
                else
                {
                    query = "select count(*) from Student where PRNNo='" + username + "' and password='" + password + "'";
                    role = "student";
                }
                var cmd = new SqlCommand(query, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                if (dt.Rows.Count<1)
                {
                    role = null;
                }

            }
            return role;
        }
        public void Add(String branchname)
        {

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                String getIDQuery = "select max(BranchId) from Branch";
                var cmd = new SqlCommand(getIDQuery, con);

                int cnt = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                cnt++;
                String insertuser = "insert into Branch values(" + cnt + ",'" + branchname + "')";


                cmd = new SqlCommand(insertuser, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }

        }
        public void AddStudent(String prnno, String name, String branch, String contact, String addr, String email, String pass)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                //String getIDQuery = "select BranchId from Branch where BranchName='" + branch + "'";
                //var cmd = new SqlCommand(getIDQuery, con);

                //int bid = Convert.ToInt32(cmd.ExecuteScalar().ToString());


                String insertQuery = "insert into Student ([PRNNo],[StudentName],[BranchId],[ContactNo],[Address],[EmailID],[password]) values('" + prnno + "','" + name + "'," + branch + ",'" + contact + "','" + addr + "','" +
                                    email + "','" + pass + "')";

                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.ExecuteNonQuery();

                con.Close();


            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }

        }
        public void AddTeacher(String name, String email, String qualif, String contact, String addr, String un, String pass)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();


                String insertQuery = "insert into Teacher values('" + name + "','" + email + "','" + qualif + "','" + contact + "','" + addr + "','" +
                                    un + "','" + pass + "')";

                var cmd = new SqlCommand(insertQuery, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }

        }
        public void AddCourse(String branch, String courseID, String courseName, String sem)
        {
            try
            {
                SqlConnection con  = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                //String getIDQuery = "select BranchId from Branch where BranchName='" + branch + "'";
                //var cmd = new SqlCommand(getIDQuery, con);

                //int bid = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                String insertQuery = "insert into Course values(" + branch + ",'" + courseID + "'," + courseName + "," + sem + ")";
                SqlCommand cmd = new System.Data.SqlClient.SqlCommand(insertQuery, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }
        }
        public void AssignTeacherCourse(String username, String courseId)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                //String getIDQuery = "select max(tid) from Teaches";
                //var cmd = new SqlCommand(getIDQuery, con);

                //int cnt = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                //cnt++;
                String insertuser = "insert into Teaches values('" + username + "'," + courseId + ")";


                SqlCommand cmd = new SqlCommand(insertuser, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }

        }
        public void AssignStudentCourse(String prnno, String courseId)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                String insertuser = "insert into StudentCourse ([PRNNo],[courseid]) values('" + prnno + "'," + courseId + ")";

                var cmd = new SqlCommand(insertuser, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }

        }
        public void SaveMessage(String username, String message, String courseId)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                //String getIDQuery = "select max(mid) from Message";
                //var cmd = new SqlCommand(getIDQuery, con);

                //int cnt = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                //cnt++;

                String insertuser = "insert into Message(TEACHESID,MESSAGE) values('"+ courseId + "','"+ message + "')";


                SqlCommand cmd = new SqlCommand(insertuser, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }

        }
        public String UpdateBranch(String bid, String bname)
        {

            String q = "--";
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                String insertuser = "UPDATE BRANCH SET BRANCHNAME='" + bname + "' WHERE BRANCHID=" + bid;
                q = insertuser;
                var cmd = new SqlCommand(insertuser, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }
            return q;
        }
        public String DeleteBranch(String bname)
        {

            String q = "--";
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                String deleteq = "DELETE FROM BRANCH WHERE BRANCHNAME='" + bname + "'";
                q = deleteq;
                var cmd = new SqlCommand(deleteq, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }
            return q;
        }
        public String DeleteStudent(String prnno)
        {

            String q = "--";
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                String deleteq = "DELETE FROM STUDENT WHERE PRNNO='" + prnno + "'";
                q = deleteq;
                var cmd = new SqlCommand(deleteq, con);
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception e1)
            {
                Console.Write(e1);
            }
            return q;
        }

    }
}