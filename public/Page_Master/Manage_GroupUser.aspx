<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_GroupUser.aspx.cs" Inherits="CSB.Page_Master.Manage_GroupUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <style>
        tbody tr td {
            vertical-align: middle;
            text-align: center;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_manage_staff" style="color: black; margin: 0; margin-left: 15px;">NHÓM NGƯỜI DÙNG CÓ THỂ THÊM VÀO HỆ THỐNG</h4>
                <div class="section-header-breadcrumb" style="margin-right: 15px;">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9; font-size: 16px;">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 16px;">Nhóm người dùng</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <table id="table_groupuser" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%--    <div class="modal fade" id="model-add-groupuser" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm nhóm người dùng</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Nhóm người dùng    : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="groupuser_add">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddSquadron" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Squadron()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-edit-squadron" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin hải đoàn</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <input hidden id="id_editgroupuser" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên hải đoàn   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenHaiDoan_editgroupuser" name="TenHaiDoan" placeholder="Nhập tên hải đoàn" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vùng     : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="TT_Vung_editgroupuser">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <p id="Error_editgroupuser" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Edit_Squadron()" type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_GroupUser();
            //list_Region('', 'TT_Vung_addsquadron');

        });
        function loadDataList_GroupUser() {
            $.ajax({
                type: "GET",
                url: linkapi + "group_users_possible",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên nhóm người dùng</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.Name + '</td><td><div style="display: flex; justify-content: space-around;"><a href="#" class="add" title="Thêm vào hệ thống" onclick="add_groupuser(`' + item.OnUnitID + '`,`' + item.Name  +'`)"><i class="material-icons">&#xE146;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_groupuser').html(tabletext);
                    console.log("okGET");
                    loadTableGroupUser();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        };

        function loadTableGroupUser() {
            $('table[id=table_groupuser]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 60 },
                        { name: 'Tên nhóm người dùng' },
                        { name: 'Tác vụ', width: 80 },
                    ],
                    "columnDefs": [
                        {
                            "targets": [0, 2],
                            "searchable": false,
                        },
                        {
                            "targets": [2],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1],
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
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listgroupuser()" class="btn btn-lg btn-secondary mb-3"><span class="bi-arrow-repeat"></span> &nbsp;Load dữ liệu</button>');
            });
        };
    

        function btn_Load_listgroupuser() {
            location.reload(true);
        }


        function add_groupuser(OnUnitID, Name) {
            var group = {
                OnUnitID: OnUnitID,
                Name: Name,
                gr_id:""
            };
            console.log(group);
            $.ajax({
                type: "POST",
                url: linkapi + "insert_group_user",
                dataType: "json",
                data: JSON.stringify(group),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    toastSuccess("Thành công", "Thêm nhóm người dùng thành công.");
                }, error: function (ret) {
                    toastError("Nhóm người dùng này đã tồn tại");
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        }
    </script>
</asp:Content>
