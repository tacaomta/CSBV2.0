<%@ Page Title="Thiết bị trên tàu" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Ship_equiment.aspx.cs" Inherits="CSB.Page_Master.Ship_equiment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/Ship_equiment.css" rel="stylesheet" />
    <style>
        .accordion-item {
            margin: 3px 0 0 0;
            border-radius: 3px !important;
            border: 1px solid rgb(4 39 94 / 13%)
        }

            .accordion-item:not(:first-of-type) {
                border-top: 1px solid rgb(4 39 94 / 13%)
            }

        .accordion-button:not(.collapsed) {
            color: #ffffff;
            background-color: #63aff7;
            border-color: #c6e2e9;
            box-shadow: inset 0 -1px 0 rgb(4 3 98 / 13%);
        }

        .accordion-button {
            background-color: #63aff717;
            color: #3a4787;
            font-weight: bold;
            font-size: 16px;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <div id="form1">
        <div class="section-header">
            <div class="col-12">
                <div class="section">
                    <div class="section-header" style="margin-bottom: 2%">
                        <h4 id="title" style="color: black; margin: 0">THIẾT BỊ TRÊN TÀU - TÀU CỨU HỘ XH123</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="Manage_ship.aspx" style="color: #01b5f9">Quản lý tàu</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-12">
                            <div class="accordion" id="accorShipEquiment">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headMainEngine">
                                        <button id="btn_MayChinh" type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collMainEngine">4 - Máy chính </button>
                                    </h2>
                                    <div id="collMainEngine" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <div class="section-header">
                                                <div class="col-12">
                                                    <table id="table_maychinh" class="table table-bordered table-striped table-md" style="width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>STT</th>
                                                                <th>LOẠI MÁY</th>
                                                                <th>NĂM SẢN XUẤT</th>
                                                                <th>XUÁT XỨ</th>
                                                                <th>CÔNG XUẤT(CV)</th>
                                                                <th>ĐỊNH MỨC TIÊU THỤ(l/h)</th>
                                                                <th>VÒNG QUAY LỚN NHÂT(v/p)</th>
                                                                <th>SỐ XY LANH</th>
                                                                <th>ĐK XY LANH</th>
                                                                <th>GHI CHÚ</th>
                                                                <th>TÁC VỤ</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Tiger Nixon</td>
                                                                <td>System Architect</td>
                                                                <td>Edinburgh</td>
                                                                <td>61</td>
                                                                <td>2011/04/25</td>
                                                                <td>$320,800</td>
                                                                <td>System Architect</td>
                                                                <td>
                                                                    <a href="#"><i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                                                </td>
                                                            </tr>

                                                        </tbody>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headSecondaryEngine">
                                        <button type="button" id="btn_MayPhu" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collSecondaryEngine">2 - Máy phụ </button>
                                    </h2>
                                    <div id="collSecondaryEngine" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <div class="section-header">
                                                <div class="col-12">
                                                    <table id="tableSecondaryEngine" class="table table-bordered table-striped table-md" style="width: 100%">
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headScrew">
                                        <button type="button" id="btn_ChanVit" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collScrew">2 - Hệ trục chân vịt </button>
                                    </h2>
                                    <div id="collScrew" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <div class="section-header">
                                                <div class="col-12">
                                                    <table id="table_chanvit" class="table table-bordered table-striped table-md" style="width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>STT</th>
                                                                <th>TÊN</th>
                                                                <th>CHIỀU RỘNG</th>
                                                                <th>ĐK CƠ BẢN</th>
                                                                <th>ĐK SAU</th>
                                                                <th>ĐK GIỮA</th>
                                                                <th>ĐK TRƯỚC</th>
                                                                <th>ĐƯỜNG KÍNH</th>
                                                                <th>TÁC VỤ</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Tiger Nixon</td>
                                                                <td>System Architect</td>
                                                                <td>Edinburgh</td>
                                                                <td>61</td>
                                                                <td>2011/04/25</td>
                                                                <td>$320,800</td>
                                                                <td>System Architect</td>
                                                                <td>
                                                                    <a href="#"><i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                                                </td>
                                                            </tr>

                                                        </tbody>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headWeapon">
                                        <button type="button" id="btn_KhiTai" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collWeapon">1 - Khí tài, hàng hải </button>
                                    </h2>
                                    <div id="collWeapon" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headMotoBoat">
                                        <button type="button" id="btn_XuongCT" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collMotoBoat">1 - Xuồng công tác </button>
                                    </h2>
                                    <div id="collMotoBoat" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headAnchor">
                                        <button type="button" id="btn_Neo" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collAnchor">4 - Neo, tời neo, xích neo </button>
                                    </h2>
                                    <div id="collAnchor" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headLifeSaving">
                                        <button type="button" id="btn_TBCuuSinh" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collLifeSaving">2 - Trang bị cứu sinh </button>
                                    </h2>
                                    <div id="collLifeSaving" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headOther">
                                        <button type="button" id="btn_TBKhac" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collOther">0 - Các trang bị khác </button>
                                    </h2>
                                    <div id="collOther" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <div class="section-header">
                                                <div class="col-12">
                                                    <table id="tableOtherEquipment" class="table table-bordered table-striped table-md" style="width: 100%">
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headSupplies">
                                        <button type="button" id="btn_VatTu" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collSupplies">0 - Vật tư bảo đảm </button>
                                    </h2>
                                    <div id="collSupplies" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <div class="section-header">
                                                <div class="col-12">
                                                    <table id="tableSupplies" class="table table-bordered table-striped table-md" style="width: 100%">
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-MainEngine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Thêm máy chính</h6>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Loại máy    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_LoaiMay" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Năm sản xuất    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_NSX" name="NamSanXuat" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_XuatXu" name="XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Công xuất (CV)    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_CongXuat" name="CongXuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Định mức tiêu thụ (l/h)     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_DinhMucTT" name="DinhMucTieuThu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Vòng quay max (v/p)    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_VongQuayMax" name="VongQuayMax" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số xy lanh   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_SoXyLanh" name="SoXyLanh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Đk xy lanh   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_DkXyLanh" name="DuongKinhXyLanh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ghi chú    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="add_MainEngine_GhiChu" name="GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_Add_MayChinh" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_MainEngine()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-MainEngine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Sửa thông tin máy chính</h6>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="update_MainEngine_ID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Loại máy   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_LoaiMay" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Năm sản xuất    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_NSX" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Công xuất    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_CongXuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Định mức tiêu thụ    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_DinhMucTT" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Vòng quay max    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_VongQuayMax" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số xy lanh   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_SoXyLanh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>ĐK xy lanh   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_DkXyLanh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ghi chú   : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="update_MainEngine_GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdMainEngine" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_MainEngine()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-add-SecondaryEngine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Thêm máy phụ</h6>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Động cơ diesel     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineName" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Năm sản xuất     : </strong></label>
                                    <div class="col-7">
                                        <input type="number" class="form-control" id="aSecondaryEngineProductionYear" name="TenDayDu" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Công suất (KW)     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEnginePower" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Định mức tiêu thụ (I/h)     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineWaste" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Vòng quay lớn nhất (V/P)    : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineSpeed" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Máy phát điện     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineMachine" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Năm sản xuất     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineYear" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineOrigin2" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Công suất (KW)     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aSecondaryEnginePower2" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddSecondaryEngine" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_SecondaryEngine()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-SecondaryEngine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Sửa thông tin vật tư bảo đảm</h6>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="uSecondaryEngineID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineType" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineState" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineQuantity" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineUnit" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineNote" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdSecondaryEngine" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_SecondaryEngine()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-add-OtherEquipment" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Thêm trang bị khác</h6>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentType" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentState" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentQuantity" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentUnit" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentNote" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddOtherEquipment" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_OtherEquipment()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-OtherEquipment" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Sửa thông tin vật tư bảo đảm</h6>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="uOtherEquipmentID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentType" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentState" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentQuantity" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentUnit" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentNote" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdOtherEquipment" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_OtherEquipment()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-add-supply" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Thêm vật tư bảo đảm</h6>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Mã vật tư     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="asupplyCode" name="TenDayDu" placeholder="Nhập mã vật tư" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="asupplyType" name="TenDayDu" placeholder="Nhập loại trang bị" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="asupplyOrigin" name="TenDayDu" placeholder="Nhập xuất xứ" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="asupplyState" name="TenDayDu" placeholder="Nhập trình trạng" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="asupplyQuantity" name="TenDayDu" placeholder="Nhập số lượng" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="asupplyUnit" name="TenDayDu" placeholder="Nhập đơn vị tính" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="asupplyNote" name="TenDayDu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_Addsupply" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Supply()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-supply" tabindex="-2" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Sửa thông tin vật tư bảo đảm</h6>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="usupplyID">
                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Mã vật tư     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyCode" name="TenDayDu" placeholder="Nhập mã vật tư" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyType" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyState" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyQuantity" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyUnit" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyNote" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_Updsupply" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_Supply()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        var Ship_ID;
        $(document).ready(function () {
            Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                window.location = "http://localhost:44347/Page_Master/Manage_ship?vung=1";
            }
            else {
                $('#loader').removeClass('hidden');
                loadInforShip(Ship_ID);
                loadDataList_Main_Engine(Ship_ID);
                loadDataList_Screw_System(Ship_ID);
                loadDataList_Other_Equipment(Ship_ID);
                loadDataList_Supply(Ship_ID);
                $('#loader').addClass('hidden');
            }

        });
        function loadInforShip(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "ship_overview?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');

                },
                success: function (data) {
                    $("#title").html("THIẾT BỊ TRÊN TÀU - " + data.Ship.Name);
                    $('#btn_MayChinh').html(data.MainEngine + " - Máy chính");
                    $('#btn_MayPhu').html(data.SecondaryEngine + " - Máy phụ");
                    $('#btn_ChanVit').html(data.Screw + " - Hệ trục chân vịt");
                    $('#btn_KhiTai').html(data.Weapon + " - Khí tài, Hàng hải");
                    $('#btn_XuongCT').html(data.MotoBoat + " - Xuồng công tác");
                    $('#btn_Neo').html(data.Anchor + " - Neo, tời, xích neo");
                    $('#btn_TBCuuSinh').html(data.LifeSaving + " - Trang bị cứu sinh");
                    $('#btn_TBKhac').html(data.Other + " - Các trang bị khác");
                    $('#btn_VatTu').html(data.Supplies + " - Vật tư bảo đảm");
                }, error: function (ret) {
                    console.log('errorGET');
                }, complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');
                }
            });

        }
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        // ===================================== MAIN_ENGINE========================================
        function loadTableMain_Engine() {
            $('table[id=table_maychinh]').each(function () {
                var table1 = $(this).DataTable({
                    'destroy': true,
                    lengthChange: false,
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

        function loadDataList_Main_Engine(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "main_engines?imo=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>LOẠI MÁY</th><th>NĂM SẢN XUẤT</th><th>XUẤT XỨ</th><th>CÔNG XUẤT(CV)</th><th>ĐỊNH MỨC TIÊU THỤ(l/h)</th><th>VÒNG QUAY LỚN NHẤT (v/p)</th><th>SỐ XY LANH</th><th>ĐK XY LANH</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.ProductionYear + "</td><td>" + item.Origin + "</td><td>" + item.Power + "</td><td>" + item.Waste + "</td><td>" + item.Speed + "</td><td>" + item.Pittong + "</td><td>" + item.Diameter + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa"onclick="btn_update_MainEngine(`' + item.ID + '`,`' + item.Name + '`,`' + item.ProductionYear + '`,`' + item.Origin + '`,`' + item.Power + '`,`' + item.Waste + '`,`' + item.Speed + '`,`' + item.Pittong + '`,`' + item.Diameter + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-MainEngine" ><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="btn_delete_MainEngine(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_maychinh').html(tabletext);
                    console.log(linkapi + "main_engines?imo=" + Ship_ID);
                    loadTableMain_Engine();
                    $('#table_maychinh_wrapper .row .col-sm-12').first().html('<button id="btn_addMayChinh" onclick="btn_addMayChinh()" class="btn btn-info btn-lg col-6" data-toggle="modal" data-target="#model-add-MainEngine" style="height: 35px; padding - top: 4px;margin - top: -4px;">Thêm máy chính</button>');
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');
                    $('#model-edit-user').addClass('hidden');
                },
            });
        };

        function Add_MainEngine() {

            var New_MainEngine = {
                Name: $("#add_MainEngine_LoaiMay").val(),
                ProductionYear: $("#add_MainEngine_NSX").val(),
                Origin: $("#add_MainEngine_XuatXu").val(),
                Power: $("#add_MainEngine_CongXuat").val(),
                Waste: $("#add_MainEngine_DinhMucTT").val(),
                Speed: $("#add_MainEngine_VongQuayMax").val(),
                Pittong: $("#add_MainEngine_SoXyLanh").val(),
                Diameter: $("#add_MainEngine_DkXyLanh").val(),
                Ship: {
                    ID: Ship_ID,
                },
                Note: $("#add_MainEngine_GhiChu").val(),
                Time: null,
                State: null
            };
            debugger
            $.ajax({
                type: "POST",
                url: linkapi + "insert_main_engine",
                dataType: "json",
                data: JSON.stringify(New_MainEngine),
                contentType: "application/json",

                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    toastSuccess("Thành công", "Thêm máy chính thành công.");
                    loadDataList_Main_Engine(getParameterByName('Ship_ID'));
                    $('#model-add-MainEngine').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
        function btn_update_MainEngine(ID, Name, ProductionYear, Origin, Power, Waste, Speed, Pittong, Diameter, Note) {
            $('#update_MainEngine_ID').val(ID);
            $('#update_MainEngine_LoaiMay').val(Name);
            $('#update_MainEngine_NSX').val(ProductionYear);
            $('#update_MainEngine_XuatXu').val(Origin);
            $('#update_MainEngine_CongXuat').val(Power);
            $('#update_MainEngine_DinhMucTT').val(Waste);
            $('#update_MainEngine_VongQuayMax').val(Speed);
            $('#update_MainEngine_SoXyLanh').val(Pittong);
            $('#update_MainEngine_DkXyLanh').val(Diameter);
            $('#update_MainEngine_GhiChu').val(Note);
        }
        function btn_addMayChinh() {
            $('#add_MainEngine_LoaiMay').val('');
            $('#add_MainEngine_NSX').val('');
            $('#add_MainEngine_XuatXu').val('');
            $('#add_MainEngine_CongXuat').val('');
            $('#add_MainEngine_DinhMucTT').val('');
            $('#add_MainEngine_VongQuayMax').val('');
            $('#new_SoXyLanh').val('');
            $('#add_MainEngine_DkXyLanh').val('');
            $('#add_MainEngine_GhiChu').val('');
        }
        function Update_MainEngine() {
            var New_MainEngine = {
                ID: $('#update_MainEngine_ID').val(),
                Name: $("#update_MainEngine_LoaiMay").val(),
                ProductionYear: $("#update_MainEngine_NSX").val(),
                Origin: $("#update_MainEngine_XuatXu").val(),
                Power: $("#update_MainEngine_CongXuat").val(),
                Waste: $("#update_MainEngine_DinhMucTT").val(),
                Speed: $("#update_MainEngine_VongQuayMax").val(),
                Pittong: $("#update_MainEngine_SoXyLanh").val(),
                Diameter: $("#update_MainEngine_DkXyLanh").val(),
                Ship: {
                    ID: Ship_ID,
                },
                Note: $("#update_MainEngine_GhiChu").val(),
                Time: null,
                State: null
            };
            debugger
            $.ajax({
                type: "PUT",
                url: linkapi + "update_main_engine",
                dataType: "json",
                data: JSON.stringify(New_MainEngine),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thông tin máy chính thành công.");
                    loadDataList_Main_Engine(Ship_ID);
                    $('#model-update-MainEngine').modal("hide");
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_delete_MainEngine(ID) {
            let text = "Bạn có chắc muốn xóa máy chính này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_main_engine?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Main_Engine(Ship_ID);
                    toastSuccess("Thành công", "Xóa máy chính thành công.");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa máy chính không thành công");
                })
            } else {

            }
        }
        // ===================================== ScrewSystem ========================================
        function loadTableScrew_System() {
            $('table[id=table_chanvit]').each(function () {
                var table1 = $(this).DataTable({
                    'destroy': true,
                    lengthChange: false,
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

        function loadDataList_Screw_System(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "screw_system?imo=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN</th><th>CHIỀU RỘNG</th><th>ĐK CƠ BẢN</th><th>ĐK SAU</th><th>ĐK GIỮA</th><th>ĐK TRƯỚC</th><th>ĐƯỜNG KÍNH</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Width + "</td><td>" + item.BasicDiameter + "</td><td>" + item.BehindDiameter + "</td><td>" + item.MiddleDiameter + "</td><td>" + item.FrontDiameter + "</td><td>" + item.Diameter + '</td>' + '<td><button class="btn btn-info " data-toggle="modal" data-target="#model-infordetail-ship"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Sửa thông tin" ></i></button><button class="btn btn-info btn_Delete_main_engine" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_chanvit').html(tabletext);
                    console.log(linkapi + "screw_system?imo=" + Ship_ID);
                    loadTableScrew_System();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');
                    $('#model-edit-user').addClass('hidden');
                },
            });
        };

        // ===================================== OtherEquipment ========================================
        function loadDataList_Other_Equipment(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "other_equipment?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>LOẠI TRANG BỊ</th><th>XUẤT XỨ</th><th>TÌNH TRẠNG</th><th>SỐ LƯỢNG</th><th>ĐƠN VỊ TÍNH</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Type + "</td><td>" + item.Origin + "</td><td>" + item.State + "</td><td>" + item.Quantity + "</td><td>" + item.Unit + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_OtherEquipment(`' + item.ID + '`,`' + item.Type + '`,`' + item.Origin + '`,`' + item.State + '`,`' + item.Quantity + '`,`' + item.Unit + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-OtherEquipment"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_OtherEquipment(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tableOtherEquipment').html(tabletext);
                    loadTable('tableOtherEquipment');
                    $('#tableOtherEquipment_wrapper .row .col-sm-12').first().html('<button id="btn_addOtherEquipment" onclick="btn_addOtherEquipment()" class="btn btn-info btn-lg col-6" data-toggle="modal" data-target="#model-add-OtherEquipment" style="height: 35px; padding - top: 4px;margin - top: -4px;">Thêm trang bị khác</button>');
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function Add_OtherEquipment() {
            var OtherEquipment = {
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                Type: $("#aOtherEquipmentType").val(),
                Origin: $("#aOtherEquipmentOrigin").val(),
                State: $("#aOtherEquipmentState").val(),
                Quantity: $("#aOtherEquipmentQuantity").val(),
                Unit: $("#aOtherEquipmentUnit").val(),
                Note: $("#aOtherEquipmentNote").val(),
            };
            $.ajax({
                type: "POST",
                url: linkapi + "insert_equipment",
                dataType: "json",
                data: JSON.stringify(OtherEquipment),
                contentType: "application/json",

                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    toastSuccess("Thành công", "Thêm trang bị thành công.");
                    loadDataList_Other_Equipment(getParameterByName('Ship_ID'));
                    $('#model-add-OtherEquipment').modal("hide");
                    loadInforShip(getParameterByName('Ship_ID'));
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_update_OtherEquipment(ID, Type, Origin, State, Quantity, Unit, Note) {
            $('#uOtherEquipmentID').val(ID);
            $('#uOtherEquipmentType').val(Type);
            $('#uOtherEquipmentOrigin').val(Origin);
            $('#uOtherEquipmentState').val(State);
            $('#uOtherEquipmentQuantity').val(Quantity);
            $('#uOtherEquipmentUnit').val(Unit);
            $('#uOtherEquipmentNote').val(Note);
        }

        function btn_addOtherEquipment() {
            $('#aOtherEquipmentType').val('');
            $('#aOtherEquipmentOrigin').val('');
            $('#aOtherEquipmentState').val('');
            $('#aOtherEquipmentQuantity').val('');
            $('#aOtherEquipmentUnit').val('');
            $('#aOtherEquipmentNote').val('');
        }

        function Update_OtherEquipment() {
            var OtherEquipment = {
                Ship: {
                    ID: Ship_ID
                },
                Type: $("#uOtherEquipmentType").val(),
                Origin: $("#uOtherEquipmentOrigin").val(),
                State: $("#uOtherEquipmentState").val(),
                Quantity: $("#uOtherEquipmentQuantity").val(),
                Unit: $("#uOtherEquipmentUnit").val(),
                Note: $("#uOtherEquipmentNote").val(),
                ID: $("#uOtherEquipmentID").val(),
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_equipment",
                dataType: "json",
                data: JSON.stringify(OtherEquipment),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thông tin trang bị thành công.");
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-OtherEquipment').modal("hide");
                    loadDataList_Other_Equipment(getParameterByName('Ship_ID'));
                },
            });
        }

        function btn_delete_OtherEquipment(ID) {
            let text = "Bạn có chắc muốn xóa trang bị này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_equipment/?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Other_Equipment(getParameterByName('Ship_ID'));
                    toastSuccess("Thành công", "Xóa trang bị thành công.");
                    loadInforShip(getParameterByName('Ship_ID'));
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa trang bị không thành công");
                })
            } else {

            }
        }

        // ===================================== Supplies ========================================
        function loadDataList_Supply(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "supply?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>MÃ VẬT TƯ</th><th>LOẠI TRANG BỊ</th><th>XUẤT XỨ</th><th>TÌNH TRẠNG</th><th>SỐ LƯỢNG</th><th>ĐƠN VỊ TÍNH</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Code + "</td><td>" + item.Type + "</td><td>" + item.Origin + "</td><td>" + item.State + "</td><td>" + item.Quantity + "</td><td>" + item.Unit + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_suply(`' + item.ID + '`,`' + item.Code + '`,`' + item.Type + '`,`' + item.Origin + '`,`' + item.State + '`,`' + item.Quantity + '`,`' + item.Unit + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-supply"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="btn_delete_supply(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tableSupplies').html(tabletext);
                    loadTable('tableSupplies');
                    $('#tableSupplies_wrapper .row .col-sm-12').first().html('<button id="btn_addsuply" onclick="btn_addsuply()" class="btn btn-info btn-lg col-6" data-toggle="modal" data-target="#model-add-supply" style="height: 35px; padding - top: 4px;margin - top: -4px;">Thêm vật tư bảo đảm</button>');
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function Add_Supply() {
            var supply = {
                Code: $("#asupplyCode").val(),
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                Type: $("#asupplyType").val(),
                Origin: $("#asupplyOrigin").val(),
                State: $("#asupplyState").val(),
                Quantity: $("#asupplyQuantity").val(),
                Unit: $("#asupplyUnit").val(),
                Note: $("#asupplyNote").val(),
            };
            $.ajax({
                type: "POST",
                url: linkapi + "insert_supply",
                dataType: "json",
                data: JSON.stringify(supply),
                contentType: "application/json",

                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    toastSuccess("Thành công", "Thêm vật tư bảo đảm thành công.");
                    loadDataList_Supply(getParameterByName('Ship_ID'));
                    $('#model-add-supply').modal("hide");
                    loadInforShip(getParameterByName('Ship_ID'));
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_update_suply(ID, Code, Type, Origin, State, Quantity, Unit, Note) {
            $('#usupplyID').val(ID);
            $('#usupplyCode').val(Code);
            $('#usupplyType').val(Type);
            $('#usupplyOrigin').val(Origin);
            $('#usupplyState').val(State);
            $('#usupplyQuantity').val(Quantity);
            $('#usupplyUnit').val(Unit);
            $('#usupplyNote').val(Note);
        }

        function btn_addsuply() {
            $('#asupplyCode').val('');
            $('#asupplyType').val('');
            $('#asupplyOrigin').val('');
            $('#asupplyState').val('');
            $('#asupplyQuantity').val('');
            $('#asupplyUnit').val('');
            $('#asupplyNote').val('');
        }

        function Update_Supply() {
            var supply = {
                Code: $("#usupplyCode").val(),
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                Type: $("#usupplyType").val(),
                Origin: $("#usupplyOrigin").val(),
                State: $("#usupplyState").val(),
                Quantity: $("#usupplyQuantity").val(),
                Unit: $("#usupplyUnit").val(),
                Note: $("#usupplyNote").val(),
                ID: $("#usupplyID").val(),
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_supply",
                dataType: "json",
                data: JSON.stringify(supply),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thông tin vật tư bảo đảm thành công.");
                    
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-supply').modal("hide");
                    loadDataList_Supply(getParameterByName('Ship_ID'));
                },
            });
        }

        function btn_delete_supply(ID) {
            let text = "Bạn có chắc muốn xóa vật tư bảo đảm này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_supply/?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Supply(getParameterByName('Ship_ID'));
                    toastSuccess("Thành công", "Xóa vật tư bảo đảm thành công.");
                    loadInforShip(getParameterByName('Ship_ID'));
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa vật tư bảo đảm không thành công");
                })
            } else {

            }
        }

        function loadTable(table_id) {
            $('table[id=' + table_id + ']').each(function () {
                var table1 = $(this).DataTable({
                    'destroy': true,
                    lengthChange: false,
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

    </script>
</asp:Content>

