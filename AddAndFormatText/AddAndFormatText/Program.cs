using System;
using System.IO;
using System.Data.SqlClient;
using Aspose.Words.Lists;
using asp = Aspose.Words; // asp gán cho gọn tại lát lười gõ

namespace AddAndFormatText
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
                    
                }
                // ib: 2 cái namespace khác nhau có cùng một hàm/ class (vd: document) giống nhau nên asp. để vstudio hiểu đừng của namespace nào mà không dám lỗi nữa
                asp.Document doc = new asp.Document();
                // Phương thức/ Class DocumentBuilder cung cấp các phương pháp hỗ trợ định dạng 
                asp.DocumentBuilder builder = new asp.DocumentBuilder(doc);

                // Khởi tạo kiểu (style) của văn bản
                asp.Style style = doc.Styles.Add(asp.StyleType.Paragraph, "MyStyle1");
                style.Font.Size = 24;
                style.Font.Name = "Verdana";
                style.ParagraphFormat.SpaceAfter = 12;

                // Gom lại cái danh sách kiểu để các đoạn văn bản sử dụng
                // * Tạo dấu chấm list
                style.ListFormat.List = doc.Lists.Add(asp.Lists.ListTemplate.BulletDefault);
                style.ListFormat.ListLevelNumber = 0;

                // Áp dụng kiểu đoạn văn cho đoạn hiện tại của trình tạo tài liệu, sau đó thêm một số văn bản.
                builder.ParagraphFormat.Style = style;
                builder.Writeln("Hi mni_linh, this is my text style");
                builder.Document.Save(@"F:/Study/3rdyrs_1st/C#Windows/MSW/db/tmp/reTestStyle.docx");
            }
            catch (Exception exc)
            {
                Console.WriteLine(exc.Message);
            }
        }
        
    }
}
