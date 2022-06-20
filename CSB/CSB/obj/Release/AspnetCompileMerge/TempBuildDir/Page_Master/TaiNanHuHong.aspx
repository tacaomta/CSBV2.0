<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="TaiNanHuHong.aspx.cs" Inherits="CSB.Page_Master.TaiNanHuHong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">ĐĂNG KÝ TAI NẠN HƯ HỎNG TÀU <span id="TENTAU"></span></h5>
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
                                    <button onclick="loadDataList_DANGKYTAINANHUHONG()" class="btn btn-secondary mb-2"><span class="bi-arrow-clockwise"></span>&nbsp;Load dữ liệu</button>
                                    <button id="btn_add_DANGKYTAINANHUHONG" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-DANGKYTAINANHUHONG" style="padding-top: 4px;"><span class="bi bi-plus-circle"></span> Thêm mới</button>
                                </div>
                            </div>

                            <table id="table-DANGKYTAINANHUHONG" class="table table-bordered table-striped table-md" style="width: 100%">
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-add-DANGKYTAINANHUHONG" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <form id="form-add-DANGKYTAINANHUHONG" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold"> Thêm đăng ký tai nạn hư hỏng</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Thời gian   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="date" class="form-control" id="add-DANGKYTAINANHUHONG-THOIGIAN" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Địa điểm   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-DANGKYTAINANHUHONG-DIADIEM" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Loại tai nạn, hư hỏng   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-DANGKYTAINANHUHONG-LOAI" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Mức độ hư hỏng   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-DANGKYTAINANHUHONG-MUCDO">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Nguyên nhân  : </strong></label>
                                            <div class="col-md-7" style="display: flex;justify-content: space-around;">
                                                <div class="">
                                                    <input type="checkbox" name="add-DANGKYTAINANHUHONG-NGUYENNHAN" id="add-DANGKYTAINANHUHONG-NGUYENNHAN-KHACHQUAN"/> Khách quan
                                                </div>
                                                <div class="">
                                                    <input type="checkbox" name="add-DANGKYTAINANHUHONG-NGUYENNHAN" id="add-DANGKYTAINANHUHONG-NGUYENNHAN-CHUQUAN"/> Chủ quan
                                                </div>
                                                <div class="">
                                                    <input type="checkbox" name="add-DANGKYTAINANHUHONG-NGUYENNHAN" id="add-DANGKYTAINANHUHONG-NGUYENNHAN-TRINHDO"/> Trình độ
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ghi chú   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-DANGKYTAINANHUHONG-GHICHU">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_DANGKYTAINANHUHONG()" class="btn btn-info"> Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-DANGKYTAINANHUHONG" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <form id="form-edit-DANGKYTAINANHUHONG" onsubmit="return false">
                        <input type="hidden" id="edit-DANGKYTAINANHUHONG-ID" />
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold"> Sửa đăng ký tai nạn hư hỏng</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Thời gian   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="date" class="form-control" id="edit-DANGKYTAINANHUHONG-THOIGIAN" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Địa điểm   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="edit-DANGKYTAINANHUHONG-DIADIEM" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Loại tai nạn, hư hỏng   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="edit-DANGKYTAINANHUHONG-LOAI" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Mức độ hư hỏng   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="edit-DANGKYTAINANHUHONG-MUCDO">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Nguyên nhân  : </strong></label>
                                            <div class="col-md-7" style="display: flex;justify-content: space-around;">
                                                <div class="">
                                                    <input type="checkbox" name="edit-DANGKYTAINANHUHONG-NGUYENNHAN" id="edit-DANGKYTAINANHUHONG-NGUYENNHAN-KHACHQUAN"/> Khách quan
                                                </div>
                                                <div class="">
                                                    <input type="checkbox" name="edit-DANGKYTAINANHUHONG-NGUYENNHAN" id="edit-DANGKYTAINANHUHONG-NGUYENNHAN-CHUQUAN"/> Chủ quan
                                                </div>
                                                <div class="">
                                                    <input type="checkbox" name="edit-DANGKYTAINANHUHONG-NGUYENNHAN" id="edit-DANGKYTAINANHUHONG-NGUYENNHAN-TRINHDO"/> Trình độ
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ghi chú   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="edit-DANGKYTAINANHUHONG-GHICHU">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_DANGKYTAINANHUHONG()" class="btn btn-info"> Cập nhật</button>
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
                loadDataList_DANGKYTAINANHUHONG();
            }
        });
        function loadDataList_DANGKYTAINANHUHONG() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/xemdanhmuctainanhuhong?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    var tabletext = "<thead><tr><th rowspan='2'>STT</th><th rowspan='2'>Thời gian</th><th rowspan='2'>Địa điểm</th><th rowspan='2'>Loại tai nạn, hư hỏng</th><th rowspan='2'>Mức độ</th><th colspan='3'>Nguyên nhân</th><th rowspan='2'>Tác vụ</th></tr><tr><th>Khách quan</th><th>Chủ quan</th><th>Trình độ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.THOIGIAN + "</td><td>" + item.DIADIEM + "</td><td>" + item.LOAI + "</td><td>" + item.MUCDO + "</td><td style='text-align: center;'>";
                        if (item.NGUYENNHAN.KHACHQUAN == true) {
                            tabletext += '<i class="bi bi-check-square"></i>';
                        }
                        else {
                            tabletext += '<i class="bi bi-square"></i>';
                        }
                        tabletext += "</td><td style='text-align: center;'>";
                        if (item.NGUYENNHAN.CHUQUAN == true) {
                            tabletext += '<i class="bi bi-check-square"></i>';
                        }
                        else {
                            tabletext += '<i class="bi bi-square"></i>';
                        }
                        tabletext += "</td><td style='text-align: center;'>";
                        if (item.NGUYENNHAN.TRINHDO == true) {
                            tabletext += '<i class="bi bi-check-square"></i>';
                        }
                        else {
                            tabletext += '<i class="bi bi-square"></i>';
                        }
                        tabletext += '</td><td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-DANGKYTAINANHUHONG"  onclick="onclick_edit_DANGKYTAINANHUHONG(`' + item.ID + '`,`' + item.THOIGIAN + '`,`' + item.DIADIEM + '`,`' + item.LOAI + '`,`' + item.MUCDO + '`,`' + item.NGUYENNHAN.KHACHQUAN + '`,`' + item.NGUYENNHAN.CHUQUAN + '`,`' + item.NGUYENNHAN.TRINHDO + '`,`' + item.GHICHU + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_DANGKYTAINANHUHONG(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-DANGKYTAINANHUHONG').html(tabletext);
                    console.log("okGET");
                    loadTableDANGKYTAINANHUHONG();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableDANGKYTAINANHUHONG() {
            $('table[id=table-DANGKYTAINANHUHONG]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Thời gian', width: 380 },
                        { name: 'Địa điểm', width: 200 },
                        { name: 'Loại tai nạn, hư hỏng', width: 280 },
                        { name: 'Mức độ', width: 280 },
                        { name: 'Khách quan', width: 200 },
                        { name: 'Chủ quan', width: 200 },
                        { name: 'Trình độ', width: 200 },
                        { name: 'Tác vụ', width: 150 },
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
        function add_DANGKYTAINANHUHONG() {
            var form = document.getElementById("form-add-DANGKYTAINANHUHONG");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYTAINANHUHONG = {
                    THOIGIAN: $("#add-DANGKYTAINANHUHONG-THOIGIAN").val(),
                    DIADIEM: $("#add-DANGKYTAINANHUHONG-DIADIEM").val(),
                    LOAI: $("#add-DANGKYTAINANHUHONG-LOAI").val(),
                    MUCDO: $("#add-DANGKYTAINANHUHONG-MUCDO").val(),
                    NGUYENNHAN: {
                        KHACHQUAN: document.getElementById('add-DANGKYTAINANHUHONG-NGUYENNHAN-KHACHQUAN').checked,
                        CHUQUAN: document.getElementById('add-DANGKYTAINANHUHONG-NGUYENNHAN-CHUQUAN').checked,
                        TRINHDO: document.getElementById('add-DANGKYTAINANHUHONG-NGUYENNHAN-TRINHDO').checked
                    },
                    GHICHU: $("#add-DANGKYTAINANHUHONG-GHICHU").val()
                };
                console.log(DANGKYTAINANHUHONG);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/themdangkytainanhuhong?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(DANGKYTAINANHUHONG),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin đăng ký tai nạn hư hỏng thành công.");
                        loadDataList_DANGKYTAINANHUHONG();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        //$("#add-DANGKYTAINANHUHONG-THOIGIAN").val("");
                        //$("#add-DANGKYTAINANHUHONG-LOAI").val("");
                        //$("#add-DANGKYTAINANHUHONG-MUCDO").val("");
                        //$("#add-DANGKYTAINANHUHONG-DIADIEM").val("");
                        //$("#add-DANGKYTAINANHUHONG-GHICHU").val("");
                        $('#model-add-DANGKYTAINANHUHONG').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_DANGKYTAINANHUHONG(ID, THOIGIAN, DIADIEM, LOAI, MUCDO, KHACHQUAN, CHUQUAN, TRINHDO, GHICHU) {
            $('#edit-DANGKYTAINANHUHONG-ID').val(ID);
            $("#edit-DANGKYTAINANHUHONG-THOIGIAN").val(THOIGIAN);
            $("#edit-DANGKYTAINANHUHONG-DIADIEM").val(DIADIEM);
            $("#edit-DANGKYTAINANHUHONG-LOAI").val(LOAI);
            $("#edit-DANGKYTAINANHUHONG-MUCDO").val(MUCDO);
            $('#edit-DANGKYTAINANHUHONG-NGUYENNHAN-KHACHQUAN').prop('checked', KHACHQUAN);
            $('#edit-DANGKYTAINANHUHONG-NGUYENNHAN-CHUQUAN').prop('checked', KHACHQUAN);
            $('#edit-DANGKYTAINANHUHONG-NGUYENNHAN-TRINHDO').prop('checked', KHACHQUAN);
            $('#edit-DANGKYTAINANHUHONG-GHICHU').val(GHICHU);
        }
        function edit_DANGKYTAINANHUHONG() {
            var form = document.getElementById("form-edit-DANGKYTAINANHUHONG");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var DANGKYTAINANHUHONG = {
                    ID: $("#edit-DANGKYTAINANHUHONG-ID").val(),
                    THOIGIAN: $("#edit-DANGKYTAINANHUHONG-THOIGIAN").val(),
                    DIADIEM: $("#edit-DANGKYTAINANHUHONG-DIADIEM").val(),
                    LOAI: $("#edit-DANGKYTAINANHUHONG-LOAI").val(),
                    MUCDO: $("#edit-DANGKYTAINANHUHONG-MUCDO").val(),
                    NGUYENNHAN: {
                        KHACHQUAN: document.getElementById('edit-DANGKYTAINANHUHONG-NGUYENNHAN-KHACHQUAN').checked,
                        CHUQUAN: document.getElementById('edit-DANGKYTAINANHUHONG-NGUYENNHAN-CHUQUAN').checked,
                        TRINHDO: document.getElementById('edit-DANGKYTAINANHUHONG-NGUYENNHAN-TRINHDO').checked
                    },
                    GHICHU: $("#edit-DANGKYTAINANHUHONG-GHICHU").val()
                };
                console.log(DANGKYTAINANHUHONG);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/capnhatnhatkytainanhuhong?id=" + DANGKYTAINANHUHONG.ID,
                    dataType: "json",
                    data: JSON.stringify(DANGKYTAINANHUHONG),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin đăng ký tai nạn hư hỏng thành công.");
                        loadDataList_DANGKYTAINANHUHONG();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-DANGKYTAINANHUHONG').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_DANGKYTAINANHUHONG(id) {
            let text = "Bạn có chắc muốn xóa đăng ký tai nạn hư hỏng này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/xoanhatkytainanhuhong?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_DANGKYTAINANHUHONG();
                    toastSuccess("Thành công", "Xóa thông tin đăng ký tai nạn hư hỏng thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin đăng ký tai nạn hư hỏng không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
