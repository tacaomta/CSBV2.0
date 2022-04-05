
$(document).ready(function () {
    var vung = getParameterByName('vung');
    if (vung == null) {
        vung = 1;
    }
    $('#Vung' + vung).css('background-color', 'beige');
    $('#title').text('QUẢN LÝ TÀU - VÙNG ' + vung);
    loadDataListShips(vung);
});
function loadDataListShips(vung) {

    $.ajax({
        type: "GET",
        url: linkapi + "ships?region=" + vung,
        dataType: "json",
        beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
            $('#loader').removeClass('hidden');
        },
        success: function (data) {
            var tabletext = "<thead><tr><th>STT</th><th>TÊN TÀU</th><th>SỐ HIỆU</th><th>SỐ THUYỀN VIÊN</th><th>NĂM HẠ THỦY</th><th>TRỌNG TẢI</th><th>TỐC ĐỘ</th><th>TG HÀNH TRÌNH TỐI ĐA</th><th>TÁC VỤ</th></tr></thead><tbody>";
            var i = 1;
            $.each(data, function (key, item) {
                debugger;
                tabletext += "<tr><td>" + i + "</td><td>" + item.Ship.Name + "</td><td>" + item.Ship.RegistrationNumber + "</td><td>" + item.Ship.Personel + "</td><td>" + item.Ship.LaunchYear + "</td><td>" + item.Ship.Weight + "</td><td>" + item.Ship.Speed + "</td><td>" + item.Ship.Time + '</td><td><button class="btn btn-info btn_ViewInforShip" onclick="ViewInforShip(`' + item.Ship.Name + '`,`' + item.Ship.RegistrationNumber + '`,`' + item.Ship.RegistrationPlace + '`,`' + item.Ship.RegistrationDate + '`,`' + item.Ship.LaunchYear + '`,`' + item.Ship.Weight + '`,`' + item.Ship.Fuel + '`,`' + item.Ship.Water + '`,`' + item.Ship.Personel + '`,`' + item.Ship.Captain + '`,`' + item.Ship.Speed + '`,`' + item.Ship.Time + '`,`' + item.Ship.Created + '`)" data-toggle="modal" data-target="#model-infordetail-ship" style="padding: 0;"> <i class="fas fa-edit icon_action" title="Xem thông tin chi tiết" ></i></button><button class="btn btn-info btn_ViewEquipment" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
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
    debugger;
    $("#TenTau").val(Name);
    $("#SoHieu").val(RegistrationNumber);
    $("#NoiCap").val(RegistrationPlace);
    $("#NgayCap").val(RegistrationDate);
    $("#NamHaThuy").val(LaunchYear);
    $("#TrongTai").val(Weight);
    $("#NhienLieuToiDa").val(Fuel);
    $("#NuocNgotToiDa").val(Water);
    $("#SoThuyenVien").val(Personel);
    $("#ThuyenTruong").val(Captain);
    $("#TocDo").val(Speed);
    $("#TG_HanhTrinhToiDa").val(Time);
    $("#NgayTao").val(Created);

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

function getParameterByName(name, url = window.location.href) {
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}
function PreviewImage() {
    var oFReader = new FileReader();
    if (document.getElementById("Anh").files[0] == null) alert("1");
    oFReader.readAsDataURL(document.getElementById("Anh").files[0]);

    oFReader.onload = function (oFREvent) {
        document.getElementById("upload_imageproduct").src = oFREvent.target.result;
    };
};
function Xoa() {
    $('#Anh').attr('disabled', '');
    document.getElementById("upload_imageproduct").src = ""
}