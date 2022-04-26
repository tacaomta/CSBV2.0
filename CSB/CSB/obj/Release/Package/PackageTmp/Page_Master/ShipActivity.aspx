<%@ Page Title="Hoạt động tàu" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="ShipActivity.aspx.cs" Inherits="CSB.Page_Master.ShipActivity" %>
<asp:Content ID="ShipActivity" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <style>

.dropdown-menu {
    box-shadow: 0 10px 40px 0 rgba(51, 73, 94, 0.15);
    border: none;
    width: 200px;
}

    .dropdown-menu.show {
        display: block !important;
        cursor: pointer;
    }

    .dropdown-menu a {
        font-size: 20px;
    }

    .dropdown-menu .dropdown-title {
        text-transform: uppercase;
        font-size: 12px;
        letter-spacing: 1.5px;
        font-weight: 700;
        color: #191d21 !important;
        padding: 10px 20px;
        line-height: 20px;
        color: #98a6ad;
    }

    .dropdown-menu.dropdown-menu-sm a {
        font-size: 14px;
        letter-spacing: normal;
        padding: 10px 20px;
        color: #6c757d;
    }

a.dropdown-item {
    padding: 10px 20px;
    font-weight: 500;
    line-height: 1.2;
}

    a.dropdown-item:focus, a.dropdown-item:active, a.dropdown-item.active {
        background-color: #6777ef;
        color: #fff !important;
    }

    .dropdown-toggle::after {
        visibility: hidden !important;
    }

    </style>

    <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 style="color: black; margin: 0; margin-left: 15px;">THEO DÕI HOẠT ĐỘNG TÀU</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                        <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 18px;">Hoạt động tàu</a></div>
                    </div>
                </div>
                <div class="section-header" style="display: block;">
                    <div class="col-md-12">
                    <div class="section-body-card" style="color:black;margin-bottom: 20px;">
                        <div class="navalueRegion" style="display: flex">
                            <div class="form-group text-uppercase text-left" style="padding: 15px 5px 5px 5px;">
                                <h6>Vùng</h6>
                            </div>
                            <div class="">
                                <select id="selRegion" onchange="onchangeRegion(this.value)" valueue="" aria-controls="dataTables-example" class="form-control input-sm">
                                    <option value="5AEBB23FF45F3C235AFD86B510BF9E8C">Vùng 1</option>
                                    <option value="5AEBB23FF45F3C235AFD86B510BF9E8B">Vùng 2</option>
                                    <option value="5AEBB23FF45F3C235AFD86B510BF9E8D">Vùng 3</option>
                                    <option value="5AEBB23FF45F3C235AFD86B510BF9E8E">Vùng 4</option>
                                </select>
                            </div>
                        </div>
                        <div class="squadron" style="display: flex">
                            <div class="form-group text-uppercase text-left" style="padding: 15px 5px 5px 5px;">
                                <h6>Hải đoàn</h6>
                            </div>
                            <div class="">
                                <select id="selSquadron" onchange="onchangeSquadron(this.value)" valueue="" aria-controls="dataTables-example" class="form-control input-sm">
                                    <option value="">Vùng 1</option>
                                </select>
                            </div>
                        </div>
                        <div class="flotilla" style="display: flex">
                            <div class="form-group text-uppercase text-left" style="padding: 15px 5px 5px 5px;">
                                <h6>Hải đội</h6>
                            </div>
                            <div class="">
                                <select id="selFlotilla" onchange="onchangeFlotilla(this.value)" valueue="" aria-controls="dataTables-example" class="form-control input-sm">
                                    <option value="">Vùng 1</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <button class="btn btn-info btn-lg" onclick="ViewShipActivity()">Xem</button>
                        </div>
                    </div>

                    </div>
                    
                    <div class="section-body-card">
                        <div class="col-md-12">
                            <div class="card-donvi">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng tại đơn vị <span id="number-donvi"></span>
                                </p>
                                <div class="row">
                                    
                                </div>
                            </div>
                            <div class="card-trenbien">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng hoạt động trên biển <span id="number-trenbien"></span>
                                </p>
                                <div class="row">
                                   
                                </div>
                            </div>
                            <div class="card-nhamay">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng tại nhà máy <span id="number-nhamay"></span>
                                </p>
                                <div class="row">
                                    
                                </div>
                                    
                                </div>
                            <div class="card-suachua">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng sửa chữa, bảo quản tại đơn vị <span id="number-suachua"></span>
                                </p>
                                <div class="row">
                                    
                                </div>
                            </div>
                            <div class="card-trucsscd">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng trực SSCĐ tại đơn vị <span id="number-trucsscd"></span>
                                </p>
                                <div class="row">
                                    
                                </div>
                            </div>
                            <div class="card-haiquan">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng phối thuộc tại đơn vị Hải quân <span id="number-haiquan"></span>
                                </p>
                                <div class="row">
                                    
                                </div>
                            </div>
                            <div class="card-khac">
                                <p class="section-lead" style="font-size:18px; margin-left:1%">
                                    Tàu, xuồng ở vị trí khác <span id="number-khac"></span>
                                </p>
                                <div class="row">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-ship-info" tabindex="-1" role="dialog">
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
                                <div class="imageupload panel panel-success col-md-6" style="min-height: 300px; padding: 0;">
                                    <div class="panel-heading clearfix">
                                        <h3 class="panel-title pull-left">Hình ảnh</h3>
                                    </div>
                                    <div class="file-tab panel-body">
                                        <img class="img-responsive" id="upload_imageproduct" src="../Image/Ships/boat.jpg" style="margin: 8% 2%; height: 200px; max-width: 300px;" />
                                        <label class="btn btn-default btn-file">
                                            <span>Tải lên</span>
                                            <input type="file" name="Anh" id="Anh" onchange="PreviewImage()" disabled>
                                        </label>
                                        <%--<button type="button" class="btn btn-dejfault" id="delete" onclick="Xoa()">Xóa</button>--%>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding: 0;">
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Tên tàu     <span style="color: red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="TenTau" name="TenTau"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Số hiệu     <span style="color: red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="SoHieu" name="SoHieu"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Nơi cấp   : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NoiCap" name="NoiCap"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Ngày Cấp    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NgayCap" name="NgayCap"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Năm hạ thủy    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NamHaThuy" name="NamHaThuy"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Hải đội  : </strong></label>
                                            <div class="col-md-6">
                                                <select class="form-control" id="HaiDoi" disabled>
                                                </select>
                                            </div>
                                            <div class="wrap-layout col-md-2" style="padding-left: 0px;">
                                                <a href="#" class="view" title="Xem thông tin hải đội" onclick="" style="pointer-events: none;"><i class="material-icons"></i></a>
                                                <a href="#" class="add" title="Thêm hải đội" onclick="" style="pointer-events: none;"><i class="material-icons">add_circle</i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Thuyền trưởng   : </strong></label>
                                            <div class="col-md-6">
                                                <select class="form-control" id="ThuyenTruong" disabled>
                                                </select>
                                            </div>
                                            <div class="wrap-layout col-md-2" style="padding-left: 0px;">
                                                <a href="#" class="view" title="Xem thông tin thuyền trưởng" onclick="" style="pointer-events: none;"><i class="material-icons"></i></a>
                                                <a href="#" class="add" title="Thêm thuyền trưởng" onclick="" style="pointer-events: none;"><i class="material-icons">add_circle</i></a>
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
                                                <input type="text" class="form-control" id="NhienLieuToiDa" name="NhienLieuToiDa" value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Lượng nước ngọt tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NuocNgotToiDa" name="NuocNgotToiDa" value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Tốc độ(hải lý/giờ)   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TocDo" name="TocDo"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>TG hành trình tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TG_HanhTrinhToiDa" name="TG_HanhTrinhToiDa"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Ngày tạo   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NgayTao" name="NgayTao" value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Ngày cập nhật  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NgayCapNhat" name="NgayCapNhat" value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding: 0px;">
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Số thuyền viên   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="SoThuyenVien" name="SoThuyenVien"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Trọng tải    : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TrongTai" name="TrongTai"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Chiều rộng (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="ChieuRong" name="ChieuRong"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Chiều dài (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="ChieuDai" name="ChieuDai"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Vật liệu  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="VatLieu" name="VatLieu"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>

                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Mướn nước (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="MonNuoc" name="MonNuoc"  value="" disabled>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-ship-activity-history" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document" style="max-width: 70%;">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0;">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold" id="acthisname"></h6>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="activity-history">
                        <div class="clearfix ">
                            <table id="tableacthis" class="table table-bordered table-striped table-md" style="width: 100%">
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
      
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadRegion();
            loadsectionbodycard(0, 0, 0, 0, 0, 0, 0);
        });

        function loadRegion() {
            $.ajax({
                type: "GET",
                url: linkapi + "naval_region",
                dataType: "json",
                success: function (data) {
                    var selRegion = "";
                    $.each(data, function (key, item) {
                        selRegion += "<option value=" + item.ID + ">" + item.ShortName + "</option>";
                    });
                    $('#selRegion').html(selRegion);
                    onchangeRegion(data[0].ID);
                }, error: function (ret) {
                    console.log('errorGetnaval_region');
                },
            });
        }

        function onchangeRegion(idRegion) {
            $.ajax({
                type: "GET",
                url: linkapi + "squadrons_by_region?id=" + idRegion,
                dataType: "json",
                success: function (data) {
                    var selSquadron = '<option value="" selected>Tất cả</option><option value="0" >Trực thuộc BTL Vùng</option>';
                    $.each(data, function (key, item) {
                        selSquadron += "<option value=" + item.Id + ">" + item.Name + "</option>";
                    });
                    $('#selSquadron').html(selSquadron);

                    onchangeSquadron("");
                }, error: function (ret) {
                    console.log('errorGetsquadrons_by_region');
                },
            });
        }

        function onchangeSquadron(idSquadron) {
            if (idSquadron == '') {
                var selFlotilla = '<option value="" selected>Tất cả</option>';
                $('#selFlotilla').html(selFlotilla);
            }
            else if (idSquadron == '0') {
                var idRegion = $('#selRegion').val();
                $.ajax({
                    type: "GET",
                    url: linkapi + "flotilla_by_navalregion?id=" + idRegion,
                    dataType: "json",
                    success: function (data) {
                        var selFlotilla = '';
                        $.each(data, function (key, item) {
                            if (item.Squadron == null) {
                                selFlotilla += "<option value=" + item.Id + ">" + item.Name + "</option>";
                            }
                        });
                        $('#selFlotilla').html(selFlotilla);
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
            else {
                $.ajax({
                    type: "GET",
                    url: linkapi + "flotilla_by_squadron?id=" + idSquadron,
                    dataType: "json",
                    success: function (data) {
                        var selFlotilla = '<option value="" selected>Tất cả</option>';
                        $.each(data, function (key, item) {
                            selFlotilla += "<option value=" + item.Id + ">" + item.Name + "</option>";
                        });
                        $('#selFlotilla').html(selFlotilla);
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
        }

        function onchangeFlotilla(obj) {

        }

        function ViewShipActivity() {
            var idFlotilla = $('#selFlotilla').val();
            var idSquadron = $('#selSquadron').val();
            var idRegion = $('#selRegion').val();
            let donvi = 0;
            let trenbien = 0;
            let nhamay = 0;
            let suachua = 0;
            let trucsscd = 0;
            let haiquan = 0;
            let khac = 0;
            let rowdonvi = '';
            let rowtrenbien = '';
            let rownhamay = '';
            let rowsuachua = '';
            let rowtrucsscd = '';
            let rowhaiquan = '';
            let rowkhac = '';
            if (idFlotilla != '') {
                $.ajax({
                    type: "GET",
                    url: linkapi + "ship_activities_byflottila?id=" + idFlotilla,
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (key, item) {
                            if (item.Activity.ID == '63A71319FC97778481E4BC11248087AB') {
                                donvi += 1;
                                rowdonvi += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-danger"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087DE') { //treen bieenr
                                trenbien += 1;
                                rowtrenbien += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-primary"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087MN') { //nha may
                                nhamay += 1;
                                rownhamay += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-success"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087OI') { //suachua
                                suachua += 1;
                                rowsuachua += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-info"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QA') { //trucsscd
                                trucsscd += 1;
                                rowtrucsscd += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-warning"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QW') { //tai don vi hai quan
                                haiquan += 1;
                                rowhaiquan += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-dark"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087TY') { //vi tri khac
                                khac += 1;
                                rowkhac += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-secondary"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }

                        });
                        loadsectionbodycard(donvi, trenbien, nhamay, suachua, trucsscd, haiquan, khac, rowdonvi, rowtrenbien, rownhamay, rowsuachua, rowtrucsscd, rowhaiquan, rowkhac)
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
            else if (idSquadron == '') {
                $.ajax({
                    type: "GET",
                    url: linkapi + "ship_activities_byregion?id=" + idRegion,
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (key, item) {
                            if (item.Activity.ID == '63A71319FC97778481E4BC11248087AB') {
                                donvi += 1;
                                rowdonvi += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-danger"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087DE') { //treen bieenr
                                trenbien += 1;
                                rowtrenbien += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-primary"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087MN') { //nha may
                                nhamay += 1;
                                rownhamay += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-success"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087OI') { //suachua
                                suachua += 1;
                                rowsuachua += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-info"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QA') { //trucsscd
                                trucsscd += 1;
                                rowtrucsscd += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-warning"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QW') { //tai don vi hai quan
                                haiquan += 1;
                                rowhaiquan += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-dark"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087TY') { //vi tri khac
                                khac += 1;
                                rowkhac += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-secondary"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }

                        });
                        loadsectionbodycard(donvi, trenbien, nhamay, suachua, trucsscd, haiquan, khac, rowdonvi, rowtrenbien, rownhamay, rowsuachua, rowtrucsscd, rowhaiquan, rowkhac)
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
            else {
                $.ajax({
                    type: "GET",
                    url: linkapi + "ship_activities_bysquadron?id=" + idSquadron,
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (key, item) {
                            if (item.Activity.ID == '63A71319FC97778481E4BC11248087AB') {
                                donvi += 1;
                                rowdonvi += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-danger"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087DE') { //treen bieenr
                                trenbien += 1;
                                rowtrenbien += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-primary"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087MN') { //nha may
                                nhamay += 1;
                                rownhamay += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-success"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087OI') { //suachua
                                suachua += 1;
                                rowsuachua += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-info"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QA') { //trucsscd
                                trucsscd += 1;
                                rowtrucsscd += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-warning"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087QW') { //tai don vi hai quan
                                haiquan += 1;
                                rowhaiquan += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-dark"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';

                            }
                            else if (item.Activity.ID == '63A71319FC97778481E4BC11248087TY') { //vi tri khac
                                khac += 1;
                                rowkhac += '<div class="col-12 col-md-6 col-lg-4"><div class="card card-secondary"><div class="card-header"><div class="card-header-title"><a><h4>' + item.Ship.Name + '</h4></a><a><p>Số hiệu: ' + item.Ship.RegistrationNumber + '</p></a></div><div class="dropdown" ><a class="btn dropdown-toggle" data-toggle="dropdown"><i class="bi bi-caret-down-fill icon_menu_account" style="color: rgba(81, 102, 114, 0.78); padding: 0; margin: 0; margin-right: -16px;"></i></a><div class="dropdown-menu" style="padding: 0; width: 258px; margin-left: -199px;"><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-info" ><i class="bi bi-info-circle icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Thông tin tàu</i></a><a class="dropdown-item" onclick="ViewInforShip(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity"><i class="bi bi-pencil-square icon_menu_account" style="color: rgba(81, 102, 114, 0.78)"> Cập nhật hoạt động tàu</i> </a><a class="dropdown-item" onclick="ViewActivityHistory(`' + item.Ship.ID + '`)" data-toggle="modal" data-target="#model-ship-activity-history"><i class="bi bi-clock-history icon_menu_account" id="btnDangXuat" style="color: rgba(81, 102, 114, 0.78)"> Lịch sử hoạt động tàu</i> </a></div></div></div></div></div>';
                            }

                        });
                        loadsectionbodycard(donvi, trenbien, nhamay, suachua, trucsscd, haiquan, khac, rowdonvi, rowtrenbien, rownhamay, rowsuachua, rowtrucsscd, rowhaiquan, rowkhac)
                    }, error: function (ret) {
                        console.log('errorGet flotilla_by_navalregion');
                    },
                });
            }
        }

        function loadsectionbodycard(donvi, trenbien, nhamay, suachua, trucsscd, haiquan, khac, rowdonvi, rowtrenbien, rownhamay, rowsuachua, rowtrucsscd, rowhaiquan, rowkhac) {
            $('.card-donvi .row').html(rowdonvi);
            $('.card-trenbien .row').html(rowtrenbien);
            $('.card-nhamay .row').html(rownhamay);
            $('.card-suachua .row').html(rowsuachua);
            $('.card-trucsscd .row').html(rowtrucsscd);
            $('.card-haiquan .row').html(rowhaiquan);
            $('.card-khac .row').html(rowkhac);
            if (donvi == 0) {
                $('.card-donvi').attr('hidden', 'hidden');
            }
            else {
                $('.card-donvi').removeAttr('hidden');
                $('#number-donvi').html(' - ' + donvi);
            }
            if (trenbien == 0) {
                $('.card-trenbien').attr('hidden', 'hidden');
            }
            else {
                $('.card-trenbien').removeAttr('hidden');
                $('#number-trenbien').html(' - ' + trenbien);
            }
            if (nhamay == 0) {
                $('.card-nhamay').attr('hidden', 'hidden');
            }
            else {
                $('.card-nhamay').removeAttr('hidden');
                $('#number-nhamay').html(' - ' + nhamay);
            }
            if (suachua == 0) {
                $('.card-suachua').attr('hidden', 'hidden');
            }
            else {
                $('.card-suachua').removeAttr('hidden');
                $('#number-suachua').html(' - ' + suachua);
            }
            if (trucsscd == 0) {
                $('.card-trucsscd').attr('hidden', 'hidden');
            }
            else {
                $('.card-trucsscd').removeAttr('hidden');
                $('#number-trucsscd').html(' - ' + trucsscd);
            }
            if (haiquan == 0) {
                $('.card-haiquan').attr('hidden', 'hidden');
            }
            else {
                $('.card-haiquan').removeAttr('hidden');
                $('#number-haiquan').html(' - ' + haiquan);
            }
            if (khac == 0) {
                $('.card-khac').attr('hidden', 'hidden');
            }
            else {
                $('.card-khac').removeAttr('hidden');
                $('#number-khac').html(' - ' + khac);
            }
        }
        function ViewInforShip(ID) {
            //debugger;
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + ID,
                dataType: "json",
                success: function (data) {
                    $('#Ship_ID').val(data.ID);
                    //$("#Anh").val(data.Name);
                    $("#TenTau").val(data.Name);
                    $("#SoHieu").val(data.RegistrationNumber);
                    $("#NoiCap").val(data.RegistrationPlace);
                    $("#NgayCap").val(data.RegistrationDate);
                    $("#NamHaThuy").val(data.LaunchYear);
                    $("#TrongTai").val(data.Weight);
                    $("#NhienLieuToiDa").val(data.Fuel);
                    $("#NuocNgotToiDa").val(data.Water);
                    $("#SoThuyenVien").val(data.Personel);
                    list_captain(data.Captain.ID, 'ThuyenTruong');
                    $("#TocDo").val(data.Speed);
                    $("#TG_HanhTrinhToiDa").val(data.Time);
                    $("#NgayTao").val(data.Created);
                    $("#NgayCapNhat").val(data.Updated);
                    $("#ChieuDai").val(data.Width);
                    $("#ChieuRong").val(data.Wide);
                    $("#VatLieu").val(data.Material);
                    list_flotilla(data.Flotilla.Id, 'HaiDoi');
                    $("#MonNuoc").val(data.Draught);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function ViewActivityHistory(ID) {
            //debugger;
            $.ajax({
                type: "GET",
                url: linkapi + "ship_activity_notes_byshipId?id=" + ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN HOẠT ĐỘNG</th><th>NGÀY BẮT ĐẦU</th><th>NGÀY KẾT THÚC</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Activity.Name + "</td><td>" + item.Start + "</td><td>" + item.End + "</td></tr>";
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tableacthis').html(tabletext);
                    GetShipName(ID);
                    loadTableActHis();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });
        }
        function GetShipName(ID) {
            //debugger;
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + ID,
                dataType: "json",
                success: function (data) {
                    var titletext = "Thông tin lịch sử hoạt động của tàu ";
                    titletext += data.Name;
                    $('#acthisname').html(titletext);
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
        function loadTableActHis() {
            $('table[id=tableacthis]').each(function () {
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
