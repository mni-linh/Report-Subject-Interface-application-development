using System;
using System.IO;
using System.Data.SqlClient;
using Syncfusion.DocIO;
using Syncfusion.DocIO.DLS;

namespace FindAndReplace
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
                    arr[i] = (string)rows[0];
                    using (WordDocument document = new WordDocument())
                    {
                        // Mở tài liệu word đầu vào, sử dụng Stream để truyền dữ liệu hay hỗ trợ đọc, ghi dữ liệu với các loại nguồn khác nhau
                        Stream docStream = File.OpenRead(Path.GetFullPath(arr[0]));
                        document.Open(docStream, FormatType.Docx);
                        // Sử dụng phương thức Dispose để giải phóng các tài nguyên đã giữ, khi mà đối tượng bị hủy
                        docStream.Dispose();
                        // Tìm tất cả các sự xuất hiện của [name] và thay thế bằng Tran Thi Tu Linh
                        document.Replace("[name]", "Tran Thi Tu Linh", true, true);
                        document.Replace("[id]", "4501104127", true, true);
                        // Lưu tệp kết quả trong đường dẫn tuyệt đối (phiên bản Syncfusion Essential DocIO)
                        docStream = File.Create(Path.GetFullPath(@"F:/Study/3rdyrs_1st/C#Windows/MSW/db/tmp/reBG00.docx"));
                        document.Save(docStream, FormatType.Docx);
                        docStream.Dispose();
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
