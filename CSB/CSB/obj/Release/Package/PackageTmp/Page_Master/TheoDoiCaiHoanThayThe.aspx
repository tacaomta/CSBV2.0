<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="TheoDoiCaiHoanThayThe.aspx.cs" Inherits="CSB.Page_Master.TheoDoiCaiHoanThayThe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .breadcrumb {
            background-color: #ffffff !important;
        }
        .page-wrapper {
            padding-top: 0 !important;
        }
                tbody tr td {
            vertical-align: middle;
            text-align: center;
        }
    </style>
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">THEO DÕI CẢI HOÁN, THAY THẾ, BỔ SUNG TRÊN TÀU <span id="TENTAU"></span></h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="TrangChu.aspx">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="Manage_Tau?vung=1">Quản lý tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!" onclick="HoSoTau()">Hồ sơ tàu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <div class="" style="display: flex;align-items: center;">
                                <div class="btn-group">
                                    <button onclick="loadDataList_THEODOICAIHOANTHAYTHE()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                    <button id="btn_add_THEODOICAIHOANTHAYTHE" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-THEODOICAIHOANTHAYTHE" onclick="loadDSThietBi()" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm mới</button>
                                </div>
                            </div>

                            <table id="table-THEODOICAIHOANTHAYTHE" class="table table-bordered table-striped table-md" style="width: 100%">
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-THEODOICAIHOANTHAYTHE" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <form id="form-add-THEODOICAIHOANTHAYTHE" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header" style="padding: 10px 16px;">
                                <h4 class="title-modal-banve font-weight-bold">Thêm thông tin cải hoán, thay thế, bổ sung trên tàu</h4>
                            </div>
                            <div class="modal-body" style="padding: 6px 16px;">
                                <div class="">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Tên thiết bị: </label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" id="add-THEODOICAIHOANTHAYTHE-TENTHIETBI" required>
                                                        <option selected="" disabled="" hidden>-- Chọn thiết bị --</option>
                                                        <optgroup label="Máy chính">
                                                        </optgroup>
                                                        <optgroup label="Máy phụ">
                                                        </optgroup>
                                                        <optgroup label="Máy chuyên dụng">
                                                        </optgroup>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Số lượng: </label>
                                                <div class="col-sm-9">
                                                    <input type="number" min="0" id="add-THEODOICAIHOANTHAYTHE-SOLUONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Phương án giải quyết: </label>
                                                <div class="col-sm-9">
                                                    <input type="text" id="add-THEODOICAIHOANTHAYTHE-PHUONGAN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Lý do: </label>
                                                <div class="col-sm-9">
                                                    <input type="text" id="add-THEODOICAIHOANTHAYTHE-LYDO" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Ghi chú: </label>
                                                <div class="col-sm-9">
                                                    <input type="text" id="add-THEODOICAIHOANTHAYTHE-GHICHU" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="padding: 8px 16px;">
                                <button type="submit" onclick="add_THEODOICAIHOANTHAYTHE()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-THEODOICAIHOANTHAYTHE" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <form id="form-edit-THEODOICAIHOANTHAYTHE" onsubmit="return false">
                        <input type="hidden" id="edit-THEODOICAIHOANTHAYTHE-ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header" style="padding: 10px 16px;">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin cải hoán, thay thế, bổ sung trên tàu</h4>
                            </div>
                            <div class="modal-body" style="padding: 6px 16px;">
                                <div class="">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Tên thiết bị: </label>
                                                <div class="col-sm-9">
                                                    <input class="form-control" id="edit-THEODOICAIHOANTHAYTHE-TENTHIETBI" type="text" disabled="">
                                                    <input class="form-control" id="edit-THEODOICAIHOANTHAYTHE-IDTHIETBI" type="hidden" >
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Số lượng: </label>
                                                <div class="col-sm-9">
                                                    <input type="number" min="0" id="edit-THEODOICAIHOANTHAYTHE-SOLUONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Phương án giải quyết: </label>
                                                <div class="col-sm-9">
                                                    <input type="text" id="edit-THEODOICAIHOANTHAYTHE-PHUONGAN" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Lý do: </label>
                                                <div class="col-sm-9">
                                                    <input type="text" id="edit-THEODOICAIHOANTHAYTHE-LYDO" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Ghi chú: </label>
                                                <div class="col-sm-9">
                                                    <input type="text" id="edit-THEODOICAIHOANTHAYTHE-GHICHU" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="padding: 8px 16px;">
                                <button type="submit" onclick="edit_THEODOICAIHOANTHAYTHE()" class="btn btn-info">Cập nhật</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        var textselect = '';
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        };
        function Load_Title(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    $("#TENTAU").html(data.TTCOBAN.SOHIEU);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function HoSoTau() {
            window.location = baseaddress + "Page_Master/Ship_profile?Ship_ID=" + getParameterByName('Ship_ID');
        }
        $(document).ready(function () {
            var Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                history.back();
            }
            else {
                Load_Title(Ship_ID);
                loadDataList_THEODOICAIHOANTHAYTHE();
            }
        });
        function loadDSThietBi() {
            textselect = "";
            Ship_ID = getParameterByName('Ship_ID');
            $.ajax({
                type: "GET",
                url: linkapi + "v2/hanghai?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Thiết bị hàng hải">';
                    $.each(data, function (key, item) {
                        textselect += "<option lable='HANGHAI' value=" + item.ID + ">" + item.KYHIEU + "</option>";
                    });
                    textselect += '</optgroup>';
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                    loadDSVuKhi();
                }
            });
        }
        function loadDSVuKhi() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/vukhi?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Vũ khí">';
                    $.each(data, function (key, item) {
                        textselect += "<option lable='VUKHI' value=" + item.ID + ">" + item.KYHIEU + "</option>";
                    });
                    textselect += '</optgroup>';
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                    loadDSRada();
                }
            });
        }
        function loadDSRada() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/rada?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Rada">';
                    $.each(data, function (key, item) {
                        textselect += "<option lable='RADA' value=" + item.ID + ">" + item.KYHIEU + "</option>";
                    });
                    textselect += '</optgroup>';
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                    loadDSToMay();
                }
            });
        }
        function loadDSToMay() {
            textselect += '<optgroup label="Các tổ máy">';
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychinh?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    $.each(data, function (key, item) {
                        textselect += "<option lable='TOMAY' value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                    });
                    console.log("okGET");
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                    $.ajax({
                        type: "GET",
                        url: linkapi + "v2/mayphuphatdien?id=" + getParameterByName("Ship_ID"),
                        dataType: "json",
                        success: function (data) {
                            $.each(data, function (key, item) {
                                textselect += "<option lable='TOMAY' value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                            });
                            console.log("okGET");
                        }, error: function (ret) {
                            console.log('errorGET');
                        },
                        complete: function () {
                            $.ajax({
                                type: "GET",
                                url: linkapi + "v2/maychuyendung?id=" + getParameterByName("Ship_ID"),
                                dataType: "json",
                                success: function (data) {
                                    $.each(data, function (key, item) {
                                        textselect += "<option lable='TOMAY' value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                                    });
                                    console.log("okGET");
                                }, error: function (ret) {
                                    console.log('errorGET');
                                },
                                complete: function () {
                                    textselect += '</optgroup>';
                                    loadDSHeTrucChanVit();
                                }
                            });
                        }
                    });
                }
            });
        }
        function loadDSHeTrucChanVit() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/hetrucchanvit?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Hệ trục chân vịt">';
                    $.each(data, function (key, item) {
                        textselect += "<option lable='HETRUCCHANVIT' value=" + item.ID + ">" + item.CHANVIT.LOAICHANVIT + "</option>";
                    });
                    textselect += '</optgroup>';
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                    loadDSNeoXichNeo();
                }
            });
        }
        function loadDSNeoXichNeo() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/neoxichneo?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Neo xích neo">';
                    $.each(data, function (key, item) {
                        textselect += "<option lable='NEOXICHNEO' value=" + item.ID + ">" + item.NEOPHAI.KYHIEU + "</option>";
                    });
                    textselect += '</optgroup>';
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                    loadDSBomDau();
                }
            });
        }
        function loadDSBomDau() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/bomnuocthonggio?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Bơm dầu, nước và thông gió">';
                    $.each(data, function (key, item) {
                        textselect += "<option lable='BOMDAU' value=" + item.ID + ">" + item.TENTB + "</option>";
                    });
                    textselect += '</optgroup>';
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                    loadDSThietBiKhac();
                }
            });
        }
        function loadDSThietBiKhac() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/thietbikhac?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Thiết bị khác">';
                    $.each(data, function (key, item) {
                        textselect += "<option lable='THIETBIKHAC' value=" + item.ID + ">" + item.TENTB + "</option>";
                    });
                    textselect += '</optgroup>';
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () {
                    $("#add-THEODOICAIHOANTHAYTHE-TENTHIETBI").html(textselect);
                    $("#edit-THEODOICAIHOANTHAYTHE-TENTHIETBI").html(textselect);
                }
            });
        }
        function loadDataList_THEODOICAIHOANTHAYTHE() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/xemtheodoicaihoanthaythe?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN THIẾT BỊ</th><th>SỐ LƯỢNG</th><th>PHƯƠNG ÁN GIẢI QUYẾT</th><th>LÝ DO</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.TENTHIETBI + "</td><td>" + item.SOLUONG + "</td><td>" + item.PHUONGAN + "</td><td>" + item.LYDO + "</td><td>" + item.GHICHU + '</td><td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-THEODOICAIHOANTHAYTHE"  onclick="onclick_edit_THEODOICAIHOANTHAYTHE(`' + item.ID + '`,`' + item.TENTHIETBI + '`,`' + item.SOLUONG + '`,`' + item.PHUONGAN + '`,`' + item.LYDO + '`,`' + item.GHICHU + '`,`' + item.IDTHIETBI + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_THEODOICAIHOANTHAYTHE(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-THEODOICAIHOANTHAYTHE').html(tabletext);
                    loadTableTHEODOICAIHOANTHAYTHE();
                    console.log(data);
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableTHEODOICAIHOANTHAYTHE() {
            $('table[id=table-THEODOICAIHOANTHAYTHE]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 60 },
                        { name: 'TÊN THIẾT BỊ', width: 260 },
                        { name: 'SỐ LƯỢNG', width: 100 },
                        { name: 'PHƯƠNG ÁN GIẢI QUYẾT', width: 350 },
                        { name: 'LÝ DO', width: 300 },
                        { name: 'GHI CHÚ', width: 300 },
                        { name: 'TÁC VỤ', width: 80 },
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
        function add_THEODOICAIHOANTHAYTHE() {
            var form = document.getElementById("form-add-THEODOICAIHOANTHAYTHE");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var label = $("#add-THEODOICAIHOANTHAYTHE-TENTHIETBI").find("option:selected").first().parent().attr("label");
                var THEODOICAIHOANTHAYTHE = {
                    ID: "",
                    TENTHIETBI: $("#add-THEODOICAIHOANTHAYTHE-TENTHIETBI").val(),
                    SOLUONG: $("#add-THEODOICAIHOANTHAYTHE-SOLUONG").val(),
                    PHUONGAN: $("#add-THEODOICAIHOANTHAYTHE-PHUONGAN").val(),
                    LYDO: $("#add-THEODOICAIHOANTHAYTHE-LYDO").val(),
                    GHICHU: $("#add-THEODOICAIHOANTHAYTHE-GHICHU").val(),
                    IDTHIETBI: $("#add-THEODOICAIHOANTHAYTHE-TENTHIETBI").val(),
                };
                console.log(THEODOICAIHOANTHAYTHE);
                var url = linkapi + "v2/themtheodoicaihoanthaythehanghai?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                if (label == "Thiết bị hàng hải") {
                    url = linkapi + "v2/themtheodoicaihoanthaythehanghai?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                }
                else if (label == "Vũ khí") {
                    url = linkapi + "v2/themtheodoicaihoanthaythevukhi?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                }
                else if (label == "Rada") {
                    url = linkapi + "v2/themtheodoicaihoanthaytherada?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                }
                else if (label == "Các tổ máy") {
                    url = linkapi + "v2/themtheodoicaihoanthaythemay?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                }
                else if (label == "Hệ trục chân vịt") {
                    url = linkapi + "v2/themtheodoicaihoanthaythehetrucchanvit?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                }
                else if (label == "Neo xích neo") {
                    url = linkapi + "v2/themtheodoicaihoanthaytheneoxichneo?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                }
                else if (label == "Bơm dầu, nước và thông gió") {
                    url = linkapi + "v2/themtheodoicaihoanthaythebomdau?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                }
                else if (label == "Thiết bị khác") {
                    url = linkapi + "v2/themtheodoicaihoanthaythethietbikhac?id=" + THEODOICAIHOANTHAYTHE.IDTHIETBI;
                }
                else return false;
                $.ajax({
                    type: "POST",
                    url: url,
                    dataType: "json",
                    data: JSON.stringify(THEODOICAIHOANTHAYTHE),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin theo dõi cải hoán, thay thế thành công.");
                        loadDataList_THEODOICAIHOANTHAYTHE();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-THEODOICAIHOANTHAYTHE').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_THEODOICAIHOANTHAYTHE(ID, TENTHIETBI, SOLUONG, PHUONGAN, LYDO, GHICHU, IDTHIETBI) {
            $('#edit-THEODOICAIHOANTHAYTHE-ID').val(ID);
            $("#edit-THEODOICAIHOANTHAYTHE-TENTHIETBI").val(TENTHIETBI);
            $("#edit-THEODOICAIHOANTHAYTHE-SOLUONG").val(SOLUONG);
            $("#edit-THEODOICAIHOANTHAYTHE-PHUONGAN").val(PHUONGAN);
            $("#edit-THEODOICAIHOANTHAYTHE-LYDO").val(LYDO);
            $("#edit-THEODOICAIHOANTHAYTHE-GHICHU").val(GHICHU);
            $("#edit-THEODOICAIHOANTHAYTHE-IDTHIETBI").val(IDTHIETBI);
        }
        function edit_THEODOICAIHOANTHAYTHE() {
            var form = document.getElementById("form-edit-THEODOICAIHOANTHAYTHE");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var THEODOICAIHOANTHAYTHE = {
                    ID: $("#edit-THEODOICAIHOANTHAYTHE-ID").val(),
                    TENTHIETBI: $("#edit-THEODOICAIHOANTHAYTHE-TENTHIETBI").val(),
                    SOLUONG: $("#edit-THEODOICAIHOANTHAYTHE-SOLUONG").val(),
                    PHUONGAN: $("#edit-THEODOICAIHOANTHAYTHE-PHUONGAN").val(),
                    LYDO: $("#edit-THEODOICAIHOANTHAYTHE-LYDO").val(),
                    GHICHU: $("#edit-THEODOICAIHOANTHAYTHE-GHICHU").val(),
                    IDTHIETBI: $("#edit-THEODOICAIHOANTHAYTHE-IDTHIETBI").val()
                };
                console.log(THEODOICAIHOANTHAYTHE);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/suatheodoicaihoanthaythe?id=" + THEODOICAIHOANTHAYTHE.ID,
                    dataType: "json",
                    data: JSON.stringify(THEODOICAIHOANTHAYTHE),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật theo dõi cải hoán, thay thế thành công.");
                        loadDataList_THEODOICAIHOANTHAYTHE();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-THEODOICAIHOANTHAYTHE').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_THEODOICAIHOANTHAYTHE(id) {
            let text = "Bạn có chắc muốn xóa theo dõi cải hoán, thay thế này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/xoatheodoicaihoanthaythe?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_THEODOICAIHOANTHAYTHE();
                    toastSuccess("Thành công", "Xóa theo dõi cải hoán, thay thế thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa theo dõi cải hoán, thay thế không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
