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
                            <div class="breadcrumb-item active"><a href="Manage_ship.aspx" style="color: #01b5f9">Quản lý tàu vùng N</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-12">
                            <div class="accordion" id="accorShipEquiment">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headMainEngine">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collMainEngine">4 - Máy chính </button>
                                    </h2>
                                    <div id="collMainEngine" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <div class="section-header">
                                                <div class="col-12">
                                                    <table id="table_maychinh" class="table table-bordered table-striped table-md" style="width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>STT</th>
                                                                <th>TÊN MÁY</th>
                                                                <th>NĂM SẢN XUẤT</th>
                                                                <th>XUÁT XỨ</th>
                                                                <th>MÃ LỰC</th>
                                                                <th>WASTE</th>
                                                                <th>TỐC ĐỘ</th>
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
                                    <h2 class="accordion-header" id="headSecondaryEngine">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collSecondaryEngine">2 - Máy phụ </button>
                                    </h2>
                                    <div id="collSecondaryEngine" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headScrew">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collScrew">2 - Hệ trục chân vịt </button>
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
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collWeapon">1 - Khí tài, hàng hải </button>
                                    </h2>
                                    <div id="collWeapon" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headMotoBoat">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collMotoBoat">1 - Xuồng công tác </button>
                                    </h2>
                                    <div id="collMotoBoat" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headAnchor">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collAnchor">4 - Neo, tời neo, xích neo </button>
                                    </h2>
                                    <div id="collAnchor" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headLifeSaving">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collLifeSaving">2 - Trang bị cứu sinh </button>
                                    </h2>
                                    <div id="collLifeSaving" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headOther">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collOther">0 - Các trang bị khác </button>
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
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collSupplies">0 - Vật tư bảo đảm </button>
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

    <div class="modal fade" id="model-add-OtherEquipment" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Thêm trang bị khác</h6>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix " >
                            
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
                        <input type="hidden" class="form-control" id="uOtherEquipmentID" >
                        <div class="row clearfix " >
                            
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentType" name="TenDayDu"  required value="">
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

                        <div class="row clearfix " >
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

    <div class="modal fade" id="model-update-supply" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Sửa thông tin vật tư bảo đảm</h6>
                    </div>
                    <div class="modal-body">                                        
                        <input type="hidden" class="form-control" id="usupplyID" >
                        <div class="row clearfix " >
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
                                        <input type="text" class="form-control" id="usupplyType" name="TenDayDu"  required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyOrigin" name="TenDayDu"  required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyState" name="TenDayDu"  required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" id="usupplyQuantity" name="TenDayDu"  required value="">
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
        $(document).ready(function () {
            var Ship_ID = getParameterByName('Ship_ID');
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
                url: linkapi + "ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    $("#title").html("THIẾT BỊ TRÊN TÀU - " + data.Name);
                }, error: function (ret) {
                    console.log('errorGET');
                },
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
                url: linkapi + "main_engine?imo=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN MÁY</th><th>NAM SẢN XUẤT</th><th>XUẤT XỨ</th><th>MÃ LỰC</th><th>WASTE</th><th>TỐC ĐỘ</th><th>ĐƯỜNG KÍNH</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.ProductionYear + "</td><td>" + item.Origin + "</td><td>" + item.Power + "</td><td>" + item.Waste + "</td><td>" + item.Speed + "</td><td>" + item.Diameter + '</td>' + '<td><button class="btn btn-info btn_Edit_main_engine" data-toggle="modal" data-target="#model-infordetail-ship"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Sửa thông tin" ></i></button><button class="btn btn-info btn_Delete_main_engine" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_maychinh').html(tabletext);
                    console.log(linkapi + "main_engine?imo=" + Ship_ID);
                    loadTableMain_Engine();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');
                    $('#model-edit-user').addClass('hidden');
                },
            });
        };
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
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Width + "</td><td>" + item.BasicDiameter + "</td><td>" + item.BehindDiameter + "</td><td>" + item.MiddleDiameter + "</td><td>" + item.FrontDiameter + "</td><td>" + item.Diameter + '</td>' + '<td><button class="btn btn-info btn_Edit_main_engine" data-toggle="modal" data-target="#model-infordetail-ship"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Sửa thông tin" ></i></button><button class="btn btn-info btn_Delete_main_engine" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
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
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Type + "</td><td>" + item.Origin + "</td><td>" + item.State + "</td><td>" + item.Quantity + "</td><td>" + item.Unit + "</td><td>" + item.Note + '</td>' + '<td><button class="btn btn-info" onclick="btn_update_OtherEquipment(`' + item.ID + '`,`' + item.Type + '`,`' + item.Origin + '`,`' + item.State + '`,`' + item.Quantity + '`,`' + item.Unit + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-OtherEquipment"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Sửa thông tin" ></i></button><button class="btn btn-info" onclick="btn_delete_OtherEquipment(`' + item.ID + '`)" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
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
                    ID: getParameterByName('Ship_ID')
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
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Code + "</td><td>" + item.Type + "</td><td>" + item.Origin + "</td><td>" + item.State + "</td><td>" + item.Quantity + "</td><td>" + item.Unit + "</td><td>" + item.Note + '</td>' + '<td><button class="btn btn-info" onclick="btn_update_suply(`' + item.ID + '`,`' + item.Code + '`,`' + item.Type + '`,`' + item.Origin + '`,`' + item.State + '`,`' + item.Quantity + '`,`' + item.Unit + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-supply"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Sửa thông tin" ></i></button><button class="btn btn-info" onclick="btn_delete_supply(`' + item.ID + '`)" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
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

