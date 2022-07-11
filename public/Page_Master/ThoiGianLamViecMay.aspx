<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="ThoiGianLamViecMay.aspx.cs" Inherits="CSB.Page_Master.ThoiGianLamViecMay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .breadcrumb {
            background-color: #ffffff !important;
        }
        .page-wrapper {
            padding-top: 0 !important;
        }
    </style>
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">THỜI GIAN LÀM VIỆC CỦA CÁC MÁY TRÊN TÀU <span id="TENTAU"></span></h5>
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
                                    <button onclick="loadDataList_THOIGIANLAMVIECMAY()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                    <button id="btn_add_THOIGIANLAMVIECMAY" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-THOIGIANLAMVIECMAY" onclick="loadDSMay()" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm mới</button>
                                </div>
                                <div class="col-md-4" style="position: relative;margin-left: auto;display: flex;">
                                    <span class="col-md-5" style="padding-top: 5px;">Chọn năm </span>
                                    <select class="form-control" id="NAM" onchange="chonNam(this.value)">
                                    </select>
                                </div>
                            </div>

                            <table id="table-THOIGIANLAMVIECMAY" class="table table-bordered table-striped table-md" style="width: 100%">
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-THOIGIANLAMVIECMAY" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <form id="form-add-THOIGIANLAMVIECMAY" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header" style="padding: 10px 16px;">
                                <h4 class="title-modal-banve font-weight-bold">Thêm thông tin thời gian làm việc của máy</h4>
                            </div>
                            <div class="modal-body" style="padding: 6px 16px;">
                                <div class="">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" id="add-THOIGIANLAMVIECMAY-THONGTINMAY-ID" required>
                                                        <option selected="" disabled="" hidden>-- Chọn máy --</option>
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
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm hiện tại: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" id="add-THOIGIANLAMVIECMAY-NAM" disabled="" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 1 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-THOIGIANLAMVIECMAY-QUYI" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 2 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-THOIGIANLAMVIECMAY-QUYII" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 3 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-THOIGIANLAMVIECMAY-QUYIII" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 4 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="add-THOIGIANLAMVIECMAY-QUYIV" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="padding: 8px 16px;">
                                <button type="submit" onclick="add_THOIGIANLAMVIECMAY()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-THOIGIANLAMVIECMAY" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <form id="form-edit-THOIGIANLAMVIECMAY" onsubmit="return false">
                        <input type="hidden" id="edit-THOIGIANLAMVIECMAY-ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header" style="padding: 10px 16px;">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin thời gian làm việc của máy</h4>
                            </div>
                            <div class="modal-body" style="padding: 6px 16px;">
                                <div class="">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Ký hiệu máy: </label>
                                                <div class="col-sm-8">
                                                    <input type="text" disabled="" class="form-control" id="edit-THOIGIANLAMVIECMAY-THONGTINMAY-THONGSOCOBAN-KYHIEU" >
                                                    <input type="hidden" id="edit-THOIGIANLAMVIECMAY-THONGTINMAY-ID" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Năm hiện tại: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" id="edit-THOIGIANLAMVIECMAY-NAM" disabled="" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 1 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-THOIGIANLAMVIECMAY-QUYI" onchange="thayDoiSo()" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 2 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-THOIGIANLAMVIECMAY-QUYII" onchange="thayDoiSo()" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 3 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-THOIGIANLAMVIECMAY-QUYIII" onchange="thayDoiSo()" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong quý 4 trong năm: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" id="edit-THOIGIANLAMVIECMAY-QUYIV" onchange="thayDoiSo()" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong năm trước: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" disabled="" id="edit-THOIGIANLAMVIECMAY-NAMTRUOC" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong năm hiện tại: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" disabled="" id="edit-THOIGIANLAMVIECMAY-TONGTRONGNAM"  class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Thời gian làm việc trong năm hiện tại + năm trước: </label>
                                                <div class="col-sm-8">
                                                    <input type="number" min="0" step="any" disabled="" id="edit-THOIGIANLAMVIECMAY-TONG" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer" style="padding: 8px 16px;">
                                <button type="submit" onclick="edit_THOIGIANLAMVIECMAY()" class="btn btn-info">Cập nhật</button>
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
            Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                history.back();
            }
            else {
                Load_Title(Ship_ID);
                loadDSNam();
                loadDSMay();
            }
        });
        function loadDSMay() {
            var textselect = '';
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychinh?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    textselect += '<optgroup label="Máy chính">';
                    $.each(data, function (key, item) {
                        textselect += "<option value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                    });
                    textselect += '</optgroup>';
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
                            textselect += '<optgroup label="Máy phụ">';
                            $.each(data, function (key, item) {
                                textselect += "<option value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                            });
                            textselect += '</optgroup>';
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
                                    textselect += '<optgroup label="Máy chuyên dụng">';
                                    $.each(data, function (key, item) {
                                        textselect += "<option value=" + item.ID + ">" + item.THONGSOCOBAN.KYHIEU + "</option>";
                                    });
                                    textselect += '</optgroup>';
                                    console.log("okGET");
                                }, error: function (ret) {
                                    console.log('errorGET');
                                },
                                complete: function () {
                                    $("#add-THOIGIANLAMVIECMAY-THONGTINMAY-ID").html(textselect);
                                    $("#edit-THOIGIANLAMVIECMAY-THONGTINMAY-ID").html(textselect);
                                }
                            });
                        }
                    });
                }
            });
        }
        function loadDSNam() {
            var date = new Date();
            date = date.getFullYear();
            var i;
            var textnam = "";
            for (i = date; i >= 2000; i--) {
                textnam += '<option value=' + i + '>' + i + '</option>';
            }
            $("#NAM").html(textnam);
            chonNam(date);
        }
        function chonNam(nam) {
            $("#add-THOIGIANLAMVIECMAY-NAM").val(nam);
            $("#edit-THOIGIANLAMVIECMAY-NAM").val(nam);
            loadDataList_THOIGIANLAMVIECMAY(nam);
        }
        function thayDoiSo() {
            $("#edit-THOIGIANLAMVIECMAY-TONGTRONGNAM").val(Number($("#edit-THOIGIANLAMVIECMAY-QUYI").val()) + Number($("#edit-THOIGIANLAMVIECMAY-QUYII").val()) + Number($("#edit-THOIGIANLAMVIECMAY-QUYIII").val()) + Number($("#edit-THOIGIANLAMVIECMAY-QUYIV").val()));
            $("#edit-THOIGIANLAMVIECMAY-TONG").val(Number($("#edit-THOIGIANLAMVIECMAY-QUYI").val()) + Number($("#edit-THOIGIANLAMVIECMAY-QUYII").val()) + Number($("#edit-THOIGIANLAMVIECMAY-QUYIII").val()) + Number($("#edit-THOIGIANLAMVIECMAY-QUYIV").val()) + Number($("#edit-THOIGIANLAMVIECMAY-NAMTRUOC").val()));
        }
        function loadDataList_THOIGIANLAMVIECMAY(nam) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/xemthoigianhoatdongmaytrentau?id=" + getParameterByName("Ship_ID") + "&year=" + nam,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>KÝ HIỆU MÁY</th><th>CHUYỂN NĂM TRƯỚC</th><th>QUÝ I</th><th>QUÝ II</th><th>QUÝ III</th><th>QUÝ IV</th><th>TỔNG (4 QUÝ + NĂM TRƯỚC)</th><th>TÁC VỤ</th></tr></thead><tbody>";                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td style='text-align: center;>" + i + "</td><td>" + item.THONGTINMAY.THONGSOCOBAN.KYHIEU + "</td><td>" + item.NAMTRUOC + "</td><td>" + item.QUYI + "</td><td>" + item.QUYII + "</td><td>" + item.QUYIII + "</td><td>" + item.QUYIV + "</td><td>" + item.TONG + '</td><td><div style="display: flex; justify-content: center;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-THOIGIANLAMVIECMAY"  onclick="onclick_edit_THOIGIANLAMVIECMAY(`' + item.ID + '`,`' + item.THONGTINMAY.ID + '`,`' + item.THONGTINMAY.THONGSOCOBAN.KYHIEU + '`,`' + item.QUYI + '`,`' + item.QUYII + '`,`' + item.QUYIII + '`,`' + item.QUYIV + '`,`' + item.NAMTRUOC + '`,`' + item.TONGTRONGNAM + '`,`' + item.TONG + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_THOIGIANLAMVIECMAY(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-THOIGIANLAMVIECMAY').html(tabletext);
                    loadTableTHOIGIANLAMVIECMAY();
                    console.log(data);
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableTHOIGIANLAMVIECMAY() {
            $('table[id=table-THOIGIANLAMVIECMAY]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 50 },
                        { name: 'KÝ HIỆU MÁY', width: 380 },
                        { name: 'CHUYỂN NĂM TRƯỚC', width: 200 },
                        { name: 'QUÝ I', width: 200 },
                        { name: 'QUÝ II', width: 200 },
                        { name: 'QUÝ III', width: 200 },
                        { name: 'QUÝ IV', width: 200 },
                        { name: 'TỔNG (4 QUÝ + NĂM TRƯỚC)', width: 400 },
                        { name: 'TÁC VỤ', width: 150 },
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
        function add_THOIGIANLAMVIECMAY() {
            var form = document.getElementById("form-add-THOIGIANLAMVIECMAY");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var THOIGIANLAMVIECMAY = {
                    ID: "",
                    NAM: $("#add-THOIGIANLAMVIECMAY-NAM").val(),
                    QUYI: $("#add-THOIGIANLAMVIECMAY-QUYI").val(),
                    QUYII: $("#add-THOIGIANLAMVIECMAY-QUYII").val(),
                    QUYIII: $("#add-THOIGIANLAMVIECMAY-QUYIII").val(),
                    QUYIV: $("#add-THOIGIANLAMVIECMAY-QUYIV").val(),
                    THONGTINMAY: {
                        ID: $("#add-THOIGIANLAMVIECMAY-THONGTINMAY-ID").val(),
                    }
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/themnhatkyhoatdongmay?id=" + THOIGIANLAMVIECMAY.THONGTINMAY.ID,
                    dataType: "json",
                    data: JSON.stringify(THOIGIANLAMVIECMAY),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin thời gian làm việc của máy thành công.");
                        loadDataList_THOIGIANLAMVIECMAY(THOIGIANLAMVIECMAY.NAM);
                        $("#NAM").val(THOIGIANLAMVIECMAY.NAM);
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-THOIGIANLAMVIECMAY').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_THOIGIANLAMVIECMAY(ID, IDMAY, KYHIEU, QUYI, QUYII, QUYIII, QUYIV, NAMTRUOC, TONGTRONGNAM, TONG) {
            $('#edit-THOIGIANLAMVIECMAY-ID').val(ID);
            $("#edit-THOIGIANLAMVIECMAY-THONGTINMAY-ID").val(IDMAY);
            $("#edit-THOIGIANLAMVIECMAY-THONGTINMAY-THONGSOCOBAN-KYHIEU").val(KYHIEU);
            $("#edit-THOIGIANLAMVIECMAY-QUYI").val(QUYI);
            $("#edit-THOIGIANLAMVIECMAY-QUYII").val(QUYII);
            $("#edit-THOIGIANLAMVIECMAY-QUYIII").val(QUYIII);
            $("#edit-THOIGIANLAMVIECMAY-QUYIV").val(QUYIV);
            $("#edit-THOIGIANLAMVIECMAY-NAMTRUOC").val(NAMTRUOC);
            $("#edit-THOIGIANLAMVIECMAY-TONGTRONGNAM").val(TONGTRONGNAM);
            $("#edit-THOIGIANLAMVIECMAY-TONG").val(TONG);
            $.ajax({
                type: "GET",
                url: linkapi + "v2/xemthoigianhoatdongchitiettungmay?id=" + IDMAY + "&year=" + $("#NAM").val(),
                dataType: "json",
                success: function (data) {
                    $('#edit-THOIGIANLAMVIECMAY-ID').val(data.ID);
                    console.log(data);
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        }
        function edit_THOIGIANLAMVIECMAY() {
            var form = document.getElementById("form-edit-THOIGIANLAMVIECMAY");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var THOIGIANLAMVIECMAY = {
                    ID: $("#edit-THOIGIANLAMVIECMAY-ID").val(),
                    NAM: $("#edit-THOIGIANLAMVIECMAY-NAM").val(),
                    QUYI: $("#edit-THOIGIANLAMVIECMAY-QUYI").val(),
                    QUYII: $("#edit-THOIGIANLAMVIECMAY-QUYII").val(),
                    QUYIII: $("#edit-THOIGIANLAMVIECMAY-QUYIII").val(),
                    QUYIV: $("#edit-THOIGIANLAMVIECMAY-QUYIV").val(),
                    THONGTINMAY: {
                        ID: $("#edit-THOIGIANLAMVIECMAY-THONGTINMAY-ID").val(),
                    }
                };
                console.log(THOIGIANLAMVIECMAY);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/capnhatnhatkyhoatdongmay?id=" + THOIGIANLAMVIECMAY.ID,
                    dataType: "json",
                    data: JSON.stringify(THOIGIANLAMVIECMAY),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật nhật ký làm việc của máy thành công.");
                        loadDataList_THOIGIANLAMVIECMAY($("#edit-THOIGIANLAMVIECMAY-NAM").val());
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-THOIGIANLAMVIECMAY').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_THOIGIANLAMVIECMAY(id) {
            let text = "Bạn có chắc muốn xóa bơm dầu, nước và thông gió này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/xoanhatkyhoatdongmay?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_THOIGIANLAMVIECMAY($("#NAM").val());
                    toastSuccess("Thành công", "Xóa nhật ký làm việc của máy thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa nhật ký làm việc của máy không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
