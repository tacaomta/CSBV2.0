<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_ChuyenNganh.aspx.cs" Inherits="CSB.Page_Master.Manage_ChuyenNganh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ CHUYÊN NGÀNH</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                        <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý chuyên ngành</a></div>
                    </div>
                </div>
                <div class="section-header">
                    <div class="col-md-12">
                        <table id="table_major" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-major" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm chuyên ngành mới</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên chuyên ngành   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenChuyenNganh_addmajor" name="TenChuyenNganh" placeholder="Nhập tên chuyên ngành" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_addmajor" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddMajor" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Major()" type="submit" class="btn btn-info">Thêm</button>
                        <button onclick="Close_AddMajor()" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-edit-major" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin chuyên ngành </h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <input hidden id="id_editmajor" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên chuyên ngành  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenChuyenNganh_editmajor" name="TenChuyenNganh" placeholder="Nhập tên chuyên  ngành" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_editmajor" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            
                            <p id="Error_EditMajor" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Edit_Major()" type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_Major();
        });
        function loadDataList_Major() {
            $.ajax({
                type: "GET",
                url: linkapi + "majors",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên chuyên ngành</th><th>Ghi chú</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Note + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-major"  onclick="editmajor(`' + item.ID + '`,`' + item.Name + '`,`' + item.Note + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_major(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_major').html(tabletext);
                    console.log("okGET");
                    loadTableFlotilla();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        };
        function loadTableFlotilla() {
            $('table[id=table_major]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Tên chuyên ngành', width: 380 },
                        { name: 'Ghi chú' },
                        { name: 'Tác vụ', width: 90 },
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
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listmajor()" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-refresh"></span> &nbsp;Load dữ liệu</button><button id="btn_addmajor" onclick="btn_addmajor()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-major" style=" padding - top: 4px;margin - top: -4px;"><span class="glyphicon glyphicon-plus-sign"></span> Thêm chuyên ngành</button></div>');
            });
        };
        function btn_Load_listmajor() {
            location.reload(true);
        }

        function btn_addmajor() {
            $('#Error_AddMajor').attr('hidden', '');
            $("#TenChuyenNganh_addmajor").val("");
            $("#GhiChu_addmajor").val("");
        }

        function Add_Major() {
            if ($("#TenChuyenNganh_addmajor").val() == "") {
                $("#Error_AddMajor").text("Chưa nhập tên chuyên ngành!");
                $("#Error_AddMajor").removeAttr('hidden');
            }
            else {
                var major = {
                    Name: $("#TenChuyenNganh_addmajor").val(),
                    Note: $("#GhiChu_addmajor").val()
                };
                console.log(major);
                $.ajax({
                    type: "POST",
                    url: linkapi + "insert_major",
                    dataType: "json",
                    data: JSON.stringify(major),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm chuyên ngành mới thành công.");
                        loadDataList_Major();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-major').modal("hide");

                    },
                });
            }
        }
        function editmajor(id_major, name_major, note_major) {
            $('#Error_EditMajor').attr('hidden', '');
            $("#id_editmajor").val(id_major);
            $("#TenChuyenNganh_editmajor").val(name_major);
            $("#GhiChu_editmajor").val(note_major);
        }
        function Edit_Major() {
            if ($("#TenChuyenNganh_editmajor").val() == "") {
                $("#Error_EditMajor").text("Chưa nhập tên chuyên ngành!");
                $("#Error_EditMajor").removeAttr('hidden');
            }
            else {
                var major = {
                    Name: $("#TenChuyenNganh_editmajor").val(),
                    Note: $("#GhiChu_editmajor").val()
                };
                var id_major = $("#id_editmajor").val();
                console.log(major);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "update_major?id=" + id_major,
                    dataType: "json",
                    data: JSON.stringify(major),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa chuyên ngành thành công.");
                        loadDataList_Major();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-major').modal("hide");

                    },
                });
            }
        }
        function delete_major(major_id) {
            let text = "Bạn có chắc muốn xóa chuyên ngành này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_major?id=" + major_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Major();
                    toastSuccess("Thành công", "Xóa chuyên ngành thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa chuyên ngành không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
