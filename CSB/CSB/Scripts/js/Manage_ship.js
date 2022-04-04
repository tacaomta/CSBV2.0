$(document).ready(function () {
    loadDataListShips();
});
function loadDataListShips() {
    $.ajax({
        type: "GET",
        url: linkapi + "ships?region=1",
        dataType: "json",
        beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
            $('#loader').removeClass('hidden');
        },
        success: function (data) {
            var tabletext = "<thead><tr><th>STT</th><th>TÊN TÀU</th><th>SỐ HIỆU</th><th>SỐ THUYỀN VIÊN</th><th>NĂM HẠ THỦY</th><th>TRỌNG TẢI</th><th>TỐC ĐỘ</th><th>TG HÀNH TRÌNH TỐI ĐA</th><th>TÁC VỤ</th></tr></thead><tbody>";
            var i = 1;
            $.each(data, function (key, item) {
                tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.RegistrationNumber + "</td><td>" + item.Personel + "</td><td>" + item.LaunchYear + "</td><td>" + item.Weight + "</td><td>" + item.Speed + "</td><td>" + item.Time + '</td><td><button class="btn btn-info btn_ViewInforShip" onclick="ViewInforShip(`' + item.Name + '`,`' + item.RegistrationNumber + '`,`' + item.RegistrationPlace + '`,`' + item.RegistrationDate + '`,`' + item.LaunchYear + '`,`' + item.Weight + '`,`' + item.Fuel + '`,`' + item.Water + '`,`' + item.Personel + '`,`' + item.Captain + '`,`' + item.Speed + '`,`' + item.Time + '`,`' + item.Created + '`)" data-toggle="modal" data-target="#model-infordetail-ship"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Xem thông tin chi tiết" ></i></button><button class="btn btn-info btn_ViewEquipment" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
                i = i + 1;
            });
            tabletext += "</tbody>";
            $('#tableship').html(tabletext);
            console.log("okGET");
            loadTableShip();
        }, error: function (ret) {
            console.log('errorGET');
        },
        complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
            $('#loader').addClass('hidden');
            $('#model-edit-user').addClass('hidden');
        },
    });
};
function ViewInforShip(Name, RegistrationNumber, RegistrationPlace, RegistrationDate, LaunchYear, Weight, Fuel, Water, Personel, Captain, Speed, Time, Created) {
    $("TenTau").val(name);
}
function loadTableShip() {
    $('table[id=tableship]').each(function () {
        var table1 = $(this).DataTable({
            'destroy': true,
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
    });
};