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
        #left-rp p {
            margin-top: 20px;
            margin-bottom: 20px;
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
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 15px;">
            <div class="section-header" style="background-color: #fff;">
                <div class="title">
                    <h4 id="title" style="color: black; margin: 0">FORM BÁO CÁO KỸ THUẬT TÀU</h4>
                    <div class="blue-hr"></div>
                </div>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                    <div class="breadcrumb-item"><a href="FormBaoCao" style="color: #01b5f9; font-size: 18px;">Form báo cáo</a></div>
                </div>
            </div>
            <form action="#" id="rpform">
                <div class="section-content" style="font-family:'Times New Roman', Times, serif";>
                    <div class="row" style="justify-content: center;">
                        <div class="col-3">
                            <div class="rp-header text-center" style="display: flex; flex-direction: column">
                                <p>BỘ TƯ LỆNH CẢNH SÁT BIỂN</p>
                                <p class="text-bold">CỤC KỸ THUẬT</p>
                                <div class="horizontal-line" style="width: 20%;"></div>
                                <p>Số: <span>2224</span>/BC-KT</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="rp-header text-center" style="display: flex; flex-direction: column">
                                <p class="text-bold">CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</p>
                                <p class="text-bold">Độc lập - Tự do - Hạnh phúc</p>
                                <div class="horizontal-line" style="width: 30%;"></div>
                                <p class="text-italic">Hà Nội, ngày <span>19</span> tháng <span>03</span> năm <span>2022</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="justify-content: center;">
                        <div class="text-center col-7">
                            <p class="text-bold">BÁO CÁO</p>
                            <textarea rows="3" cols="70" form="rpform" required style="text-align: center; padding: 5px; resize: none;"></textarea>
                            <div class="horizontal-line" style="width: 25%;"></div>
                            <div class="my-2" style="display: flex; flex-direction: row; justify-content: center;">
                                <p>Kính gửi:</p>
                                <input class="ml-2"/>
                            </div>
                            <div class="my-2" style="display: flex; flex-direction: row;">
                                <p>Căn cứ:</p>
                                <textarea class="ml-2" rows="3" cols="70" form="rpform" required style="padding: 5px; resize: none;"></textarea>
                            </div>
                            <div class="my-2" style="display: flex; flex-direction: row;">
                                <p>Căn cứ:</p>
                                <textarea class="ml-2" rows="3" cols="70" form="rpform" required style="padding: 5px; resize: none;"></textarea>
                            </div>
                            <p style="text-align: left;">Cục Kỹ thuật báo cáo như sau:</p>
                            <div class="row">
                                <p class="mr-2" style="font-weight: bold; text-align: left;">1. Thông số cơ bản của tàu</p>
                                <input class="px-2" style="width: 100px;"/>
                            </div>
                            <div class="row">
                                <div id="left-rp" class="col-6" style="text-align: left;">
                                    <p>- Chiều dài lớn nhất</p>
                                    <p>- Chiều rộng lớn nhất</p>
                                    <p>- Chiều cao mạn</p>
                                    <p>- Mớn nước</p>
                                    <p>- Máy chính</p>
                                    <p>- Vận tốc lớn nhất theo thiết kế</p>
                                    <p>- Vận tốc kinh tế theo thiết kế</p>
                                    <p>- Lượng chiếm nước đầy tải</p>
                                    <p>- Số hệ trục chân vịt</p>
                                    <p>- Tầm hoạt động</p>
                                    <p>- Thời gian hoạt động liên tục trên biển</p>
                                    <p>- Lượng dự trữ dầu cháy</p>
                                    <p>- Lượng dự trữ dầu nhờn</p>
                                </div>
                                <div class="col-6">
                                    <div class="row my-3">
                                        <p class="mr-2" style="font-weight: bold; text-align: left;">L<sup style="vertical-align: text-bottom;">max</sup> = </p>
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">m;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="font-weight: bold; text-align: left;">B<sup style="vertical-align: text-bottom;">max</sup> = </p>
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">m;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="font-weight: bold; text-align: left;">H = </p>
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">m;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="font-weight: bold; text-align: left;">T<sup style="vertical-align: text-bottom;">m</sup> = </p>
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">m;</p>
                                    </div>
                                    <div class="row my-3">
                                        <input class="px-2" style="width: 250px;"/>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="font-weight: bold; text-align: left;">v<sup style="vertical-align: text-bottom;">max</sup> = </p>
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">hải lý/giờ;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="font-weight: bold; text-align: left;">v<sup style="vertical-align: text-bottom;">kt</sup> = </p>
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">hải lý/giờ;</p>
                                    </div>
                                    <div class="row my-3">
                                        <p class="mr-2" style="font-weight: bold; text-align: left;">D<sup style="vertical-align: text-bottom;">dt</sup> = </p>
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">tấn;</p>
                                    </div>
                                    <div class="row my-3">
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">hệ trục;</p>
                                    </div>
                                    <div class="row my-3">
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">hải lý;</p>
                                    </div>
                                    <div class="row my-3">
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">ngày đêm;</p>
                                    </div>
                                    <div class="row my-3">
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">m<sup>3</sup>;</p>
                                    </div>
                                    <div class="row my-3">
                                        <input class="px-2" style="width: 100px;"/>
                                        <p class="ml-2" style="font-weight: bold; text-align: left;">m<sup>3</sup>;</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <p class="mr-2" style="font-weight: bold; text-align: left;">2. Tình trạng kỹ thuật hiện nay của các tàu</p>
                                <input class="px-2" style="width: 300px;"/>
                            </div>
                            <p class="mr-2" style="font-weight: bold; text-align: left;">a) Hệ động lực</p>
                            <div class="row">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">- 03 máy chính</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                                <p class="mx-2 my-1" style="text-align: left;">và hộp số đang hoạt động</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                                <p class="mr-2 my-1" style="text-align: left;">, tốc độ các tàu đạt từ</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                                <p class="mx-2 my-1" style="text-align: left;">đến</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                                <p class="mx-2 my-1" style="text-align: left;">M/h trong điều kiện sóng cấp</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                            </div>
                            <div class="row">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">- Máy phát điện, hệ thống điện, hệ thống cứu hộ hoạt động</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                            </div>
                            <div class="row">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">- Các hệ thống và thiết bị bổ trợ đang hoạt động</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                            </div>
                            <div class="row">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">- Thân vỏ</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                            </div>
                            <div class="row">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">- Hệ trục chân vịt</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                            </div>
                            <p class="mr-2" style="font-weight: bold; text-align: left;">b) Trang bị Vũ khí, khí tài</p>                            
                            <div class="row">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">- Vũ khí: Hệ thống vũ khí trên tàu</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                            </div>
                            <p class="mr-2" style="text-align: left;">- Khí tài:</p>                            
                            <div class="row">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">+ Thiết bị Hàng hải: Các thiết bị khí tài Hàng hải</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                                <p class="mr-2 my-1" style="text-align: left;">, hệ thống VSAT</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                            </div>
                            <div class="row">
                                <p class="mr-2 my-1" style="text-align: left; padding-left: 15px;">+ Thiết bị Thông tin liên lạc</p>
                                <input class="px-2 my-1" style="width: 100px;"/>
                            </div>
                            <p class="mr-2" style="font-weight: bold; text-align: left;">3. Kiến nghị, đề nghị</p>                            
                            <textarea rows="3" form="rpform" required style="width: 100%; padding: 5px; resize: none;"></textarea>
                            <p class="mr-2" style="text-align: left;">Cục Kỹ thuật tổng hợp, báo cáo./.</p>                            
                            <div class="row mt-3">
                                <div class="col-6" style="text-align: left;">
                                    <p class="text-italic text-bold">Nơi nhận:</p>
                                    <p>- Như trên;</p>
                                    <p>- Bộ Tham mưu;</p>
                                    <p>- Lưu: VT, CKT, Q04.</p>
                                    <p class="text-bold" style="font-size: 18px;">M</p>
                                </div>
                                <div class="col-6">
                                    <textarea placeholder="(CHỨC VỤ)" rows="2" form="rpform" required style="width: 100%; text-align: center; padding: 5px; resize: none;"></textarea>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <textarea placeholder="(Cấp bậc, Ký tên)" rows="1" form="rpform" required style="width: 100%; text-align: center; padding: 5px; resize: none;"></textarea>
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-6">
                                    <button class="btn-rp btn btn-secondary"><span class="bi-eye"></span>Xem trước</button>
                                </div>
                                <div class="col-6">
                                    <button class="btn-rp btn btn-primary"><span class="bi-download"></span>Xuất báo cáo</button>
                                </div>
                            </div>
                        </div>
                    </div>                   
                </div>
            </form>           
        </div>
    </div>
</asp:Content>
