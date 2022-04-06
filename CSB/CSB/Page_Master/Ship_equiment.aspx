<%@ Page Title="Thiết bị trên tàu" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Ship_equiment.aspx.cs" Inherits="CSB.Page_Master.Ship_equiment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .accordion-item {
            margin: 3px 0 0 0;
            border-radius: 3px !important;
            border: 1px solid rgb(4 39 94 / 13%)
        }

            .accordion-item:not(:first-of-type) {
                border-top: 1px solid rgb(4 39 94 / 13%)
            }

        .accordion-button:not(.collapsed) {
            color: #ffffff;
            background-color: #63aff7;
            border-color: #c6e2e9;
            box-shadow: inset 0 -1px 0 rgb(4 3 98 / 13%);
        }

        .accordion-button {
            background-color: #63aff717;
            color: #3a4787;
            font-weight: bold;
            font-size: 16px;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <div id="form1">
        <div class="section-header">
            <div class="col-12">
                <div class="section">
                    <div class="section-header" style="margin-bottom: 2%">
                        <h4 id="title" style="color: black; margin: 0">THIẾT BỊ TRÊN TÀU - TÀU CỨU HỘ XH123</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="Manage_ship.aspx" style="color: #01b5f9">Quản lý tàu vùng N</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-12">
                            <div class="accordion" id="accorShipEquiment">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headMainEngine">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collMainEngine">4 - Máy chính </button>
                                    </h2>
                                    <div id="collMainEngine" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <div class="section-header">
                                                <div class="col-12">
                                                    <table id="table_maychinh" class="table table-bordered table-striped table-md" style="width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>STT</th>
                                                                <th>TÊN MÁY</th>
                                                                <th>NAM SẢN XUẤT</th>
                                                                <th>XUÁT XỨ</th>
                                                                <th>MÃ LỰC</th>
                                                                <th>WASTE</th>
                                                                <th>TỐC ĐỘ</th>
                                                                <th>ĐƯỜNG KÍNH</th>
                                                                <th>TÁC VỤ</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Tiger Nixon</td>
                                                                <td>System Architect</td>
                                                                <td>Edinburgh</td>
                                                                <td>61</td>
                                                                <td>2011/04/25</td>
                                                                <td>$320,800</td>
                                                                <td>System Architect</td>
                                                                <td>
                                                                    <a href="#"><i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                                                    <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                                                </td>
                                                            </tr>

                                                        </tbody>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headSecondaryEngine">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collSecondaryEngine">2 - Máy phụ </button>
                                    </h2>
                                    <div id="collSecondaryEngine" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headScrew">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collScrew">2 - Hệ trục chân vịt </button>
                                    </h2>
                                    <div id="collScrew" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headWeapon">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collWeapon">1 - Khí tài, hàng hải </button>
                                    </h2>
                                    <div id="collWeapon" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headMotoBoat">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collMotoBoat">1 - Xuồng công tác </button>
                                    </h2>
                                    <div id="collMotoBoat" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headAnchor">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collAnchor">4 - Neo, tời neo, xích neo </button>
                                    </h2>
                                    <div id="collAnchor" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headLifeSaving">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collLifeSaving">2 - Trang bị cứu sinh </button>
                                    </h2>
                                    <div id="collLifeSaving" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headOther">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collOther">0 - Các trang bị khác </button>
                                    </h2>
                                    <div id="collOther" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headSupplies">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collSupplies">0 - Vật tư bảo đảm </button>
                                    </h2>
                                    <div id="collSupplies" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function () {
            var Ship_ID = getParameterByName('Ship_ID');
            loadInforShip(Ship_ID);
            loadDataList_Main_Engine(Ship_ID);
           
        });
        function loadInforShip(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    $("#title").html("THIẾT BỊ TRÊN TÀU - " + data.Name);
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
           
        }
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        // ===================================== MAIN_ENGINE========================================
        function loadTableMain_Engine() {
            $('table[id=table_maychinh]').each(function () {
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

        function loadDataList_Main_Engine(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "main_engine?imo=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN MÁY</th><th>NAM SẢN XUẤT</th><th>XUẤT XỨ</th><th>MÃ LỰC</th><th>WASTE</th><th>TỐC ĐỘ</th><th>ĐƯỜNG KÍNH</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.ProductionYear + "</td><td>" + item.Origin + "</td><td>" + item.Power + "</td><td>" + item.Waste + "</td><td>" + item.Speed + "</td><td>" + item.Diameter + '</td>' + '<td><button class="btn btn-info btn_Edit_main_engine" data-toggle="modal" data-target="#model-infordetail-ship"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Sửa thông tin" ></i></button><button class="btn btn-info btn_Delete_main_engine" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_maychinh').html(tabletext);
                    console.log(linkapi + "main_engine?imo=" + Ship_ID);
                    loadTableMain_Engine();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');
                    $('#model-edit-user').addClass('hidden');
                },
            });
        };
    </script>
</asp:Content>

