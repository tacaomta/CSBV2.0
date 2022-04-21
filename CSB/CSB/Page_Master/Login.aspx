<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CSB.Page_Master.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Đăng nhập</title>
<%--    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />--%>

    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/MaterialIcons.css" rel="stylesheet" />
    <link href="../css/login.css" rel="stylesheet" />

</head>
<body>

    <div id="form1">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-box col-md-offset-4 offset-md-4">
                        <div class="col-lg-12 login-key">
                            <img class="ship-key" src="../Image/ic-login.png" />
                        </div>
                        <div class="col-lg-12 login-title">
                            ĐĂNG NHẬP
                        </div>

                        <div class="col-lg-12 login-form">
                            <div class="col-lg-12 login-form">
                                <div class="form-group">
                                    <i class="material-icons icon-name">person</i >
                                    <input type="text" class="form-control" id="username" placeholder="Tài khoản" />
                                </div>
                                <div class="form-group">
                                    <i class="material-icons icon-name">lock</i >
                                    <input type="password" pattern=".{6,}" title="Mật khẩu tối thiểu 6 kí tự" class="form-control" id="password" placeholder="Mật khẩu" />
                                </div>

                                <div class="col-md-12 loginbttm">
                                    <div class="col-md-12 login-btm login-text">
                                        <p hidden="hidden" id="error-login-text">Mật khẩu không chính xác</p>
                                    </div>
                                    <div class="col-md-12 login-btm login-button">
                                        <button type="submit" class="btn btn-outline-primary" onclick="Login()">Đăng nhập</button>
                                    </div>
                                    <div class="col-md-12 login-btm forgot-password">
                                        <a>Quên mật khẩu?</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-2"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="loader" class="lds-dual-ring overlay"></div>

    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/js/Login.js"></script>
    <script src = "../Scripts/js/Master.js"></script>
    <script>

        function Login() {
            $('#error-login-text').attr('hidden', '');
            if ($('#username').val() == '') {
                $('#error-login-text').text('Tài khoản không được để trống');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            if ($('#password').val() == '') {
                $('#error-login-text').text('Mật khẩu không được để trống');
                $('#error-login-text').removeAttr('hidden');
                return;
            }
            var user = {
                UserName: $("#username").val(),
                Password: $("#password").val()
            };
            console.log(user);
            $.ajax({
                type: "POST",
                url: "http://localhost:8082/api/user_login",
                dataType: "json",
                data: JSON.stringify(user),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    /*toastSuccess("Thành công", "Đăng nhập thành công.");*/
                    console.log(data);
                    if (data == null) {
                        $('#error-login-text').text('Tài khoản hoặc mật khẩu không đúng');
                        $('#error-login-text').removeAttr('hidden');
                        return;
                    }
                    debugger
                    sessionStorage.setItem("userLoginUsername", data.UserName);
                    sessionStorage.setItem("userLoginFullname", data.Fullname);
                    sessionStorage.setItem("userLoginID", data.ID);
                    window.location = "http://localhost:44347/Page_Master/Manage_ship?vung=1";
                }, error: function (ret) {
                    console.log(ret);
                    $('#error-login-text').text('Tài khoản hoặc mật khẩu không đúng');
                    $('#error-login-text').removeAttr('hidden');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
    </script>
</body>
</html>


