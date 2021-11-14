CREATE DATABASE DBW
GO
USE DBW
GO

CREATE TABLE BAITAP(
	MABT VARCHAR(20) NOT NULL PRIMARY KEY,
	LOAIBT VARCHAR(50) NOT NULL,
	NOIDUNGBT NVARCHAR(MAX) NOT NULL,
)

CREATE TABLE BAIGIAI(
	MABG VARCHAR(20) NOT NULL PRIMARY KEY,
	TEPBG NVARCHAR(MAX) NOT NULL,
	MABT VARCHAR(20) NOT NULL,
)

ALTER TABLE BAIGIAI 
ADD CONSTRAINT FK_BAITAP_BAIGIAI FOREIGN KEY (MABT) REFERENCES BAITAP(MABT)

-- BAITAP
-- Sharing and Maintaining Documents
GO
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C00', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT00.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C01', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT01.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C02', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT02.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C03', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT03.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C04', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT04.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C05', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT05.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C06', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT06.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C07', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT07.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C08', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT08.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C09', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT09.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C10', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT010.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C11', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT11.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C12', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT12.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C13', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT13.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C14', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT14.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C15', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT15.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C16', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT16.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C17', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT17.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C18', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT18.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C19', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT19.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C20', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT20.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C21', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT21.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C22', N'Items1[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Sharing and Maintaining Documents\BT22.docx')

-- Formatting Content
GO
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C23', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT01.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C24', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT02.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C25', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT03.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C26', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT04.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C27', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT05.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C28', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT06.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C29', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT07.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C30', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT08.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C31', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT09.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C32', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT10.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C33', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT11.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C34', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT12.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C35', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT13.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C36', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT14.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C37', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT15.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C38', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT16.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C39', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT17.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C40', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT18.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C41', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT19.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C42', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT20.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C43', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT21.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C44', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT22.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C45', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT23.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C46', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT24.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C47', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT25.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C48', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT26.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C49', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT27.docx')
INSERT BAITAP (MABT, LOAIBT, NOIDUNGBT) VALUES (N'C50', N'Items2[W]', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BT\Formatting Content\BT28.docx')

-- BAIGIAI
-- Sharing and Maintaining Documents
GO
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G00', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG00.docx', N'C00')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G01', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG01.docx', N'C01')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G02', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG02.docx', N'C02')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G03', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG03.docx', N'C03')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G04', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG04.docx', N'C04')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G05', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG05.docx', N'C05')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G06', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG06.docx', N'C06')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G07', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG07.docx', N'C07')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G08', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG08.docx', N'C08')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G09', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG09.docx', N'C09')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G10', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG10.docx', N'C10')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G11', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG11.docx', N'C11')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G12', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG12.docx', N'C12')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G13', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG13.docx', N'C13')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G14', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG14.docx', N'C14')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G15', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG15.docx', N'C15')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G16', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG16.docx', N'C16')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G17', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG17.docx', N'C17')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G18', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG18.docx', N'C18')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G19', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG19.docx', N'C19')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G20', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG20.docx', N'C20')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G21', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG21.docx', N'C21')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G22', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Sharing and Maintaining Documents\BG22.docx', N'C22')

-- Formatting Content
GO
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G23', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG01.docx', N'C23')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G24', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG02.docx', N'C24')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G25', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG03.docx', N'C25')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G26', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG04.docx', N'C26')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G27', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG05.docx', N'C27')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G28', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG06.docx', N'C28')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G29', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG07.docx', N'C29')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G30', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG08.docx', N'C30')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G31', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG09.docx', N'C31')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G32', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG10.docx', N'C32')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G33', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG11.docx', N'C33')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G34', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG12.docx', N'C34')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G35', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG13.docx', N'C35')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G36', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG14.docx', N'C36')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G37', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG15.docx', N'C37')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G38', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG16.docx', N'C38')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G39', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG17.docx', N'C39')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G40', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG18.docx', N'C40')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G41', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG19.docx', N'C41')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G42', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG20.docx', N'C42')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G43', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG21.docx', N'C43')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G44', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG22.docx', N'C44')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G45', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG23.docx', N'C45')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G46', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG24.docx', N'C46')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G47', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG25.docx', N'C47')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G48', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG26.docx', N'C48')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G49', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG27.docx', N'C49')
INSERT BAIGIAI (MABG, TEPBG, MABT) VALUES (N'G50', N'F:\Study\3rdyrs_1st\C#Windows\MSW\db\BG\Formatting Content\BG28.docx', N'C50')

GO
SELECT COUNT(*) FROM BAITAP
SELECT NOIDUNGBT FROM BAITAP