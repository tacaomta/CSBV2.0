<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Degree.aspx.cs" Inherits="CSB.Page_Master.Manage_Degree" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_manage_staff" style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ BẰNG CẤP</h4>                        
                <div class="section-header-breadcrumb" style="margin-right: 15px;">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9; font-size: 16px;">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 16px;">Quản lý bằng cấp</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <table id="table_degree" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-degree" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm bằng cấp mới</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên bằng cấp   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenBangCap_adddegree" name="" placeholder="Nhập tên bằng cấp" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_adddegree" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddDegree" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Degree()" type="submit" class="btn btn-info">Thêm</button>
                        <button onclick="Close_AddDegree()" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-edit-degree" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin bằng cấp </h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <input hidden id="id_editdegree" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên bằng cấp  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenBangCap_editdegree" name="TenBangCap" placeholder="Nhập tên bằng cấp" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_editdegree" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>

                            <p id="Error_EditDegree" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Edit_Degree()" type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_Degree();
        });
        function loadDataList_Degree() {
            $.ajax({
                type: "GET",
                url: linkapi + "degrees",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên bằng cấp</th><th>Ghi chú</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Note + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-degree"  onclick="editdegree(`' + item.ID + '`,`' + item.Name + '`,`' + item.Note + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_degree(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_degree').html(tabletext);
                    console.log("okGET");
                    loadTableDegree();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        };
        function loadTableDegree() {
            $('table[id=table_degree]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Tên bằng cấp', width: 380 },
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
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listdegree()" class="btn btn-lg btn-secondary mb-3"><i class="bi-arrow-repeat"></i> Load dữ liệu</button><button id="btn_adddegree" onclick="btn_adddegree()" class="btn btn-lg btn-secondary mb-3" data-toggle="modal" data-target="#model-add-degree"><i class="bi bi-plus-circle"></i> Thêm bằng cấp</button></div>');
            });
        };
        function btn_Load_listdegree() {
            location.reload(true);
        }

        function btn_adddegree() {
            $('#Error_AddDegree').attr('hidden', '');
            $("#TenBangCap_adddegree").val("");
            $("#GhiChu_adddegree").val("");
        }

        function Add_Degree() {
            if ($("#TenBangCap_adddegree").val() == "") {
                $("#Error_AddDegree").text("Chưa nhập tên bằng cấp!");
                $("#Error_AddDegree").removeAttr('hidden');
            }
            else {
                var degree = {
                    Name: $("#TenBangCap_adddegree").val(),
                    Note: $("#GhiChu_adddegree").val()
                };
                console.log(degree);
                $.ajax({
                    type: "POST",
                    url: linkapi + "insert_degree",
                    dataType: "json",
                    data: JSON.stringify(degree),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm bằng cấp mới thành công.");
                        loadDataList_Degree();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-degree').modal("hide");

                    },
                });
            }
        }
        function editdegree(id_degree, name_degree, note_degree) {
            $('#Error_EditDegree').attr('hidden', '');
            $("#id_editdegree").val(id_degree);
            $("#TenBangCap_editdegree").val(name_degree);
            $("#GhiChu_editdegree").val(note_degree);
        }
        function Edit_Degree() {
            if ($("#TenBangCap_editdegree").val() == "") {
                $("#Error_EditDegree").text("Chưa nhập tên bằng cấp!");
                $("#Error_EditDegree").removeAttr('hidden');
            }
            else {
                var degree = {
                    Name: $("#TenBangCap_editdegree").val(),
                    Note: $("#GhiChu_editdegree").val()
                };
                var id_degree = $("#id_editdegree").val();
                console.log(degree);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "update_degree?id=" + id_degree,
                    dataType: "json",
                    data: JSON.stringify(degree),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa bằng cấp thành công.");
                        loadDataList_Degree();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-degree').modal("hide");

                    },
                });
            }
        }
        function delete_degree(degree_id) {
            let text = "Bạn có chắc muốn xóa bằng cấp này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_degree?id=" + degree_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Degree();
                    toastSuccess("Thành công", "Xóa bằng cấp thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa bằng cấp không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
