<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Position.aspx.cs" Inherits="CSB.Page_Master.Manage_Position" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ CHỨC VỤ</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                        <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý chức vụ</a></div>
                    </div>
                </div>
                <div class="section-header">
                    <div class="col-md-12">
                        <table id="table_position" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-position" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm chức vụ mới</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên chức vụ   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenChucVu_addposition" name="TenChucVu" placeholder="Nhập tên chức vụ" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_addposition" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddPosition" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Position()" type="submit" class="btn btn-info">Thêm</button>
                        <button onclick="Close_AddPosition()" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="modal fade" id="model-edit-position" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin chức vụ </h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <input hidden id="id_editposition" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên chức vụ  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenChucVu_editposition" name="TenChucVu" placeholder="Nhập tên chức vụ" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_editposition" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            
                            <p id="Error_EditPosition" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Edit_Position()" type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_Position();
        });
        function loadDataList_Position() {
            $.ajax({
                type: "GET",
                url: linkapi + "positions",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên chức vụ</th><th>Ghi chú</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Note + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-position"  onclick="editposition(`' + item.ID + '`,`' + item.Name + '`,`' + item.Note + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_position(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_position').html(tabletext); 
                    console.log("okGET");
                    loadTablePosition();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        };
        function loadTablePosition() {
            $('table[id=table_position]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Tên chức vụ', width: 380 },
                        { name: 'Ghi chú' },
                        { name: 'Tác vụ', width: 150 },
                    ],
                    "columnDefs": [
                        {
                            "targets": [0, 3],
                            "searchable": false,
                        },
                        {
                            "targets": [3],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1, 2],
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
                table1.buttons().container()
                    .appendTo('this_wrapper .col-md-6:eq(0)');
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listposition()" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-refresh"></span> &nbsp;Load dữ liệu</button><button id="btn_addposition" onclick="btn_addposition()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-position" style=" padding - top: 4px;margin - top: -4px;"><span class="glyphicon glyphicon-plus-sign"></span> Thêm chức vụ</button></div>');
            });
        };
        function btn_Load_listposition() {
            location.reload(true);
        }

        function btn_addposition() {
            $('#Error_AddPosition').attr('hidden', '');
            $("#TenChucVu_addposition").val("");
            $("#GhiChu_addposition").val("");
        }

        function Add_Position() {
            if ($("#TenChucVu_addposition").val() == "") {
                $("#Error_AddPosition").text("Chưa nhập tên chức vụ!");
                $("#Error_AddPosition").removeAttr('hidden');
            }
            else {
                var position = {
                    Name: $("#TenChucVu_addposition").val(),
                    Note: $("#GhiChu_addposition").val()
                };
                console.log(position);
                $.ajax({
                    type: "POST",
                    url: linkapi + "insert_position",
                    dataType: "json",
                    data: JSON.stringify(position),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm chức vụ mới thành công.");
                        loadDataList_Position();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-position').modal("hide");

                    },
                });
            }
        }
        function editposition(id_position, name_position, note_position) {
            $('#Error_EditPosition').attr('hidden', '');
            $("#id_editposition").val(id_position);
            $("#TenChucVu_editposition").val(name_position);
            $("#GhiChu_editposition").val(note_position);
        }
        function Edit_Position() {
            if ($("#TenChucVu_editposition").val() == "") {
                $("#Error_EditPosition").text("Chưa nhập tên chức vụ!");
                $("#Error_EditPosition").removeAttr('hidden');
            }
            else {
                var position = {
                    Name: $("#TenChucVu_editposition").val(),
                    Note: $("#GhiChu_editposition").val()
                };
                var id_position = $("#id_editposition").val();
                console.log(position);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "update_position?id=" + id_position,
                    dataType: "json",
                    data: JSON.stringify(position),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa chức vụ thành công.");
                        loadDataList_Position();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-position').modal("hide");

                    },
                });
            }
        }
        function delete_position(position_id) {
            let text = "Bạn có chắc muốn xóa chức vụ này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_position?id=" + position_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Position();
                    toastSuccess("Thành công", "Xóa chức vụ thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa chức vụ không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
