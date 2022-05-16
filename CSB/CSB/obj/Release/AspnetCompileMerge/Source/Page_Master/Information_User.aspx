<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Information_User.aspx.cs" Inherits="CSB.Page_Master.Information_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <style>
        .container {
            background: #f7f7ff;
            margin-top:15px;
        }


        .card {
            min-height: 487px;
            margin-top: 20px;
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 0 solid transparent;
            border-radius: .25rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
        }

        .row {
            margin-bottom: 20px;
        }

        .select-inform {
            padding: 10px 10px;
            font-size: 13px;
            line-height: 42px;
            background-color: rgba(179,164,164,0.1);
            border-color: rgba(252,252,252,0.1);
            width: 100%;
            color: #555;
        }
    </style>
    <div id="form1">
        <div class="section">
            <div class="section-header">
                <h4 id="title" style="color: black; margin: 0">THÔNG TIN TÀI KHOẢN</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                    /&nbsp;<div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 18px;">Thông tin tài khoản</a></div>
                    
                </div>
            </div>
            <div class="container" style="border: none; background-color: #ffffff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.03); width: 100%">
                <div class="main-body">
                    <div class="row">
                        <div id="infor_left " class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center" style="margin-top: 60px">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
                                        <div class="mt-3">
                                            <h4 id="title_fullname">Cao Cao</h4>
                                            <p class="text-secondary mb-1">Thông tin tài khoản</p>
                                            <p id="title_rolename" class="text-muted font-size-sm">Quản lí phần mềm</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div id="infor_right " class="col-lg-8">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row clearfix ">
                                        <div style="width: 100%; float: left; padding: 10px">
                                            <div class="form-group">
                                                <label class="col-md-5 control-label"><strong>Tên đầy đủ     : </strong></label>
                                                <div class="col-md-7">
                                                    <input type="text" class="form-control" id="TenDayDu_viewuser" name="TenDayDu" placeholder="Nhập tên đầy đủ" required value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div style="width: 100%; float: left; padding: 10px">
                                            <div class="form-group">
                                                <label class="col-md-5 control-label"><strong>Tên đăng nhập     : </strong></label>
                                                <div class="col-md-7">
                                                    <input type="text" class="form-control" id="TenND_viewuser" name="TenND" readonly>
                                                </div>
                                            </div>
                                        </div>

                                        <div style="width: 100%; float: left; padding: 10px">
                                            <div class="form-group">
                                                <label class="col-md-5 control-label"><strong>Ngày tạo     : </strong></label>
                                                <div class="col-md-7">
                                                    <input type="text" id="NgayTao_viewuser" class="form-control" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="width: 100%; float: left; padding: 10px">
                                            <div class="form-group">
                                                <label class="col-md-5 control-label"><strong>Ngày cập nhật    : </strong></label>
                                                <div class="col-md-7">
                                                    <input type="text" id="NgayCapNhat_viewuser" class="form-control" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="width: 100%; float: left; padding: 10px">
                                            <div class="form-group">
                                                <label class="col-md-5 control-label"><strong>Quyền    : </strong></label>
                                                <div class="col-md-7">
                                                    <input type="text" id="Quyen_viewuser" class="form-control" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="width: 100%; float: left; padding-top: 10px">
                                            <div class="form-group">
                                                <label class="col-md-5 control-label"><strong>Tình trạng    : </strong></label>
                                                <div class="col-md-7">
                                                    <input type="text" id="TinhTrang_viewuser" class="form-control" readonly>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="panel-footer text-right">
                                    <a href="javascript: history.go(-1)" style="float: left" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Quay lại</a>
                                    <button type="button" class="btn btn-info" onclick="updateUser_view()"><span class="glyphicon glyphicon-floppy-save"></span>&nbsp;Lưu thay đổi</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script>
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        var id_user;
        var password;
        var role_id;
        $(document).ready(function () {
            id_user = sessionStorage.getItem("userLoginID");
            debugger
            view_infor_user();
        });
        function view_infor_user() {
            $.ajax({
                type: "GET",
                url: linkapi + "user?id=" + id_user,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    password = data.Password;
                    role_id = data.Role.RoleId;
                    $("#title_fullname").html(data.Fullname);
                    if (data.Role.RoleId == 'US') {
                        $("#title_rolename").html("Người dùng phần mềm");
                    }
                    else if (data.Role.RoleId == 'ADMINISTRATOR') {
                        $("#title_rolename").html("Quản lí phần mềm");
                    }
                    $("#TenDayDu_viewuser").val(data.Fullname);
                    $("#TenND_viewuser").val(data.UserName);
                    $("#NgayTao_viewuser").val(data.Created);
                    $("#NgayCapNhat_viewuser").val(data.LastUpdate);
                    $("#Quyen_viewuser").val(data.Role.RoleName);
                    if (data.LOCKED == true) {
                        $("#TinhTrang_viewuser").val("Khóa");
                    }
                    else {
                        $("#TinhTrang_viewuser").val("Không khóa");
                    }

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        }

        function updateUser_view() {
            debugger
            var user = {
                UserName: $('#TenND_viewuser').val(),
                Password: '',
                Fullname: $('#TenDayDu_viewuser').val(),
                Role: {
                    RoleId: role_id,
                    RoleName: $("#Quyen_viewuser").val(),
                },
                Created: $('#NgayTao_viewuser').val(),
                LOCKED: false,
                ID: id_user
            }

            $.ajax({
                type: "PUT",
                url: linkapi + "update_user",
                dataType: "json",
                data: JSON.stringify(user),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                  
                },
                success: function (data) {
                    console.log("okPUT");
                    alert("Cập nhật thông tin người dùng thành công");
                    //toastSuccess("Thành công", "Cập nhật thông tin người dùng thành công.");
                    sessionStorage.setItem("userLoginFullname", data.Fullname);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    
                   
                    location.reload(true);
                },
            });
        }
    </script>
</asp:Content>
