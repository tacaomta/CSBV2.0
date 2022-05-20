<%@ Page Title="Quản lý tàu" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Manage_ship.aspx.cs" Inherits="CSB.Page_Master.Manage_ship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <style>
        .panel {
            margin-bottom: 20px;
            background-color: #fff;
        }

        .panel-success {
            border-radius: 4px;
            border: 1px solid #ced4da;
        }

        .panel-heading {
            padding: 5px 15px;
        }

        .panel-title {
            margin-top: 0;
            margin-bottom: 0;
            font-size: 16px;
            color: inherit;
        }

        .pull-left {
            float: left !important;
        }

        .panel-success > .panel-heading {
            color: #3c4676;
            background-color: #d8e8f0;
            border-color: #c6e2e9;
        }

        .wrap-layout {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap-reverse;
        }
    </style>

    <div id="form1">
        <div class="section-header">
            <div class="">
                <div class="section">
                    <div class="section-header">
                        <h4 id="title" style="color: black; margin: 0">QUẢN LÝ TÀU - VÙNG 1</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ </a></div>
                            / <div class="breadcrumb-item active"><a href="Manage_ship?vung=1" style="color: #01b5f9; font-size: 18px;"> Quản lý tàu</a></div>
                        </div>
                    </div>
                    <div class="mainMenu" style="justify-content: flex-start">
                        <ul class="mainMenu-list">
                            <li><a id="Vung1" class="a_menu" href="../Page_Master/Manage_ship?vung=1">VÙNG 1</a></li>
                            <li><a id="Vung2" class="a_menu" href="../Page_Master/Manage_ship?vung=2">VÙNG 2</a></li>
                            <li><a id="Vung3" class="a_menu" href="../Page_Master/Manage_ship?vung=3">VÙNG 3</a></li>
                            <li><a id="Vung4" class="a_menu" href="../Page_Master/Manage_ship?vung=4">VÙNG 4</a></li>
                            <li><a class="a_menu" href="../Page_Master/Null.aspx">CÁC ĐƠN VỊ TRỰC THUỘC</a></li>
                        </ul>
                    </div>
                    <br />
                    <div class="section-header">
                        <div class="col-md-12" style="padding: 0">
                            <table id="tableship" class="table table-bordered table-striped table-md" style="width: 100%">
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-infordetail-ship" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document" style="max-width: 70%;">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thông tin chi tiết của tàu</h6>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="Ship_ID">
                        <div class="clearfix ">
                            <div style="display: flex;">
                                <div class="imageupload panel panel-success" style="min-height: 300px; padding: 0;">
                                    <div class="panel-heading clearfix">
                                        <h3 class="panel-title pull-left">Hình ảnh</h3>
                                    </div>
                                    <div class="file-tab panel-body">
                                        <img class="img-responsive" id="upload_imageproduct" src="../Image/Ships/boat.jpg" style="margin: 8% 2%; height: 200px; max-width: 300px;" />
                                        <label class="btn btn-default btn-file">
                                            <span>Tải lên</span>
                                            <input type="file" name="Anh" id="Anh" onchange="PreviewImage()">
                                        </label>
                                        <%--<button type="button" class="btn btn-dejfault" id="delete" onclick="Xoa()">Xóa</button>--%>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding: 0;">
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Tên tàu     <span style="color: red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="TenTau" name="TenTau" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Số hiệu     <span style="color: red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="SoHieu" name="SoHieu" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Nơi cấp   : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NoiCap" name="NoiCap" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Ngày Cấp    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NgayCap" name="NgayCap" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Năm hạ thủy    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NamHaThuy" name="NamHaThuy" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Hải đội  : </strong></label>
                                            <div class="col-md-6">
                                                <select class="form-control" id="HaiDoi">
                                                </select>
                                            </div>
                                            <div class="wrap-layout col-md-2" style="padding-left: 0px;">
                                                <a href="#" class="view" title="Xem thông tin hải đội" onclick=""><i class="material-icons"></i></a>
                                                <a href="#" class="add" title="Thêm hải đội" onclick=""><i class="material-icons">add_circle</i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Thuyền trưởng   : </strong></label>
                                            <div class="col-md-6">
                                                <select class="form-control" id="ThuyenTruong">
                                                </select>
                                            </div>
                                            <div class="wrap-layout col-md-2" style="padding-left: 0px;">
                                                <a href="#" class="view" title="Xem thông tin thuyền trưởng" onclick=""><i class="material-icons"></i></a>
                                                <a href="#" class="add" title="Thêm thuyền trưởng" onclick=""><i class="material-icons">add_circle</i></a>
                                            </div>

                                        </div>
                                    </div>



                                </div>
                            </div>
                            <div style="display: flex; padding-top: 25px">
                                <div class="col-md-6" style="padding: 0px;">

                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Lượng nhiên liệu tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NhienLieuToiDa" name="NhienLieuToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Lượng nước ngọt tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NuocNgotToiDa" name="NuocNgotToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Tốc độ(hải lý/giờ)   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TocDo" name="TocDo" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>TG hành trình tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TG_HanhTrinhToiDa" name="TG_HanhTrinhToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Ngày tạo   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NgayTao" name="NgayTao" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Ngày cập nhật  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NgayCapNhat" name="NgayCapNhat" value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding: 0px;">
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Số thuyền viên   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="SoThuyenVien" name="SoThuyenVien" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Trọng tải    : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TrongTai" name="TrongTai" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Chiều rộng (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="ChieuRong" name="ChieuRong" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Chiều dài (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="ChieuDai" name="ChieuDai" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Vật liệu  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="VatLieu" name="VatLieu" required value="">
                                            </div>
                                        </div>
                                    </div>

                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Mướn nước (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="MonNuoc" name="MonNuoc" required value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_Ship()" type="button" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
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

    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        var vung = getParameterByName('vung');
        var vung_id;
        $(document).ready(function () {
            if (vung == null | vung == 1) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8C';
            }
            else if (vung == 2) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8B';
            }
            else if (vung == 3) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8D';
            }
            else if (vung == 4) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8E';
            }
            $('#title').text('QUẢN LÝ TÀU - VÙNG ' + vung);
            loadDataListShips(vung_id);

        });
        var selectedValue_Captain_ID;
        var selectedValue_Flotilla_ID;
        function loadDataListShips(vung_id) {
            $.ajax({
                type: "GET",
                url: linkapi + "ships_region?id=" + vung_id,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN TÀU</th><th>SỐ HIỆU</th><th>SỐ THUYỀN VIÊN</th><th>NĂM HẠ THỦY</th><th>TRỌNG TẢI</th><th>TỐC ĐỘ</th><th title='Thời gian hành trình tối đa'>TG HT TỐI ĐA</th><th  title='Xem thiết bị trên tàu'>XEM THIẾT BỊ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.RegistrationNumber + "</td><td>" + item.Personel + "</td><td>" + item.LaunchYear + "</td><td>" + item.Weight + "</td><td>" + item.Speed + "</td><td>" + item.Time + '</td>' + '<td><a href="#" class="view" title="Xem trang bị tàu" onclick="View_EquimentShip(`' + item.ID + '`)"><i class="material-icons">&#xE417;</i></a></td>' + '<td><div style="width: max-content;"><a href="#" style="color:blue" title="Xuất file Word" onclick="xuatWordTau(`' + item.ID + '`)"><i class="material-icons">text_snippet</i></a><a href="#" style="color:green" title="Xuất file Excel" onclick="xuatExcelTau(`' + item.ID + '`)"><i class="material-icons">description</i></a><a href="#" style="color:orange" title="Xuất file pdf" onclick="xuatPdfTau(`' + item.ID + '`)"><i class="material-icons">picture_as_pdf</i></a><a href="#" style="color:revert" title="In báo cáo" onclick="inBCTau(`' + item.ID + '`)"><i class="material-icons">print</i></a><a href="#" class="edit" title="Sửa" onclick="ViewInforShip(`' + item.ID + '`)" data-toggle="modal" ><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_ship(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tableship').html(tabletext);
                    loadTableShip();
                    //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');
                    $('#tableship_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listship()" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-refresh"></span> &nbsp;Load dữ liệu</button> <button onclick="btn_addship()" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-plus-sign"></span> &nbsp;Thêm mới tàu</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo </button><ul class="dropdown-menu" role="menu"><li><a href="#">In báo cáo</a></li><li><a href="#" >Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div></div>');
                    $('#tableship_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    //$('#loader').addClass('hidden');
                    $('#model-edit-user').addClass('hidden');
                },
            });
        };
        function btn_Load_listship() {
            location.reload(true);
        }
        function btn_addship() {
            //$('#add_Ship_ID').val('');
            ////$("#Anh").val(data.Name);
            //$("#MainContentAdmin_addTenTau").val('');
            //$("#add_SoHieu").val('');
            //$("#add_NoiCap").val('');
            //$("#add_NgayCap").val('');
            //$("#add_NamHaThuy").val('');
            //$("#add_TrongTai").val('');
            //$("#add_NhienLieuToiDa").val('');
            //$("#add_NuocNgotToiDa").val('');
            //$("#add_SoThuyenVien").val('');
            //list_captain('', 'add_ThuyenTruong');
            //$("#add_TocDo").val('');
            //$("#add_TG_HanhTrinhToiDa").val('');
            //$("#add_NgayTao").val('');
            //$("#add_NgayCapNhat").val('');
            //$("#add_ChieuDai").val('');
            //$("#add_ChieuRong").val('');
            //$("#add_VatLieu").val('');
            //list_flotilla('', 'add_HaiDoi');
            //$("#add_MonNuoc").val('');

            window.location = baseaddress + "Page_Master/Add_Ship";
        }
        //$("#form_add_ship").submit(function () {
        //    debugger;
        //    var id_Flotilla = $('#add_HaiDoi').val();
        //    var id_Captain = $('#add_ThuyenTruong').val();
        //    var New_Ship = {
        //        Image: $('#MainContentAdmin_addTenTau').val() + ".jpg",
        //        Name: $('#MainContentAdmin_addTenTau').val(),
        //        RegistrationNumber: $('#add_SoHieu').val(),
        //        Weight: $('#add_TrongTai').val(),
        //        Fuel: $('#add_NhienLieuToiDa').val(),
        //        Water: $('#add_NuocNgotToiDa').val(),
        //        Personel: $('#add_SoThuyenVien').val(),
        //        Captain: {
        //            ID: id_Captain
        //        },
        //        Speed: $("#add_TocDo").val(),
        //        Time: $("#add_TG_HanhTrinhToiDa").val(),
        //        LaunchYear: $("#add_NamHaThuy").val(),
        //        RegistrationDate: $("#add_NgayCap").val(),
        //        RegistrationPlace: $("#add_NoiCap").val(),
        //        Width: $("#add_ChieuDai").val(),
        //        Wide: $("#add_ChieuRong").val(),
        //        Draught: $("#add_MonNuoc").val(),
        //        Material: $("#add_VatLieu").val(),
        //        Created: $("#add_NgayTao").val(),
        //        Updated: strDate,
        //        Flotilla: {
        //            Id: id_Flotilla
        //        }
        //    };
        //    console.log(New_Ship);
        //    $.ajax({
        //        type: "POST",
        //        url: linkapi + "ship_insert",
        //        dataType: "json",
        //        data: JSON.stringify(New_Ship),
        //        contentType: "application/json",

        //        beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
        //            $('#loader').removeClass('hidden');
        //        },
        //        success: function (data) {
        //            toastSuccess("Thành công", "Thêm tàu thành công.");
        //            $('#model-add-ship').modal("hide");
        //        }, error: function (ret) {
        //            console.log(ret.responseJSON.Message);
        //            toastError("Thất bại! Có thể số hiệu tàu này đã tồn tại", ret.responseJSON.Message);
        //            loadDataListShips(vung_id);
        //        },
        //        complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
        //            $('#loader').addClass('hidden');
        //        },
        //    });
        //});

        //function Add_Ship() {
        //    var id_Flotilla = $('#add_HaiDoi').val();
        //    var id_Captain = $('#add_ThuyenTruong').val();
        //    var New_Ship = {
        //        Image: 'imgs\\default.jpg',
        //        Name: $('#addTenTau').val(),
        //        RegistrationNumber: $('#add_SoHieu').val(),
        //        Weight: $('#add_TrongTai').val(),
        //        Fuel: $('#add_NhienLieuToiDa').val(),
        //        Water: $('#add_NuocNgotToiDa').val(),
        //        Personel: $('#add_SoThuyenVien').val(),
        //        Captain: {
        //            ID: id_Captain
        //        },
        //        Speed: $("#add_TocDo").val(),
        //        Time: $("#add_TG_HanhTrinhToiDa").val(),
        //        LaunchYear: $("#add_NamHaThuy").val(),
        //        RegistrationDate: $("#add_NgayCap").val(),
        //        RegistrationPlace: $("#add_NoiCap").val(),
        //        Width: $("#add_ChieuDai").val(),
        //        Wide: $("#add_ChieuRong").val(),
        //        Draught: $("#add_MonNuoc").val(),
        //        Material: $("#add_VatLieu").val(),
        //        Created: $("#add_NgayTao").val(),
        //        Updated: strDate,
        //        Flotilla: {
        //            Id: id_Flotilla
        //        }
        //    };
        //    console.log(New_Ship);
        //    $.ajax({
        //        type: "POST",
        //        url: linkapi + "ship_insert",
        //        dataType: "json",
        //        data: JSON.stringify(New_Ship),
        //        contentType: "application/json",

        //        beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
        //            $('#loader').removeClass('hidden');
        //        },
        //        success: function (data) {
        //            toastSuccess("Thành công", "Thêm tàu thành công.");
        //            $('#model-add-ship').modal("hide");
        //        }, error: function (ret) {
        //            console.log(ret.responseJSON.Message);
        //            toastError("Thất bại! Có thể số hiệu tàu này đã tồn tại", ret.responseJSON.Message);
        //            loadDataListShips(vung_id);
        //        },
        //        complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
        //            $('#loader').addClass('hidden');
        //        },
        //    });
        //}
        function ViewInforShip(ID) {
            window.location = baseaddress + "Page_Master/Update_Ship?Ship_ID=" + ID;
            //debugger;
            //$.ajax({
            //    type: "GET",
            //    url: linkapi + "ship_detail?id=" + ID,
            //    dataType: "json",
            //    success: function (data) {
            //        $('#Ship_ID').val(data.ID);
            //        $("#upload_imageproduct").attr("src", "../Image/Ships/" + data.Image);
            //        $("#TenTau").val(data.Name);
            //        $("#SoHieu").val(data.RegistrationNumber);
            //        $("#NoiCap").val(data.RegistrationPlace);
            //        $("#NgayCap").val(data.RegistrationDate);
            //        $("#NamHaThuy").val(data.LaunchYear);
            //        $("#TrongTai").val(data.Weight);
            //        $("#NhienLieuToiDa").val(data.Fuel);
            //        $("#NuocNgotToiDa").val(data.Water);
            //        $("#SoThuyenVien").val(data.Personel);
            //        list_captain(data.Captain.ID, 'ThuyenTruong');
            //        $("#TocDo").val(data.Speed);
            //        $("#TG_HanhTrinhToiDa").val(data.Time);
            //        $("#NgayTao").val(data.Created);
            //        $("#NgayCapNhat").val(data.Updated);
            //        $("#ChieuDai").val(data.Width);
            //        $("#ChieuRong").val(data.Wide);
            //        $("#VatLieu").val(data.Material);
            //        list_flotilla(data.Flotilla.Id, 'HaiDoi');
            //        $("#MonNuoc").val(data.Draught);
            //    }, error: function (ret) {
            //        console.log('errorGET');
            //    },
            //    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
            //    },
            //});

        }
        function list_flotilla(id_flotilla, string_HaiDoi) {
            $.ajax({
                type: "GET",
                url: linkapi + "flotillas",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $.each(data, function (key, item) {

                        if (item.Id == id_flotilla) {
                            $('#' + string_HaiDoi).append($('<option>', {
                                selected: true,
                                value: item.Id,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_HaiDoi).append($('<option>', {
                                selected: false,
                                value: item.Id,
                                text: item.Name
                            }));
                        }

                    });
                    //debugger
                    if (id_flotilla == '') {
                        $('#' + string_HaiDoi).append($('<option>', {
                            selected: true,
                            value: data[0].Id,
                            text: data[0].Name
                        }));
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function list_captain(id_captain, string_thuyentruong) {
            $.ajax({
                type: "GET",
                url: linkapi + "captains",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_thuyentruong).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_captain) {
                            $('#' + string_thuyentruong).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.Fullname
                            }));
                        }
                        else {
                            $('#' + string_thuyentruong).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.Fullname
                            }));
                        }

                    });
                    if (id_captain == '') {
                        $('#' + string_thuyentruong).append($('<option>', {
                            selected: true,
                            value: data[0].ID,
                            text: data[0].Fullname
                        }));
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function loadTableShip() {
            $('table[id=tableship]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 30 },
                        { name: 'TÊN TÀU', width: 80 },
                        { name: 'SỐ HIỆU', width: 100 },
                        { name: 'SỐ THUYỀN VIÊN', width: 100 },
                        { name: 'NĂM HẠ THỦY', width: 80 },
                        { name: 'TRỌNG TẢI', width: 60 },
                        { name: 'TỐC ĐỘ', width: 60 },
                        { name: 'TG HT TỐI ĐA', width: 80 },
                        { name: 'XEM THIẾT BỊ', width: 80 },
                        { name: 'TÁC VỤ', width: 40 },
                    ],
                    "columnDefs": [
                        {
                            "targets": [0, 3, 4, 5, 6, 7, 8, 9],
                            "searchable": false,
                        },
                        {
                            "targets": [5, 6, 7, 8, 9],
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
        function View_EquimentShip(ID_Ship) {
            window.location = baseaddress + "Page_Master/Ship_equipment2?Ship_ID=" + ID_Ship;
        }
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        //function PreviewImage() {
        //    var oFReader = new FileReader();
        //    if (document.getElementById("Anh").files[0] == null) alert("1");
        //    oFReader.readAsDataURL(document.getElementById("Anh").files[0]);

        //    oFReader.onload = function (oFREvent) {
        //        document.getElementById("upload_imageproduct").src = oFREvent.target.result;
        //    };
        //};
        //function Xoa() {
        //    $('#Anh').attr('disabled', '');
        //    document.getElementById("upload_imageproduct").src = ""
        //}
        function delete_ship(ship_id) {
            //debugger;
            let text = "Bạn có chắc muốn xóa thông tin tàu này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "ship_delete/?id=" + ship_id,
                    type: "DELETE",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Xóa thông tin tàu thành công.");
                        loadDataListShips(vung_id);
                    }, error: function (ret) {
                        toastError("Lỗi", "Xóa thông tin tàu không thành công");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                    },
                })
            }
            else {

            }
        }

        function Update_Ship() {
            var id_Flotilla = $('#HaiDoi').val();
            var id_Captain = $('#ThuyenTruong').val();
            var New_Ship = {
                ID: $('#Ship_ID').val(),
                Image: 'imgs\\default.jpg',
                Name: $('#TenTau').val(),
                RegistrationNumber: $('#SoHieu').val(),
                Weight: $('#TrongTai').val(),
                Fuel: $('#NhienLieuToiDa').val(),
                Water: $('#NuocNgotToiDa').val(),
                Personel: $('#SoThuyenVien').val(),
                Captain: {
                    ID: id_Captain
                },
                Speed: $("#TocDo").val(),
                Time: $("#TG_HanhTrinhToiDa").val(),
                LaunchYear: $("#NamHaThuy").val(),
                RegistrationDate: $("#NgayCap").val(),
                RegistrationPlace: $("#NoiCap").val(),
                Width: $("#ChieuDai").val(),
                Wide: $("#ChieuRong").val(),
                Draught: $("#MonNuoc").val(),
                Material: $("#VatLieu").val(),
                Created: $("#NgayTao").val(),
                Updated: strDate,
                Flotilla: {
                    Id: id_Flotilla
                }
            };
            console.log(New_Ship);
            $.ajax({
                type: "PUT",
                url: linkapi + "ship_update",
                dataType: "json",
                data: JSON.stringify(New_Ship),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập tàu thành công.");
                    loadDataListShips(vung_id);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-infordetail-ship').modal("hide");
                },
            });
        }
        var shipName;
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
        function xuatWordTau(idTau) {
            loadBaoCao(idTau);
            /*exportToWord(`contentptrTau`, `Thông tin chung tàu ` + shipName);*/
        }

        function xuatExcelTau(idTau) {
            loadBaoCao(idTau);
        }

        function xuatPdfTau(idTau) {
            loadBaoCao(idTau);
            /*exportToPdf(`contentTau`, `Thông tin máy chính tàu ` + shipName);*/
        }

        function inBCTau(idTau) {
            loadBaoCao(idTau);
            /* In_Content(`contentTau`);*/
        }
        function exportToWord(element, filename) {
            var preHtml = "<html xmlns:  o='urn:schemas-microsoft-com:office:office' xmlns:w='urn:schemas-microsoft-com:office:word' xmlns='http://www.w3.org/TR/REC-html40'><head><meta charset='utf-8'><title>Export HTML To Doc</title></head><body>";
            var postHtml = "</body></html>";
            var html = preHtml + document.getElementById(element).innerHTML + postHtml;
            var blob = new Blob(['\ufeff', html], {
                type: 'application/msword'
            });
            // Specify link url
            var url = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(html);

            // Specify file name
            filename = filename ? filename + '.doc' : 'document.doc';

            // Create download link element
            var downloadLink = document.createElement("a");

            document.body.appendChild(downloadLink);
            if (navigator.msSaveOrOpenBlob) {
                navigator.msSaveOrOpenBlob(blob, filename);
            } else {
                // Create a link to the file
                downloadLink.href = url;
                // Setting the file name
                downloadLink.download = filename;
                //triggering the function
                downloadLink.click();
            }
            document.body.removeChild(downloadLink);
        }

        function In_Content(strid) {
            var prtContent = document.getElementById(strid);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=800,height=800');
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
        }
    </script>
</asp:Content>
