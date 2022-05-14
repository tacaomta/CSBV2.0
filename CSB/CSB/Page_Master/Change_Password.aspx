<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="CSB.Page_Master.Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <style>
        .login-text {
            text-align: left;
            padding-left: 0px;
            color: #ff0000;
            padding-top: 10px;
            padding-bottom: 10px;
        }
    </style>
    <div id="form1">
        <div>
            <div class="container" style="border: none; background-color: #ffffff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.03);">
                <div class="row" style="padding: 3rem 0">
                    <div class="login-box col-md-4" style="margin: 0 auto;">
                        <div class="login-key" style="display: flex; justify-content: center; margin-bottom: 3rem;">
                            <img class="ship-key" src="../Image/ic-login.png" />
                        </div>
                        <div class="login-title my-3" style="display: flex; justify-content: center; font-size: 20px;">
                            ĐỔI MẬT KHẨU
                        </div>

                        <div class="login-form">
                            <div class="form-group mb-4" style="display: flex; align-items: center;">
                                <i class="material-icons icon-name mr-2">person</i>
                                <input type="text" class="form-control" id="username" placeholder="Tài khoản" readonly />
                            </div>
                            <div class="form-group mb-4" style="display: flex; align-items: center;">
                                <i class="material-icons icon-name mr-2">lock</i>
                                <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_old" placeholder="Mật khẩu cũ" />
                            </div>
                            <div class="form-group mb-4" style="display: flex; align-items: center;">
                                <i class="material-icons icon-name mr-2">lock</i>
                                <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_new" placeholder="Mật khẩu mới" />
                            </div>
                            <div class="form-group" style="display: flex; align-items: center;">
                                <i class="material-icons icon-name mr-2">lock</i>
                                <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_confirm" placeholder="Xác nhận mật khẩu mới" />
                            </div>
                            <div class="loginbttm" style="display: flex; justify-content: space-between;">
                                <div class="login-btm login-text">
                                    <p hidden="hidden" id="error-login-text">Đổi mật khẩu không thành công!</p>
                                </div>
                                <div class="login-btm login-button mt-3">
                                    <button class="btn btn-outline-primary" onclick="Save_Change()">Lưu thay đổi</button>
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
        $(document).ready(function () {
            $("#username").val(sessionStorage.getItem("userLoginUsername"));
        });
        function Save_Change() {
            $('#error-login-text').attr('hidden', '');
            if ($('#password_old').val() == '') {
                $('#error-login-text').text('Chưa nhập mật khẩu cũ');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else if ($('#password_new').val() == '') {
                $('#error-login-text').text('Chưa nhập mật khẩu mới');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else if ($('#password_confirm').val() == '') {
                $('#error-login-text').text('Chưa nhập mật khẩu xác nhận');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else if ($('#password_new').val() != $('#password_confirm').val()) {
                $('#error-login-text').text('Mật khẩu xác nhận không khớp');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else {
                var change_pass = {
                    UserName: sessionStorage.getItem("userLoginUsername"),
                    Password: $('#password_old').val(),
                    ID: sessionStorage.getItem("userLoginID")
                };
                var new_pass = $('#password_new').val();
                console.log(change_pass);
                debugger
                $.ajax({
                    type: "PUT",
                    url: linkapi + "change_password?newpassword=" + new_pass,
                    dataType: "json",
                    data: JSON.stringify(change_pass),
                    contentType: "application/json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        console.log("okPUT");
                        alert("Đổi mật khẩu thành công! Vui lòng đăng nhập lại!");
                        window.location = "http://localhost:44347/Page_Master/Login";
                    }, error: function (ret) {
                        $('#error-login-text').text('Mật khẩu cũ không chính xác!');
                        $('#error-login-text').removeAttr('hidden');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    },
                });
            }
            // chờ thầy làm bên api
        }
    </script>
</asp:Content>
