using System;
using System.IO;
using System.Data.SqlClient;
using System.Reflection.Metadata;

namespace CheckFileExists
{
    class Program
    {
        static void Main(string[] args)
        {
            string strConnect = @"Data Source=MNI-LINH\SQLEXPRESS01;Initial Catalog=DBW;Integrated Security=True";
            SqlConnection sqlConnect = null;

            try
            {
                if (sqlConnect == null)
                {
                    sqlConnect = new SqlConnection(strConnect);
                }
                if (sqlConnect.State == System.Data.ConnectionState.Closed)
                {
                    sqlConnect.Open();
                }
                // Thực hiện truy vấn 0
                SqlCommand sqlCmd0 = new SqlCommand();
                sqlCmd0.CommandType = System.Data.CommandType.Text;
                sqlCmd0.CommandText = "SELECT COUNT(*) FROM BAITAP";
                // Gửi truy vấn vào CSDL 0
                sqlCmd0.Connection = sqlConnect;
                // Kết quả
                int soLuong = (int)sqlCmd0.ExecuteScalar();
                Console.WriteLine("So luong bai tap la: " + soLuong);

                // Thực hiện truy vấn 1
                SqlCommand sqlCmd1 = new SqlCommand();
                sqlCmd1.CommandType = System.Data.CommandType.Text;
                sqlCmd1.CommandText = "SELECT TEPBG FROM BAIGIAI";
                // Gửi truy vấn vào CSDL 1
                sqlCmd1.Connection = sqlConnect;
                /// <summary>
                /// Problem: Nếu thực thi SqlCommand với phương thứ ExecuteScalar thì nó thỉ thực thi câu lệnh query
                /// --> trả về 1 giá trị là cái đầu tiên (dù câu lệnh query đúng ra trả về kết quả nhiều dòng hay nhiều cột
                /// Solution: Vì vậy muốn đọc được từng dòng kết quả trả về của query thì mình mần ExecuteReader
                /// </summary>
                SqlDataReader rows = sqlCmd1.ExecuteReader();
                string[] arr = new string[100];
                int i = 0;
                // Kết quả cuối cùng
                while (rows.Read())
                {
                    Console.WriteLine(String.Format("{0}", rows[0]));
                    arr[i] = (string)rows[0];
                    if (File.Exists(arr[i]))
                    {
                        Console.WriteLine("Tep ton tai.");
                    }
                    else
                    {
                        Console.WriteLine("Tep khong ton tai trong thu muc hien tai.");
                    }
                    i++;
                }
            }
            catch (Exception exc)
            {
                Console.WriteLine(exc.Message);
            }
        }
    }
}
