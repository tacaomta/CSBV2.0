$(document).ready(function () {

    $.ajax({
        type: "GET",
        url: "http://localhost:8081/api/list_users",
        dataType: "json",
        beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
            $('#loader').removeClass('hidden');
        },
        success: function (data) {
            var tabletext = "<thead><tr><th>STT</th><th>Họ tên</th><th>Tên DN</th><th>Mật khẩu</th><th>Quyền</th><th>Cập nhật gần đây</th><th>Khóa</th><th>Tác vụ</th></tr></thead><tbody>";
            var i = 1;
            $.each(data, function (key, item) {
                console.log(item.UserName);
                tabletext += "<tr><td>" + i + "</td><td>" + item.Fullname + "</td><td>" + item.UserName + "</td><td>" + item.Password + "</td><td>" + item.Role + "</td><td>" + item.LastUpdate + "</td><td>" + item.LOCKED + '</td><td><a href="#"> <i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a><a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a></td></tr>';
                i = i + 1;
            });
            tabletext += "</tbody>";
            $('#tableuser').html(tabletext);
            console.log("ok1");
            loadTableUser();
        }, error: function (ret) {
            console.log('error');
        },
        complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
            $('#loader').addClass('hidden');
        },
    });
});

function loadTableUser() {
    $('table[id=tableuser]').each(function () {

        var table1 = $(this).DataTable({
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
            },
            buttons: ['copy', 'excel', 'csv', 'pdf']
        });
        table1.buttons().container()
            .appendTo('this_wrapper .col-md-6:eq(0)');
    });
};