<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Tau_TheoTungHaiDoi.aspx.cs" Inherits="CSB.Page_Master.Manage_Tau_TheoTungHaiDoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                    <style>
                        tbody tr td {
                            vertical-align: middle;
                            text-align: center;
                        }

                        .a_selected {
                            background-color: #c44824;
                        }

                        .subMenu ul li {
                            cursor: pointer;
                        }

                        .blue-color {
                            color: blue;
                        }

                            .blue-color:hover {
                                color: blue;
                            }

                        .green-color {
                            color: green;
                        }

                            .green-color:hover {
                                color: green;
                            }

                        .orange-color {
                            color: orange;
                        }

                            .orange-color:hover {
                                color: orange;
                            }

                        .revert-color {
                            color: #551A8B;
                        }

                            .revert-color:hover {
                                color: #551A8B;
                            }

                        .edit-color {
                            color: #FFC107;
                        }

                            .edit-color:hover {
                                color: #FFC107;
                            }

                        .red-color {
                            color: red;
                        }

                            .red-color:hover {
                                color: red;
                            }

                        .dropdown-menu a {
                            padding: 10px 20px;
                            font-size: 14px;
                        }

                            .dropdown-menu a i {
                                vertical-align: bottom;
                                margin-right: .5rem;
                            }

                        .section .section-header table .btn {
                            font-size: 14px;
                            background: #75c1df;
                        }
                    </style>
  <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 15px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title" style="color: black; margin: 0"><%--QUẢN LÝ TÀU - VÙNG 1--%></h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                    <div class="breadcrumb-item"><a href="Manage_Tau?vung=1" style="color: #01b5f9; font-size: 18px;">Quản lý tàu</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="subMenu" style="justify-content: flex-start;">
                    <ul class="mainMenu-list" id="mainMenu_list" style="display: flex;">

                    </ul>
                </div>
                <div class="section-header" style="padding-bottom: 15px;">
                    <div class="col-md-12" style="padding: 0">
                        <table id="tableship" class="table table-bordered table-md" style="width: 100%; overflow-x: hidden;">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="contentptrTau" style="width: fit-content; border: solid;" hidden="hidden">
        <div class="WordSection1" id="contentTau">
            <table class="MsoTableGrid" border="0" cellspacing="0" cellpadding="0" width="933"
                style='width: 700.0pt; border-collapse: collapse; border: none'>
                <tr style='height: 20.9pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            BỘ TƯ LỆNH CẢNH SÁT BIỂN
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 35.35pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span id="donvi"></span></b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>Độc L<u>ập – Tự Do – Hạnh P</u>húc</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 34.4pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="right" style='text-align: right; text-indent: 0in; line-height: normal'>
                            <i>Hà Nội, ngày <span id="sp-day">Day</span> tháng <span id="sp-month">Month</span> n&#259;m <span id="sp-year">Year</span></i>
                        </p>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                </tr>
            </table>
            <p class="MsoNormal" align="center" style='margin: 0in; text-align: center; text-indent: 0in'>
                <b><span style='font-size: 16.0pt; line-height: 115%'>BẢNG THÔNG TIN</span></b>
            </p>
            <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in'>
                <b>T<u>àu “<span id="shipname"></span></u>”</b>
            </p>
            <p class="MsoListParagraph" align="left" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b>1.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></b><b>BẢNG THÔNG TIN CHUNG</b>
            </p>
            <table id="tableThongTinChung" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                style='width: 694.6pt;  border-collapse: collapse; border: none'>
                <tr style='height: 34.45pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>STT</span></b>
                        </p>
                    </td>
                    <td width="170" style='width: 127.55pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TÊN TÀU</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>MÁY CHÍNH</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TH DIESEL – MP ĐIỆN</span></b>
                        </p>
                    </td>
                    <td width="85" style='width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>HỆ TRỤC CHÂN VỊT</span></b>
                        </p>
                    </td>
                    <td width="85" style='width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>KHÍ TÀI HÀNG HẢI</span></b>
                        </p>
                    </td>
                    <td width="85" style='width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>XUỒNG CÔNG TÁC</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>NEO, TỜI, XÍCH NEO</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TRANG BỊ CỨU SINH</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TRANG BỊ KHÁC</span></b>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>VẬT TƯ BẢO ĐẢM</span></b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 24.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>1</span>
                        </p>
                    </td>
                    <td width="170" style='width: 127.55pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>C1</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="85" style='width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>4</span>
                        </p>
                    </td>
                    <td width="85" style='width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>3</span>
                        </p>
                    </td>
                    <td width="85" style='width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>9</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>4</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>4</span>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>4</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span
                    style='line-height: 115%'>2.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;
                    </span></span></b><b><span style='line-height: 115%'>B&#7842;NG THÔNG TIN CHI TI&#7870;T</span></b>
            </p>
            <table id="tableChiTiet"class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                style='width: 694.6pt;  border-collapse: collapse; border: none'>
                <tr style='height: 46.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>STT</span></b>
                        </p>
                    </td>
                    <td width="189" style='width: 141.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TÊN TÀU</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.65pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>S&#7888;
  IMO</span></b>
                        </p>
                    </td>
                    <td width="85" style='width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TR&#7884;NG
  T&#7842;I</span></b>
                        </p>
                    </td>
                    <td width="85" style='width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>NHIÊN
  LI&#7878;U</span></b>
                        </p>
                    </td>
                    <td width="85" style='width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>N&#431;&#7898;C
  NG&#7884;T</span></b>
                        </p>
                    </td>
                    <td width="95" style='width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>S&#7888;
  THUY&#7872;N VIÊN</span></b>
                        </p>
                    </td>
                    <td width="94" style='width: 70.85pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>THUY&#7872;N
  TR&#431;&#7902;NG</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>T&#7888;C
  &#272;&#7896;</span></b>
                        </p>
                    </td>
                    <td width="85" style='width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>T.G
  HÀNH TRÌNH</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="76" style="width: 56.65pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">9</span>
                        </p>
                    </td>
                    <td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">6</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span
                    style='line-height: 115%'>3.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;
                    </span></span></b><b><span style='line-height: 115%'>B&#7842;NG THÔNG TIN MÁY
CHÍNH</span></b>
            </p>
            <table id="tablecontentMayChinh" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                style='width: 694.6pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">LO&#7840;I
  MÁY</span></b>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">N&#258;M
  SX</span></b>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XU&#7844;T
  X&#7912;</span></b>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">CÔNG SU&#7844;T</span></b>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SU&#7844;T
  TIÊU HAO</span></b>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">T&#7888;C
  &#272;&#7896;</span></b>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">S&#7888;
  XY LANH</span></b>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">&#272;&#431;&#7900;NG
  KÍNH XY LANH</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">9</span>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class=MsoListParagraph align=left style='margin-top:5.0pt;margin-right:0in;
margin-bottom:6.0pt;margin-left:14.2pt;text-align:left;text-indent:-14.2pt'><b><span
style='line-height:115%'>4.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></b><b><span style='line-height:115%'>B&#7842;NG THÔNG TIN T&#7892;
H&#7906;P DIESEL – MÁY PHÁT &#272;I&#7878;N</span></b></p>
            <table id="tablecontentMayPhu" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                style='width: 694.6pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="152" style="width: 114.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐỘNG CƠ DIESEL</span></b>
                        </p>
                    </td>
                    <td width="83" style="width: 62.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">NĂM SX</span></b>
                        </p>
                    </td>
                    <td width="72" style="width: 60.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XUẤT XỨ</span></b>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SUẤT TIÊU HAO</span></b>
                        </p>
                    </td>
                    <td width="67" style="width: 50.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TỐC ĐỘ</span></b>
                        </p>
                    </td>
                    <td width="156" style="width: 117.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">MÁY PHÁT ĐIỆN</span></b>
                        </p>
                    </td>
                    <td width="78" style="width: 58.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">NĂM SX</span></b>
                        </p>
                    </td>
                    <td width="78" style="width: 58.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XUẤT XỨ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">9</span>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class=MsoListParagraph align=left style='margin-top:5.0pt;margin-right:0in;
margin-bottom:6.0pt;margin-left:14.2pt;text-align:left;text-indent:-14.2pt'><b><span
style='line-height:115%'>5.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span></b><b><span style='line-height:115%'>B&#7842;NG THÔNG TIN H&#7878;
TR&#7908;C CHÂN V&#7882;T</span></b></p>
            <table id="tablecontentChanVit" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="923"
                style='width: 692.45pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TÊN HỆ TRỤC</span></b>
                        </p>
                    </td>
                    <td width="101" style="width: 76.1pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">CHIỀU DÀI HỆ TRỤC</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK CƠ SỞ</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ SAU</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ GIỮA</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ TRƯỚC</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK CHÂN VỊT</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SỐ CÁNH CHÂN VỊT</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">9</span>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class=MsoListParagraph align=left style='margin-top:5.0pt;margin-right:0in;margin-bottom:6.0pt;margin-left:14.2pt;text-align:left;text-indent:-14.2pt'><b><span style='line-height:115%'>6.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></b><b><span style='line-height:115%'>B&#7842;NG THÔNG TIN KHÍ TÀI, HÀNG HẢI</span></b></p>
            <table id="tablecontentKhiTai" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="923"
                style='width: 692.45pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="212" style="width: 159.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">LOẠI KHÍ TÀI</span></b>
                        </p>
                    </td>
                    <td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">KÍ HIỆU MÃ</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b>
                        </p>
                    </td>
                    <td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XUẤT XỨ</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b>
                        </p>
                    </td>
                    <td width="258" style="width: 193.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TÍNH NĂNG</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span style='line-height: 115%'>7.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;</span></span></b><b><span style='line-height: 115%'>BẢNG THÔNG TIN XUỒNG MÁY CÔNG TÁC</span></b>
            </p>

            <table id="tablecontentXuongCT" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="964"
                style='width: 723.15pt; border-collapse: collapse; border: none'>
                <tr style='height: 46.1pt'>
                    <td width="47" style='width: 35.45pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>STT</span></b>
                        </p>
                    </td>
                    <td width="104" style='width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>TÊN</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>SỐ NGƯỜI TỐI ĐA</span></b>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>LOẠI ĐỘNG CƠ</span></b>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>SL ĐỘNG CƠ</span></b>
                        </p>
                    </td>
                    <td width="95" style='width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>KIỂU CHÂN VỊT</span></b>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>SL CHÂN VỊT</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>CHIỀU DÀI (m)</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>CHIỀU RỘNG (m)</span></b>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>CHIỀU SÂU (m)</span></b>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>TĐ TỐI ĐA (M/h)</span></b>
                        </p>
                    </td>
                    <td width="76" style='width: 56.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>TẢI TRỌNG (tấn)</span></b>
                        </p>
                    </td>
                    <td width="85" style='width: 63.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 11.0pt'>GHI CHÚ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 24.1pt'>
                    <td width="47" style='width: 35.45pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>1</span>
                        </p>
                    </td>
                    <td width="104" style='width: 78.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>C1</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>4</span>
                        </p>
                    </td>
                    <td width="95" style='width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>3</span>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>9</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>4</span>
                        </p>
                    </td>
                    <td width="66" style='width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                    <td width="76" style='width: 56.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>6</span>
                        </p>
                    </td>
                    <td width="85" style='width: 63.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>ABC</span>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span style='line-height: 115%'>8.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;</span></span></b><b><span style='line-height: 115%'>B&#7842;NG THÔNG TIN TỜI NEO</span></b>
            </p>

           <table id="tablecontentToiNeo" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="917"
                style='width: 687.5pt; border-collapse: collapse; border: none'>
                <tr style='height: 46.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>STT</span></b>
                        </p>
                    </td>
                    <td width="217" style='width: 162.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>KI&#7874;U TỜI NEO</span></b>
                        </p>
                    </td>
                    <td width="142" style='width: 106.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TRỌNG TẢI (tấn)</span></b>
                        </p>
                    </td>
                    <td width="132" style='width: 99.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>S&#7888; L&#431;&#7906;NG</span></b>
                        </p>
                    </td>
                    <td width="369" style='width: 276.4pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>GHI CHÚ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 24.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>1</span>
                        </p>
                    </td>
                    <td width="217" style='width: 162.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>C1</span>
                        </p>
                    </td>
                    <td width="142" style='width: 106.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                    <td width="132" style='width: 99.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="369" style='width: 276.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span style='line-height: 115%'>9.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;</span></span></b><b><span style='line-height: 115%'>B&#7842;NG THÔNG TIN NEO</span></b>
            </p>

           <table id="tablecontentNeo" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="917"
                style='width: 687.5pt; border-collapse: collapse; border: none'>
                <tr style='height: 46.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>STT</span></b>
                        </p>
                    </td>
                    <td width="217" style='width: 162.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>KI&#7874;U NEO</span></b>
                        </p>
                    </td>
                    <td width="142" style='width: 106.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TR&#7884;NG L&#431;&#7906;NG NEO (t&#7845;n)</span></b>
                        </p>
                    </td>
                    <td width="132" style='width: 99.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>S&#7888; L&#431;&#7906;NG</span></b>
                        </p>
                    </td>
                    <td width="369" style='width: 276.4pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>GHI CHÚ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 24.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>1</span>
                        </p>
                    </td>
                    <td width="217" style='width: 162.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>C1</span>
                        </p>
                    </td>
                    <td width="142" style='width: 106.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                    <td width="132" style='width: 99.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="369" style='width: 276.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span style='line-height: 115%'>10.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;</span></span></b><b><span style='line-height: 115%'>BẢNG THÔNG TIN XÍCH NEO</span></b>
            </p>

           <table id="tablecontentXichNeo" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="917"
                style='width: 687.5pt; border-collapse: collapse; border: none'>
                <tr style='height: 46.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>STT</span></b>
                        </p>
                    </td>
                    <td width="217" style='width: 162.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>KI&#7874;U XÍCH NEO</span></b>
                        </p>
                    </td>
                    <td width="142" style='width: 106.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>CHIỀU DÀI (m)</span></b>
                        </p>
                    </td>
                    <td width="132" style='width: 99.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>ĐƯỜNG KÍNH (mm)</span></b>
                        </p>
                    </td>
                    <td width="369" style='width: 276.4pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>GHI CHÚ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 24.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>1</span>
                        </p>
                    </td>
                    <td width="217" style='width: 162.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>C1</span>
                        </p>
                    </td>
                    <td width="142" style='width: 106.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                    <td width="132" style='width: 99.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="369" style='width: 276.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>5</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span style='line-height: 115%'>11.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style='line-height: 115%'>BẢNG THÔNG TIN TRANG BỊ CỨU SINH</span></b>
            </p>

            <table id="tablecontentCuuSinh" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                    style='width: 694.6pt; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="208" style="width: 155.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">LOẠI TRANG BỊ</span></b>
                        </p>
                    </td>
                    <td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XUẤT XỨ</span></b>
                        </p>
                    </td>
                    <td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TÌNH TRẠNG</span></b>
                        </p>
                    </td>
                    <td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐƠN VỊ TÍNH</span></b>
                        </p>
                    </td>
                    <td width="236" style="width: 177.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">GHI CHÚ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="208" style="width: 155.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="236" style="width: 177.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">9</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span style='line-height: 115%'>12.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style='line-height: 115%'>BẢNG THÔNG TIN TRANG BỊ KHÁC</span></b>
            </p>

            <table id="tablecontentKhac" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                    style='width: 694.6pt; border-collapse: collapse; border: none'>
                <tr style='height: 46.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>STT</span></b>
                        </p>
                    </td>
                    <td width="208" style='width: 155.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>LOẠI TRANG BỊ</span></b>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>XUẤT XỨ</span></b>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TÌNH TRẠNG</span></b>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>SỐ LƯỢNG</span></b>
                        </p>
                    </td>
                    <td width="113" style='width: 85.05pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>ĐƠN VỊ TÍNH</span></b>
                        </p>
                    </td>
                    <td width="236" style='width: 177.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>GHI CHÚ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 24.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>1</span>
                        </p>
                    </td>
                    <td width="208" style='width: 155.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>C1</span>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>4</span>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>3</span>
                        </p>
                    </td>
                    <td width="113" style='width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="236" style='width: 177.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>9</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class="MsoListParagraph" align="left" style='margin-top: 5.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: left; text-indent: -14.2pt'>
                <b><span style='line-height: 115%'>13.<span style='font: 7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><b><span style='line-height: 115%'>BẢNG THÔNG TIN VẬT TƯ BẢO ĐẢM</span></b>
            </p>

            <table id="tablecontentBaoDam" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                    style='width: 694.6pt; border-collapse: collapse; border: none'>
                <tr style='height: 46.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>STT</span></b>
                        </p>
                    </td>
                    <td width="208" style='width: 155.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>TÊN VẬT TƯ</span></b>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>XUẤT XỨ</span></b>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>MÃ VẬT TƯ</span></b>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>SỐ LƯỢNG</span></b>
                        </p>
                    </td>
                    <td width="113" style='width: 85.05pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>ĐƠN VỊ TÍNH</span></b>
                        </p>
                    </td>
                    <td width="236" style='width: 177.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span style='font-size: 12.0pt'>GHI CHÚ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 24.1pt'>
                    <td width="57" style='width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>1</span>
                        </p>
                    </td>
                    <td width="208" style='width: 155.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>C1</span>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>4</span>
                        </p>
                    </td>
                    <td width="104" style='width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>3</span>
                        </p>
                    </td>
                    <td width="113" style='width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>2</span>
                        </p>
                    </td>
                    <td width="236" style='width: 177.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt'>
                        <p class="MsoNormal" align="left" style='margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal'>
                            <span style='font-size: 12.0pt'>9</span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class=MsoNormal align=left style='margin-top:7.0pt;text-align:left; text-indent:0in'><span style='line-height:115%'>&nbsp;</span></p>

        </div>
    </div>
    <div id="loader" class="spinner-border text-primary" role="status"></div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        var vung = getParameterByName('vung');
        var vung_id;
        var user_id = sessionStorage.getItem('userLoginID');
        var donvi;
        var donvi_id;
        var group_name = sessionStorage.getItem("Group_Name");
        var Group_OnUnitID = sessionStorage.getItem("Group_OnUnitID");
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }

        $(document).ready(function () {
            donvi_id = Group_OnUnitID;
            donvi = group_name;
            $('#title').text('QUẢN LÝ TÀU - ' + donvi);
            loadDataListShips(donvi_id);
            Load_Quyen(user_id);

        });

        function Load_Quyen(user_id) {
            debugger
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "user?id=" + user_id,
                dataType: "json",
                success: function (data) {
                    if (data.UserRoles.Show == true) {
                        $(".drd_xuatWordTau").css("pointer-events", 'auto');
                    }
                    else if (data.UserRoles.Show == false) {
                        $(".drd_xuatWordTau").css("pointer-events", 'none');
                    }
                    if (data.UserRoles.Insert == true) {
                        $("#btn_addShip").attr('enabled', 'enabled')
                    }
                    else if (data.UserRoles.Insert == false) {
                        $("#btn_addShip").attr('disabled', 'disabled')
                    }
                    if (data.UserRoles.Update == true) {
                        $(".drd_Suathongtintau").css("pointer-events", 'auto');
                    }
                    else if (data.UserRoles.Update == false) {
                        $(".drd_Suathongtintau").css("pointer-events", 'none');
                    }
                    if (data.UserRoles.Delete == true) {
                        $(".drd_Xoathongtintau").css("pointer-events", 'auto');
                    }
                    else if (data.UserRoles.Delete == false) {
                        $(".drd_Xoathongtintau").css("pointer-events", 'none');
                    }
                    if (data.UserRoles.Report == true) {
                        $(".drd_Baocaokythuat").css("pointer-events", 'auto');
                    }
                    else if (data.UserRoles.Report == false) {
                        $(".drd_Baocaokythuat").css("pointer-events", 'none');
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        //function Load_DonVi(OnUnitID) {
        //    $.ajax({
        //        async: false,
        //        type: "GET",
        //        url: linkapi + "flotilla_by_squadron?id=" + OnUnitID,
        //        dataType: "json",
        //        success: function (data) {
        //            $("#mainMenu_list").empty();
        //            $.each(data, function (key, item) {
        //                $("#mainMenu_list").append(` <li><a id="` + item.Id + `" class="a_menu" href="../Page_Master/Manage_Tau_TheoTungHaiDoan?donvi=` + item.Name + `">` + item.Name + `</a></li>`);
        //            });
        //        }, error: function (ret) {
        //            console.log('errorGET');
        //        }
        //    });
        //}
        function loadDataListShips(donvi_id) {
            debugger
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "ships_in_flotilla?id=" + donvi_id,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>SỐ HIỆU</th><th>KÝ HIỆU</th><th>NƠI SẢN XUẤT</th><th>NĂM TIẾP NHẬN</th><th>CHỨC NĂNG, NHIỆM VỤ</th><th  title='Xem hồ sơ tầu'>HỒ SƠ TÀU</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        //tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.TTCOBAN.SOHIEU + "</td><td>" + item.TTCOBAN.KYHIEU + "</td><td>" + item.TTCOBAN.NOISANXUAT + "</td><td>" + item.TTCOBAN.NAMTIEPNHAN + "</td><td>" + item.TTCOBAN.CHUCNANG + "</td>" + '<td style="text-align: center;"><a href="#" class="view"  title="Xem hồ sơ tàu" onclick="View_HoSoTau(`' + item.ID + '`)"><i class="material-icons">&#xE417;</i></a></td>' + '<td style="text-align: center;"><div class="dropdown"><button class="btn" style="white-space: nowrap;" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="bi bi-list"></i> Các tác vụ</button><div class="dropdown-menu" aria-labelledby="dropdownMenuButton"><a href="#" class="view dropdown-item" title="Xuất Word thông tin tàu ' + item.TTCOBAN.SOHIEU + '" onclick="xuatWordTau(`' + item.ID + '`)"><i class="material-icons blue-color">text_snippet</i>Xuất word thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#" class="view dropdown-item" title="Xuất file Excel" onclick="xuatExcelTau(`' + item.ID + '`)"><i class="material-icons green-color">description</i>Xuất excel thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#" class="view dropdown-item" title="Xuất file pdf" onclick="xuatPdfTau(`' + item.ID + '`)"><i class="material-icons orange-color">picture_as_pdf</i>Xuất pdf thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#" class="view dropdown-item" title="In báo cáo" onclick="inBCTau(`' + item.ID + '`)"><i class="material-icons revert-color">print</i>In báo cáo thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#" class="view dropdown-item" title="Sửa" onclick="ViewInforShip(`' + item.ID + '`)"><i class="material-icons edit-color ">&#xE254;</i>Sửa thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#" class="view dropdown-item" title="Xóa" onclick="delete_ship(`' + item.ID + '`)"><i class="material-icons red-color ">&#xE872;</i>Xóa thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a></div></div></td></tr>';
                        tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.TTCOBAN.SOHIEU + "</td><td>" + item.TTCOBAN.KYHIEU + "</td><td>" + item.TTCOBAN.NOISANXUAT + "</td><td>" + item.TTCOBAN.NAMTIEPNHAN + "</td><td>" + item.TTCOBAN.CHUCNANG + "</td>" + '<td style="text-align: center;"><a href="#" class="view"  title="Xem hồ sơ tàu" onclick="View_HoSoTau(`' + item.ID + '`)"><i class="material-icons">&#xE417;</i></a></td>' + '<td style="text-align: center;"><div class="dropdown"><button class="btn" style="white-space: nowrap;" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="bi bi-list"></i> Các tác vụ</button><div class="dropdown-menu" aria-labelledby="dropdownMenuButton"><a href="#" class="view dropdown-item drd_xuatWordTau" title="Xuất Word thông tin tàu ' + item.TTCOBAN.SOHIEU + '" onclick="xuatWordTau(`' + item.ID + '`)"><i class="material-icons blue-color">text_snippet</i>Xuất word thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#"  class="view dropdown-item drd_Baocaokythuat" title="Báo cáo kỹ thuật tàu ' + item.TTCOBAN.SOHIEU + '" onclick="baoCaoKyThuat(`' + item.ID + '`)"><i class="material-icons blue-color">text_snippet</i>Báo cáo kỹ thuật tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#" class="view dropdown-item drd_Chietxuatdulieu" title="Chiết xuất dữ liệu ' + item.TTCOBAN.SOHIEU + '" onclick="ChietXuatDuLieu(`' + item.ID + '`,`' + item.TTCOBAN.SOHIEU + '`)"><i class="material-icons blue-color">text_snippet</i>Chiết xuất dữ liệu tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#"  class="view dropdown-item drd_Suathongtintau" title="Sửa" onclick="ViewInforShip(`' + item.ID + '`)"><i class="material-icons edit-color ">&#xE254;</i>Sửa thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a><a href="#"  class="view dropdown-item drd_Xoathongtintau" title="Xóa" onclick="delete_ship(`' + item.ID + '`)"><i class="material-icons red-color ">&#xE872;</i>Xóa thông tin tàu ' + item.TTCOBAN.SOHIEU + '</a></div></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tableship').html(tabletext);
                    loadTableShip();
                    //$('#tableship_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listship()" class="btn btn-lg btn-secondary mb-3"><span class="bi-arrow-clockwise"></span> &nbsp;Load dữ liệu</button> <button onclick="btn_addship()" class="btn btn-lg btn-secondary mb-3"><span class="bi-plus-circle-fill"></span> &nbsp;Thêm mới tàu</button><div class="btn-group"><button type="button" class="btn btn-lg btn-secondary mb-3 dropdown-toggle" data-toggle="dropdown"><span class="bi-file-earmark-text"></span> Xuất báo cáo </button><ul class="dropdown-menu" role="menu" style="width: max-content;"><li><a href="#"><i class="material-icons revert-color">print</i> In báo cáo</a></li><li><a href="#" ><i class="material-icons blue-color">text_snippet</i> Xuất file Word</a></li><li><a href="#"><i class="material-icons green-color">description</i> Xuất file Excel</a></li><li><a href="#"><i class="material-icons orange-color">picture_as_pdf</i> Xuất file PDF</a></li></ul></div></div>');
                    $('#tableship_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listship()" class="btn btn-lg btn-secondary mb-2"><span class="bi-arrow-clockwise"></span> &nbsp;Load dữ liệu</button> <button id=btn_addShip onclick="btn_addship()" class="btn btn-lg btn-secondary mb-2"><i class="bi bi-plus-circle"></i> &nbsp;Thêm mới tàu</button><input type="file" id="input_txt" class="btn btn-secondary mb-2"> <button id="btn_add_Tau_txt" class="btn btn-secondary mb-2"><i class="bi bi-plus-circle"></i>&nbsp;Thêm bằng file</button></div>');
                    $('#tableship_wrapper .row').first().next().children().css("overflow-x", "auto");
                    $('#tableship_wrapper .row').first().next().css("min-height", "500px");
                    $('#tableship_wrapper').css("overflow-x", "hidden");
                    $('#tableship_wrapper').css("overflow-y", "inherit");
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    let selectedFile;
                    let input = document.getElementById("input_txt");
                    input.addEventListener("change", (event) => {
                        selectedFile = event.target.files[0];
                    });
                    document.getElementById("btn_add_Tau_txt").addEventListener("click", () => {
                        if (selectedFile) {
                            let files = input.files;
                            if (files.length == 0) return;
                            const file = files[0];
                            let reader = new FileReader();
                            reader.onload = (e) => {
                                const file = e.target.result;
                                console.log(file);

                                $.ajax({
                                    type: "POST",
                                    url: linkapi + "importHST",
                                    dataType: "json",
                                    data: JSON.stringify(file),
                                    contentType: "application/json",

                                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                                    },
                                    success: function (data) {
                                        toastSuccess("Thành công");
                                        loadDataListShips(donvi_id);
                                    }, error: function (ret) {
                                        console.log(ret.responseJSON.Message);
                                        toastError("Thất bại", ret.responseJSON.Message);
                                    },
                                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                                    },
                                });

                            };
                            reader.onerror = (e) => alert(e.target.error.name);
                            reader.readAsText(file);
                        }
                    });
                },
            });
        };
        function loadTableShip() {
            $('table[id=tableship]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 40 },
                        { name: 'SỐ HIỆU', width: 350 },
                        { name: 'KÝ HIỆU', width: 200 },
                        { name: 'NƠI SẢN XUẤT', width: 350 },
                        { name: 'NĂM TIẾP NHẬN', width: 350 },
                        { name: 'CHỨC NĂNG, NHIỆM VỤ', width: 350 },
                        { name: 'HỒ SƠ TÀU', width: 250 },
                        { name: 'TÁC VỤ', width: 130 }
                    ],
                    "columnDefs": [
                        {
                            "targets": [0, 3, 4, 5, 6, 7],
                            "searchable": false,
                        },
                        {
                            "targets": [5, 6, 7],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1, 2, 3, 4],
                            "orderable": true
                        }
                    ],
                    lengthChange: true,
                    "language": {
                        "sProcessing": "Đang xử lý...",
                        "sLengthMenu": "Xem _MENU_ mục",
                        "sZeroRecords": "Không tìm thấy thông tin phù hợp",
                        "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
                        "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
                        "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                        "sInfoPostFix": "",
                        "sSearch": "Tìm kiếm: ",
                        "sUrl": "",
                        "oPaginate": {
                            "sFirst": "Đầu",
                            "sPrevious": "Trước",
                            "sNext": "Tiếp",
                            "sLast": "Cuối"
                        }
                    }
                });
                table1.buttons().container()
                    .appendTo('this_wrapper .col-md-6:eq(0)');
            });
        };
        function Text_ChietSuat(ShipID, Text) {
            Text_ThemThongTinTau(ShipID, Text);
        }
        function Text_ThemThongTinTau(ShipID, Text) {
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + ShipID,
                dataType: "json",
                success: function (data) {
                    Text = Text + `INSERT INTO THONGTINTAU VALUES(` + `'` + ShipID + `','` + data.TTCOBAN.SOHIEU + `','` + data.TTCOBAN.KYHIEU + `','` + data.TTCOBAN.NOISANXUAT + `','` + data.TTCOBAN.NAMHATHUY + `','` + data.TTCOBAN.NAMTIEPNHAN + `','` + data.TTCOBAN.CHUCNANG + `','` + data.GIANNUOC.Dmax + `','` + data.GIANNUOC.Dmin + `','` + data.KT.Lmax + `','` + data.KT.Ltk + `','` + data.KT.Bmax + `','`
                        + data.KT.Htb + `','` + data.KT.Hmax + `','` + data.KT.Dmax + `','` + data.MN.Tm + `','` + data.MN.Ttb + `','` + data.MN.Td + `','` + data.MN.Tmax + `','` + data.VT.Vmax + `','` + data.VT.Vkt + `','` + data.KNHD.H1 + `','` + data.KNHD.Tm + `','` + data.KNHD.Wmax + `','` + data.LDT.DCKH + `','` + data.LDT.DCSL + `','` + data.LDT.DNKH + `','` + data.LDT.DNSL + `','`
                        + data.LDT.MN + `','` + data.LDT.MNSL + `','` + data.BC.QS + `','` + data.BC.SQ + `','` + data.BC.VCQP + `','` + data.BC.QNCN + `','` + data.BC.HSQCS + `','` + data.Meta.Created + `','` + data.Meta.LastUpdated + `','` + data.KT.FlotId + `'` + `/n`;
                    debugger;
                    return Text_ThemCanBoNhanVien(ShipID, Text);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function Text_ThemCanBoNhanVien(ShipID, Text) {
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + ShipID,
                dataType: "json",
                success: function (data) {
                    Text = Text + `INSERT INTO THONGTINTAU VALUES(` + `'` + ShipID + `','` + data.TTCOBAN.SOHIEU + `','` + data.TTCOBAN.KYHIEU + `','` + data.TTCOBAN.NOISANXUAT + `','` + data.TTCOBAN.NAMHATHUY + `','` + data.TTCOBAN.NAMTIEPNHAN + `','` + data.TTCOBAN.CHUCNANG + `','` + data.GIANNUOC.Dmax + `','` + data.GIANNUOC.Dmin + `','` + data.KT.Lmax + `','` + data.KT.Ltk + `','` + data.KT.Bmax + `','`
                        + data.KT.Htb + `','` + data.KT.Hmax + `','` + data.KT.Dmax + `','` + data.MN.Tm + `','` + data.MN.Ttb + `','` + data.MN.Td + `','` + data.MN.Tmax + `','` + data.VT.Vmax + `','` + data.VT.Vkt + `','` + data.KNHD.H1 + `','` + data.KNHD.Tm + `','` + data.KNHD.Wmax + `','` + data.LDT.DCKH + `','` + data.LDT.DCSL + `','` + data.LDT.DNKH + `','` + data.LDT.DNSL + `','`
                        + data.LDT.MN + `','` + data.LDT.MNSL + `','` + data.BC.QS + `','` + data.BC.SQ + `','` + data.BC.VCQP + `','` + data.BC.QNCN + `','` + data.BC.HSQCS + `','` + data.Meta.Created + `','` + data.Meta.LastUpdated + `','` + data.KT.FlotId + `'` + `/n`;
                    debugger;
                    return Text;
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function ChietXuatDuLieu(ShipID, SoHieu) {
            var Text = "";
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "exportHST?id=" + ShipID,
                dataType: "json",
                success: function (data) {
                    Text = data;
                }, error: function (ret) {

                },
                complete: function () {

                },
            });
            console.log(Text);
            var blob = new Blob([Text],
                {
                    type: "application/json:utf-8"
                }
            )
            var userlink = document.createElement('a');
            userlink.setAttribute("download", SoHieu + ".txt");
            userlink.setAttribute('href', window.URL.createObjectURL(blob));
            userlink.click();
        }

        function btn_addship() {
            //   sessionStorage.setItem("vung", getParameterByName('vung'));
            sessionStorage.setItem("donvi", getParameterByName('donvi'));
            sessionStorage.setItem("donvi_id", donvi_id);
            window.location = baseaddress + "Page_Master/DacDiemChung";
        }
        function View_HoSoTau(Ship_ID) {

            window.location = baseaddress + "Page_Master/Ship_profile?Ship_ID=" + Ship_ID;
        }
        function delete_ship(id) {
            let text = "Bạn có chắc muốn xóa tàu này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_ship?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataListShips(donvi_id);
                    toastSuccess("Thành công", "Xóa thông tin tàu thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin tàu không thành công!");
                })
            }
            else {

            }
        }
        function ViewInforShip(id) {
            var win = window.open(baseaddress + "Page_Master/DacDiemChung?Ship_ID=" + id, '_blank');
            win.focus();
        }

        function btn_Load_listship() {
            loadDataListShips(donvi_id);
        }
        function xuatWordTau(idTau) {
            loadBaoCao(idTau);
            setTimeout(() => {
                exportToWord(`contentptrTau`, `Thông tin chung tàu ` + shipName);
            }, 1000);
        }
        function loadBaoCao(idTau) {
            debugger
            var date = new Date();
            $('#sp-day').html(date.getDate());
            $('#sp-month').html(Number(date.getMonth()) + 1);
            $('#sp-year').html(date.getFullYear());
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + idTau,
                dataType: "json",
                success: function (data) {
                    var strdonvi = data.Flotilla.Name;
                    strdonvi = strdonvi.slice(0, 2) + '<u>' + strdonvi.slice(2, strdonvi.length - 2) + '</u>' + strdonvi.slice(strdonvi.length - 2);
                    console.log(strdonvi);
                    $('#donvi').html(strdonvi);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            var thongtinchung = '<tr style="height: 34.45pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="170" style="width: 127.55pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÊN TÀU</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">MÁY CHÍNH</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TH DIESEL – MP ĐIỆN</span></b></p></td><td width="85" style="width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">HỆ TRỤC CHÂN VỊT</span></b></p></td><td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">KHÍ TÀI HÀNG HẢI</span></b></p></td><td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUỒNG CÔNG TÁC</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">NEO, TỜI, XÍCH NEO</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TRANG BỊ CỨU SINH</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TRANG BỊ KHÁC</span></b></p></td><td width="66" style="width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 34.45pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">VẬT TƯ BẢO ĐẢM</span></b></p></td></tr>';
            var chitiet = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="189" style="width: 141.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÊN TÀU</span></b></p></td><td width="76" style="width: 56.65pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">S&#7888; IMO</span></b></p></td><td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TR&#7884;NG T&#7842;I</span></b></p></td><td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">NHIÊN LI&#7878;U</span></b></p></td><td width="85" style="width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">N&#431;&#7898;C NG&#7884;T</span></b></p></td><td width="95" style="width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">S&#7888; THUY&#7872;N VIÊN</span></b></p></td><td width="94" style="width: 70.85pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">THUY&#7872;N TR&#431;&#7902;NG</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">T&#7888;C &#272;&#7896;</span></b></p></td><td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">T.G HÀNH TRÌNH</span></b></p></td></tr>';
            $.ajax({
                type: "GET",
                url: linkapi + "ship_overview?id=" + idTau,
                dataType: "json",
                success: function (data) {
                    shipName = data.Ship.Name;
                    $('#shipname').html(shipName);
                    thongtinchung += '<tr style="height: 24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">1</span></p></td><td width="170" style="width: 127.55pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Name + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.MainEngine + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.SecondaryEngine + '</span></p></td><td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Screw + '</span></p></td><td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Weapon + '</span></p></td><td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.MotoBoat + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Anchor + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.LifeSaving + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Other + '</span></p></td><td width="66" style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Supplies + '</span></p></td></tr>';
                    $('#tableThongTinChung').html(thongtinchung);
                    chitiet += '<tr style="height: 24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">1</span></p></td><td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Name + '</span></p></td><td width="76" style="width: 56.65pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.RegistrationNumber + '</span></p></td><td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Weight + '</span></p></td><td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Fuel + '</span></p></td><td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Water + '</span></p></td><td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Personel + '</span></p></td><td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Captain.Fullname + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Speed + '</span></p></td><td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + data.Ship.Time + '</span></p></td></tr>';
                    $('#tableChiTiet').html(chitiet);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "main_engines?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height:46.1pt"><td width=57 style="width:42.6pt;border:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">STT</span></b></p></td><td width=189 style="width:141.75pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">LO&#7840;I MÁY</span></b></p></td><td width=94 style="width:70.85pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">N&#258;M SX</span></b></p></td><td width=85 style="width:63.75pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">XU&#7844;T X&#7912;</span></b></p></td><td width=85 style="width:63.8pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">CÔNG SU&#7844;T</span></b></p></td><td width=95 style="width:70.9pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">SU&#7844;T TIÊU HAO</span></b></p></td><td width=85 style="width:63.75pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">T&#7888;C &#272;&#7896;</span></b></p></td><td width=113 style="width:85.05pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">S&#7888; XY LANH</span></b></p></td><td width=123 style="width:92.15pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">&#272;&#431;&#7900;NG KÍNH XY LANH</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.ProductionYear + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Power + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Waste + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Speed + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Pittong + '</span></p></td>';
                        tablechild += '<td width=123 style="width:92.15pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Diameter + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $('#tablecontentMayChinh').html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
            $.ajax({
                type: "GET",
                url: linkapi + "secondary_engines?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="152" style="width: 114.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐỘNG CƠ DIESEL</span></b></p></td><td width="83" style="width: 62.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">NĂM SX</span></b></p></td><td width="72" style="width: 60.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td><td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b></p></td><td width="95" style="width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SUẤT TIÊU HAO</span></b></p></td><td width="67" style="width: 50.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TỐC ĐỘ</span></b></p></td><td width="156" style="width: 117.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">MÁY PHÁT ĐIỆN</span></b></p></td><td width="78" style="width: 58.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">NĂM SX</span></b></p></td><td width="78" style="width: 58.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.ProductionYear + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Power + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Waste + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Speed + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Machine + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Year + '</span></p></td>';
                        tablechild += '<td width=123 style="width:92.15pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin2 + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $('#tablecontentMayPhu').html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "screw_systems?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="189" style="width: 141.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÊN HỆ TRỤC</span></b></p></td><td width="101" style="width: 76.1pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">CHIỀU DÀI HỆ TRỤC</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK CƠ SỞ</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ SAU</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ GIŨA</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ TRƯỚC</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK CHÂN VỊT</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SỐ CÁNH CHÂN VỊT</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Width + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.BasicDiameter + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.BehindDiameter + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.MiddleDiameter + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.FrontDiameter + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Diameter + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Wings + '</span></p></td>';
                        i = i + 1;
                    });
                    $('#tablecontentChanVit').html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
            $.ajax({
                type: "GET",
                url: linkapi + "weapon_marines?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="212" style="width: 159.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">LOẠI KHÍ TÀI</span></b></p></td><td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">KÍ HIỆU MÃ</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b></p></td><td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b></p></td><td width="258" style="width: 193.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÍNH NĂNG</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Type + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Quantity + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Power + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Function + '</span></p></td>';
                        i = i + 1;
                    });
                    $('#tablecontentKhiTai').html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "weapon_marines?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="212" style="width: 159.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">LOẠI KHÍ TÀI</span></b></p></td><td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">KÍ HIỆU MÃ</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b></p></td><td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b></p></td><td width="258" style="width: 193.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÍNH NĂNG</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Type + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Quantity + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Power + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top: none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Function + '</span></p></td>';
                        i = i + 1;
                    });
                    $('#tablecontentKhiTai').html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "moto_boats?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="47" style="width: 35.45pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">STT</span></b></p></td><td width="104" style="width: 78.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">TÊN</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">SỐ NGƯỜI TỐI ĐA</span></b></p></td><td width="66" style="width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">LOẠI ĐỘNG CƠ</span></b></p></td><td width="66" style="width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">SL ĐỘNG CƠ</span></b></p></td><td width="95" style="width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">KIỂU CHÂN VỊT</span></b></p></td><td width="66" style="width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">SL CHÂN VỊT</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">CHIỀU DÀI (m)</span></b></p></td><td width="76" style="width: 56.7pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">CHIỀU RỘNG (m)</span></b></p></td><td width="66" style="width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">CHIỀU SÂU (m)</span></b></p></td><td width="66" style="width: 49.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">TĐ TỐI ĐA (M/h)</span></b></p></td><td width="76" style="width: 56.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">TẢI TRỌNG (tấn)</span></b></p></td><td width="85" style="width: 63.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 11.0pt">GHI CHÚ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height: 24.1pt"><td width="47" style="width: 35.45pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + i + '</span></p></td><td width="104" style="width: 78.0pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Name + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Personel + '</span></p></td><td width="66" style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.EngineType + '</span></p></td><td width="66" style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.EngineNumber + '</span></p></td><td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.ScrewType + '</span></p></td><td width="66" style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.ScrewNumber + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Width + '</span></p></td><td width="76" style="width: 56.7pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Height + '</span></p></td><td width="66" style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Deep + '</span></p></td><td width="66" style="width: 49.6pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Speed + '</span></p></td><td width="76" style="width: 56.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Weight + '</span></p></td><td width="85" style="width: 63.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Note + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $("#tablecontentXuongCT").html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "anchor?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="217" style="width: 162.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">KIỂU NEO</span></b></p></td><td width="142" style="width: 106.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TRỌNG LƯỢNG NEO (tấn)</span></b></p></td><td width="132" style="width: 99.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">S&#7888; L&#431;&#7906;NG</span></b></p></td><td width="369" style="width: 276.4pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">GHI CHÚ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height: 24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + i + '</span></p></td><td width="217" style="width: 162.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Type + '</span></p></td><td width="142" style="width: 106.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Weight + '</span></p></td><td width="132" style="width: 99.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Quantity + '</span></p></td><td width="369" style="width: 276.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Note + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $("#tablecontentNeo").html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "winches?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="217" style="width: 162.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">KI&#7874;U T&#7900;I NEO</span></b></p></td><td width="142" style="width: 106.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TR&#7884;NG T&#7842;I (t&#7845;n)</span></b></p></td><td width="132" style="width: 99.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">S&#7888; L&#431;&#7906;NG</span></b></p></td><td width="369" style="width: 276.4pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">GHI CHÚ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height: 24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + i + '</span></p></td><td width="217" style="width: 162.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Type + '</span></p></td><td width="142" style="width: 106.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Load + '</span></p></td><td width="132" style="width: 99.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Quantity + '</span></p></td><td width="369" style="width: 276.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Note + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $("#tablecontentToiNeo").html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "chains?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="217" style="width: 162.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">KIỂU XÍCH NEO</span></b></p></td><td width="142" style="width: 106.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">CHIỀU DÀI (m)></td><td width="132" style="width: 99.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐƯỜNG KÍNH (mm)</span></b></p></td><td width="369" style="width: 276.4pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">GHI CHÚ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height: 24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + i + '</span></p></td><td width="217" style="width: 162.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Type + '</span></p></td><td width="142" style="width: 106.35pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Width + '</span></p></td><td width="132" style="width: 99.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Diameter + '</span></p></td><td width="369" style="width: 276.4pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Note + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $("#tablecontentXichNeo").html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "lifesavings?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="208" style="width: 155.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">LOẠI TRANG BỊ</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÌNH TRẠNG</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b></p></td><td width="113" style="width: 85.05pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐƠN VỊ TÍNH</span></b></p></td><td width="236" style="width: 177.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">GHI CHÚ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height: 24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + i + '</span></p></td><td width="208" style="width: 155.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Type + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Origin + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.State + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Quantity + '</span></p></td><td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Unit + '</span></p></td><td width="236" style="width: 177.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Note + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $("#tablecontentCuuSinh").html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "other_equipments?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="208" style="width: 155.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">LOẠI TRANG BỊ</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÌNH TRẠNG</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b></p></td><td width="113" style="width: 85.05pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐƠN VỊ TÍNH</span></b></p></td><td width="236" style="width: 177.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">GHI CHÚ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height: 24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + i + '</span></p></td><td width="208" style="width: 155.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Type + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Origin + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.State + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Quantity + '</span></p></td><td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Unit + '</span></p></td><td width="236" style="width: 177.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Note + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $("#tablecontentKhac").html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "supplies?imo=" + idTau,
                dataType: "json",
                success: function (data) {
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="208" style="width: 155.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÊN VẬT TƯ</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">MÃ VẬT TƯ</span></b></p></td><td width="104" style="width: 77.95pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b></p></td><td width="113" style="width: 85.05pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐƠN VỊ TÍNH</span></b></p></td><td width="236" style="width: 177.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">GHI CHÚ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tablechild += '<tr style="height: 24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + i + '</span></p></td><td width="208" style="width: 155.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Type + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Origin + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.State + '</span></p></td><td width="104" style="width: 77.95pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Quantity + '</span></p></td><td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Unit + '</span></p></td><td width="236" style="width: 177.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt"><p class="MsoNormal" align="left" style="margin-top: 0in; text-align: left; text-indent: 0in; line-height: normal"><span style="font-size: 12.0pt">' + item.Note + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    $("#tablecontentBaoDam").html(tablechild);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function baoCaoKyThuat(id) {
            var win = window.open(baseaddress + "Page_Master/FormBaoCao?Ship_ID=" + id, '_blank');
            win.focus();
        }
    </script>
</asp:Content>
