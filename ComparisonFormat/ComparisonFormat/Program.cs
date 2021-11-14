using System;
using System.Collections;
using System.Drawing;
using System.IO;
using Aspose.Words;
using Aspose.Words.Lists;
namespace ComparisonFormat
{
    class Program
    {
        static void Main(string[] args)
        {
            string file = "F:/Study/3rdyrs_1st/C#Windows/MSW/db/tmp/testComparison.docx";
            Document doc = new Document(file);
            Paragraph paragraph0 = (Paragraph)doc.GetChild(NodeType.Paragraph, 1, true);
            NodeCollection children0 = paragraph0.ChildNodes;
            /*
            Node child = children[2];
            Run run = (Run)child;
            Console.WriteLine(run.Text);
            */
            Console.WriteLine(paragraph0.GetText());
            /* GetText nên khỏi cần xài loop
            for (int i = 0; i < children.Count; i++)
            {
                Node child = children[i];

                if (child.NodeType.Equals(NodeType.Run))
                {
                    // Giả sử tui đã tìm thấy nút mà tui muốn, hãy làm điều gì đó hữu ích.
                    Run run = (Run)child;
                    Console.Write(run.Text);
                }
            }*/
            // Runs: cùng định dạng thì không tính khoảng trắng, khác định dạng thì tính khoảng trắng
            string text1 = paragraph0.Runs[2].GetText();
            Console.WriteLine(paragraph0.Runs[2].GetText());
            Console.WriteLine(paragraph0.Runs[2].Font.Color);


            Paragraph paragraph1 = (Paragraph)doc.GetChild(NodeType.Paragraph, 2, true);
            NodeCollection children1 = paragraph1.ChildNodes;

            string text2 = paragraph1.Runs[2].GetText();
            Console.WriteLine(paragraph1.Runs[2].GetText());
            Console.WriteLine(paragraph1.Runs[2].Font.Color);

            if (text1 == text2)
            {
                Console.WriteLine("10 điểm ^_^");
            }
            else
            {
                Console.WriteLine("Oh no, Oh no, Oh no, no, no, no, no @.@");
            }
        }
    }
}
