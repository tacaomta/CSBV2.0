

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
        type: "GET",
        url: "http://localhost:8081/api/user_login($body)",
        dataType: "json",
        data: JSON.stringify(user),
        contentType: "application/json",
        processData: false,
        beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
            $('#loader').removeClass('hidden');
        },
        success: function (data) {
            toastSuccess("Thành công", "Đăng nhập thành công.");
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

