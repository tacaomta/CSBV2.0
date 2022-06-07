<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Institution.aspx.cs" Inherits="CSB.Page_Master.Manage_Institution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ TRƯỜNG ĐÀO TẠO</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                        <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý trường đào tạo</a></div>
                    </div>
                </div>
                <div class="section-header">
                    <div class="col-md-12">
                        <table id="table_institution" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-institution" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm trường đào tạo mới</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên trường đào tạo   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenTDT_addinstitution" name="" placeholder="Nhập tên trường đào tạo" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_addinstitution" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddInstitution" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Institution()" type="submit" class="btn btn-info">Thêm</button>
                        <button onclick="Close_AddInstitution()" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-edit-institution" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin trường đào tạo </h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <input hidden id="id_editinstitution" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên trường đào tạo  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenTDT_editinstitution" name="TenTDT" placeholder="Nhập tên trường đào tạo" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_editinstitution" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>

                            <p id="Error_EditInstitution" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Edit_Institution()" type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_Institution();
        });
        function loadDataList_Institution() {
            $.ajax({
                type: "GET",
                url: linkapi + "institutions",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên trường đào tạo</th><th>Ghi chú</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Note + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-institution"  onclick="editinstitution(`' + item.ID + '`,`' + item.Name + '`,`' + item.Note + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_institution(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_institution').html(tabletext);
                    console.log("okGET");
                    loadTableInstitution();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        };
        function loadTableInstitution() {
            $('table[id=table_institution]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Tên trường đào tạo', width: 380 },
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
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listinstitution()" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-refresh"></span> &nbsp;Load dữ liệu</button><button id="btn_addinstitution" onclick="btn_addinstitution()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-institution" style=" padding - top: 4px;margin - top: -4px;"><span class="glyphicon glyphicon-plus-sign"></span> Thêm trường đào tạo</button></div>');
            });
        };
        function btn_Load_listinstitution() {
            location.reload(true);
        }

        function btn_addinstitution() {
            $('#Error_AddInstitution').attr('hidden', '');
            $("#TenTDT_addinstitution").val("");
            $("#GhiChu_addinstitution").val("");
        }

        function Add_Institution() {
            if ($("#TenTDT_addinstitution").val() == "") {
                $("#Error_AddInstitution").text("Chưa nhập tên trường đào tạo!");
                $("#Error_AddInstitution").removeAttr('hidden');
            }
            else {
                var institution = {
                    Name: $("#TenTDT_addinstitution").val(),
                    Note: $("#GhiChu_addinstitution").val()
                };
                console.log(institution);
                $.ajax({
                    type: "POST",
                    url: linkapi + "insert_institution",
                    dataType: "json",
                    data: JSON.stringify(institution),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm trường đào tạo mới thành công.");
                        loadDataList_Institution();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-institution').modal("hide");

                    },
                });
            }
        }
        function editinstitution(id_institution, name_institution, note_institution) {
            $('#Error_EditInstitution').attr('hidden', '');
            $("#id_editinstitution").val(id_institution);
            $("#TenTDT_editinstitution").val(name_institution);
            $("#GhiChu_editinstitution").val(note_institution);
        }
        function Edit_Institution() {
            if ($("#TenTDT_editinstitution").val() == "") {
                $("#Error_EditInstitution").text("Chưa nhập tên trường đào tạo!");
                $("#Error_EditInstitution").removeAttr('hidden');
            }
            else {
                var institution = {
                    Name: $("#TenTDT_editinstitution").val(),
                    Note: $("#GhiChu_editinstitution").val()
                };
                var id_institution = $("#id_editinstitution").val();
                console.log(institution);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "update_institution?id=" + id_institution,
                    dataType: "json",
                    data: JSON.stringify(institution),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa trường đào tạo thành công.");
                        loadDataList_Institution();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-institution').modal("hide");

                    },
                });
            }
        }
        function delete_institution(institution_id) {
            let text = "Bạn có chắc muốn xóa trường đào tạo này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_institution?id=" + institution_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Institution();
                    toastSuccess("Thành công", "Xóa trường đào tạo thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa trường đào tạo không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
