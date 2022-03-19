using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml;
using System.Threading;

namespace ShipyardInfo.classes
{
    public class Helper
    {
        public static string EnCode(string input)
        {
            MD5 md5 = MD5.Create();
            byte[] inputByte = Encoding.ASCII.GetBytes(input);
            byte[] outCode = md5.ComputeHash(inputByte);
            StringBuilder br = new StringBuilder();
            foreach (byte i in outCode)
            {
                br.Append(i.ToString("X2"));
            }
            return br.ToString();
        }

        public static string GetRandomCode(Component com, string txt)
        {
            return EnCode(string.Format("{0}{1}", com, txt));
        }

        public static void Write(string log, string place)
        {
            StreamWriter wr = null;
            try
            {
                DateTime date = DateTime.Now;
                string path = "";// string.Format("{0}\\logs.txt", AppDomainSetup.StartupPath);
                wr = new StreamWriter(path, true, Encoding.Unicode);
                string text = string.Format("{0} : {1} - {2}. {3} ", date.ToShortDateString(), date.ToShortTimeString(), log, place);
                wr.WriteLine(text);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                wr.Close();
                wr.Dispose();
            }
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, OverviewInfo tb1, ShipInfo tb2, List<MainEngine> tb3,
            List<SecondaryEngine> tb4, List<Screw> tb5, List<MarineWeapon> tb6, List<MotoBoat> tb7, List<Winch> tb8, List<Anchor> tb9,
            List<Chain> tb10, List<LifeSaving> tb11, List<OtherEquipment> tb12, List<Supply> tb13)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
                //{ "Total", q.Count.ToString() },
                //{ "ANS", (q.Count - report.None).ToString() },
                //{ "NON", report.None.ToString() },
                //{ "RIL", report.Right.ToString() },
                //{ "WRO", report.Wrong.ToString() },
                //{ "PER", (100*report.Right/q.Count).ToString() }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            List<DocumentFormat.OpenXml.Wordprocessing.Table> tables = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().ToList();
            /// Bảng thứ nhất - BẢNG THÔNG TIN CHUNG
            ////////////////////////////////////////            
            var rows = tables[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var myRow = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rows.Last().Clone();
            rows.Last().Remove();
            var listOfCellsInRow =  myRow.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
            listOfCellsInRow[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = "1";
            listOfCellsInRow[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.Ship.Name;
            listOfCellsInRow[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.MainEngine.ToString();
            listOfCellsInRow[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.SecondaryEngine.ToString();
            listOfCellsInRow[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.Screw.ToString();
            listOfCellsInRow[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.Weapon.ToString();
            listOfCellsInRow[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.MotoBoat.ToString();
            listOfCellsInRow[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.Anchor.ToString();
            listOfCellsInRow[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.LifeSaving.ToString();
            listOfCellsInRow[9].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.Other.ToString();
            listOfCellsInRow[10].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb1.Supplies.ToString();
            tables[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(myRow);
            /// Bảng thứ hai - BẢNG THÔNG TIN CHI TIẾT
            //////////////////////////////////////////
            var rowTemplateTable2 = tables[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row2 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable2.Last().Clone();
            rowTemplateTable2.Last().Remove();
            var listOfCellsInRow2 = Row2.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
            listOfCellsInRow2[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = "1";
            listOfCellsInRow2[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.Name;
            listOfCellsInRow2[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.RegistrationNumber;
            listOfCellsInRow2[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.Weight;
            listOfCellsInRow2[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.Fuel;
            listOfCellsInRow2[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.Water;
            listOfCellsInRow2[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.Personel.ToString();
            listOfCellsInRow2[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.Captain == null ? "" : tb2.Captain.Fullname;
            listOfCellsInRow2[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.Speed;
            listOfCellsInRow2[9].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb2.Time;
            tables[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(Row2);
            /// Bảng thứ ba - BẢNG THÔNG TIN MÁY CHÍNH
            //////////////////////////////////////////
            var rowTemplateTable3 = tables[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Name;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].ProductionYear == -1 ? "" : tb3[i].ProductionYear.ToString();
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Origin;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Power;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Waste;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Speed;
                    listOfCellsInRow3[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Pittong.ToString();
                    listOfCellsInRow3[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Diameter;
                    tables[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[3], Row3);
            }
            /// Bảng thứ bốn - BẢNG THÔNG TIN MÁY PHỤ
            //////////////////////////////////////////
            var rowTemplateTable4 = tables[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row4 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable4.Last().Clone();
            rowTemplateTable4.Last().Remove();
            if (tb4 != null)
            {
                for (int i = 0; i < tb4.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row4.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Name;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].ProductionYear == -1 ? "" : tb4[i].ProductionYear.ToString();
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Origin;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Power;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Waste;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Speed;
                    listOfCellsInRow3[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Voltage;
                    listOfCellsInRow3[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Intensity;
                    tables[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[4], Row4);
            }
            /// Bảng thứ năm - BẢNG HỆ TRỤC CHÂN VỊT
            //////////////////////////////////////////
            var rowTemplateTable5 = tables[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row5 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable5.Last().Clone();
            rowTemplateTable5.Last().Remove();
            if (tb5 != null)
            {
                for (int i = 0; i < tb5.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row5.Clone();
                    var listOfCellsInRow5 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow5[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow5[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].Name;
                    listOfCellsInRow5[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].Width;
                    listOfCellsInRow5[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].BasicDiameter;
                    listOfCellsInRow5[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].BehindDiameter;
                    listOfCellsInRow5[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].MiddleDiameter;
                    listOfCellsInRow5[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].FrontDiameter;
                    listOfCellsInRow5[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].Diameter;
                    listOfCellsInRow5[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].Note;
                    tables[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[5], Row5);
            }
            /// Bảng thứ sáu - BẢNG KHÍ TÀI, HÀNG HẢI
            //////////////////////////////////////////
            var rowTemplateTable6 = tables[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row6 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable6.Last().Clone();
            rowTemplateTable6.Last().Remove();
            if (tb6 != null)
            {
                for (int i = 0; i < tb6.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row6.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb6[i].Name;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb6[i].Type;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb6[i].Quantity.ToString();
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb6[i].Origin;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb6[i].Power;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb6[i].Function;
                    tables[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[6], Row6);
            }
            /// Bảng thứ bảy - XUỒNG MÁY CÔNG TÁC
            //////////////////////////////////////////
            var rowTemplateTable7 = tables[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row7 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable7.Last().Clone();
            rowTemplateTable7.Last().Remove();
            if (tb7 != null)
            {
                for (int i = 0; i < tb7.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row7.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].Name;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].Personel;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].EngineType;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].EngineNumber;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].ScrewType;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].ScrewNumber;
                    listOfCellsInRow3[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].Width;
                    listOfCellsInRow3[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].Height;
                    listOfCellsInRow3[9].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].Deep;
                    listOfCellsInRow3[10].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].Speed;
                    listOfCellsInRow3[11].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].Weight;
                    listOfCellsInRow3[12].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb7[i].Note;
                    tables[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);                   
                }
            }
            else
            {
                HorizontalMerge(tables[7], Row7);
            }
            /// Bảng thứ tám - BẢNG THÔNG TIN TỜI NEO
            //////////////////////////////////////////
            var rowTemplateTable8 = tables[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row8 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable8.Last().Clone();
            rowTemplateTable8.Last().Remove();
            if (tb8 != null)
            {
                for (int i = 0; i < tb8.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row8.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb8[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb8[i].Weight;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb8[i].Quantity;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb8[i].Note;
                    tables[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[8], Row8);
            }

            /// Bảng thứ chín - BẢNG THÔNG TIN NEO
            //////////////////////////////////////////
            var rowTemplateTable9= tables[9].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row9 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable9.Last().Clone();
            rowTemplateTable9.Last().Remove();
            if (tb9 != null)
            {
                for (int i = 0; i < tb9.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row9.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb9[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb9[i].Load;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb9[i].Quantity;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb9[i].Note;
                    tables[9].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[9], Row9);
            }

            /// Bảng thứ mười - BẢNG THÔNG XÍCH NEO
            //////////////////////////////////////////
            var rowTemplateTable10 = tables[10].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row10 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable10.Last().Clone();
            rowTemplateTable10.Last().Remove();
            if (tb10 != null)
            {
                for (int i = 0; i < tb10.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row10.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb10[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb10[i].Width;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb10[i].Diameter;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb10[i].Note;
                    tables[10].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[10], Row10);
            }
            /// Bảng thứ mười một - BẢNG THÔNG TIN TRANG BỊ CỨU SINH
            //////////////////////////////////////////
            var rowTemplateTable11 = tables[11].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row11 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable11.Last().Clone();
            rowTemplateTable11.Last().Remove();
            if (tb11 != null)
            {
                for (int i = 0; i < tb11.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row11.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb11[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb11[i].Origin;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb11[i].State;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb11[i].Quantity;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb11[i].Unit;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb11[i].Note;
                    tables[11].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[11], Row11);
            }
            /// Bảng thứ mười hai - BẢNG THÔNG TIN TRANG BỊ KHÁC
            //////////////////////////////////////////
            var rowTemplateTable12 = tables[12].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row12 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable12.Last().Clone();
            rowTemplateTable12.Last().Remove();
            if (tb12 != null)
            {
                for (int i = 0; i < tb12.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row12.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb12[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb12[i].Origin;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb12[i].State;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb12[i].Quantity;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb12[i].Unit;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb12[i].Note;
                    tables[12].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[12], Row12);
            }
            /// Bảng thứ mười ba- BẢNG THÔNG TIN VẬT TƯ BẢO ĐẢM
            //////////////////////////////////////////
            var rowTemplateTable13 = tables[11].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row13 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable13.Last().Clone();
            rowTemplateTable13.Last().Remove();
            if (tb13 != null)
            {
                for (int i = 0; i < tb13.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row13.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb13[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb13[i].Origin;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb13[i].Code;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb13[i].Quantity;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb13[i].Unit;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb13[i].Note;
                    tables[13].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[13], Row13);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<Chain> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN XÍCH NEO
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Width;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Diameter;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<Winch> tb3, List<Anchor> tb4, List<Chain> tb5)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
                //{ "Total", q.Count.ToString() },
                //{ "ANS", (q.Count - report.None).ToString() },
                //{ "NON", report.None.ToString() },
                //{ "RIL", report.Right.ToString() },
                //{ "WRO", report.Wrong.ToString() },
                //{ "PER", (100*report.Right/q.Count).ToString() }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }            
            #endregion
            // BẢNG THÔNG TIN TỜI NEO
            List<DocumentFormat.OpenXml.Wordprocessing.Table> tables = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().ToList();
            var rowTemplateTable3 = tables[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Weight;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Quantity;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;
                    tables[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[1], Row3);
            }
            // BẢNG THÔNG TIN NEO
            var rowTemplateTable4 = tables[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row4 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable4.Last().Clone();
            rowTemplateTable4.Last().Remove();
            if (tb4 != null)
            {
                for (int i = 0; i < tb4.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row4.Clone();
                    var listOfCellsInRow4 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow4[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow4[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Type;
                    listOfCellsInRow4[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Load;
                    listOfCellsInRow4[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Quantity;
                    listOfCellsInRow4[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb4[i].Note;
                    tables[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[2], Row4);
            }

            // BẢNG THÔNG TIN XÍCH NEO
            var rowTemplateTable5 = tables[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row5 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable5.Last().Clone();
            rowTemplateTable5.Last().Remove();
            if (tb5 != null)
            {
                for (int i = 0; i < tb5.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row5.Clone();
                    var listOfCellsInRow5 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow5[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow5[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].Type;
                    listOfCellsInRow5[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].Width;
                    listOfCellsInRow5[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].Diameter;
                    listOfCellsInRow5[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb5[i].Note;
                    tables[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(tables[3], Row5);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static List<Anchor> ReadAnchor1FromExcelFile(string path, ref string errorRows)
        {
            List<Anchor> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<Anchor>();
                Anchor si = null;
                string stt = string.Empty;
                int quantity;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new Anchor();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.Anchor, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Type = valueArray[row, 2] == null ? throw new Exception("Kiểu neo không được để trống") : valueArray[row, 2].ToString();
                        if (valueArray[row, 3] == null)
                        {
                            si.Load = string.Empty;
                        }
                        else
                        {
                            if (!int.TryParse(valueArray[row, 3].ToString(), out quantity))
                            {
                                si.Load = string.Empty;
                            }
                            else
                            if (quantity < 0)
                                si.Load = string.Empty;
                            else
                                si.Load = valueArray[row, 3].ToString();
                        }
                        if (valueArray[row, 4] == null)
                        {
                            si.Quantity = string.Empty;
                        }
                        else
                        {
                            if (!int.TryParse(valueArray[row, 4].ToString(), out quantity))
                            {
                                si.Quantity = string.Empty;
                            }
                            else
                            if (quantity < 0)
                                si.Quantity = string.Empty;
                            else
                                si.Quantity = valueArray[row, 4].ToString();
                        }
                        si.Note = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<Chain> ReadChainFromExcelFile(string path, ref string errorRows)
        {
            List<Chain> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<Chain>();
                Chain si = null;
                string stt = string.Empty;
                int quantity;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new Chain();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.Chain, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Type = valueArray[row, 2] == null ? throw new Exception("Kiểu xích neo không được để trống") : valueArray[row, 2].ToString();
                        if (valueArray[row, 3] == null)
                        {
                            si.Width = string.Empty;
                        }
                        else
                        {
                            if (!int.TryParse(valueArray[row, 3].ToString(), out quantity))
                            {
                                si.Width = string.Empty;
                            }
                            else
                            if (quantity < 0)
                                si.Width = string.Empty;
                            else
                                si.Width = valueArray[row, 3].ToString();
                        }
                        if (valueArray[row, 4] == null)
                        {
                            si.Diameter = string.Empty;
                        }
                        else
                        {
                            if (!int.TryParse(valueArray[row, 4].ToString(), out quantity))
                            {
                                si.Diameter = string.Empty;
                            }
                            else
                            if (quantity < 0)
                                si.Diameter = string.Empty;
                            else
                                si.Diameter = valueArray[row, 4].ToString();
                        }
                        si.Note = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<Winch> ReadWinchFromExcelFile(string path, ref string errorRows)
        {
            List<Winch> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<Winch>();
                Winch si = null;
                string stt = string.Empty;
                int quantity;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new Winch();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.Winch, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Type = valueArray[row, 2] == null ? throw new Exception("Kiểu tời neo không được để trống") : valueArray[row, 2].ToString();
                        if (valueArray[row, 3] == null)
                        {
                            si.Weight = string.Empty;
                        }
                        else
                        {
                            if (!int.TryParse(valueArray[row, 3].ToString(), out quantity))
                            {
                                si.Weight = string.Empty;
                            }
                            else
                            if (quantity < 0)
                                si.Weight = string.Empty;
                            else
                                si.Weight = valueArray[row, 3].ToString();
                        }
                        if (valueArray[row, 4] == null)
                        {
                            si.Quantity = string.Empty;
                        }
                        else
                        {
                            if (!int.TryParse(valueArray[row, 4].ToString(), out quantity))
                            {
                                si.Quantity = string.Empty;
                            }
                            else
                            if (quantity < 0)
                                si.Quantity = string.Empty;
                            else
                                si.Quantity = valueArray[row, 4].ToString();
                        }
                        si.Note = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<OtherEquipment> ReadOtherEquipmentFromExcelFile(string path, ref string errorRows)
        {
            List<OtherEquipment> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<OtherEquipment>();
                OtherEquipment si = null;
                string stt = string.Empty;
                int quantity;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new OtherEquipment();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.Other, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Type = valueArray[row, 2] == null ? throw new Exception("Tên loại trang bị không được để trống") : valueArray[row, 2].ToString();
                        si.Origin = valueArray[row, 3] == null ? "" : valueArray[row, 3].ToString();
                        si.State = valueArray[row, 4] == null ? "" : valueArray[row, 4].ToString();
                        if(valueArray[row, 5] == null)
                        {
                            si.Quantity = string.Empty;
                        }
                        else
                        {
                            if(!int.TryParse(valueArray[row, 5].ToString(), out quantity))
                            {
                                si.Quantity = string.Empty;
                            }
                            else
                            if (quantity < 0)
                                si.Quantity = string.Empty;
                            else
                                si.Quantity = valueArray[row, 5].ToString();
                        }
                        si.Unit = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.Note = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<LifeSaving> ReadLifeSavingFromExcelFile(string path, ref string errorRows)
        {
            List<LifeSaving> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<LifeSaving>();
                LifeSaving si = null;
                string stt = string.Empty;
                int quantity;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new LifeSaving();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.Other, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Type = valueArray[row, 2] == null ? throw new Exception("Tên loại trang bị không được để trống") : valueArray[row, 2].ToString();
                        si.Origin = valueArray[row, 3] == null ? "" : valueArray[row, 3].ToString();
                        si.State = valueArray[row, 4] == null ? "" : valueArray[row, 4].ToString();
                        if (valueArray[row, 5] == null)
                        {
                            si.Quantity = string.Empty;
                        }
                        else
                        {
                            if (!int.TryParse(valueArray[row, 5].ToString(), out quantity))
                            {
                                si.Quantity = string.Empty;
                            }
                            else
                            if (quantity < 0)
                                si.Quantity = string.Empty;
                            else
                                si.Quantity = valueArray[row, 5].ToString();
                        }
                        si.Unit = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.Note = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<Screw> ReadScrewSystemFromExcelFile(string path, ref string errorRows)
        {
            List<Screw> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<Screw>();
                Screw si = null;
                string stt = string.Empty;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new Screw();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.ScrewSystem, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Name = valueArray[row, 2] == null ? throw new Exception("Tên trục không được để trống") : valueArray[row, 2].ToString();
                        si.Width = valueArray[row, 3] == null ? "" : valueArray[row, 3].ToString();
                        si.BasicDiameter = valueArray[row, 4] == null ? "" : valueArray[row, 4].ToString();
                        si.BehindDiameter = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        si.MiddleDiameter = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.FrontDiameter = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        si.Diameter = valueArray[row, 8] == null ? "" : valueArray[row, 8].ToString();
                        si.Note = valueArray[row, 9] == null ? "" : valueArray[row, 9].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<Anchor> ReadAnchorFromExcelFile(string path, ref string errorRows)
        {
            List<Anchor> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<Anchor>();
                Anchor si = null;
                string stt = string.Empty;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new Anchor();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.Anchor, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Type = valueArray[row, 2] == null ? throw new Exception("Kiểu xích neo trống") : valueArray[row, 2].ToString();
                        si.Quantity = valueArray[row, 3] == null ? "" : valueArray[row, 3].ToString();
                        si.Width = valueArray[row, 4] == null ? "" : valueArray[row, 4].ToString();
                        si.Diameter = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        si.Load = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.Note = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<SecondaryEngine> ReadSecondaryEngineFromExcelFile(string path, ref string errorRows)
        {
            List<SecondaryEngine> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<SecondaryEngine>();
                SecondaryEngine si = null;
                string stt = string.Empty;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet. UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new SecondaryEngine();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.SecondaryEngine, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Name = valueArray[row, 2] == null ? throw new Exception("Tên máy diesel trống") : valueArray[row, 2].ToString();
                        si.ProductionYear = valueArray[row, 3] == null ? -1 : int.Parse(valueArray[row, 3].ToString());
                        si.Origin = valueArray[row, 4] == null ? "" : valueArray[row, 4].ToString();
                        si.Power = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        si.Waste = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.Speed = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        si.Machine = valueArray[row, 8] == null ? throw new Exception("Tên máy phát điện trống") : valueArray[row, 8].ToString();
                        si.Year  = valueArray[row, 9] == null ? "" : valueArray[row, 9].ToString();
                        si.Origin2 = valueArray[row, 10] == null ? "" : valueArray[row, 10].ToString();
                        si.Power2 = valueArray[row, 11] == null ? "" : valueArray[row, 11].ToString();
                        si.Speed2 = valueArray[row, 12] == null ? "" : valueArray[row, 12].ToString();
                        si.Cosphi = valueArray[row, 13] == null ? "" : valueArray[row, 13].ToString();
                        si.Voltage = valueArray[row, 14] == null ? "" : valueArray[row, 14].ToString();
                        si.Intensity = valueArray[row, 15] == null ? "" : valueArray[row, 15].ToString();
                        si.Note = valueArray[row, 16] == null ? "" : valueArray[row, 16].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<MainEngine> ReadMainEngineFromExcelFile(string path, ref string errorRows)
        {
            List<MainEngine> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<MainEngine>();
                MainEngine si = null;
                string stt = string.Empty;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new MainEngine();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.MainEngine, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Name = valueArray[row, 2] == null ? throw new Exception("Tên máy chính trống") : valueArray[row, 2].ToString();
                        si.ProductionYear = valueArray[row, 3] ==null? -1: int.Parse(valueArray[row, 3].ToString());                        
                        si.Origin = valueArray[row, 4] == null ? "" : valueArray[row, 4].ToString();
                        si.Power = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        si.Waste = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.Speed = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        si.Pittong = valueArray[row, 8] == null ? 0 : int.Parse(valueArray[row, 8].ToString());
                        si.Diameter = valueArray[row, 9] == null ? "" : valueArray[row, 9].ToString();
                        si.Note = valueArray[row, 10] == null ? "" : valueArray[row, 10].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<MarineWeapon> ReadWeaponsFromExcelFile(string path, ref string errorRows)
        {
            List<MarineWeapon> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<MarineWeapon>();
                MarineWeapon si = null;
                string stt = string.Empty;
                DateTime date = DateTime.Now; 
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {                    
                    si = new MarineWeapon();
                    try
                    {                        
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.MarineWeapon, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Name = valueArray[row, 2].ToString() == null ? throw new Exception("Tên khí tài, hàng hải trống") : valueArray[row, 2].ToString();
                        si.Type = valueArray[row, 3].ToString();
                        si.Quantity = valueArray[row, 4] == null ? 0 : int.Parse(valueArray[row, 4].ToString());
                        si.Origin = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        si.Power = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.Function = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        private static void HorizontalMerge(DocumentFormat.OpenXml.Wordprocessing.Table tb, TableRow row)
        {
            var cells = row.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
            cells[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = "Chưa có dữ liệu";
            for (int j = 0; j < cells.Count; j++)
            {
                if (j == 0)
                {
                    TableCellProperties cellOneProperties = new TableCellProperties();
                    cellOneProperties.Append(new HorizontalMerge()
                    {
                        Val = MergedCellValues.Restart
                    });
                    cells.ElementAt(0).Append(cellOneProperties);
                }
                else
                {
                    TableCellProperties cellTwoProperties = new TableCellProperties();
                    cellTwoProperties.Append(new HorizontalMerge()
                    {
                        Val = MergedCellValues.Continue
                    });
                    cells.ElementAt(j).Append(cellTwoProperties);
                }
            }
            tb.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(row);
        }
        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<MainEngine> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
                //{ "Total", q.Count.ToString() },
                //{ "ANS", (q.Count - report.None).ToString() },
                //{ "NON", report.None.ToString() },
                //{ "RIL", report.Right.ToString() },
                //{ "WRO", report.Wrong.ToString() },
                //{ "PER", (100*report.Right/q.Count).ToString() }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();           
            /// Bảng thứ ba - BẢNG THÔNG TIN MÁY CHÍNH
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Name;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].ProductionYear.ToString();
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Origin;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Power;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Waste;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Speed;
                    listOfCellsInRow3[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Pittong.ToString();
                    listOfCellsInRow3[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Diameter;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<MotoBoat> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN MÁY CHÍNH
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Name;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Personel;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].EngineType;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].EngineNumber;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].ScrewType;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].ScrewNumber;
                    listOfCellsInRow3[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Width;
                    listOfCellsInRow3[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Height;
                    listOfCellsInRow3[9].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Deep;
                    listOfCellsInRow3[10].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Speed;
                    listOfCellsInRow3[11].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Weight;
                    listOfCellsInRow3[12].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;                    
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<Supply> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN MÁY CHÍNH
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Origin;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Code;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Quantity;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Unit;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;                    
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<OtherEquipment> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN MÁY CHÍNH
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Origin;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].State;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Quantity;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Unit;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<LifeSaving> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN MÁY CHÍNH
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Origin;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].State;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Quantity;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Unit;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<Anchor> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN XÍCH NEO
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Quantity;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Width;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Diameter;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Load;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }
        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<Winch> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN XÍCH NEO
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Weight;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Quantity;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataAnchorIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<Anchor> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN XÍCH NEO
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Load;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Quantity;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<SecondaryEngine> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
                //{ "Total", q.Count.ToString() },
                //{ "ANS", (q.Count - report.None).ToString() },
                //{ "NON", report.None.ToString() },
                //{ "RIL", report.Right.ToString() },
                //{ "WRO", report.Wrong.ToString() },
                //{ "PER", (100*report.Right/q.Count).ToString() }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN MÁY CHÍNH
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Name;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].ProductionYear.ToString();
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Origin;
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Power;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Waste;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Speed;
                    listOfCellsInRow3[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Voltage;
                    listOfCellsInRow3[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Intensity;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static List<ShipInfo> ReadShipsFromExcelFile(string path, ref string errorRows)
        {
            List<ShipInfo> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<ShipInfo>();
                ShipInfo si = null;
                Connection con = new Connection();
                List<CaptainInfo> captains = con.GetAllCaptain();
                string captainName = "";
                CaptainInfo captain = null;

                string stt = string.Empty;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new ShipInfo();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        captain = null;
                        captainName = valueArray[row, 11] == null ? "" : valueArray[row, 11].ToString();
                        if(captainName!="")
                        {
                            foreach (var item in captains)
                            {
                                if(item.Fullname.ToLower().Equals(captainName.ToLower()))
                                {
                                    captain = item;
                                    break;
                                }
                            }
                            if(captain==null)
                            {
                                captain = new CaptainInfo()
                                {
                                    Fullname = captainName,
                                    ID = Helper.GetRandomCode(Component.CaptainInfo, DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss")),
                                    Function = "Thuyền trưởng",
                                    Gender = true,
                                    Residence = "",
                                    Birthday = "02/11/1986"
                                };
                                if(!con.InsertNewCaptain(captain))
                                {
                                    captain = new CaptainInfo() { ID = "-1" };
                                }
                                else
                                {
                                    captains.Add(captain);
                                }
                            }                            
                        }
                        else
                        {
                            captain = new CaptainInfo()
                            {
                                ID = "-1"
                            };
                        }
                        Thread.Sleep(200);
                        DateTime date = DateTime.Now;                        
                        si.ID = GetRandomCode(Component.Ship, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Name = valueArray[row, 2].ToString();
                        si.RegistrationNumber = valueArray[row, 3].ToString();
                        si.RegistrationDate = valueArray[row, 5]==null ? "1/1/1900" : valueArray[row, 5].ToString();
                        si.RegistrationPlace = valueArray[row, 4]==null?"": valueArray[row, 4].ToString();
                        si.LaunchYear = valueArray[row, 6] == null ? -1 : int.Parse(valueArray[row, 6].ToString());
                        si.Weight = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        si.Fuel = valueArray[row, 8] == null ? "" : valueArray[row, 8].ToString();
                        si.Water = valueArray[row, 9] == null ? "" : valueArray[row, 9].ToString();
                        si.Personel = valueArray[row, 10] == null ? 1 : int.Parse(valueArray[row, 10].ToString());
                        si.Captain = captain;
                        si.Speed = valueArray[row, 12] == null ? "" : valueArray[row, 12].ToString();
                        si.Time = valueArray[row, 13] == null ? "" : valueArray[row, 13].ToString();
                        si.Image = @"imgs\default.jpg";
                        ls.Add(si);                        
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<ShipInfo> ReadShipsFromExcelFile2(string path, ref string errorRows)
        {
            List<ShipInfo> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<ShipInfo>();
                ShipInfo si = null;
                Connection con = new Connection();
                List<CaptainInfo> captains = con.GetAllCaptain();
                string captainName = "";
                string stt = string.Empty;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new ShipInfo();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        captainName = valueArray[row, 11] == null ? "" : valueArray[row, 11].ToString();                        
                        DateTime date = DateTime.Now;
                        si.ID = GetRandomCode(Component.Ship, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Name = valueArray[row, 2].ToString();
                        si.RegistrationNumber = valueArray[row, 3].ToString();
                        si.RegistrationDate = valueArray[row, 5] == null ? "1/1/1900" : valueArray[row, 5].ToString();
                        si.RegistrationPlace = valueArray[row, 4] == null ? "" : valueArray[row, 4].ToString();
                        si.LaunchYear = valueArray[row, 6] == null ? -1 : int.Parse(valueArray[row, 6].ToString());
                        si.Weight = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        si.Fuel = valueArray[row, 8] == null ? "" : valueArray[row, 8].ToString();
                        si.Water = valueArray[row, 9] == null ? "" : valueArray[row, 9].ToString();
                        si.Personel = valueArray[row, 10] == null ? 1 : int.Parse(valueArray[row, 10].ToString());
                        si.Captain = new CaptainInfo() {
                            Fullname = captainName
                        };
                        si.Speed = valueArray[row, 12] == null ? "" : valueArray[row, 12].ToString();
                        si.Time = valueArray[row, 13] == null ? "" : valueArray[row, 13].ToString();
                        si.Image = @"imgs\default.jpg";
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<MarineWeapon> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            /// Bảng thứ ba - BẢNG THÔNG TIN MÁY CHÍNH
            //////////////////////////////////////////
            var rowTemplateTable3 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row3 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable3.Last().Clone();
            rowTemplateTable3.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row3.Clone();
                    var listOfCellsInRow3 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow3[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow3[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Name;
                    listOfCellsInRow3[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Type;
                    listOfCellsInRow3[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Quantity.ToString();
                    listOfCellsInRow3[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Origin;
                    listOfCellsInRow3[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Power;
                    listOfCellsInRow3[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Function;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row3);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void FillDataIntoWordTable(string templatePath, string reportPath, ShipInfo tb2, List<Screw> tb3)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", tb2.RegistrationNumber.ToUpper(), tb2.Name.ToUpper()) }
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            var rowTemplateTable5 = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            var Row5 = (DocumentFormat.OpenXml.Wordprocessing.TableRow)rowTemplateTable5.Last().Clone();
            rowTemplateTable5.Last().Remove();
            if (tb3 != null)
            {
                for (int i = 0; i < tb3.Count; i++)
                {
                    var rowToInsert = (DocumentFormat.OpenXml.Wordprocessing.TableRow)Row5.Clone();
                    var listOfCellsInRow5 = rowToInsert.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList();
                    listOfCellsInRow5[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = (i + 1).ToString();
                    listOfCellsInRow5[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Name;
                    listOfCellsInRow5[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Width;
                    listOfCellsInRow5[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].BasicDiameter;
                    listOfCellsInRow5[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].BehindDiameter;
                    listOfCellsInRow5[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].MiddleDiameter;
                    listOfCellsInRow5[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].FrontDiameter;
                    listOfCellsInRow5[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Diameter;
                    listOfCellsInRow5[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = tb3[i].Note;
                    table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().Last().InsertAfterSelf(rowToInsert);
                }
            }
            else
            {
                HorizontalMerge(table, Row5);
            }
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static List<MotoBoat> ReadMotoBoatFromExcelFile(string path, ref string errorRows)
        {
            List<MotoBoat> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<MotoBoat>();
                MotoBoat si = null;
                string stt = string.Empty;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new MotoBoat();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.MotoBoat, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Deep = valueArray[row, 10] == null ? "" : valueArray[row, 10].ToString();
                        si.EngineNumber = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        si.EngineType = valueArray[row, 4] == null ? "" : valueArray[row, 4].ToString();
                        si.Height = valueArray[row, 9] == null ? "" : valueArray[row, 9].ToString();
                        si.Name = valueArray[row, 2] == null ? "" : valueArray[row, 2].ToString();
                        si.Note = valueArray[row, 13] == null ? "" : valueArray[row, 13].ToString();
                        si.Personel = valueArray[row, 3] == null ? "" : valueArray[row, 3].ToString();
                        si.ScrewNumber = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();
                        si.ScrewType = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.Speed = valueArray[row, 11] == null ? "" : valueArray[row, 11].ToString();
                        si.Weight = valueArray[row, 12] == null ? "" : valueArray[row, 12].ToString();
                        si.Width = valueArray[row, 8] == null ? "" : valueArray[row, 8].ToString();
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static List<Supply> ReadSuppliesFromExcelFile(string path, ref string errorRows)
        {
            List<Supply> ls = null;
            Microsoft.Office.Interop.Excel.Application xlApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            // Lấy Sheet 1
            Microsoft.Office.Interop.Excel.Worksheet xlWorksheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);
            // Lấy phạm vi dữ liệu
            Microsoft.Office.Interop.Excel.Range xlRange = xlWorksheet.UsedRange;
            // Tạo mảng lưu trữ dữ liệu
            object[,] valueArray = (object[,])xlRange.get_Value(Microsoft.Office.Interop.Excel.XlRangeValueDataType.xlRangeValueDefault);
            if (xlWorksheet.UsedRange.Rows.Count > 5)
            {
                ls = new List<Supply>();
                Supply si = null;
                string stt = string.Empty;
                DateTime date = DateTime.Now;
                for (int row = 6; row <= xlWorksheet.UsedRange.Rows.Count; row++)//đọc row hiện có trong Excel
                {
                    si = new Supply();
                    try
                    {
                        stt = valueArray[row, 1].ToString();
                        si.ID = GetRandomCode(Component.Supply, date.AddSeconds(row).ToString("dd/MM/yyyy hh:mm:ss"));
                        si.Type = valueArray[row, 2] == null ? throw new Exception("Tên vật tư không được để trống") : valueArray[row, 2].ToString();
                        si.Origin = valueArray[row, 3] == null ? "" : valueArray[row, 3].ToString();
                        si.Code = valueArray[row, 4] == null ? throw new Exception("Mã vật tư không được để trống") : valueArray[row, 4].ToString();
                        si.Quantity = valueArray[row, 5] == null ? "" : valueArray[row, 5].ToString();
                        si.Unit = valueArray[row, 6] == null ? "" : valueArray[row, 6].ToString();
                        si.Note = valueArray[row, 7] == null ? "" : valueArray[row, 7].ToString();                        
                        ls.Add(si);
                    }
                    catch (Exception e)
                    {
                        errorRows += stt + ";";
                        continue;
                    }
                }
            }
            // Đóng Workbook.
            xlWorkbook.Close(false);
            // Đóng application.
            xlApp.Quit();
            //Khử hết đối tượng
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlWorkbook);
            System.Runtime.InteropServices.Marshal.ReleaseComObject(xlApp);
            return ls;
        }

        public static void FillDataIntoComparisionTable(string templatePath, string reportPath, ShipInfo sh1, ShipInfo sh2)
        {
            File.Copy(templatePath, reportPath, true);
            WordprocessingDocument doc = WordprocessingDocument.Open(reportPath, true);

            #region Fill date to word
            string docText = null;
            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
            {
                docText = sr.ReadToEnd();
                sr.Close();
                sr.Dispose();
            }
            DateTime date = DateTime.Now;
            string day = date.Day < 10 ? string.Format("0{0}", date.Day) : date.Day.ToString();
            string month = date.Month < 3 ? string.Format("0{0}", date.Month) : date.Month.ToString();
            Dictionary<string, string> dict = new Dictionary<string, string>()
            {
                { "Day", day },
                { "Month", month },
                { "Year", date.Year.ToString() },
                { "TOCP", string.Format("{0} - {1}", sh1.RegistrationNumber.ToUpper(), sh1.Name.ToUpper())},
                { "RIL", string.Format("{0} - {1}", sh2.RegistrationNumber.ToUpper(), sh2.Name.ToUpper())}
            };
            foreach (KeyValuePair<string, string> item in dict)
            {
                Regex regexText = new Regex(item.Key);
                docText = regexText.Replace(docText, item.Value);
            }

            using (StreamWriter sw = new StreamWriter(
                      doc.MainDocumentPart.GetStream(FileMode.Create)))
            {
                sw.Write(docText);
                sw.Close();
                sw.Dispose();
            }
            doc.MainDocumentPart.Document.Save();
            #endregion

            DocumentFormat.OpenXml.Wordprocessing.Table table = doc.MainDocumentPart.Document.Body.Elements<DocumentFormat.OpenXml.Wordprocessing.Table>().LastOrDefault();
            List<TableRow> rows = table.Descendants<DocumentFormat.OpenXml.Wordprocessing.TableRow>().ToList();
            rows[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Name.ToUpper();
            rows[0].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Name.ToUpper();
            //2
            rows[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Name;
            rows[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Name;
            //3
            rows[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.RegistrationNumber;
            rows[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.RegistrationNumber;
            //4
            rows[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Weight;
            rows[3].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Weight;
            //5
            rows[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Fuel;
            rows[4].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Fuel;
            //6
            rows[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Water;
            rows[5].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Water;
            //7
            rows[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Personel.ToString();
            rows[6].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Personel.ToString();
            //8
            rows[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Captain == null ? "" : sh1.Captain.Fullname;
            rows[7].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Captain == null ? "" : sh2.Captain.Fullname;
            //9
            rows[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Speed;
            rows[8].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Speed;
            //10
            rows[9].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.Time;
            rows[9].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.Time;
            //11
            rows[10].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[1].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh1.LaunchYear == -1 ? "" : sh1.LaunchYear.ToString();
            rows[10].Descendants<DocumentFormat.OpenXml.Wordprocessing.TableCell>().ToList()[2].Descendants<DocumentFormat.OpenXml.Wordprocessing.Text>().FirstOrDefault().Text = sh2.LaunchYear == -1 ? "" : sh2.LaunchYear.ToString();
            doc.MainDocumentPart.Document.Save();
            doc.Dispose();
        }

        public static void ExportAllToExcel(string templatePath, string reportPath, List<ShipRow> ships)
        {
            File.Copy(templatePath, reportPath, true);
            SpreadsheetDocument excel = SpreadsheetDocument.Open(reportPath, true);
            WorkbookPart wbPart = excel.WorkbookPart;

            Sheet sheet = wbPart.Workbook.Descendants<Sheet>().Where((s) => s.Name == "Sheet1").FirstOrDefault();
            DocumentFormat.OpenXml.Spreadsheet.Worksheet ws = ((WorksheetPart)(wbPart.GetPartById(sheet.Id))).Worksheet;
            SheetData sheetData = ws.WorksheetPart.Worksheet.GetFirstChild<SheetData>();
            Row headerRow = sheetData.Elements<Row>().Where(r => r.RowIndex.Value == 1).FirstOrDefault();
            Row refRowHeader = sheetData.Elements<Row>().Where(r => r.RowIndex.Value == 4).FirstOrDefault();
            Row refRowContent = sheetData.Elements<Row>().Where(r => r.RowIndex.Value == 5).FirstOrDefault();
            Row refRowEmpty = sheetData.Elements<Row>().Where(r => r.RowIndex.Value == 6).FirstOrDefault();
            Row tagetRow = sheetData.Elements<Row>().Where(r => r.RowIndex.Value == 3).FirstOrDefault();
            sheetData.RemoveChild(refRowHeader);
            sheetData.RemoveChild(refRowContent);
            sheetData.RemoveChild(refRowEmpty);
            int count = 0;
            bool contentIsNUll = false;
            MergeCells mergeCells = new MergeCells();
            if (sheet != null)
            {
                for (int i = 0; i < ships.Count; i++)
                {
                    if ((ships[i].EngineInfo == null) || (ships[i].EngineInfo.Count == 0))
                        contentIsNUll = true;
                    else
                        contentIsNUll = false;
                    Row cloneHeader = (Row)refRowHeader.Clone();
                    cloneHeader.Elements<Cell>().ElementAt(0).CellValue = new CellValue(contentIsNUll==true? string.Format("VÙNG CSB {0} - Không tồn tại dữ liệu", ships[i].NameRegion): string.Format("VÙNG CSB {0}", ships[i].NameRegion));
                    cloneHeader.Elements<Cell>().ElementAt(0).CellReference = string.Format("A{0}", i + count + 4);
                    cloneHeader.RowIndex = (uint)(i + count + 4);                                        
                   // mergeCells.Append(new MergeCell() { Reference = new StringValue(string.Format("A{0}:H{1}", i + count + 4, i + count + 4)) });
                    //cloneHeader.AppendChild(mergeCells);
                    sheetData.InsertAfter(cloneHeader, tagetRow);
                    tagetRow = sheetData.Elements<Row>().Where(r => r.RowIndex.Value == cloneHeader.RowIndex).FirstOrDefault();
                    if (contentIsNUll) continue;
                    if ((ships[i].EngineInfo==null)||(ships[i].EngineInfo.Count==0))
                    {                       
                        Row cloneEmpty = (Row)refRowEmpty.Clone();
                        cloneEmpty.Elements<Cell>().ElementAt(0).CellValue = new CellValue("Không tồn tại dữ liệu");
                        cloneEmpty.Elements<Cell>().ElementAt(0).CellReference = string.Format("A{0}", i + count + 5);                        
                        cloneEmpty.RowIndex = (uint)(i + count + 5);                        
                       // mergeCells.Append(new MergeCell() { Reference = new StringValue(string.Format("A{0}:H{1}", i + count + 5, i + count + 5)) });
                        sheetData.InsertAfter(cloneEmpty, tagetRow);
                        tagetRow = sheetData.Elements<Row>().Where(r => r.RowIndex.Value == cloneEmpty.RowIndex).FirstOrDefault();
                        count++;
                    }
                    else
                    {
                        for (int j = 0; j < ships[i].EngineInfo.Count; j++)
                        {
                            Row cloneRowContent = (Row)refRowContent.Clone();
                            var cells = cloneRowContent.Elements<Cell>();
                            cells.ElementAt(0).CellValue = new CellValue((j + 1).ToString());
                            cells.ElementAt(0).CellReference = string.Format("A{0}", i + count + 5 + j);
                            cells.ElementAt(1).CellValue = new CellValue(ships[i].EngineInfo[j].Ship.Captain.Fullname);
                            cells.ElementAt(1).CellReference = string.Format("B{0}", i + count + 5 + j);
                            cells.ElementAt(2).CellValue = new CellValue(ships[i].EngineInfo[j].Ship.RegistrationNumber);
                            cells.ElementAt(2).CellReference = string.Format("C{0}", i + count + 5 + j);
                            cells.ElementAt(3).CellValue = new CellValue(ships[i].EngineInfo[j].Ship.Weight);
                            cells.ElementAt(3).CellReference = string.Format("D{0}", i + count + 5 + j);
                            cells.ElementAt(4).CellValue = new CellValue(ships[i].EngineInfo[j].Name);
                            cells.ElementAt(4).CellReference = string.Format("E{0}", i + count + 5 + j);
                            cells.ElementAt(5).CellValue = new CellValue(ships[i].EngineInfo[j].Origin);
                            cells.ElementAt(5).CellReference = string.Format("F{0}", i + count + 5 + j);
                            cells.ElementAt(6).CellValue = new CellValue(ships[i].EngineInfo[j].Power);
                            cells.ElementAt(6).CellReference = string.Format("G{0}", i + count + 5 + j);
                            cells.ElementAt(7).CellValue = new CellValue(ships[i].EngineInfo[j].Note);
                            cells.ElementAt(7).CellReference = string.Format("H{0}", i + count + 5 + j);
                            cloneRowContent.RowIndex = (uint)(i + count + 5 + j);
                            sheetData.InsertAfter(cloneRowContent, tagetRow);
                            tagetRow = sheetData.Elements<Row>().Where(r => r.RowIndex.Value == cloneRowContent.RowIndex).FirstOrDefault();
                        }
                        count += ships[i].EngineInfo.Count;
                    }                                        
                }
               // ws.InsertAfter(mergeCells, ws.Elements<SheetData>().First());
               // ws.AppendChild(mergeCells);
                ws.Save();
            }
            // wbPart.Worksheet.Save();
            // wbPart.Workbook.Save();
            excel.Close();
        }
    }
}
