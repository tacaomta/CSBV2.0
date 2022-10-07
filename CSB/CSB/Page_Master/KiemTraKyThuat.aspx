<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="KiemTraKyThuat.aspx.cs" Inherits="CSB.Page_Master.KiemTraKyThuat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #table_KiemTraKT_wrapper {
            overflow-x: hidden;
        }
    </style>
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_KiemTraKT" style="color: black; margin: 0; margin-left: 15px;">KIỂM TRA KỸ THUẬT TÀU</h4>
                <div class="section-header-breadcrumb" style="margin-right: 15px;">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="Manage_Tau?vung=1" style="color: #01b5f9">Quản lý tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" onclick="HoSoTau()" style="color: #01b5f9">Hồ sơ tàu</a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Kiểm tra kỹ thuật</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <div class="btn-group">
                            <button onclick="btn_loadDataList_KiemTraKT()" class="btn btn-secondary mb-2"><i class="bi-arrow-clockwise"></i> Load dữ liệu</button>
                            <button id="btn_add_KiemTraKT" onclick="btn_add_KiemTraKT()" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-KiemTraKT"><i class="bi bi-plus-circle"></i> Thêm mới</button>
                        </div>
                        <table id="table_KiemTraKT" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-KiemTraKT" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="form-add-KiemTraKT" onsubmit="return false">
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Thêm kiểm tra kỹ thuật cho tàu</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="row clearfix ">
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Ngày, tháng, năm   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="date" class="form-control" id="KiemTraKT_addNgayThangNam" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Cơ quan, cấp kiểm tra  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_addCapKiemTra" placeholder="Nhập cơ quan, cấp kiểm tra" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Tình trạng kiểm tra  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_addTinhTrangKT" placeholder="Nhập tình trạng kiểm tra" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Chất lượng cấp kiểm tra   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_addChatLuongCapKT" placeholder="Nhập chất lượng cấp kiểm tra" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Kết luận cho phép mức độ khai thác tàu: </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_addKetLuanKT" placeholder="Nhập Kết luận cho phép mức độ khai thác tàu " required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Trưởng đoàn kiểm tra: </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_addTruongDoanKT" placeholder="Nhập trưởng đoàn kiểm tra" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="add_KiemTraKT()" class="btn btn-info">Thêm</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-edit-KiemTraKT" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="form-edit-KiemTraKT" onsubmit="return false">
                    <input type="hidden" id="KiemTraKT_editID" />
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Sửa kiểm tra kỹ thuật của tàu</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="row clearfix ">
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Ngày, tháng, năm   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="date" class="form-control" id="KiemTraKT_editNgayThangNam" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Cơ quan, cấp kiểm tra  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_editCapKiemTra" placeholder="Nhập cơ quan, cấp kiểm tra" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Tình trạng kiểm tra  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_editTinhTrangKT" placeholder="Nhập tình trạng kiểm tra" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Chất lượng cấp kiểm tra   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_editChatLuongCapKT" placeholder="Nhập chất lượng cấp kiểm tra" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Kết luận cho phép mức độ khai thác tàu : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_editKetLuanKT" placeholder="Nhập Kết luận cho phép mức độ khai thác tàu " required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Trưởng đoàn kiểm tra: </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="KiemTraKT_editTruongDoanKT" placeholder="Nhập trưởng đoàn kiểm tra" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="btn_edit_KiemTraKT()" class="btn btn-info">Lưu</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        var date = new Date();
        if (Number(date.getMonth()) + 1 < 10) {
            debugger
            var strDate_ntn = '' + date.getFullYear() + '-' + '0' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }
        else {
            var strDate_ntn = '' + date.getFullYear() + '-' + (Number(date.getMonth()) + 1) + '-' + date.getDate();
        }
        var Ship_ID;
        var shipName;
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        $(document).ready(function () {
            Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                history.back();
            }
            else {
                Load_Title(Ship_ID);
                loadDataList_KiemTraKT(Ship_ID);
            }

        });
        function Load_Title(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    $("#title_KiemTraKT").html("KIỂM TRA KỸ THUẬT TÀU " + data.TTCOBAN.SOHIEU);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.


                },
            });
        }

        function HoSoTau() {
            window.location = baseaddress + "Page_Master/Ship_profile?Ship_ID=" + Ship_ID;
        }
        function loadDataList_KiemTraKT(Ship_ID) {
            {
                $.ajax({
                    type: "GET",
                    url: linkapi + "v2/xemdanhmuckiemtrakythuattau?id=" + Ship_ID,
                    dataType: "json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                        //$('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th>STT</th><th>NGÀY, THÁNG, NĂM</th><th>CƠ QUAN, CẤP KT</th><th>TÌNH TRẠNG KT</th><th>CHẤT LƯỢNG CẤP KT TÀU</th><th>KẾT LUẬN CHO PHÉP MỨC ĐỘ KHAI THÁC TÀU</th><th>TRƯỞNG ĐOÀN</th><th>TÁC VỤ</th></tr></thead><tbody>";
                        var i = 1;
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td style='text-align: center;'>" + i + "</td><td>" + item.NGAYTHANG + "</td><td>" + item.CAPKIEMTRA + "</td><td>" + item.TOMTATTINHTRANG + "</td><td>" + item.CHATLUONG + "</td><td>" + item.KETLUAN + "</td><td>" + item.TRUONGDOAN + "</td>" + '<td><div style="display: flex; justify-content: space-around;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-KiemTraKT" onclick="editKiemTraKT(`' + item.ID + '`,`' + item.NGAYTHANG + '`,`' + item.CAPKIEMTRA + '`,`' + item.TOMTATTINHTRANG + '`,`' + item.CHATLUONG + '`,`' + item.KETLUAN + '`,`' + item.TRUONGDOAN + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_KiemTraKT(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                            i = i + 1;
                        });
                        tabletext += "</tbody>";
                        $('#table_KiemTraKT').html(tabletext);
                        loadTableKiemTraKT();
                        //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        //$('#loader').addClass('hidden');
                        //$('#model-edit-user').addClass('hidden');
                    },
                });
            }
        }
        function loadTableKiemTraKT() {
            $('table[id=table_KiemTraKT]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 40 },
                        { name: 'NGÀY, THÁNG, NĂM', width: 120 },
                        { name: 'CƠ QUAN, CẤP KT', width: 100 },
                        { name: 'TRÌNH TRẠNG KT', width: 100 },
                        { name: 'CHẤT LƯỢNG CẤP KT TÀU', width: 100 },
                        { name: 'KẾT LUẬN CHO PHÉP MỨC ĐỘ KHAI THÁC TÀU', width: 140 },
                        { name: 'TRƯỞNG ĐOÀN', width: 100 },
                        { name: 'TÁC VỤ', width: 60 },
                    ],
                    lengthChange: false,
                    "columnDefs": [
                        {
                            "targets": [0, 3, 4, 5],
                            "searchable": false,
                        },
                        {
                            "targets": [5],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1, 2, 3, 4],
                            "orderable": true
                        }
                    ],
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

            });
        };
        function btn_loadDataList_KiemTraKT() {
            location.reload(true);
        }
        function add_KiemTraKT() {
            var form = document.getElementById("form-add-KiemTraKT");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var date_ntn = new Date($("#KiemTraKT_addNgayThangNam").val());
                var day = date_ntn.getDate();
                var month = date_ntn.getMonth();
                month++;
                var year = date_ntn.getFullYear();
                //date_ntn = $("#KiemTraKT_addNgayThangNam").val();
                //var year = date_ntn.substring(0, 4);
                //var month = date_ntn.substring(5, 7);
                //var day = date_ntn.substring(8, 10);
                if (day < 10) {
                    day = '0' + day;
                }
                if (month < 10) {
                    month = '0' + month;
                }
                date_ntn = day + '/' + month + '/' + year;
                var KiemTraKT = {

                    NGAYTHANG: date_ntn,
                    CAPKIEMTRA: $("#KiemTraKT_addCapKiemTra").val(),
                    TOMTATTINHTRANG: $("#KiemTraKT_addTinhTrangKT").val(),
                    CHATLUONG: $("#KiemTraKT_addChatLuongCapKT").val(),
                    KETLUAN: $("#KiemTraKT_addKetLuanKT").val(),
                    TRUONGDOAN: $("#KiemTraKT_addTruongDoanKT").val()
                };
                console.log(KiemTraKT);
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/themkiemtrakythuattau?id=" + Ship_ID,
                    dataType: "json",
                    data: JSON.stringify(KiemTraKT),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm kiểm tra tàu thành công.");
                        loadDataList_KiemTraKT(Ship_ID);
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#KiemTraKT_addNgayThangNam").val("");
                        $("#KiemTraKT_addCapKiemTra").val("");
                        $("#KiemTraKT_addTinhTrangKT").val("");
                        $("#KiemTraKT_addChatLuongCapKT").val("");
                        $("#KiemTraKT_addKetLuanKT").val("");
                        $("#KiemTraKT_addTruongDoanKT").val("");
                        $('#model-add-KiemTraKT').modal("hide");
                    },
                });
            }
        }
        function editKiemTraKT(ID, NGAYTHANG, CAPKIEMTRA, TOMTATTINHTRANG, CHATLUONG, KETLUAN, TRUONGDOAN) {
            debugger
            var day = NGAYTHANG.substring(0, 2);
            var month = NGAYTHANG.substring(3, 5);
            var year = NGAYTHANG.substring(6, 10);
            NGAYTHANG = year + '-' + month + '-' + day;
            $("#KiemTraKT_editID").val(ID);
            $("#KiemTraKT_editNgayThangNam").val(NGAYTHANG);
            $("#KiemTraKT_editCapKiemTra").val(CAPKIEMTRA);
            $("#KiemTraKT_editTinhTrangKT").val(TOMTATTINHTRANG);
            $("#KiemTraKT_editChatLuongCapKT").val(CHATLUONG);
            $("#KiemTraKT_editKetLuanKT").val(KETLUAN);
            $("#KiemTraKT_editTruongDoanKT").val(TRUONGDOAN);
        }

        function btn_edit_KiemTraKT() {
            var form = document.getElementById("form-edit-KiemTraKT");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var date_ntn = new Date($("#KiemTraKT_editNgayThangNam").val());
                var day = date_ntn.getDate();
                var month = date_ntn.getMonth();
                month++;
                var year = date_ntn.getFullYear();
                if (day < 10) {
                    day = '0' + day;
                }
                if (month < 10) {
                    month = '0' + month;
                }
                date_ntn = day + '/' + month + '/' + year;

                var id_kiemtra = $("#KiemTraKT_editID").val();
                var KiemTraKT = {
                    ID: id_kiemtra,
                    NGAYTHANG: date_ntn,
                    CAPKIEMTRA: $("#KiemTraKT_editCapKiemTra").val(),
                    TOMTATTINHTRANG: $("#KiemTraKT_editTinhTrangKT").val(),
                    CHATLUONG: $("#KiemTraKT_editChatLuongCapKT").val(),
                    KETLUAN: $("#KiemTraKT_editKetLuanKT").val(),
                    TRUONGDOAN: $("#KiemTraKT_editTruongDoanKT").val()
                };
                console.log(KiemTraKT);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "v2/suakiemtrakythuattau?id=" + id_kiemtra,
                    dataType: "json",
                    data: JSON.stringify(KiemTraKT),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa kiểm tra kỹ thuật thành công.");
                        loadDataList_KiemTraKT(Ship_ID);
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $("#KiemTraKT_editNgayThangNam").val("");
                        $("#KiemTraKT_editCapKiemTra").val("");
                        $("#KiemTraKT_editTinhTrangKT").val("");
                        $("#KiemTraKT_editChatLuongCapKT").val("");
                        $("#KiemTraKT_editKetLuanKT").val("");
                        $("#KiemTraKT_editTruongDoanKT").val("");
                        $('#model-edit-KiemTraKT').modal("hide");
                    },
                });
            }
        }

        function delete_KiemTraKT(id_kiemtra) {
            let text = "Bạn có chắc muốn xóa kiểm tra kỹ thuật này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/xoakiemtrakythuattau?id=" + id_kiemtra,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_KiemTraKT(Ship_ID);
                    toastSuccess("Thành công", "Xóa kiểm tra kỹ thuật thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa kiểm tra kỹ thuật không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
