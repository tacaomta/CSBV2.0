<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_Tau.aspx.cs" Inherits="CSB.Page_Master.Manage_Tau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .a_selected {
            background-color: #c44824;
        }

        .subMenu ul li {
            cursor: pointer;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 15px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title" style="color: black; margin: 0">QUẢN LÝ TÀU - VÙNG 1</h4>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item"><a href="Null.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                    <div class="breadcrumb-item"><a href="Manage_ship?vung=1" style="color: #01b5f9; font-size: 18px;">Quản lý tàu</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="subMenu" style="justify-content: flex-start;">
                    <ul class="mainMenu-list" style="display: flex;">
                        <li><a id="Vung1" class="a_menu" href="../Page_Master/Manage_Tau?vung=1">VÙNG 1</a></li>
                        <li><a id="Vung2" class="a_menu" href="../Page_Master/Manage_Tau?vung=2">VÙNG 2</a></li>
                        <li><a id="Vung3" class="a_menu" href="../Page_Master/Manage_Tau?vung=3">VÙNG 3</a></li>
                        <li><a id="Vung4" class="a_menu" href="../Page_Master/Manage_Tau?vung=4">VÙNG 4</a></li>
                        <li><a class="a_menu" href="../Page_Master/Null.aspx">CÁC ĐƠN VỊ TRỰC THUỘC</a></li>
                    </ul>
                </div>
                <div class="section-header" style="padding-bottom: 15px;">
                    <div class="col-md-12" style="padding: 0">
                        <table id="tableship" class="table table-bordered table-striped table-md" style="width: 100%">
                            <tbody>
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>SỐ HIỆU</th>
                                    <th>KÝ HIỆU</th>
                                    <th>NƠI SẢN XUẤT</th>
                                    <th>NĂM TIẾP NHẬN</th>
                                    <th>CHỨC NĂNG, NHIỆM VỤ</th>
                                    <th>HỒ SƠ TẦU</th>
                                    <th>TÁC VỤ</th>
                                </tr>
                            </thead>
                            <tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        var vung = getParameterByName('vung');
        var vung_id;
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        $(document).ready(function () {
            if (vung == null | vung == 1) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8C';
                document.getElementById("Vung1").classList.add("a_selected");
                document.getElementById("Vung2").classList.remove("a_selected");
                document.getElementById("Vung3").classList.remove("a_selected");
                document.getElementById("Vung4").classList.remove("a_selected");
            }
            else if (vung == 2) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8B';
                document.getElementById("Vung2").classList.add("a_selected");
                document.getElementById("Vung1").classList.remove("a_selected");
                document.getElementById("Vung3").classList.remove("a_selected");
                document.getElementById("Vung4").classList.remove("a_selected");
            }
            else if (vung == 3) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8D';
                document.getElementById("Vung3").classList.add("a_selected");
                document.getElementById("Vung2").classList.remove("a_selected");
                document.getElementById("Vung1").classList.remove("a_selected");
                document.getElementById("Vung4").classList.remove("a_selected");
            }
            else if (vung == 4) {
                vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8E';
                document.getElementById("Vung4").classList.add("a_selected");
                document.getElementById("Vung2").classList.remove("a_selected");
                document.getElementById("Vung3").classList.remove("a_selected");
                document.getElementById("Vung1").classList.remove("a_selected");
            }
            $('#title').text('QUẢN LÝ TÀU - VÙNG ' + vung);
            loadDataListShips(vung_id);

        });
        function loadDataListShips(vung_id) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ships_region?id=" + vung_id,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>SỐ HIỆU</th><th>KÝ HIỆU</th><th>NƠI SẢN XUẤT</th><th>NĂM TIẾP NHẬN</th><th>CHỨC NĂNG, NHIỆM VỤ</th><th  title='Xem hồ sơ tầu'>HỒ SƠ TÀU</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.TTCOBAN.SOHIEU + "</td><td>" + item.TTCOBAN.KYHIEU + "</td><td>" + item.TTCOBAN.NOISANXUAT + "</td><td>" + item.TTCOBAN.NAMTIEPNHAN + "</td><td>" + item.TTCOBAN.CHUCNANG + "</td>" + '<td style="text-align: center;"><a href="#" class="view"  title="Xem hồ sơ tàu" onclick="View_HoSoTau(`' + item.ID + '`)"><i class="material-icons">&#xE417;</i></a></td>' + '<td><div style="width: max-content;"><a href="#" style="color:blue" title="Xuất file Word" onclick="xuatWordTau(`' + item.ID + '`)"><i class="material-icons">text_snippet</i></a><a href="#" style="color:green" title="Xuất file Excel" onclick="xuatExcelTau(`' + item.ID + '`)"><i class="material-icons">description</i></a><a href="#" style="color:orange" title="Xuất file pdf" onclick="xuatPdfTau(`' + item.ID + '`)"><i class="material-icons">picture_as_pdf</i></a><a href="#" style="color:revert" title="In báo cáo" onclick="inBCTau(`' + item.ID + '`)"><i class="material-icons">print</i></a><a href="#" class="edit" title="Sửa" onclick="ViewInforShip(`' + item.ID + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_ship(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tableship').html(tabletext);
                    loadTableShip();
                    $('#tableship_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listship()" class="btn btn-lg btn-secondary mb-3"><span class="bi-arrow-clockwise"></span> &nbsp;Load dữ liệu</button> <button onclick="btn_addship()" class="btn btn-lg btn-secondary mb-3"><span class="bi-plus-circle-fill"></span> &nbsp;Thêm mới tàu</button><div class="btn-group"><button type="button" class="btn btn-lg btn-secondary mb-3 dropdown-toggle" data-toggle="dropdown"><span class="bi-file-earmark-text"></span> Xuất báo cáo </button><ul class="dropdown-menu" role="menu"><li><a href="#">In báo cáo</a></li><li><a href="#" >Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div></div>');
                    $('#tableship_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    //$('#loader').addClass('hidden');
                    $('#model-edit-user').addClass('hidden');
                },
            });
        };
        function loadTableShip() {
            $('table[id=tableship]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 40 },
                        { name: 'SỐ HIỆU', width: 160 },
                        { name: 'KÝ HIỆU', width: 160 },
                        { name: 'NƠI SẢN XUẤT', width: 160 },
                        { name: 'NĂM TIẾP NHẬN', width: 160 },
                        { name: 'CHỨC NĂNG, NHIỆM VỤ', width:220 },
                        { name: 'HỒ SƠ TÀU', width: 100 },
                        { name: 'TÁC VỤ' ,width:60},
                    ],
                    "columnDefs": [
                        {
                            "targets": [0, 3, 4, 5, 6, 7],
                            "searchable": false,
                        },
                        {
                            "targets": [5, 6, 7],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1, 2, 3, 4],
                            "orderable": true
                        }
                    ],
                    lengthChange: true,
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

        function btn_addship() {
            window.location = baseaddress + "Page_Master/DacDiemChung";
        }
        function View_HoSoTau(Ship_ID) {
           
            window.location = baseaddress + "Page_Master/Ship_profile?Ship_ID="+Ship_ID;
        }
        function delete_ship(id) {
            let text = "Bạn có chắc muốn xóa tàu này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_ship?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    var vung = getParameterByName("vung");
                    var vung_id = "";
                    if (vung == null | vung == 1) {
                        vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8C';
                    }
                    else if (vung == 2) {
                        vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8B';
                    }
                    else if (vung == 3) {
                        vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8D';
                    }
                    else if (vung == 4) {
                        vung_id = '5AEBB23FF45F3C235AFD86B510BF9E8E';
                    }
                    loadDataListShips(vung_id);
                    toastSuccess("Thành công", "Xóa thông tin tàu thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin tàu không thành công!");
                })
            } else {

            }
        }
        function ViewInforShip(id) {
            var win = window.open(baseaddress + "Page_Master/DacDiemChung?Ship_ID=" + id, '_blank');
            win.focus();
        }
    </script>
</asp:Content>