<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="HoatDongTau.aspx.cs" Inherits="CSB.Page_Master.HoatDongTau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #table_NhatKyHoatDongCuaTau_wrapper {
            overflow-x: hidden;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_nhatkyhoatdongcuatau" style="color: black; margin: 0; margin-left: 15px;">NHẬT KÝ HOẠT ĐỘNG CỦA TÀU</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="Manage_Tau?vung=1" style="color: #01b5f9">Quản lý tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" onclick="HoSoTau()" style="color: #01b5f9">Hồ sơ tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Theo dõi hoạt động của tàu</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <div class="btn-group">
                            <button onclick="btn_loadDataList_NhatKy()" class="btn btn-secondary mb-2"><i class="bi-arrow-clockwise"></i>&nbsp;Load dữ liệu</button>
                            <button id="btn_add_NhatKy" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-NhatKy" style="padding-top: 4px;"><i class="bi bi-plus-circle"></i>&nbsp; Thêm mới</button>
                        </div>
                        <table id="table_NhatKyHoatDongCuaTau" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-NhatKy" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="form-add-NhatKy" onsubmit="return false">
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Thêm nhật ký hoạt động của tàu</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="row clearfix ">
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Ngày, tháng, năm   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="date" class="form-control" id="NhatKy_addNgayThangNam" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Nơi xuất phát  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="NhatKy_addNoiXuatPhat" placeholder="Nhập nơi xuất phát" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Nơi đến  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="NhatKy_addNoiDen" placeholder="Nhập nơi đến">
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Số ngày hoạt động   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="number" step="any" class="form-control" id="NhatKy_addSoNgayHD" required min="0">
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Tổng số HLHT  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="number" step="any" class="form-control" id="NhatKy_addTongHaiLy" required min="0">
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="NhatKy_addGhiChu" placeholder="Nhập ghi chú">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="add_NhatKy()" class="btn btn-info">Thêm</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-edit-NhatKy" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="form-edit-NhatKy" onsubmit="return false">
                    <input type="hidden" id="NhatKy_editID" />
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Sửa nhật ký hoạt động của tàu</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="row clearfix ">
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Ngày, tháng, năm   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="date" class="form-control" id="NhatKy_editNgayThangNam" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Nơi xuất phát  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="NhatKy_editNoiXuatPhat" placeholder="Nhập nơi xuất phát" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Nơi đến  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="NhatKy_editNoiDen" placeholder="Nhập nơi đến">
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Số ngày hoạt động   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="number" step="any" class="form-control" id="NhatKy_editSoNgayHD" required min="0">
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Tổng số HLHT  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="number" step="any" class="form-control" id="NhatKy_editTongHaiLy" required min="0">
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="NhatKy_editGhiChu" placeholder="Nhập ghi chú">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="btn_edit_NhatKy()" class="btn btn-info">Lưu</button>
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
        var date = new Date();
        if (Number(date.getMonth()) + 1 < 10) {
            debugger
            var strDate_ntn = '' + date.getFullYear() + '-' + '0' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }
        else {
            var strDate_ntn = '' + date.getFullYear() + '-' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }
        var Ship_ID;
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
            Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                history.back();
            }
            else {
                Load_Title(Ship_ID);
                loadDataList_NhatKy(Ship_ID);
            }

        });
        function Load_Title(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    $("#title_nhatkyhoatdongcuatau").html("NHẬT KÝ HOẠT ĐỘNG CỦA TÀU " + data.TTCOBAN.SOHIEU);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });
        }

        function HoSoTau() {
            window.location = baseaddress + "Page_Master/Ship_profile?Ship_ID=" + Ship_ID;
        }
        function loadDataList_NhatKy(Ship_ID) {
            {
                $.ajax({
                    type: "GET",
                    url: linkapi + "v2/nhatkyhoatdongtau?id=" + Ship_ID,
                    dataType: "json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                        $('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th>STT</th><th>NGÀY, THÁNG, NĂM</th><th>NƠI XUẤT PHÁT</th><th>NƠI ĐẾN</th><th>SỐ NGÀY HOẠT ĐỘNG</th><th>TỔNG SỐ HLHT</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                        var i = 1;
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.NGAYTHANG + "</td><td>" + item.NOIXUATPHAT + "</td><td>" + item.NOIDEN + "</td><td>" + item.SONGAYHD + "</td><td>" + item.HAILY + "</td><td>" + item.GHICHU + "</td>" + '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-NhatKy" onclick="edit_nhatky(`' + item.ID + '`,`' + item.NGAYTHANG + '`,`' + item.NOIXUATPHAT + '`,`' + item.NOIDEN + '`,`' + item.SONGAYHD + '`,`' + item.HAILY + '`,`' + item.GHICHU + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_nhatky(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                            i = i + 1;
                        });
                        tabletext += "</tbody>";
                        $('#table_NhatKyHoatDongCuaTau').html(tabletext);
                        loadTableNhatKy();
                        //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#loader').addClass('hidden');
       /*                 $('#model-edit-user').addClass('hidden');*/
                    },
                });
            }
        }
        function loadTableNhatKy() {
            $('table[id=table_NhatKyHoatDongCuaTau]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 20 },
                        { name: 'NGÀY, THÁNG, NĂM', width: 100 },
                        { name: 'NƠI XUẤT PHÁT', width: 100 },
                        { name: 'NƠI ĐẾN', width: 100 },
                        { name: 'SỐ NGÀY HOẠT ĐỘNG', width: 120 },
                        { name: 'TỔNG SỐ HLHT', width: 100 },
                        { name: 'GHI CHÚ', width: 100 },
                        { name: 'TÁC VỤ', width: 60 },
                    ],
                    lengthChange: false,
                    "columnDefs": [
                        {
                            "targets": [0, 3, 4, 5],
                            "searchable": false,
                        },
                        {
                            "targets": [5],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1, 2, 3, 4],
                            "orderable": true
                        }
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
        function btn_loadDataList_NhatKy() {
            Load_Title(Ship_ID);
            loadDataList_NhatKy(Ship_ID);
        }
        function add_NhatKy() {
            var form = document.getElementById("form-add-NhatKy");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var date_ntn = new Date($("#NhatKy_addNgayThangNam").val());
                var day = date_ntn.getDate();
                var month = date_ntn.getMonth();
                month++;
                var year = date_ntn.getFullYear();
                if (day < 10) {
                    day = '0' + day;
                }
                if (month < 10) {
                    month = '0' + month;
                }
                date_ntn = day + '/' + month + '/' + year;
                var NhatKy = {

                    NGAYTHANG: date_ntn,
                    NOIXUATPHAT: $("#NhatKy_addNoiXuatPhat").val(),
                    NOIDEN: $("#NhatKy_addNoiDen").val(),
                    SONGAYHD: $("#NhatKy_addSoNgayHD").val(),
                    HAILY: $("#NhatKy_addTongHaiLy").val(),
                    GHICHU: $("#NhatKy_addGhiChu").val()
                };
                console.log(NhatKy);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/themnhatkyhoatdongtau?id=" + Ship_ID,
                    dataType: "json",
                    data: JSON.stringify(NhatKy),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm nhật ký hoạt động thành công.");
                        loadDataList_NhatKy(Ship_ID);
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#NhatKy_addNgayThangNam").val("");
                        $("#NhatKy_addNoiXuatPhat").val("");
                        $("#NhatKy_addNoiDen").val("");
                        $("#NhatKy_addSoNgayHD").val("");
                        $("#NhatKy_addTongHaiLy").val("");
                        $("#NhatKy_addGhiChu").val("");
                        $('#model-add-NhatKy').modal("hide");
                    },
                });
            }
        }

        function edit_nhatky(ID, NGAYTHANG, NOIXUATPHAT, NOIDEN, SONGAYHD, HAILY, GHICHU) {
            var day = NGAYTHANG.substring(0, 2);
            var month = NGAYTHANG.substring(3, 5);
            var year = NGAYTHANG.substring(6, 10);
            NGAYTHANG = year + '-' + month + '-' + day;
            $("#NhatKy_editID").val(ID);
            $("#NhatKy_editNgayThangNam").val(NGAYTHANG);
            $("#NhatKy_editNoiXuatPhat").val(NOIXUATPHAT);
            $("#NhatKy_editNoiDen").val(NOIDEN);
            $("#NhatKy_editSoNgayHD").val(SONGAYHD);
            $("#NhatKy_editTongHaiLy").val(HAILY);
            $("#NhatKy_editGhiChu").val(GHICHU);
        }

        function btn_edit_NhatKy() {
            var form = document.getElementById("form-edit-NhatKy");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var date_ntn = new Date($("#NhatKy_editNgayThangNam").val());
                var day = date_ntn.getDate();
                var month = date_ntn.getMonth();
                month++;
                var year = date_ntn.getFullYear();
                if (day < 10) {
                    day = '0' + day;
                }
                if (month < 10) {
                    month = '0' + month;
                }
                date_ntn = day + '/' + month + '/' + year;
                var id_nhatky = $("#NhatKy_editID").val();
                var NhatKy = {
                    NGAYTHANG: date_ntn,
                    NOIXUATPHAT: $("#NhatKy_editNoiXuatPhat").val(),
                    NOIDEN: $("#NhatKy_editNoiDen").val(),
                    SONGAYHD: $("#NhatKy_editSoNgayHD").val(),
                    HAILY: $("#NhatKy_editTongHaiLy").val(),
                    GHICHU: $("#NhatKy_editGhiChu").val()
                };
                console.log(NhatKy);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/capnhatnhatkyhoatdongtau?id=" + id_nhatky,
                    dataType: "json",
                    data: JSON.stringify(NhatKy),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa nhật ký hoạt động thành công.");
                        loadDataList_NhatKy(Ship_ID);
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#NhatKy_editNgayThangNam").val("");
                        $("#NhatKy_editNoiXuatPhat").val("");
                        $("#NhatKy_editNoiDen").val("");
                        $("#NhatKy_editSoNgayHD").val("");
                        $("#NhatKy_editTongHaiLy").val("");
                        $("#NhatKy_editGhiChu").val("");
                        $('#model-edit-NhatKy').modal("hide");
                    },
                });
            }
        }

        function delete_nhatky(id_nhatky) {
            let text = "Bạn có chắc muốn xóa hoạt động này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/xoanhatkyhoatdongtau?id=" + id_nhatky,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_NhatKy(Ship_ID);
                    toastSuccess("Thành công", "Xóa hoạt động thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa hoạt động không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
