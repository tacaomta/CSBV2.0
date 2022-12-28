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
                <h4 id="title_manage_staff" style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ NHÓM NGƯỜI DÙNG</h4>
                <div class="section-header-breadcrumb" style="margin-right: 15px;">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9; font-size: 16px;">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 16px;">Quản lý nhóm người dùng</a></div>
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
                        tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.Name + '</td><td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-squadron"  onclick="editgroupuser(`' + item.OnUnitID + '`,`' + item.Name + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="add" title="thêm" onclick="add_groupuser(`' + item.OnUnitID + '`,`' + item.Name + '`)"><i class="material-icons">&#xE146;</i></a></div></td></tr>';
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
        function list_Region(id_Region, string_Region) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "naval_region",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Region).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_Region) {
                            $('#' + string_Region).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.ShortName
                            }));
                        }
                        else {
                            $('#' + string_Region).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.ShortName
                            }));
                        }

                    });
                    if (id_Region == '') {
                        $('#' + string_Region + 'select').val(data[0].ID);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });

        }

        function btn_Load_listgroupuser() {
            location.reload(true);
        }
        function btn_addsquadron() {
            $('#Error_AddSquadron').attr('hidden', '');
            $("#TenHaiDoan_addsquadron").val("");
            list_Region('', 'TT_Vung_addsquadron');
        }
        function Add_Squadron() {
            if ($("#TenHaiDoan_addsquadron").val() == "") {
                $("#Error_AddSquadron").text("Chưa nhập tên hải đoàn!");
                $("#Error_AddSquadron").removeAttr('hidden');
            }
            else {
                var id_region = $("#TT_Vung_addsquadron").val();
                var squadron = {
                    Name: $("#TenHaiDoan_addsquadron").val(),
                    NavalRegion: {
                        ID: id_region
                    }
                };
                console.log(squadron);
                $.ajax({
                    type: "POST",
                    url: linkapi + "squadron_insert",
                    dataType: "json",
                    data: JSON.stringify(squadron),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm hải đoàn mới thành công.");
                        loadDataList_GroupUser();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-groupuser').modal("hide");

                    },
                });
            }
        }

        function editgroupuser(squadron_id, squadron_name, id_region) {
            $('#Error_editgroupuser').attr('hidden', '');
            $("#TenHaiDoan_editgroupuser").val(squadron_name);
            $("#id_editgroupuser").val(squadron_id);
            list_Region(id_region, 'TT_Vung_editgroupuser');
        }

        function Edit_Squadron() {
            if ($("#TenHaiDoan_editgroupuser").val() == "") {
                $("#Error_editgroupuser").text("Chưa nhập tên hải đoàn!");
                $("#Error_editgroupuser").removeAttr('hidden');
            }
            else {
                var id_region = $("#TT_Vung_editgroupuser").val();
                var squadron = {
                    Id: $("#id_editgroupuser").val(),
                    Name: $("#TenHaiDoan_editgroupuser").val(),
                    NavalRegion: {
                        ID: id_region
                    }
                };
                console.log(squadron);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "squadron_update?id=" + $("#id_editgroupuser").val(),
                    dataType: "json",
                    data: JSON.stringify(squadron),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa hải đoàn mới thành công.");
                        loadDataList_GroupUser();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-squadron').modal("hide");

                    },
                });
            }
        }

        function add_groupuser(squadron_id) {
            debugger;
            let text = "Bạn có chắc muốn xóa hải đoàn này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "squadron_delete?id=" + squadron_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_GroupUser();
                    toastSuccess("Thành công", "Xóa hải đaonf thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa hải đoàn không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
