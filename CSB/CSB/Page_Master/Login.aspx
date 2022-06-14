<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CSB.Page_Master.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />

    <%--<link href="../css/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="../Content/MaterialIcons.css" rel="stylesheet" />
    <link href="../css/login1.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />

    
</head>
<body>
    <style>
        /*Hidden class for adding and removing*/
        .lds-dual-ring.hidden {
            display: none;
        }

        /*Add an overlay to the entire page blocking any further presses to buttons or other elements.*/
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            background: rgba(255,255,255,.01);
            z-index: 999;
            opacity: 1;
            transition: all 0.5s;
        }

        /*Spinner Styles*/
        .lds-dual-ring {
            display: inline-block;
            width: 100%;
            height: 100%;
        }

            .lds-dual-ring:after {
                content: " ";
                display: block;
                width: 64px;
                height: 64px;
                margin: 5% auto;
                border-radius: 50%;
                border: 6px solid #000;
                border-color: #000 transparent #000 transparent;
                animation: lds-dual-ring 1.2s linear infinite;
            }

        @keyframes lds-dual-ring {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }
    </style>
    <div id="form1">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-box col-md-offset-4 offset-md-4">
                        <div class="col-lg-12 login-key">
                            <img class="ship-key" src="../Image/ic-login.png" />
                        </div>
                        <div class="col-lg-12 login-title">
                            <%--ĐĂNG NHẬP--%>
                            PHẦN MỀM QUẢN LÝ TÀU
                        </div>

                        <div class="col-lg-12 login-form">
                            <div class="col-lg-12 login-form">
                                <div class="form-group">
                                    <i class="material-icons icon-name">person</i>
                                    <input type="text" class="form-control" id="username" placeholder="Tài khoản" autofocus />
                                </div>
                                <div class="form-group">
                                    <i class="material-icons icon-name">lock</i>
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
    <div id="loader" class="lds-dual-ring overlay hidden"></div>

    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/js/Login.js"></script>
    <script src="../Scripts/js/Master.js"></script>
    <script>
        // Add event press Enter in an input tag
        $('#username').keypress(function (event) {
            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode == '13') {
                Login();
            }
        });
        $('#password').keypress(function (event) {
            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode == '13') {
                Login();
            }
        });
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
                    window.location = "http://localhost:44347/Page_Master/Manage_Tau?vung=1";
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


