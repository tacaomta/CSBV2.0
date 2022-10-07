<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="DangKyDoiMatNeoXichNeo.aspx.cs" Inherits="CSB.Page_Master.DangKyDoiMatNeoXichNeo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #table_DangKyDoiMatXichNeo_wrapper {
            overflow-x: hidden;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_dangkydoimatxichneo" style="color: black; margin: 0; margin-left: 15px;">Đăng ký thay đổi, mất, bổ sung</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="Manage_Tau?vung=1" style="color: #01b5f9">Quản lý tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" onclick="HoSoTau()" style="color: #01b5f9">Hồ sơ tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Tính năng các thiết bị trên tàu</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <div class="btn-group">
                            <button onclick="loadDataList_DangKy()" class="btn btn-secondary mb-2"><i class="bi-arrow-clockwise"></i>&nbsp;Load dữ liệu</button>
                            <button id="btn_add_DANGKYDOIMOINEOXICHNEO" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DANGKYDOIMOINEOXICHNEO" style="padding-top: 4px;"><i class="bi bi-plus-circle"></i>&nbsp; Đăng ký thay đổi, mất, bổ sung</button>
                        </div>
                        <table id="table_DangKyDoiMatXichNeo" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-DANGKYDOIMOINEOXICHNEO" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <form id="form-add-DANGKYDOIMOINEOXICHNEO" onsubmit="return false">
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Đăng ký thay đổi, mất, bổ xung neo - xích neo</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="">
                                <h4 class="sub-title">PHẢI</h4>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Neo phải: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-NEOPHAI-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Trọng lượng P (kg): </label>
                                            <div class="col-sm-7">
                                                <input type="number" min="0" step="any" id="add-DANGKYDOIMOINEOXICHNEO-NEOPHAI-TRONGLUONGP" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Xích neo phải: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Đường kính/ Độ dài: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-DUONGKINHTRENDODAI" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">TRÁI</h4>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Neo trái: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-NEOTRAI-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Trọng lượng P (kg): </label>
                                            <div class="col-sm-7">
                                                <input type="number" min="0" step="any" id="add-DANGKYDOIMOINEOXICHNEO-NEOTRAI-TRONGLUONGP" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Xích neo trái: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Đường kính/ Độ dài: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-DUONGKINHTRENDODAI" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">SAU</h4>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Neo sau: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-NEOSAU-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Trọng lượng P (kg): </label>
                                            <div class="col-sm-7">
                                                <input type="number" min="0" step="any" id="add-DANGKYDOIMOINEOXICHNEO-NEOSAU-TRONGLUONGP" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Xích neo sau: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Đường kính/ Độ dài: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-DUONGKINHTRENDODAI" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">ĐĂNG KÝ</h4>
                                  <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label style="text-align:inherit" class="col-sm-2 col-form-label">- Nội dung đăng ký: </label>
                                            <div class="col-sm-10">
                                                <input type="text" id="add-DANGKYDOIMOINEOXICHNEO-DANGKY" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="add_DANGKYNEOXICHNEO()" class="btn btn-info">Thêm</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

        <div class="modal fade" id="model-edit-DANGKYDOIMOINEOXICHNEO" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <form id="form-edit-DANGKYDOIMOINEOXICHNEO" onsubmit="return false">
                     <input type="hidden" id="edit-DANGKYDOIMOINEOXICHNEO-ID" />
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Sửa đăng ký thay đổi, mất, bổ xung neo - xích neo</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="">
                                <h4 class="sub-title">PHẢI</h4>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Neo phải: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-NEOPHAI-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Trọng lượng P (kg): </label>
                                            <div class="col-sm-7">
                                                <input type="number" min="0" step="any" id="edit-DANGKYDOIMOINEOXICHNEO-NEOPHAI-TRONGLUONGP" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Xích neo phải: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Đường kính/ Độ dài: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-DUONGKINHTRENDODAI" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">TRÁI</h4>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Neo trái: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-NEOTRAI-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Trọng lượng P (kg): </label>
                                            <div class="col-sm-7">
                                                <input type="number" min="0" step="any" id="edit-DANGKYDOIMOINEOXICHNEO-NEOTRAI-TRONGLUONGP" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Xích neo trái: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Đường kính/ Độ dài: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-DUONGKINHTRENDODAI" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">SAU</h4>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Neo sau: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-NEOSAU-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Trọng lượng P (kg): </label>
                                            <div class="col-sm-7">
                                                <input type="number" min="0" step="any" id="edit-DANGKYDOIMOINEOXICHNEO-NEOSAU-TRONGLUONGP" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="form-group row">
                                            <label style="text-align: inherit" class="col-sm-12 col-form-label">- Xích neo sau: </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tháng năm: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-THANGNAM" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Đường kính/ Độ dài: </label>
                                            <div class="col-sm-7">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-DUONGKINHTRENDODAI" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">ĐĂNG KÝ</h4>
                                  <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label style="text-align:inherit" class="col-sm-2 col-form-label">- Nội dung đăng ký: </label>
                                            <div class="col-sm-10">
                                                <input type="text" id="edit-DANGKYDOIMOINEOXICHNEO-DANGKY" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="edit_DANGKYNEOXICHNEO()" class="btn btn-info">Lưu</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
     <div id="loader" class="spinner-border text-primary" role="status"></div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        var Xich_ID;
        var shipName;
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        $(document).ready(function () {
            Xich_ID = getParameterByName('Xich_ID');
            if (Xich_ID == null) {
                history.back();
            }
            else {
                loadDataList_DangKy();
            }

        });
        function loadDataList_DangKy() {
            {
                $.ajax({
                    type: "GET",
                    url: linkapi + "v2/dangkyneoxichneochitiet?id=" + getParameterByName("Xich_ID"),
                    dataType: "json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                        $('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th rowspan='3'>ĐĂNG KÝ</th><th colspan='4'>PHẢI</th><th colspan='4'>TRÁI</th><th colspan='4'>SAU</th><th rowspan='3'>TÁC VỤ</th></tr><tr><th colspan='2'>Neo</th><th colspan='2'>Xích</th><th colspan='2'>Neo</th><th colspan='2'>Xích</th><th colspan='2'>Neo</th><th colspan='2'>Xích</th></tr><tr><th >Tháng năm</th><th >Trọng lượng P(kg)</th><th >Tháng năm</th><th >Trọng lượng P(kg)</th><th >Tháng năm</th><th >Trọng lượng P(kg)</th><th >Tháng năm</th><th >Trọng lượng P(kg)</th><th >Tháng năm</th><th >Trọng lượng P(kg)</th><th >Tháng năm</th><th >Trọng lượng P(kg)</th></tr></thead><tbody>"
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td style='text-align: center;'>" + item.DANGKY + "</td><td>" + item.PHAI.NEO.THANGNAM + "</td><td>" + item.PHAI.NEO.TRONGLUONG + "</td><td>" + item.PHAI.XICH.THANGNAM + "</td><td>" + item.PHAI.XICH.DUONGKINH_DODAI + "</td><td>" + item.TRAI.NEO.THANGNAM + "</td><td>" + item.TRAI.NEO.TRONGLUONG + "</td><td>" + item.TRAI.XICH.THANGNAM + "</td><td>" + item.TRAI.XICH.DUONGKINH_DODAI + "</td><td>" + item.SAU.NEO.THANGNAM + "</td><td>" + item.SAU.NEO.TRONGLUONG + "</td><td>" + item.SAU.XICH.THANGNAM + "</td><td>" + item.SAU.XICH.DUONGKINH_DODAI + '</td><td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYDOIMOINEOXICHNEO"  onclick="onclick_edit_DANGKYNEOXICHNEO(`' + item.ID + '`,`' + item.DANGKY + '`,`' + item.PHAI.NEO.THANGNAM + '`,`' + item.PHAI.NEO.TRONGLUONG + '`,`' + item.PHAI.XICH.THANGNAM + '`,`' + item.PHAI.XICH.DUONGKINH_DODAI + '`,`' + item.TRAI.NEO.THANGNAM + '`,`' + item.TRAI.NEO.TRONGLUONG + '`,`' + item.TRAI.XICH.THANGNAM + '`,`' + item.TRAI.XICH.DUONGKINH_DODAI + '`,`' + item.SAU.NEO.THANGNAM + '`,`' + item.SAU.NEO.TRONGLUONG + '`,`' + item.SAU.XICH.THANGNAM + '`,`' + item.SAU.XICH.DUONGKINH_DODAI + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYDOIMOINEOXICHNEO(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        });
                        tabletext += "</tbody>";
                        $('#table_DangKyDoiMatXichNeo').html(tabletext);
                        console.log("okGET");
                        loadTable_DANGKYNEOXICHNEO();
                        //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#loader').addClass('hidden');
                    },
                });
            }
        }
        function loadTable_DANGKYNEOXICHNEO() {
            $('table[id=table_DangKyDoiMatXichNeo]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'ĐĂNG KÝ', width: 200 },
                        { name: 'Tháng năm', width: 80 },
                        { name: 'Trọng lượng P(kg)', width: 80 },
                        { name: 'Tháng năm', width: 80 },
                        { name: 'Trọng lượng P(kg)', width: 80 },
                        { name: 'Tháng năm', width: 80 },
                        { name: 'Trọng lượng P(kg)', width: 80 },
                        { name: 'Tháng năm', width: 80 },
                        { name: 'Trọng lượng P(kg)', width: 80 },
                        { name: 'Tháng năm', width: 80 },
                        { name: 'Trọng lượng P(kg)', width: 80 },
                        { name: 'Tháng năm', width: 80 },
                        { name: 'Trọng lượng P(kg)', width: 80 },
                        { name: 'TÁC VỤ', width: 80 }
                    ],
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

            });
        };
        function add_DANGKYNEOXICHNEO() {
            var form = document.getElementById("form-add-DANGKYDOIMOINEOXICHNEO");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYNEOXICHNEO = {
                    ID: "",
                    DANGKY: $("#add-DANGKYDOIMOINEOXICHNEO-DANGKY").val(),
                    PHAI: {
                        NEO: {
                            THANGNAM: $("#add-DANGKYDOIMOINEOXICHNEO-NEOPHAI-THANGNAM").val(),
                            TRONGLUONG: $("#add-DANGKYDOIMOINEOXICHNEO-NEOPHAI-TRONGLUONGP").val()
                        },
                        XICH: {
                            THANGNAM: $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-THANGNAM").val(),
                            DUONGKINH_DODAI: $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-DUONGKINHTRENDODAI").val()
                        }
                    },
                    TRAI: {
                        NEO: {
                            THANGNAM: $("#add-DANGKYDOIMOINEOXICHNEO-NEOTRAI-THANGNAM").val(),
                            TRONGLUONG: $("#add-DANGKYDOIMOINEOXICHNEO-NEOTRAI-TRONGLUONGP").val()
                        },
                        XICH: {
                            THANGNAM: $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-THANGNAM").val(),
                            DUONGKINH_DODAI: $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-DUONGKINHTRENDODAI").val()
                        }
                    },
                    SAU: {
                        NEO: {
                            THANGNAM: $("#add-DANGKYDOIMOINEOXICHNEO-NEOSAU-THANGNAM").val(),
                            TRONGLUONG: $("#add-DANGKYDOIMOINEOXICHNEO-NEOSAU-TRONGLUONGP").val()
                        },
                        XICH: {
                            THANGNAM: $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-THANGNAM").val(),
                            DUONGKINH_DODAI: $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-DUONGKINHTRENDODAI").val()
                        }
                    }

                };
                console.log(DANGKYNEOXICHNEO);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_dangkyneoxichneo?id=" + getParameterByName("Xich_ID"),
                    dataType: "json",
                    data: JSON.stringify(DANGKYNEOXICHNEO),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm đăng ký thay đổi, mất, bổ sung neo - xích neo thành công.");
                        loadDataList_DangKy();
                    }, error: function (ret) {
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-DANGKYDOIMOINEOXICHNEO-NEOPHAI-THANGNAM").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-NEOPHAI-TRONGLUONGP").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-THANGNAM").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-DUONGKINHTRENDODAI").val("");

                        $("#add-DANGKYDOIMOINEOXICHNEO-NEOTRAI-THANGNAM").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-NEOTRAI-TRONGLUONGP").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-THANGNAM").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-DUONGKINHTRENDODAI").val("");

                        $("#add-DANGKYDOIMOINEOXICHNEO-NEOSAU-THANGNAM").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-NEOSAU-TRONGLUONGP").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-THANGNAM").val("");
                        $("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-DUONGKINHTRENDODAI").val("");

                        $("#add-DANGKYDOIMOINEOXICHNEO-DANGKY").val("")
                        $('#model-add-DANGKYDOIMOINEOXICHNEO').modal("hide");
                    },
                });
            }
            return false;
        }

        function onclick_edit_DANGKYNEOXICHNEO(ID, DANGKY, THANGNAM_NEOPHAI, TRONGLUONG_NEOPHAI, THANGNAM_XICHNEOPHAI, DUONGKINH_DODAI_XICHNEOPHAI, THANGNAM_NEOTRAI, TRONGLUONG_NEOTRAI, THANGNAM_XICHNEOTRAI, DUONGKINH_DODAI_XICHNEOTRAI, THANGNAM_NEOSAU, TRONGLUONG_NEOSAU, THANGNAM_XICHNEOSAU, DUONGKINH_DODAI_XICHNEOSAU) {
            $("#edit-DANGKYDOIMOINEOXICHNEO-ID").val(ID);

            $("#edit-DANGKYDOIMOINEOXICHNEO-NEOPHAI-THANGNAM").val(THANGNAM_NEOPHAI);
            $("#edit-DANGKYDOIMOINEOXICHNEO-NEOPHAI-TRONGLUONGP").val(TRONGLUONG_NEOPHAI);
            $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-THANGNAM").val(THANGNAM_XICHNEOPHAI);
            $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-DUONGKINHTRENDODAI").val(DUONGKINH_DODAI_XICHNEOPHAI);

            $("#edit-DANGKYDOIMOINEOXICHNEO-NEOTRAI-THANGNAM").val(THANGNAM_NEOTRAI);
            $("#edit-DANGKYDOIMOINEOXICHNEO-NEOTRAI-TRONGLUONGP").val(TRONGLUONG_NEOTRAI);
            $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-THANGNAM").val(THANGNAM_XICHNEOTRAI);
            $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-DUONGKINHTRENDODAI").val(DUONGKINH_DODAI_XICHNEOTRAI);

            $("#edit-DANGKYDOIMOINEOXICHNEO-NEOSAU-THANGNAM").val(THANGNAM_NEOSAU);
            $("#edit-DANGKYDOIMOINEOXICHNEO-NEOSAU-TRONGLUONGP").val(TRONGLUONG_NEOSAU);
            $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-THANGNAM").val(THANGNAM_XICHNEOSAU);
            $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-DUONGKINHTRENDODAI").val(DUONGKINH_DODAI_XICHNEOSAU);

            $("#edit-DANGKYDOIMOINEOXICHNEO-DANGKY").val(DANGKY);
        }

        function edit_DANGKYNEOXICHNEO() {
            var form = document.getElementById("form-edit-DANGKYDOIMOINEOXICHNEO");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var SUADANGKYNEOXICHNEO = {
                    ID: $("#edit-DANGKYDOIMOINEOXICHNEO-ID").val(),
                    DANGKY: $("#edit-DANGKYDOIMOINEOXICHNEO-DANGKY").val(),
                    PHAI: {
                        NEO: {
                            THANGNAM: $("#edit-DANGKYDOIMOINEOXICHNEO-NEOPHAI-THANGNAM").val(),
                            TRONGLUONG: $("#edit-DANGKYDOIMOINEOXICHNEO-NEOPHAI-TRONGLUONGP").val()
                        },
                        XICH: {
                            THANGNAM: $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-THANGNAM").val(),
                            DUONGKINH_DODAI: $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-DUONGKINHTRENDODAI").val()
                        }
                    },
                    TRAI: {
                        NEO: {
                            THANGNAM: $("#edit-DANGKYDOIMOINEOXICHNEO-NEOTRAI-THANGNAM").val(),
                            TRONGLUONG: $("#edit-DANGKYDOIMOINEOXICHNEO-NEOTRAI-TRONGLUONGP").val()
                        },
                        XICH: {
                            THANGNAM: $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-THANGNAM").val(),
                            DUONGKINH_DODAI: $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-DUONGKINHTRENDODAI").val()
                        }
                    },
                    SAU: {
                        NEO: {
                            THANGNAM: $("#edit-DANGKYDOIMOINEOXICHNEO-NEOSAU-THANGNAM").val(),
                            TRONGLUONG: $("#edit-DANGKYDOIMOINEOXICHNEO-NEOSAU-TRONGLUONGP").val()
                        },
                        XICH: {
                            THANGNAM: $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-THANGNAM").val(),
                            DUONGKINH_DODAI: $("#edit-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-DUONGKINHTRENDODAI").val()
                        }
                    }

                };
                console.log(SUADANGKYNEOXICHNEO);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_dangkyneoxichneo?id=" + $("#edit-DANGKYDOIMOINEOXICHNEO-ID").val(),
                    dataType: "json",
                    data: JSON.stringify(SUADANGKYNEOXICHNEO),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhập đăng ký thay đổi, mất, bổ sung neo - xích neo thành công.");
                        loadDataList_DangKy();
                    }, error: function (ret) {
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        //$("#add-DANGKYDOIMOINEOXICHNEO-NEOPHAI-THANGNAM").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-NEOPHAI-TRONGLUONGP").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-THANGNAM").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOPHAI-DUONGKINHTRENDODAI").val("");

                        //$("#add-DANGKYDOIMOINEOXICHNEO-NEOTRAI-THANGNAM").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-NEOTRAI-TRONGLUONGP").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-THANGNAM").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOTRAI-DUONGKINHTRENDODAI").val("");

                        //$("#add-DANGKYDOIMOINEOXICHNEO-NEOSAU-THANGNAM").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-NEOSAU-TRONGLUONGP").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-THANGNAM").val("");
                        //$("#add-DANGKYDOIMOINEOXICHNEO-XICHNEOSAU-DUONGKINHTRENDODAI").val("");

                        //$("#add-DANGKYDOIMOINEOXICHNEO-DANGKY").val("")
                        $('#model-edit-DANGKYDOIMOINEOXICHNEO').modal("hide");
                    },
                });
            }
            return false;
        }

        function delete_DANGKYDOIMOINEOXICHNEO(id) {
            let text = "Bạn có chắc muốn xóa đăng ký cho neo - xích neo này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_dangkyneoxichneo?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_DangKy();
                    toastSuccess("Thành công", "Xóa đăng ký neo - xích neo thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa đăng ký neo - xích neo không thành công!");
                })
            } else {

            }
        }

        function btn_loadDataList_DangKyDoiMatXichNeo() {
          
            loadDataList_DangKy();
        }
    </script>
</asp:Content>
