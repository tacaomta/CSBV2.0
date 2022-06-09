<%@ Page Title="Tính năng các thiết bị trên tàu" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="TinhNangThietBi.aspx.cs" Inherits="CSB.Page_Master.TinhNangThietBi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">TÍNH NĂNG CÁC THIẾT BỊ - <span id="tenTau">Tên tàu</span></h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#!">Quản lý tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Hồ sơ tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Tính năng thiết bị</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <div class="">
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#HANGHAI">Hàng hải</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#VUKHI">Vũ khí</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#RADA">Rada</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#TOMAY">Các tổ máy</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#HETRUCHANVIT">Hệ trục chân vịt</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#NEO-XICHNEO">Neo, xích neo</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#BOMDAU-NUOC-THONGGIO">Bơm dầu, nước, thông gió</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#TRANGBIKHAC">Trang bị khác</a>
                                    </li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div id="HANGHAI" class="container tab-pane active">
                                        <br>
                                        <h5>HÀNG HẢI</h5>
                                        <div class="btn-group">
                                            <button onclick="loadDataList_HANGHAI()" class="btn btn-primary mb-2"><span class="glyphicon glyphicon-refresh"></span>&nbsp;Load dữ liệu</button>
                                            <button id="btn_add_HANGHAI" class="btn btn-primary mb-2" data-toggle="modal" data-target="#model-add-HANGHAI" style="padding-top: 4px;"><span class="glyphicon glyphicon-plus-sign"></span>Thêm hàng hải</button>
                                        </div>
                                        <table id="table-HANGHAI" class="table table-bordered table-striped table-md" style="width: 100%">
                                        </table>
                                    </div>
                                    <div id="VUKHI" class="container tab-pane">
                                        <br>
                                        <h5>VŨ KHÍ</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div id="RADA" class="container tab-pane">
                                        <br>
                                        <h5>THÔNG TIN - RA ĐA</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div id="TOMAY" class="container tab-pane">
                                        <br>
                                        <h5>MÁY CHÍNH, MÁY PHỤ VÀ CÁC TỔ HỢP MÁY CHUYÊN DỤNG</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div id="HETRUCHANVIT" class="container tab-pane">
                                        <br>
                                        <h5>HỆ TRỤC CHÂN VỊT</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div id="NEO-XICHNEO" class="container tab-pane">
                                        <br>
                                        <h5>NEO, XÍCH NEO</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div id="BOMDAU-NUOC-THONGGIO" class="container tab-pane">
                                        <br>
                                        <h5>BẢNG THỐNG KÊ CÁC BƠM DẦU, NƯỚC VÀ THÔNG GIÓ</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                    <div id="TRANGBIKHAC" class="container tab-pane">
                                        <br>
                                        <h5>CÁC TRANG BỊ KHÁC</h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <div id="modal">
        <div class="modal fade" id="model-add-HANGHAI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-add-HANGHAI" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Thêm thông tin hàng hải của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add-HANGHAI-KYHIEU" placeholder="Nhập ký hiệu hàng hải" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" class="form-control" id="add-HANGHAI-SOLUONG" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="add_HANGHAI()" class="btn btn-info">Thêm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="model-edit-HANGHAI" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form id="form-edit-HANGHAI" onsubmit="return false">
                        <div class="card auth_form" style="margin-bottom: 0px">
                            <div class="modal-header">
                                <h4 class="title-modal-banve font-weight-bold">Sửa thông tin hàng hải của tàu</h4>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" id="edit-HANGHAI-ID" />
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="edit-HANGHAI-KYHIEU" placeholder="Nhập ký hiệu hàng hải" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="number" class="form-control" id="edit-HANGHAI-SOLUONG" name="GhiChu" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" onclick="edit_HANGHAI()" class="btn btn-info">Lưu</button>
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
        }
        $(document).ready(function () {
            loadDataList_HANGHAI();
        });

        // HÀNG HẢI
        function loadDataList_HANGHAI() {
            $.ajax({
                type: "GET",
                url: linkapi + "/v2/hanghai?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Ký hiệu</th><th>Số lượng</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.KYHIEU + "</td><td>" + item.SOLUONG + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-HANGHAI"  onclick="onclick_edit_HANGHAI(`' + item.ID + '`,`' + item.KYHIEU + '`,`' + item.SOLUONG + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_HANGHAI(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table-HANGHAI').html(tabletext);
                    console.log("okGET");
                    loadTableHANGHAI();
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function loadTableHANGHAI() {
            $('table[id=table-HANGHAI]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Ký hiệu', width: 380 },
                        { name: 'Số lượng', width: 380 },
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
        function add_HANGHAI() {
            var form = document.getElementById("form-add-HANGHAI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var HANGHAI = {
                    KYHIEU: $("#add-HANGHAI-KYHIEU").val(),
                    SOLUONG: $("#add-HANGHAI-SOLUONG").val()
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_hanghai?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(HANGHAI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin hàng hải thành công.");
                        loadDataList_HANGHAI();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#add-HANGHAI-KYHIEU").val("");
                        $("#add-HANGHAI-SOLUONG").val("");
                        $('#model-add-HANGHAI').modal("hide");
                    },
                });
            }
            return false;
        }
        function onclick_edit_HANGHAI(ID, KYHIEU, SOLUONG) {
            $('#edit-HANGHAI-ID').val(ID);
            $("#edit-HANGHAI-KYHIEU").val(KYHIEU);
            $("#edit-HANGHAI-SOLUONG").val(SOLUONG);
        }
        function edit_HANGHAI() {
            var form = document.getElementById("form-edit-HANGHAI");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var HANGHAI = {
                    ID: $("#edit-HANGHAI-ID").val(),
                    KYHIEU: $("#edit-HANGHAI-KYHIEU").val(),
                    SOLUONG: $("#edit-HANGHAI-SOLUONG").val()
                };
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/update_hanghai?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(HANGHAI),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Cập nhật thông tin hàng hải thành công.");
                        loadDataList_HANGHAI();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-HANGHAI').modal("hide");
                    },
                });
            }
            return false;
        }
        function delete_HANGHAI(id) {
            let text = "Bạn có chắc muốn xóa hàng hải này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "/v2/delete_hanghai?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_HANGHAI();
                    toastSuccess("Thành công", "Xóa thông tin hàng hải thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin hàng hải không thành công!");
                })
            } else {

            }
        }

        // VŨ KHÍ
    </script>
</asp:Content>
