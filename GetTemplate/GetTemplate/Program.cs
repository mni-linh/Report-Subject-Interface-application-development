using System;
using System;
using System.Collections;
using System.Drawing;
using System.IO;
using Aspose.Words;
using Aspose.Words.Reporting;

namespace GetTemplate
{
    class Program
    {
        static void Main(string[] args)
        {
            Document doc = new Document("F:/Study/3rdyrs_1st/C#Windows/MSW/db/tmp/inputTestTemplate.docx");
            Sender sender = new Sender("Linh said", "Bí quá mai hỏi thầy :(");
            ReportingEngine engine = new ReportingEngine();
            engine.BuildReport(doc, sender, "sender");
            doc.Save("F:/Study/3rdyrs_1st/C#Windows/MSW/db/tmp/outputTestTemplate.docx");
        }
    }
}
