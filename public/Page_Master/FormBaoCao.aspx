<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="FormBaoCao.aspx.cs" Inherits="CSB.Page_Master.FormBaoCao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .text-bold {
            font-weight: bold;
        }

        .text-italic {
            font-style: italic;
        }

        .text-center {
            text-align: center;
        }

        .horizontal-line {
            margin: 0 auto;
            height: 1px;
            background-color: black;
        }

        .rp-header {
            display: flex;
            flex-direction: column;
            text-align: center;
        }

        p {
            margin: 0;
        }

        sup {
            vertical-align: baseline;
            font-size: smaller;
        }

        .btn-rp {
            width: 100%;
            border-radius: 5px;
            font-size: 16px;
            font-family: Arial, Helvetica, sans-serif;
        }

            .btn-rp span {
                margin-right: 5px;
            }

        .form-s2 input {
            margin-bottom: .5rem;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 15px;">
            <div class="section-header" style="background-color: #fff;">
                <div class="title">
                    <h4 id="title" style="color: black; margin: 0">BÁO CÁO KỸ THUẬT TÀU</h4>
                    <div class="blue-hr"></div>
                </div>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                    <div class="breadcrumb-item"><a href="FormBaoCao" style="color: #01b5f9; font-size: 18px;">Form báo cáo</a></div>
                </div>
            </div>
            <form action="#" id="rpform" onsubmit="return false">
                <div class="section-content" id="formBC" style="font-family: 'Times New Roman', Times, serif">
                    <div class="row" style="justify-content: center;">
                        <div class="col-5">
                            <div class="rp-header text-center" style="display: flex; flex-direction: column">
                                <p>BỘ TƯ LỆNH CẢNH SÁT BIỂN</p>
                                <p class="text-bold">CỤC KỸ THUẬT</p>
                                <div class="horizontal-line" style="width: 20%;"></div>
                                <div class="mt-2" style="display: flex; flex-direction: row; justify-content: center;">
                                    <p>Số:</p>
                                    <input id="so" class="ml-2 mr-1 text-bold" style="width: 50px;" required/>
                                    <p>/BC-KT</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-7">
                            <div class="rp-header text-center" style="display: flex; flex-direction: column">
                                <p class="text-bold">CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</p>
                                <p class="text-bold">Độc lập - Tự do - Hạnh phúc</p>
                                <div class="horizontal-line" style="width: 30%;"></div>
                                <p class="text-italic">Hà Nội, ngày <span id="header-date">19</span> tháng <span id="header-month">03</span> năm <span id="header-year">2022</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="justify-content: center;">
                        <div class="text-center col-10">
                            <p class="text-bold">BÁO CÁO</p>
                            <textarea id="tenbaocao" rows="3" form="rpform" required style="font-weight: bold; width: 100%; text-align: center; padding: 5px; resize: none;">Tình trạng kỹ thuật tàu CSB 4031, CSB 4035, CSB 4039 phục vụ kiểm tra công tác triển khai thực hiện nhiệm vụ IUU khu vực giáp ranh Việt Nam - Thái Lan - Malaixia kết hợp kiểm tra các đơn vị tại Đảo Thổ Chu, Côn Đảo</textarea>
                            <div class="horizontal-line" style="width: 25%;"></div>
                            <div class="my-2" style="display: flex; flex-direction: row; justify-content: center;">
                                <p>Kính gửi:</p>
                                <input id="kinhgui" class="ml-2" required/>
                            </div>
                            <div class="my-2" style="display: flex; flex-direction: row;">
                                <p style="white-space: nowrap;">Căn cứ:</p>
                                <textarea id="cancu1" class="ml-2" rows="3" form="rpform" required style="width: 100%; padding: 5px; resize: none;">Kế hoạch số 1986/KH-BTL ngày 11/3/2022 của BTL CSB về kiểm tra công tác triển khai thực hiện nhiệm vụ IUU khu vực giáp ranh Việt Nam - Thái Lan - Malaixia kết hợp kiểm tra các đơn vị tại Đảo Thổ Chu, Côn Đảo</textarea>
                            </div>
                            <div class="my-2" style="display: flex; flex-direction: row;">
                                <p style="white-space: nowrap;">Căn cứ:</p>
                                <textarea id="cancu2" class="ml-2" rows="3" form="rpform" required style="width: 100%; padding: 5px; resize: none;">Tình trạng kỹ thuật của các tàu CSB 4031/BTL Vùng CSB 3, CSB 4039, CSB 4035/BTL Vùng CSB 4</textarea>
                            </div>
                            <p style="text-align: left;">Cục Kỹ thuật báo cáo như sau:</p>
                            <div class="row">
                                <p style="font-weight: bold; text-align: left;">1. Thông số cơ bản của tàu </p>
                                <span class="text-bold ml-1" id="ship_name">TT400</span>
                            </div>
                            <div class="row">
                                <div id="left-rp" class="col-6" style="text-align: left;">
                                    <p class="my-3">- Chiều dài lớn nhất</p>
                                    <p class="my-3">- Chiều rộng lớn nhất</p>
                                    <p class="my-3">- Chiều cao mạn</p>
                                    <p class="my-3">- Mớn nước</p>
                                    <p class="my-3">- Máy chính</p>
                                    <p class="my-3">- Vận tốc lớn nhất theo thiết kế</p>
                                    <p class="my-3">- Vận tốc kinh tế theo thiết kế</p>
                                    <p class="my-3">- Lượng chiếm nước đầy tải</p>
                                    <p class="my-3">- Số hệ trục chân vịt</p>
                                    <p class="my-3">- Tầm hoạt động</p>
                                    <p class="my-3">- Thời gian hoạt động liên tục trên biển</p>
                                    <p class="my-3">- Lượng dự trữ dầu cháy</p>
                                    <p class="my-3">- Lượng dự trữ dầu nhờn</p>
                                </div>
                                <div class="col-6">
                                    <div class="row my-3">
                                        <p class="mr-2" style="text-align: left;">L<sup style="vertical-align: text-bottom;">max</sup> = </p>
                                        <span id="Lmax"></span>
                                        <p class="ml-2" style="text-align: left;">m;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="text-align: left;">B<sup style="vertical-align: text-bottom;">max</sup> = </p>
                                        <span id="Bmax"></span>
                                        <p class="ml-2" style="text-align: left;">m;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="text-align: left;">H = </p>
                                        <span id="Htb"></span>
                                        <p class="ml-2" style="text-align: left;">m;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="text-align: left;">T<sup style="vertical-align: text-bottom;">m</sup> = </p>
                                        <span id="Tm"></span>
                                        <p class="ml-2" style="text-align: left;">m;</p>
                                    </div>
                                    <div class="row my-3">
                                        <span id="maychinh_list"></span>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="text-align: left;">v<sup style="vertical-align: text-bottom;">max</sup> = </p>
                                        <span id="vmax"></span>
                                        <p class="ml-2" style="text-align: left;">hải lý/giờ;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="text-align: left;">v<sup style="vertical-align: text-bottom;">kt</sup> = </p>
                                        <span id="vkt"></span>
                                        <p class="ml-2" style="text-align: left;">hải lý/giờ;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="text-align: left;">D<sup style="vertical-align: text-bottom;">dt</sup> = </p>
                                        <span id="Ddt"></span>
                                        <p class="ml-2" style="text-align: left;">tấn;</p>
                                    </div>
                                    <div class="row my-3">
                                        <span id="sohetruc">_____________</span>
                                        <p class="ml-2" style="text-align: left;"></p>
                                    </div>
                                    <div class="row my-3">
                                        <span id="sohaily"></span>
                                        <p class="ml-2" style="text-align: left;">hải lý;</p>
                                    </div>
                                    <div class="row my-3">
                                        <span id="songaydem"></span>
                                        <p class="ml-2" style="text-align: left;">ngày đêm;</p>
                                    </div>
                                    <div class="row my-3">
                                        <span id="dauchay"></span>
                                        <p class="ml-2" style="text-align: left;">m<sup>3</sup>;</p>
                                    </div>
                                    <div class="row my-3">
                                        <span id="daunhon"></span>
                                        <p class="ml-2" style="text-align: left;">m<sup>3</sup>;</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <p class="mr-1" style="font-weight: bold; text-align: left;">2. Tình trạng kỹ thuật hiện nay của các tàu</p>
                                <span id="ship_name_tt" class="text-bold"></span>
                            </div>
                            <p class="mr-2" style="font-weight: bold; text-align: left;">a) Hệ động lực</p>
                            <div class="row" class="form-s2">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">-</p>
                                <span id="count_mc" class="my-1">03</span>
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 5px">máy chính và hộp số đang hoạt động</p>
                                <%--         <span class="my-1">Paxman18VP8185</span>--%>

                                <%--              <p class="mx-1 my-1" style="text-align: left;"></p>--%>
                                <%--<span class="my-1">bình thường</span>--%>
                                <input class="ml-2" id="imaychinh1" required>
                                <p class="mx-1 my-1" style="text-align: left;">, tốc độ các tàu đạt từ</p>
                                <%--   <span class="my-1">24</span>--%>
                                <input class="ml-2" style="width: 50px;" id="imaychinh2" required>
                                <p class="mx-1 my-1" style="text-align: left;">đến</p>
                                <%-- <span class="my-1">28</span>--%>
                                <input class="ml-2" style="width: 50px;"  id="imaychinh3" required>
                                <p class="mx-1 my-1" style="text-align: left;">M/h trong điều kiện sóng cấp</p>
                                <%--  <span class="my-1">3;</span>--%>
                                <input class="ml-2" style="width: 50px;"  id="imaychinh4" required>
                                <a class="mx-1" onclick="XTT_MayChinh()" href="#" style="text-decoration: none;">(Xem tình trạng)</a>
                            </div>
                            <div class="row form-s2">
                                <p class="mr-1 my-1" style="text-align: left; padding-left: 15px;">- Máy phát điện, hệ thống điện, hệ thống cứu hộ hoạt động</p>
                                <%--  <span class="my-1">bình thường;</span>--%>
                                <input class="ml-2" id="iphatdien" required>
                                <a class="ml-2" onclick="XTT_MayPhatDien()" href="#" style="text-decoration: none;">(Xem tình trạng)</a>
                            </div>
                            <div class="row form-s2">
                                <p class="mr-1 my-1" style="text-align: left; padding-left: 15px;">- Các hệ thống và thiết bị bổ trợ đang hoạt động</p>
                                <%-- <span class="my-1">bình thường;</span>--%>
                                <input class="ml-2" id="hebotro" required>
                                <a class="ml-2" onclick="XTT_CacHeThongVaThietBiBoTro()" href="#" style="text-decoration: none;">(Xem tình trạng)</a>
                            </div>
                            <div class="row form-s2">
                                <p class="mr-1 my-1" style="text-align: left; padding-left: 15px;">- Thân vỏ</p>
                                <%-- <span class="my-1">vẫn kín nước;</span>--%>
                                <input class="ml-2" id="thanvo" required>
                                <a class="ml-2" onclick="XTT_ThanVo()" href="#" style="text-decoration: none;">(Xem tình trạng)</a>
                            </div>
                            <div class="row form-s2">
                                <p class="mr-1 my-1" style="text-align: left; padding-left: 15px;">- Hệ trục chân vịt</p>
                                <%--<span class="my-1">đảm bảo.</span>--%>
                                <input class="ml-2" id="chanvit" required>
                                <a class="ml-2" onclick="XTT_HeTrucChanVit()" href="#" style="text-decoration: none;">(Xem tình trạng)</a>
                            </div>
                            <p class="mr-2" style="font-weight: bold; text-align: left;">b) Trang bị Vũ khí, khí tài</p>
                            <div class="row form-s2">
                                <p class="mr-1 my-1" style="text-align: left; padding-left: 15px;">- Vũ khí: Hệ thống vũ khí trên tàu</p>
                                <%--<span class="my-1">đầy đủ cơ số, hoạt động bình thường;</span>--%>
                                <input class="ml-2" id="vukhi" required>
                                <a class="ml-2" onclick="XTT_VuKhi()" href="#" style="text-decoration: none;">(Xem tình trạng)</a>
                            </div>
                            <p class="mr-2" style="text-align: left;">- Khí tài:</p>
                            <div class="row form-s2">
                                <p class="mr-1 my-1" style="text-align: left; padding-left: 15px;">+ Thiết bị Hàng hải: Các thiết bị khí tài Hàng hải</p>
                                <%-- <span class="my-1">hoạt động bình thường</span>--%>
                                <input class="ml-2" id="hanghai" required>
                                <p class="mr-1 my-1" style="text-align: left;">, hệ thống VSAT</p>
                                <%--  <span class="my-1">hoạt động ổn định, đường truyền thông suốt;</span>--%>
                                <input class="ml-2" id="vsat" required>
                                <a class="ml-2" onclick="XTT_HeThongVSAT()" href="#" style="text-decoration: none;">(Xem tình trạng)</a>
                            </div>
                            <div class="row form-s2">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">+ Thiết bị Thông tin liên lạc: Hoạt động</p>
                                <%--<span class="my-1">bình thường, đảm bảo thông tin liên lạc.</span>--%>
                                <input class="ml-2" id="lienlac" required>
                                <a class="ml-2" onclick="XTT_ThietBiThongTinLienLac()" href="#" style="text-decoration: none;">(Xem tình trạng)</a>
                            </div>
                            <p class="mr-2" style="font-weight: bold; text-align: left;">3. Kiến nghị, đề nghị</p>
                            <textarea rows="3" form="rpform" required style="width: 100%; padding: 5px; resize: none;" id="kiennghi"></textarea>
                            <p class="mr-2" style="text-align: left;">Cục Kỹ thuật tổng hợp, báo cáo./.</p>
                            <div class="row mt-3">
                                <div class="col-6" style="text-align: left;">
                                    <p class="text-italic text-bold">Nơi nhận:</p>
                                    <textarea rows="5" form="rpform" style="width: 100%; padding: 5px; resize: none;" id="noinhan1" required></textarea>
                                </div>
                                <div class="col-6">
                                    <textarea placeholder="(CHỨC VỤ)" rows="2" form="rpform" id="chucvu" required style="font-weight: bold; width: 100%; text-align: center; padding: 5px; resize: none;"></textarea>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <textarea placeholder="(Cấp bậc, Ký tên)" rows="1" form="rpform" id="kyten" required style="font-weight: bold; width: 100%; text-align: center; padding: 5px; resize: none;"></textarea>
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-6">
                                    <div class="btn-rp btn btn-secondary" onclick="xemTruoc();"><span class="bi-eye"></span>Xem trước</div>
                                </div>
                                <div class="col-6">
                                    <button type="submit" class="btn-rp btn btn-primary" onclick="xuatWordBCKyThuat();"><span class="bi-download"></span>Xuất báo cáo</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div id="baocao" style="display: flex; background-color:white;" hidden="hidden">
    <div class="btn btn-danger" onclick="tatXemTruoc()" style="
    position: absolute;
    margin-top: 5px;
    margin-left: calc(50% - 515px);
">
        X
    </div>
    <div id="contentptrTau" style="border: solid;width: 595.35pt;padding: 90px;margin: auto;" >
        <div class="WordSection1">
            <table class="MsoNormalTable" border="0" cellspacing="0" cellpadding="0" width="612"
                style='width: 459.0pt; border-collapse: collapse'>
                <tr style='height: 13.5pt'>
                    <td width="258" valign="top" style='width: 193.5pt; padding: 0in 5.4pt 0in 5.4pt; height: 13.5pt'>
                        <p class="MsoNormal" align="center" style='text-align: center'>
                            <span lang="VI">BỘ TƯ LỆNH CẢNH SÁT BIỂN</span>
                        </p>
                    </td>
                    <td width="354" valign="top" style='width: 265.5pt; padding: 0in 5.4pt 0in 5.4pt; height: 13.5pt'>
                        <p class="MsoNormal" align="center" style='text-align: center'>
                            <b><span lang="VI">CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</span></b><span lang="VI"> </span>
                        </p>
                    </td>
                </tr>
                <tr style='height: 22.9pt'>
                    <td width="258" valign="top" style='width: 193.5pt; padding: 0in 5.4pt 0in 5.4pt; height: 22.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center'>
                            <b><span id="donvi">CỤ<u>C KỸ TH</u>UẬT</span></b>
                        </p>
                    </td>
                    <td width="354" valign="top" style='width: 265.5pt; padding: 0in 5.4pt 0in 5.4pt; height: 22.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center'>
                            <b><span lang="VI">Độc L<u>ập – Tự Do – Hạnh P</u>húc</span></b><span lang="VI"> </span>
                        </p>
                    </td>
                </tr>
                <tr style='height: 26.1pt'>
                    <td width="258" valign="top" style='width: 193.5pt; padding: 0in 5.4pt 0in 5.4pt; height: 26.1pt'>
                        <p class="MsoNormal" align="center" style='text-align: center'>
                            <b><span lang="VI">&nbsp;</span></b><span
                                lang="VI">Số: <span id="soBC">2204</span>/</span>BC-KT
                        </p>
                    </td>
                    <td width="354" valign="top" style='width: 265.5pt; padding: 0in 5.4pt 0in 5.4pt; height: 26.1pt'>
                        <p class="MsoNormal" align="right" style='text-align: right'>
                            <i><span lang="VI">Hà Nội, ngày <span id="sp-day">12</span>&nbsp;tháng <span id="sp-month">7</span>&nbsp;năm <span id="sp-year">2022</span></span></i><span lang="VI"> </span>
                        </p>
                    </td>
                </tr>
            </table>
            <p class="MsoNormal" align="center" style='text-align: center'>
                <b><span style='font-size: 16.0pt'>BÁO CÁO</span></b>
            </p>
            <p class="MsoNormal" align="center" style='text-align: center'>
                <b><span id="tenBC">Tên báo cáo: Tình trạng kỹ thuật tàu CSB4002 phục vụ kiểm tra công tác triển khai thực hiện nhiệm vụ IUU khu vực …</span></b>
            </p>
            <p class="MsoNormal" align="center" style='text-align: center'>
                Kính gửi: <span id="kinhGuiBC">Tư lệnh Cảnh sát Biển</span>
            </p>
            <p class="MsoNormal" style='margin-top: 6.0pt; text-align: justify; text-indent: .25in'>
                <span id="canCu1BC">Căn
cứ Kế hoạch số 1986/KH-BTL ngày 11/3/2022 của BTL CSB về kiểm tra công
tác triển khai thực hiện nhiệm vụ IUU khu vực giáp ranh Việt Nam -
Thái Lan - Malaixia kết hợp kiểm tra các đơn vị tại Đảo Thổ Chu, Côn
Đảo</span>
            </p>
            <p class="MsoNormal" style='margin-top: 6.0pt; text-align: justify; text-indent: .25in'>
                <span id="cuncu2BC">Căn
cứ Tình trạng kỹ thuật của các tàu CSB 4031/BTL Vùng CSB 3, CSB 4039,
CSB 4035/BTL Vùng CSB 4</span>
            </p>
            <p class="MsoNormal" style='margin-top: 6.0pt; text-align: justify; text-indent: .25in'>
                Cục Kỹ thuật báo cáo như sau:
            </p>
            <p class="MsoListParagraph" style='margin-top: 12.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: .25in'>
                <b><span lang="VI">1.</span></b><b><span
                    lang="VI" style='font-size: 7.0pt'>&nbsp;&nbsp; </span>Thông số cơ bản của tàu <span id="tentau2">Tentau</span></b>
            </p>
            <table class="MsoTableGrid" border="0" cellspacing="0" cellpadding="0" width="613"
                style='width: 459.45pt; margin-left: -4.5pt; border-collapse: collapse; border: none'>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 16.9pt'>
                            - Chiều dài lớn nhất
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            L<sub>max</sub> = <span id="lmax">45.6</span> m;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.1pt'>
                            - Chiều rộng lớn nhất
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            B<sub>max</sub> = <span id="bmax">9.3</span> m;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.1pt'>
                            - Chiều cao mạn
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            H = <span id="hman">3.75</span> m;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Mớn nước
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph">Tm = <span id="tmonnuoc">5.3</span> m;</p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Máy chính
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            <span id="maychinhBC1">00</span> máy chính;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Vận tốc lớn nhất theo thiết
  kế
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph">v<sub>max</sub> = <span id="vmaxBC">45</span> hải lý/giờ;</p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Vận tốc kinh tế theo thiết
  kế
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            v<sub>kt</sub> = <span id="vktBC">45</span> hải lý/giờ;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Lượng chiếm nước đầy tải
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            D<sub>dt</sub> = <span id="ddtBC">176</span> tấn;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Số hệ trục chân vịt
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            <span id="chanvitBC">03</span> hệ trục;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Tầm hoạt động
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            <span id="tamhoatdong">2500</span> hải lý;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Thời gian hoạt động liên tục
  trên biển
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            <span id="tgianhd">30</span> ngày đêm;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Lượng dự trữ dầu cháy
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            <span id="dtdauchay">86,5</span> m<sub>­</sub><sup>3</sup>;
                        </p>
                    </td>
                </tr>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 17.0pt'>
                            - Lượng dự trữ dầu nhờn
                        </p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in'>
                            <span id="dtdaunhom">1,5</span> m<sub>­</sub><sup>3</sup>.
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoListParagraph" style='margin-top: 6.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: .25in'>
                <b><span lang="VI">2.</span></b><b><span
                    lang="VI" style='font-size: 7.0pt'>&nbsp;&nbsp; </span></b><b><span lang="VI">Tình
trạng kỹ thuật hiện nay của các tàu</span> <span id="tentau3">Tentau</span></b>
            </p>

            <p class="MsoListParagraph" style='margin-top: 6.0pt; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: .25in'>
                <b>a) Hệ động lực</b>
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                - <span id="maychinhBC2">03</span> máy chính
và hộp số đang hoạt động <span id="maychinhBC3">bình thường</span>, tốc độ các tàu đạt từ <span id="maychinhBC4">24</span> đến
<span id="maychinhBC5">28</span> M/h trong điều kiện sóng cấp <span id="maychinhBC6">3</span>;
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                - Máy phát điện,
hệ thống điện, hệ thống cứu hộ hoạt động <span id="mayphatdienBC">bình thường</span>;
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                - Các hệ thống
và thiết bị bổ trợ đang hoạt động <span id="hebotroBC">bình thường</span>;
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                - Thân vỏ <span id="thanvoBC">vẫn kín nước</span>;
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                - Hệ trục chân vịt <span id="chanvitBC2">đảm bảo</span>.
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: .25in'>
                <b>b) Trang bị Vũ khí, khí tài</b>
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                - Vũ khí: Hệ
thống vũ khí trên tàu <span id="vukhiBC">như nào</span>;
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                - Khí tài:
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                + Thiết bị Hàng
hải: Các thiết bị khí tài Hàng hải <span id="hanghai1BC">như nào</span>, hệ thống VSAT <span id="hanghai2BC">như nào</span>;
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                + Thiết bị Thông tin liên lạc: Hoạt động <span id="lienlacBC">như nào</span>.
            </p>

            <p class="MsoListParagraph" style='margin-bottom: 6.0pt; text-indent: .25in'>
                <b><span
                    lang="VI">3.</span></b><b><span lang="VI" style='font-size: 7.0pt'>&nbsp;&nbsp; </span>Kiến
nghị, đề nghị</b>
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                <span id="kiennghiBC">Kiến nghị không</span>.
            </p>

            <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: justify; text-indent: .25in'>
                Cục kỹ thuật tổng hợp,báo cáo./.
            </p>

            <p class="MsoNormal" style='margin-top: 7.0pt'><span lang="VI">&nbsp;</span></p>

            <table class="MsoTableGrid" border="0" cellspacing="0" cellpadding="0" width="613"
                style='width: 459.45pt; margin-left: -4.5pt; border-collapse: collapse; border: none'>
                <tr>
                    <td width="312" valign="top" style='width: 3.25in; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 3.7pt'>
                            <b><i>Nơi nhận:</i></b>
                        </p>
                        <p class="MsoListParagraph" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-indent: 3.7pt'>
                            <span id="noinhanBC">- Các nơi nhận.</span>
                        </p>
                        <p class="MsoNormal" style='margin-bottom: 6.0pt'>&nbsp;</p>
                    </td>
                    <td width="301" valign="top" style='width: 225.45pt; padding: 0in 5.4pt 0in 5.4pt'>
                        <p class="MsoListParagraph" align="center" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: center'>
                            <b><span id="chukyBC1">KT. CHỦ NHIỆM PHÓ CHỦ NHIỆM</span></b>
                        </p>
                        <p class="MsoListParagraph" align="center" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: center'>
                            <b>&nbsp;</b>
                        </p>
                        <p class="MsoListParagraph" align="center" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: center'>
                            <b>&nbsp;</b>
                        </p>
                        <p class="MsoListParagraph" align="center" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: center'>
                            <b>&nbsp;</b>
                        </p>
                        <p class="MsoListParagraph" align="center" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: center'>
                            <b>&nbsp;</b>
                        </p>
                        <p class="MsoListParagraph" align="center" style='margin-top: 0in; margin-right: 0in; margin-bottom: 6.0pt; margin-left: 0in; text-align: center'>
                            <b><span id="chukyBC2">Đại tá Nguyễn Văn Toán</span></b>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" style='margin-top: 7.0pt'><span lang="VI">&nbsp;</span></p>

        </div>
    </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        var Ship_ID;
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }

        $(document).ready(function () {
            Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                history.back();
            }
            else {
                Load_ThoiGian();
                Load_TTCoBanTau();
            }

        });

        function Load_ThoiGian() {
            if (date.getDate() < 10) {
                $('#header-date').html('0' + date.getDate());
                $('#sp-day').html('0' + date.getDate());
            }
            else {
                $('#header-date').html(date.getDate());
                $('#sp-day').html(date.getDate());
            }
            if (Number(date.getMonth()) + 1 < 10) {
                $('#header-month').html('0' + (Number(date.getMonth()) + 1));
                $('#sp-month').html('0' + (Number(date.getMonth()) + 1));
            }
            else {
                $('#header-month').html(Number(date.getMonth()) + 1);
                $('#sp-month').html(Number(date.getMonth()) + 1);
            }

            $('#header-year').html(date.getFullYear());
            $('#sp-year').html(date.getFullYear());
            debugger
        }
        var shipName = "";
        function Load_TTCoBanTau() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    shipName = data.TTCOBAN.SOHIEU;
                    $("#ship_name").html(data.TTCOBAN.SOHIEU);
                    $("#ship_name_tt").html(data.TTCOBAN.SOHIEU);
                    $("#title").html('BÁO CÁO KỸ THUẬT TÀU ' + data.TTCOBAN.SOHIEU);
                    
                    $("#Lmax").html(data.KT.Lmax); // Chiều dài lớn nhất
                    $("#Bmax").html(data.KT.Bmax); // Chiều rộng lớn nhất
                    $("#Htb").html(data.KT.Htb); // Chiều cao mạn
                    $("#Tm").html(data.MN.Tm); // Mớn nước

                    //Thiếu số lượng Máy chính

                    $("#vmax").html(data.VT.Vmax); // Vận tốc lớn nhất theo thiết kế
                    $("#vkt").html(data.VT.Vkt); // Vận tốc kinh tế theo thiết kế

                    $("#Ddt").html(data.GIANNUOC.Dmax);// chưa chắc chắn

                    //Thiếu số lượng Hệ chục chân vịt

                    $("#sohaily").html(data.KNHD.H1); // Tầm hoạt động
                    $("#songaydem").html(data.KNHD.Tm); // Thời gian hoạt động liên tục trên biển
                    $("#dauchay").html(data.LDT.DCSL); // Lượng dự trữ dầu cháy
                    $("#daunhon").html(data.LDT.DNSL); // Lượng dự trữ dầu nhờn


                    // thông tin trên báo cáo

                    $("#tentau2").html(data.TTCOBAN.SOHIEU);
                    $("#tentau3").html(data.TTCOBAN.SOHIEU);
                    $("#lmax").html(data.KT.Lmax); // Chiều dài lớn nhất
                    $("#bmax").html(data.KT.Bmax); // Chiều rộng lớn nhất
                    $("#hman").html(data.KT.Htb); // Chiều cao mạn
                    $("#tmonnuoc").html(data.MN.Tm); // Mớn nước

                    //Thiếu số lượng Máy chính

                    $("#vmaxBC").html(data.VT.Vmax); // Vận tốc lớn nhất theo thiết kế
                    $("#vktBC").html(data.VT.Vkt); // Vận tốc kinh tế theo thiết kế

                    $("#ddtBC").html(data.GIANNUOC.Dmax);// chưa chắc chắn

                    //Thiếu số lượng Hệ chục chân vịt

                    $("#tamhoatdong").html(data.KNHD.H1); // Tầm hoạt động
                    $("#tgianhd").html(data.KNHD.Tm); // Thời gian hoạt động liên tục trên biển
                    $("#dtdauchay").html(data.LDT.DCSL); // Lượng dự trữ dầu cháy
                    $("#dtdaunhom").html(data.LDT.DNSL); // Lượng dự trữ dầu nhờn
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychinh?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    var i = 0;
                    $.each(data, function (key, item) {
                        i = i + 1;
                    });
                    debugger
                    if (0 < i < 10) {

                        $("#maychinh_list").html('0' + i + ' máy chính;');
                        $("#count_mc").html('0' + i);

                        $("#maychinhBC1").html('0' + i);
                        $("#maychinhBC2").html('0' + i);
                    }
                    else {
                        $("#count_mc").html(i);
                        $("#maychinhBC1").html(i);
                        $("#maychinhBC2").html(i);
                    }



                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });

            //$.ajax({
            //    type: "GET",
            //    url: linkapi + "v2/hetrucchanvit?id=" + Ship_ID,
            //    dataType: "json",
            //    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

            //    },
            //    success: function (data) {
            //        var i = 0;
            //        $.each(data, function (key, item) {
            //            i = i + 1;
            //        });
            //        debugger
            //        if (0 < i < 10) {
            //            $("#sohetruc").html('0' + i + ' hệ trục;');
            //        }
            //        else {
            //            $("#sohetruc").html(i + ' hệ trục;');
            //        }


            //    }, error: function (ret) {
            //        console.log('errorGET');
            //    },
            //    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


            //    },
            //});
        }
        function Load_TT_KyThuat() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    $("#ship_name").html(data.TTCOBAN.SOHIEU);
                    $("#Lmax").html(data.KT.Lmax); // Chiều dài lớn nhất
                    $("#Bmax").html(data.KT.Bmax); // Chiều rộng lớn nhất
                    $("#H").html(data.KT.Htb); // Chiều cao mạn
                    $("#Tm").html(data.MN.Tm); // Mớn nước

                    //Thiếu số lượng Máy chính

                    $("#vmax").html(data.VT.Vmax); // Vận tốc lớn nhất theo thiết kế
                    $("#vkt").html(data.VT.Vkt); // Vận tốc kinh tế theo thiết kế

                    $("#Ddt").html(data.GIANNUOC.Dmax);// chưa chắc chắn

                    //Thiếu số lượng Hệ chục chân vịt

                    $("#sohaily").html(data.KNHD.H1); // Tầm hoạt động
                    $("#songaydem").html(data.KNHD.Tm); // Thời gian hoạt động liên tục trên biển
                    $("#dauchay").html(data.LDT.DCSL); // Lượng dự trữ dầu cháy
                    $("#daunhon").html(data.LDT.DNSL); // Lượng dự trữ dầu nhờn

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });


        }
        function Load_list_MC() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychinh?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    var i = 0;
                    $.each(data, function (key, item) {
                        i = i + 1;
                    });
                    debugger
                    if (0 < i < 10) {
                        $("#maychinh_list").html('0' + i + 'máy chính');
                    }
                    else if (i >= 10) {
                        $("#maychinh_list").html(i + 'máy chính');
                    }


                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });
        }

        function XTT_MayChinh() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function XTT_MayPhatDien() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function XTT_CacHeThongVaThietBiBoTro() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function XTT_ThanVo() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function XTT_HeTrucChanVit() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function XTT_VuKhi() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function XTT_HeThongVSAT() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function XTT_ThietBiThongTinLienLac() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function loadBCKyThuat() {
            $("#soBC").html($("#so").val());
            $("#tenBC").html($("#tenbaocao").val());
            $("#kinhGuiBC").html($("#kinhgui").val());
            $("#canCu1BC").html($("#cancu1").val());
            $("#cuncu2BC").html($("#cancu2").val());
            $("#maychinhBC3").html($("#imaychinh1").val());
            $("#maychinhBC4").html($("#imaychinh2").val());
            $("#maychinhBC5").html($("#imaychinh3").val());
            $("#maychinhBC6").html($("#imaychinh4").val());
            $("#mayphatdienBC").html($("#iphatdien").val());
            $("#hebotroBC").html($("#hebotro").val());
            $("#thanvoBC").html($("#thanvo").val());
            $("#chanvitBC2").html($("#chanvit").val());
            $("#vukhiBC").html($("#vukhi").val());
            $("#hanghai1BC").html($("#hanghai").val());
            $("#hanghai2BC").html($("#vsat").val());
            $("#lienlacBC").html($("#lienlac").val());
            $("#kiennghiBC").html($("#kiennghi").val());
            $("#noinhanBC").html($("#noinhan1").val());
            $("#chukyBC1").html($("#chucvu").val());
            $("#chukyBC2").html($("#kyten").val());
        }
        function xuatWordBCKyThuat() {
            loadBCKyThuat();
            var form = document.getElementById("rpform");
            if (form.checkValidity() == true) {
                exportToWord(`contentptrTau`, `Báo cáo kỹ thuật tàu ` + shipName, `portrait`);
            }
        }
        function xemTruoc() {
            loadBCKyThuat();
            $("#baocao").removeAttr("hidden", "hidden");
        }
        function tatXemTruoc() {
            $("#baocao").attr("hidden", "hidden");
        }
    </script>
</asp:Content>
