<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Ranking.aspx.cs" Inherits="CSB.Page_Master.Manage_Ranking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_manage_staff" style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ CẤP BẬC</h4>                        
                <div class="section-header-breadcrumb" style="margin-right: 15px;">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9; font-size: 16px;">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 16px;">Quản lý cấp bậc</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <table id="table_rank" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-rank" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm cấp bậc mới</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên cấp bậc   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenBangCap_addrank" name="" placeholder="Nhập tên cấp bậc" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_addrank" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddRank" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Rank()" type="submit" class="btn btn-info">Thêm</button>
                        <button onclick="Close_AddRank()" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-edit-rank" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin cấp bậc </h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <input hidden id="id_editrank" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Tên cấp bậc  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenBangCap_editrank" name="TenBangCap" placeholder="Nhập tên cấp bậc" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group" style="display: flex">
                                    <label class="col-md-5 control-label"><strong>Ghi chú  : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="GhiChu_editrank" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>

                            <p id="Error_EditRank" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Edit_Rank()" type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_Rank();
        });
        function loadDataList_Rank() {
            $.ajax({
                type: "GET",
                url: linkapi + "ranks",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên cấp bậc</th><th>Ghi chú</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Note + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-rank"  onclick="editrank(`' + item.ID + '`,`' + item.Name + '`,`' + item.Note + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_rank(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_rank').html(tabletext);
                    console.log("okGET");
                    loadTableRank();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        };
        function loadTableRank() {
            $('table[id=table_rank]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Tên cấp bậc', width: 380 },
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
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listrank()" class="btn btn-lg btn-secondary mb-3"><i class="bi-arrow-repeat"></i> Load dữ liệu</button><button id="btn_addrank" onclick="btn_addrank()" class="btn btn-lg btn-secondary mb-3" data-toggle="modal" data-target="#model-add-rank"><i class="bi bi-plus-circle"></i> Thêm cấp bậc</button></div>');
            });
        };
        function btn_Load_listrank() {
            location.reload(true);
        }

        function btn_addrank() {
            $('#Error_AddRank').attr('hidden', '');
            $("#TenBangCap_addrank").val("");
            $("#GhiChu_addrank").val("");
        }

        function Add_Rank() {
            if ($("#TenBangCap_addrank").val() == "") {
                $("#Error_AddRank").text("Chưa nhập tên cấp bậc!");
                $("#Error_AddRank").removeAttr('hidden');
            }
            else {
                var rank = {
                    Name: $("#TenBangCap_addrank").val(),
                    Note: $("#GhiChu_addrank").val()
                };
                console.log(rank);
                $.ajax({
                    type: "POST",
                    url: linkapi + "insert_rank",
                    dataType: "json",
                    data: JSON.stringify(rank),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm cấp bậc mới thành công.");
                        loadDataList_Rank();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-rank').modal("hide");

                    },
                });
            }
        }
        function editrank(id_rank, name_rank, note_rank) {
            $('#Error_EditRank').attr('hidden', '');
            $("#id_editrank").val(id_rank);
            $("#TenBangCap_editrank").val(name_rank);
            $("#GhiChu_editrank").val(note_rank);
        }
        function Edit_Rank() {
            if ($("#TenBangCap_editrank").val() == "") {
                $("#Error_EditRank").text("Chưa nhập tên cấp bậc!");
                $("#Error_EditRank").removeAttr('hidden');
            }
            else {
                var rank = {
                    Name: $("#TenBangCap_editrank").val(),
                    Note: $("#GhiChu_editrank").val()
                };
                var id_rank = $("#id_editrank").val();
                console.log(rank);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "update_rank?id=" + id_rank,
                    dataType: "json",
                    data: JSON.stringify(rank),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa cấp bậc thành công.");
                        loadDataList_Rank();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-rank').modal("hide");

                    },
                });
            }
        }
        function delete_rank(rank_id) {
            let text = "Bạn có chắc muốn xóa cấp bậc này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_rank?id=" + rank_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Rank();
                    toastSuccess("Thành công", "Xóa cấp bậc thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa cấp bậc không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
