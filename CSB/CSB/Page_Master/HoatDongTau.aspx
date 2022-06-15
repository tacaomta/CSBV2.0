<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="HoatDongTau.aspx.cs" Inherits="CSB.Page_Master.HoatDongTau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 id="title_nhatkyhoatdongcuatau" style="color: black; margin: 0; margin-left: 15px;">NHẬT KÝ HOẠT ĐỘNG CỦA TÀU</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                        <div class="breadcrumb-item active"><a href="Manage_Tau?vung=1" style="color: #01b5f9">Quản lý tàu</a></div>
                        <div class="breadcrumb-item active"><a href="#" onclick="HoSoTau()" style="color: #01b5f9">Hồ sơ tàu</a></div>
                        <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Theo dõi hoạt động của tàu</a></div>
                    </div>
                </div>
                <div class="section-header">
                    <div class="col-md-12">
                        <div class="btn-group">
                            <button onclick="loadDataList_NhatKy()" class="btn btn-secondary mb-2"><i class="bi-arrow-clockwise"></i>&nbsp;Load dữ liệu</button>
                            <button id="btn_add_NhatKy" class="btn btn-secondary mb-2" data-toggle="modal" data-target="#model-add-NhatKy" style="padding-top: 4px;"><i class="bi bi-plus-circle"></i>&nbsp; Thêm mới</button>
                        </div>
                        <table id="table_NhatKyHoatDongCuaTau" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-NhatKy" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="form-add-NhatKy" onsubmit="return false">
                    <div class="card auth_form" style="margin-bottom: 0px">
                        <div class="modal-header" style="padding: 10px 16px;">
                            <h4 class="title-modal-banve font-weight-bold">Thêm nhật ký hoạt động của tàu</h4>
                        </div>
                        <div class="modal-body" style="padding: 6px 16px;">
                            <div class="row clearfix ">
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Ngày, tháng, năm   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="NhatKy_addNgayThangNam" placeholder="Nhập ngày, tháng, năm" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Ký hiệu   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="add-BOMDAUNUOCTHONGGIO-KYHIEU" placeholder="Nhập ký hiệu" required>
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Nước sản xuất   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="add-BOMDAUNUOCTHONGGIO-NUOCSX">
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Lưu lượng   : </strong></label>
                                        <div class="col-md-7">
                                            <input type="text" class="form-control" id="add-BOMDAUNUOCTHONGGIO-LUULUONG">
                                        </div>
                                    </div>
                                </div>
                                <div style="width: 100%; float: left; padding: 10px">
                                    <div class="form-group" style="display: flex">
                                        <label class="col-md-5 control-label"><strong>Số lượng  : </strong></label>
                                        <div class="col-md-7">
                                            <input type="number" step="any" class="form-control" id="add-BOMDAUNUOCTHONGGIO-SOLUONG" placeholder="Nhập số lượng" required min="0">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="padding: 8px 16px;">
                            <button type="submit" onclick="add_HETRUCCHANVIT()" class="btn btn-info">Thêm</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
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
                loadDataList_NhatKy(Ship_ID);
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
                    $("#title_nhatkyhoatdongcuatau").html("NHẬT KÝ HOẠT ĐỘNG CỦA TÀU " + data.TTCOBAN.SOHIEU);
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
        function loadDataList_NhatKy(Ship_ID) {
            {
                $.ajax({
                    type: "GET",
                    url: linkapi + "v2/nhatkyhoatdongtau?id=" + Ship_ID,
                    dataType: "json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                        //$('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th>STT</th><th>NGÀY, THÁNG, NĂM</th><th>NƠI XUẤT PHÁT</th><th>NƠI ĐẾN</th><th>SỐ NGÀY HOẠT ĐỘNG</th><th>TỔNG SỐ HLHT</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                        var i = 1;
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + i + "</td><td>" + item.NGAYTHANG + "</td><td>" + item.NOIXUATPHAT + "</td><td>" + item.NOIDEN + "</td><td>" + item.SONGAYHD + "</td><td>" + item.HAILY + "</td><td>" + item.GHICHU + "</td>" + '<td><div style="width: max-content;"><a href="#" class="edit" onclick="editnhatky(`' + item.ID + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_nhatky(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                            i = i + 1;
                        });
                        tabletext += "</tbody>";
                        $('#table_NhatKyHoatDongCuaTau').html(tabletext);
                        loadTableNhatKy();
                        //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        //$('#loader').addClass('hidden');
                        $('#model-edit-user').addClass('hidden');
                    },
                });
            }
        }
        function loadTableNhatKy() {
            $('table[id=table_NhatKyHoatDongCuaTau]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 20 },
                        { name: 'NGÀY, THÁNG, NĂM', width: 100 },
                        { name: 'NƠI XUẤT PHÁT', width: 100 },
                        { name: 'NƠI ĐẾN', width: 100 },
                        { name: 'SỐ NGÀY HOẠT ĐỘNG', width: 120 },
                        { name: 'TỔNG SỐ HLHT', width: 100 },
                        { name: 'GHI CHÚ', width: 100 },
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
    </script>
</asp:Content>
