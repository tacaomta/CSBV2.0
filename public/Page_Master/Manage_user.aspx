<%@ Page Title="Quản lý người dùng" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_user.aspx.cs" Inherits="CSB.Page_Master.Manage_user" %>

<asp:Content ID="Manage_User" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #Error_Adduser {
            padding-left: 23px;
            color: red;
        }

        #Error_Edituser {
            padding-left: 13px;
            color: red;
        }

        .icon_lock {
            font-size: 21px;
        }

        .icon_unlock {
            font-size: 21px;
        }

        tbody tr td {
            vertical-align: middle;
            text-align: center;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ NGƯỜI DÙNG</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                    <div class="breadcrumb-item"><a href="Manage_user" style="color: #01b5f9; font-size: 18px;">Quản lý người dùng</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <table id="tableuser" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-user" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog  modal-xl" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm người dùng mới</h4>
                    </div>
                    <div class="modal-body">
                        <h4 class="sub-title">Thông tin cơ bản</h4>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Tên đầy đủ     : </label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenDayDu_adduser" name="TenDayDu" placeholder="Nhập tên đầy đủ" required value="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Tên đăng nhập     : </label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenND_adduser" name="TenND" placeholder="Nhập tên người dùng" required value="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Mật khẩu     : </label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" id="MatKhau_adduser" name="MatKhau" placeholder="Nhập mật khẩu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Xác nhận mật khẩu     : </label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" id="XacNhanMatKhau_adduser" name="XacNhanMatKhau" placeholder="Xác nhận mật khẩu" required value="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Nhóm người dùng</h4>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Chọn nhóm người dùng    : </label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="NhomND_adduser">
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Quyền</h4>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <div class="radio" id="checkbox_roles_add" style="display: flex; padding-top: 10px;">
                                            <label class="col-md-2 control-label">Chọn quyền   : </label>
                                            <%--<label class="col-md-2">
                                                <input type="checkbox" id="add-Users-Roles-Show">
                                                Xem dữ liệu
                                            </label>
                                            <label class="col-md-2">
                                                <input type="checkbox"  id="add-Users-Roles-Delete">
                                                Xoá dữ liệu
                                            </label>
                                            <label class="col-md-2">
                                                <input type="checkbox"  id="add-Users-Roles-Report">
                                                Xuất báo cáo
                                            </label>
                                            <label class="col-md-2">
                                                <input type="checkbox"  id="add-Users-Roles-Update">
                                                Cập nhật dữ liệu
                                            </label>
                                            <label class="col-md-2">
                                                <input type="checkbox"  id="add-Users-Roles-Insert">
                                                Thêm dữ liệu
                                            </label>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p id="Error_Adduser" class="textER">Lỗi</p>
                        <%--     <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên đầy đủ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenDayDu_adduser" name="TenDayDu" placeholder="Nhập tên đầy đủ" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên đăng nhập     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenND_adduser" name="TenND" placeholder="Nhập tên người dùng" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Mật khẩu     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" id="MatKhau_adduser" name="MatKhau" placeholder="Nhập mật khẩu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xác nhận mật khẩu     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" id="XacNhanMatKhau_adduser" name="XacNhanMatKhau" placeholder="Xác nhận mật khẩu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Quyền     : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="Quyen_adduser">
                                            <option value="AD">Admin</option>
                                            <option selected value="US">User</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <p id="Error_Adduser" class="textER">Lỗi</p>
                        </div>--%>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_User()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-edit-user" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin người dùng</h4>
                    </div>
                    <div class="modal-body">
                        <h4 class="sub-title">Thông tin cơ bản</h4>
                        <input hidden id="edID" value="">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Tên đầy đủ     : </label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="edFullName" placeholder="Nhập tên người dùng" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Tên đăng nhập     :</label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="edUserName" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Đổi mật khẩu     : </label>
                                    <div class="col-md-7">
                                        <input type="checkbox" id="changepass" name="changepass" value="" onchange="ChangePass(this)" />
                                        Đổi mật khẩu
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Khóa tài khoản     : </label>
                                    <div class="col-md-7">
                                        <div class="radio" style="display: flex; padding-top: 10px;">
                                            <label class="col-md-6">
                                                <input type="radio" name="edLOCK" value="true">
                                                Khóa
                                            </label>
                                            <label class="col-md-6">
                                                <input type="radio" name="edLOCK" value="false" />
                                                Bỏ khóa
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Mật khẩu mới     : </label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" id="edPasswordNew" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Xác nhận mật khẩu     : </label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" id="edPasswordNew2" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Nhóm người dùng</h4>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label class="col-md-5 control-label">Chọn nhóm người dùng    : </label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="NhomND_edituser">
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Quyền</h4>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <div class="radio" id="checkbox_roles_edit" style="display: flex; padding-top: 10px;">
                                            <label class="col-md-2 control-label">Chọn quyền   : </label>
                                            <%-- <label class="col-md-2">
                                                <input type="checkbox" id="edit-Users-Roles-Show">
                                                Xem dữ liệu
                                            </label>
                                            <label class="col-md-2">
                                                <input type="checkbox"  id="edit-Users-Roles-Delete">
                                                Xoá dữ liệu
                                            </label>
                                            <label class="col-md-2">
                                                <input type="checkbox"  id="edit-Users-Roles-Report">
                                                Xuất báo cáo
                                            </label>
                                            <label class="col-md-2">
                                                <input type="checkbox" id="edit-Users-Roles-Update">
                                                Cập nhật dữ liệu
                                            </label>
                                            <label class="col-md-2">
                                                <input type="checkbox"  id="edit-Users-Roles-Insert">
                                                Thêm dữ liệu
                                            </label>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--  <div class="row clearfix ">
                            <input hidden id="edID" value="">
                            <input hidden id="edCreated" value="">
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên đầy đủ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="edFullName" placeholder="Nhập tên người dùng" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên đăng nhập     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="edUserName" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đổi mật khẩu     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="checkbox" id="changepass" name="changepass" value="" onchange="ChangePass(this)" />
                                        Đổi mật khẩu
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Mật khẩu mới     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" id="edPasswordNew" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xác nhận mật khẩu     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="password" class="form-control" id="edPasswordNew2" placeholder="" value="" disabled>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Quyền     : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="edRole">
                                            <option selected value="AD">Admin</option>
                                            <option value="US">User</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding-top: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Khóa tài khoản     : </strong></label>
                                    <div class="col-md-7">
                                        <div class="radio" style="display: flex; padding-top: 10px;">
                                            <label class="col-md-6">
                                                <input type="radio" name="edLOCK" value="true">
                                                Khóa
                                            </label>
                                            <label class="col-md-6">
                                                <input type="radio" name="edLOCK" value="false" />
                                                Bỏ khóa
                                            </label>

                                        </div>
                                    </div>
                                </div>
                                <p id="Error_Edituser" class="textER" style="color: red; font-weight: bold; margin-bottom: 0px; margin-top: 15px;">Nhập mật khẩu không chính xác</p>
                            </div>
                        </div>--%>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-info" onclick="updateUser()">Lưu thay đổi</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataListUsers();
            list_NhomNguoiDung('', 'NhomND_adduser');
            Load_listRoles();
        });
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        function loadDataListUsers() {
            $.ajax({
                type: "GET",
                url: linkapi + "users",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Họ tên</th><th>Tên DN</th><th>Nhóm người dùng</th><th>Cập nhật gần đây</th><th>Khóa</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {

                        if (item.LOCKED == true) {
                            tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.Fullname + "</td><td>" + item.UserName + "</td><td>" + item.GroupUser.Name + "</td><td>" + item.LastUpdate + "</td><td>" + '<a href="#" class="lock" data-toggle="tooltip"><i class="material-icons">lock</i ></a>' + '</td><td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-user"  onclick="edituser(`' + item.Fullname + '`,`' + item.UserName + '`,`' + item.Password + '`,`' + item.GroupUser.gr_id + '`,`' + item.Created + '`,`' + item.LOCKED + '`,`' + item.ID + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_user(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        }
                        else {
                            tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.Fullname + "</td><td>" + item.UserName + "</td><td>" + item.GroupUser.Name + "</td><td>" + item.LastUpdate + "</td><td style='text-align: center;'>" + '<a href="#" class="lock" data-toggle="tooltip"><i class="material-icons">lock_open</i ></a>' + '</td><td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-user"  onclick="edituser(`' + item.Fullname + '`,`' + item.UserName + '`,`' + item.Password + '`,`' + item.GroupUser.gr_id + '`,`' + item.Created + '`,`' + item.LOCKED + '`,`' + item.ID + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_user(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        }
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tableuser').html(tabletext);
                    console.log("okGET");
                    loadTableUser();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };

        function loadTableUser() {
            $('table[id=tableuser]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 60 },
                        { name: 'Họ tên', width: 240 },
                        { name: 'Tên DN', width: 140 },
                        { name: 'Nhóm người dùng', width: 140 },
                        { name: 'Cập nhật gần đây', width: 200 },
                        { name: 'Khóa', width: 80 },
                        { name: 'Tác vụ', width: 80 },
                    ],
                    "columnDefs": [
                        {
                            "targets": [0, 4, 5, 6],
                            "searchable": false,
                        },
                        {
                            "targets": [5, 6],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1, 3, 4],
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
                $('.col-sm-12').first().html('<button id="btn_adduser" onclick="btn_adduser()" class="btn btn-secondary btn-lg" data-toggle="modal" data-target="#model-add-user"><i class="bi bi-plus-circle"></i> Thêm người dùng</button>');
            });
        };
        function Load_listRoles() {
            $.ajax({
                type: "GET",
                url: linkapi + "list_user_roles",
                dataType: "json",
                success: function (data) {
                    var i = 0;
                    $.each(data, function (key, item) {

                        $("#checkbox_roles_add").append('<label class="col-md-2"><input type="checkbox" id="add_' + item.RoleId + '" value="' + item.RoleId + '"> ' + item.RoleName + '</label>');
                        $("#checkbox_roles_edit").append('<label class="col-md-2"><input type="checkbox" id="edit_' + item.RoleId + '"value="' + item.RoleId + '"> ' + item.RoleName + '</label>');
                        i++;
                    });
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        }
        function list_NhomNguoiDung(id_list, string_list) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "group_users",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_list).empty();
                    $.each(data, function (key, item) {

                        if (item.gr_id == id_list) {
                            $('#' + string_list).append($('<option>', {
                                selected: true,
                                value: item.gr_id,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_list).append($('<option>', {
                                selected: false,
                                value: item.gr_id,
                                text: item.Name
                            }));
                        }

                    });
                    if (id_list == '') {
                        $('#' + string_list + 'select').val(data[0].gr_id);

                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });

        }
        function Add_User() {
            if ($('#TenDayDu_adduser').val() == "") {
                $('#Error_Adduser').text("Chưa nhập tên đầy đủ!");
                $("#Error_Adduser").css("display", "block");
            }
            else if ($('#TenND_adduser').val() == "") {
                $('#Error_Adduser').text("Chưa nhập tên người dùng!");
                $("#Error_Adduser").css("display", "block");
            }
            else if ($('#MatKhau_adduser').val() == "") {
                $('#Error_Adduser').text("Chưa nhập mật khẩu!");
                $("#Error_Adduser").css("display", "block");
            }
            else if ($('#XacNhanMatKhau_adduser').val() == "") {
                $('#Error_Adduser').text("Chưa nhập mật khẩu xác nhận!");
                $("#Error_Adduser").css("display", "block");
            }
            else {
                if ($("#MatKhau_adduser").val() != $("#XacNhanMatKhau_adduser").val()) {
                    $('#Error_Adduser').text("Mật khẩu xác nhận không khớp!");
                    $("#Error_Adduser").css("display", "block");
                }
                else {
                    var user = {
                        UserName: $("#TenND_adduser").val(),
                        Password: $("#MatKhau_adduser").val(),
                        Fullname: $("#TenDayDu_adduser").val(),
                        UserRoles: {
                            Roles: [
                            ]
                        },
                        LastUpdate: strDate,
                        Created: strDate,
                        LOCKED: false,
                        GroupUser: {
                            gr_id: $("#NhomND_adduser").val(),
                        }
                    };
                    $.ajax({
                        async: false,
                        type: "GET",
                        url: linkapi + "list_user_roles",
                        dataType: "json",
                        success: function (data) {
                            $.each(data, function (key, item) {
                                debugger
                                if ($('#add_' + item.RoleId).is(':checked')) {
                                    a = {
                                        "RoleId": $('#add_' + item.RoleId).val(),
                                        "RoleName": "",
                                    };
                                    user.UserRoles.Roles.push(a);
                                }
                            });
                        }, error: function (ret) {
                            console.log('errorGET');
                        },
                        complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                        },
                    });
                    console.log(user);
                    debugger
                    $.ajax({
                        type: "POST",
                        url: linkapi + "insert_user",
                        dataType: "json",
                        data: JSON.stringify(user),
                        contentType: "application/json",

                        beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                            $('#loader').removeClass('hidden');
                        },
                        success: function (data) {
                            toastSuccess("Thành công", "Thêm người dùng mới thành công.");
                        }, error: function (ret) {
                            console.log(ret.responseJSON.Message);
                            toastError("Thất bại", ret.responseJSON.Message);
                        },
                        complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                            $('#loader').addClass('hidden');
                            $('#model-add-user').modal("hide");
                            loadDataListUsers();
                        },
                    });
                }
            }
        }

        function btn_adduser() {
            $("#TenND_adduser").val('');
            $("#MatKhau_adduser").val('');
            $("#XacNhanMatKhau_adduser").val('');
            $("#TenDayDu_adduser").val('');
            $("#add-Users-Roles-Show").prop('checked', false);
            $("#add-Users-Roles-Insert").prop('checked', false);
            $("#add-Users-Roles-Update").prop('checked', false);
            $("#add-Users-Roles-Delete").prop('checked', false);
            $("#add-Users-Roles-Report").prop('checked', false);
            $("#Error_Adduser").css("display", "none");
        };

        function edituser(_FullName, _UserName, _Password, _GroupId, _Created, _LOCKED, _ID) {
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "list_user_roles",
                dataType: "json",
                success: function (data) {
                    $.each(data, function (key, item) {
                        $('#edit_' + item.RoleId).prop('checked', false);
                    });
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
            $('#edFullName').val(_FullName);
            $('#edUserName').val(_UserName);
            list_NhomNguoiDung(_GroupId, 'NhomND_edituser');
            $('#edCreated').val(_Created);
            $('#edPasswordNew').val('');
            $('#edPasswordNew2').val('');
            $('#edPasswordNew,#edPasswordNew2').attr('disabled', '');
            $('#changepass').prop('checked', false);
            $('#Error_Edituser').text("");
            $('input[name=edLOCK]').each(function () {
                $(this).prop('checked', false);
            });
            debugger;
            $('input[name=edLOCK]').each(function () {
                if ($(this).val() == 'true') {
                    if (_LOCKED == 'true') {
                        $(this).prop('checked', true);
                        return false;
                    }
                }
                else {
                    if (_LOCKED == 'false') {
                        console.log(false);
                        $(this).prop('checked', true);
                        return false;
                    }
                }
            });

            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "user?id=" + _ID,
                dataType: "json",
                success: function (data) {
                    $.each(data.UserRoles.Roles, function (key, item) {
                        $('#edit_' + item.RoleId).prop('checked', true);
                    });
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
            $('#edID').val(_ID);
        };

        function delete_user(user_id) {
            debugger;
            let text = "Bạn có chắc muốn xóa người dùng này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_user/?id=" + user_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataListUsers();
                    toastSuccess("Thành công", "Xóa người dùng thành công.");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa người dùng không thành công");
                })
            } else {

            }
        }
        function ChangePass(obj) {
            if ($(obj).is(":checked")) {
                $('#edPasswordNew,#edPasswordNew2').removeAttr('disabled');
            }
            else {
                $('#edPasswordNew,#edPasswordNew2').attr('disabled', '');
            }
        };



        function updateUser() {
            if ($('#changepass').is(":checked")) {
                if ($('#edPasswordNew').val() != $('#edPasswordNew2').val()) {
                    $('#Error_Edituser').text("Xác nhận mật khẩu không chính xác");
                    $('#model-edit-user').show();
                    return false;
                }
            }
            var khoa = false;
            var checkbox = document.getElementsByName("edLOCK");
            for (var i = 0; i < checkbox.length; i++) {
                if (checkbox[i].checked === true) {
                    khoa = checkbox[i].value;
                }
            }
            console.log(khoa);
            var user = {
                UserName: $('#edUserName').val(),
                Password: $('#edPasswordNew').val(),
                Fullname: $('#edFullName').val(),
                UserRoles: {
                    Roles: [
                    ]
                },
                LastUpdate: strDate,
                Created: $('#edCreated').val(),
                LOCKED: khoa,
                GroupUser: {
                    gr_id: $("#NhomND_edituser").val(),
                },
                ID: $('#edID').val()
            }
            $.ajax({
                async: false,
                type: "GET",
                url: linkapi + "list_user_roles",
                dataType: "json",
                success: function (data) {
                    var i = 0;
                    $.each(data, function (key, item) {
                        debugger
                        if ($('#edit_' + item.RoleId).is(':checked')) {
                            a = {
                                "RoleId": $('#edit_' + item.RoleId).val(),
                                "RoleName": "",
                            };
                            user.UserRoles.Roles.push(a);
                        }
                        i++;
                    });
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
            console.log(user);
            $.ajax({
                async: false,
                type: "PUT",
                url: linkapi + "update_basicinfo_user",
                dataType: "json",
                data: JSON.stringify(user),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    $.ajax({
                        async: false,
                        type: "PUT",
                        url: linkapi + "update_roles_user",
                        dataType: "json",
                        data: JSON.stringify(user),
                        contentType: "application/json",
                        beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                            $('#loader').removeClass('hidden');
                        },
                        success: function (data) {
                            console.log("okPUT");
                            toastSuccess("Thành công", "Cập nhật thông tin người dùng thành công.");
                        }, error: function (ret) {
                            console.log(ret.responseJSON.Message);
                            toastError("Thất bại", ret.responseJSON.Message);
                        },
                        complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                            $('#loader').addClass('hidden');
                            $('#model-edit-user').modal("hide");
                            loadDataListUsers();
                        },
                    });
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-edit-user').modal("hide");
                    loadDataListUsers();
                },
            });
        };
    </script>
</asp:Content>

