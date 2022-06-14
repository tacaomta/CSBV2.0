<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="CSB.Page_Master.Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .login-text {
            text-align: left;
            padding-left: 0px;
            color: #ff0000;
          
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
                <h4 id="title" style="color: black; margin: 0">ĐỔI MẬT KHẨU</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ </a></div>
                    /&nbsp; <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 18px;"> Đổi mật khẩu</a></div>
                    
                </div>
            </div>
            <div class="container" style="margin-top:15px; border: none; background-color: #ffffff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.03); width: 100%;">
                <div class="row" style="padding: 3rem 0">
                    <div class="login-box col-md-4 col-md-offset-4">
                        <div class="login-key" style="display: flex; justify-content: center; margin-bottom: 3rem;">
                            <img class="ship-key" src="../Image/ic-login.png" />
                        </div>
                        <div class="login-title my-3" style="display: flex; justify-content: center; font-size: 20px;">
                            ĐỔI MẬT KHẨU
                        </div>

                        <div class="login-form">
                            <div class="form-group mb-4" style="display: flex; padding: 10px; align-items: center;">
                                <i class="material-icons icon-name mr-2">person</i>
                                <input type="text" class="form-control" id="username" placeholder="Tài khoản" readonly />
                            </div>
                            <div class="form-group mb-4" style="display: flex; padding: 10px; align-items: center;">
                                <i class="material-icons icon-name mr-2">lock</i>
                                <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_old" placeholder="Mật khẩu cũ" />
                            </div>
                            <div class="form-group mb-4" style="display: flex; padding: 10px; align-items: center;">
                                <i class="material-icons icon-name mr-2">lock</i>
                                <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_new" placeholder="Mật khẩu mới" />
                            </div>
                            <div class="form-group" style="display: flex; padding: 10px; align-items: center;">
                                <i class="material-icons icon-name mr-2">lock</i>
                                <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password_confirm" placeholder="Xác nhận mật khẩu mới" />
                            </div>
                            <div class="loginbttm" style="display: flex; padding: 10px; justify-content: space-between;">
                                
                                <div class="login-btm login-text">
                                    <div hidden="hidden" id="error-login-text">Đổi mật khẩu không thành công!</div>
                                </div>

                                <div class="login-btm login-button mt-3">
                                    <a href="javascript: history.go(-1)" style="margin:0px 10px" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Quay lại</a>
                                    <button class="btn btn-info" onclick="Save_Change()">Lưu thay đổi</button>
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
                $('#error-login-text').text('Chưa nhập mật khẩu cũ!');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else if ($('#password_new').val() == '') {
                $('#error-login-text').text('Chưa nhập mật khẩu mới!');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else if ($('#password_confirm').val() == '') {
                $('#error-login-text').text('Chưa nhập mật khẩu xác nhận!');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            else if ($('#password_new').val() != $('#password_confirm').val()) {
                $('#error-login-text').text('Mật khẩu xác nhận không khớp!');
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
