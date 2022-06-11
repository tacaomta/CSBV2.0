<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="TinhNangChuYeu.aspx.cs" Inherits="CSB.Page_Master.TinhNangChuYeu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="card">
                <div class="card-header">
                    <h5 id="title_Update_ThanVo">THÔNG TIN CÁN BỘ, NHÂN VIÊN TÀU</h5>
                    <div class="page-header-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Null.aspx" style="font-size: 14px;">Trang chủ</a>
                            </li>
                            <li class="breadcrumb-item"><a href="#" style="font-size: 14px;">Quản lý nhân viên</a>
                            </li>
                            <li class="breadcrumb-item"><a href="Add_ThanVo.aspx" style="font-size: 14px;">Thông tin nhân viên</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card-block">

                    <h4 class="sub-title">THÂN VỎ</h4>
                    <table id="table_ThanVo" class="table table-bordered" style="width: 100%">
              
                    </table>
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <h4 class="sub-title">Máy chính</h4>
                            <div class="form-group row">
                                <table id="table_MayChinh" class="table table-bordered" style="width: 100%">
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <h4 class="sub-title">Máy nén khí</h4>
                            <div class="form-group row">
                                <table id="table_MayNenKhi" class="table table-bordered" style="width: 100%">
                                </table>
                            </div>
                        </div>
                    </div>
                    <h4 class="sub-title">Máy phụ, phát điện</h4>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Firstname</th>
                                <th>Lastname</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>John</td>
                                <td>Doe</td>
                                <td>john@example.com</td>
                            </tr>
                            <tr>
                                <td>Mary</td>
                                <td>Moe</td>
                                <td>mary@example.com</td>
                            </tr>
                            <tr>
                                <td>July</td>
                                <td>Dooley</td>
                                <td>july@example.com</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-lg-4 col-md-12">
                            <h4 class="sub-title">Hàng hải</h4>
                            <div class="form-group row">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Firstname</th>
                                            <th>Lastname</th>
                                            <th>Email</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>John</td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td>Mary</td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td>July</td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <h4 class="sub-title">Ra da</h4>
                            <div class="form-group row">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Firstname</th>
                                            <th>Lastname</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>John</td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td>Mary</td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td>July</td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <h4 class="sub-title">Vũ khí</h4>
                            <div class="form-group row">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Firstname</th>
                                            <th>Lastname</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>John</td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td>Mary</td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td>July</td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="form-footer">
                        <div class="left">
                            <a href="javascript: history.go(-1)" style="float: left" class="btn btn-success"><i class="bi bi-arrow-left-circle"></i>&nbsp;Quay lại</a>
                        </div>
                        <div class="right">
                            <div class="btn-group">
                                <button type="button" onclick="remove_input_edit_ship()" class="btn btn-danger"><i class="bi bi-x-circle"></i>&nbsp;Xoá ô nhập</button>
                                <button type="button" class="btn btn-primary right" onclick="editThanVo()"><i class="bi bi-plus-circle"></i>&nbsp;Lưu thông tin</button>
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

                loadDataList_ThanVo(Ship_ID);
                loadDataList_MayChinh(Ship_ID);
            }

        });
        function loadDataList_ThanVo(Ship_ID) {
            {
                $.ajax({
                    type: "GET",
                    url: linkapi + "v2/thanvo?id=" + Ship_ID,
                    dataType: "json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                        //$('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th>STT</th><th>KÝ HIỆU VẬT LIỆU</th><th>SỐ KHOANG KÍN NƯỚC</th><th>SỐ SƯỜN TÀU</th><th>SỐ KÉT DÀU CHÁY</th><th>SỐ KÉT DẦU NHỜN</th><th>SỐ KÉT NƯỚC</th></tr></thead><tbody>";
                        var i = 1;
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + i + "</td><td>" + item.KYHIEUVATLIEU + "</td><td>" + item.SOKHOANGKINNUOC + "</td><td>" + item.SOSUONTAU + "</td><td>" + item.SOKETDAUCHAY + "</td><td>" + item.SOKETDAUNHON + "</td><td>" + item.SOKETNUOC + "</td></tr>";
                            i = i + 1;
                        });
                        tabletext += "</tbody>";
                        $('#table_ThanVo').html(tabletext);
                        loadTable('table_ThanVo');
                        //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        //$('#loader').addClass('hidden');
                       
                    },
                });
            }
        }
        function loadDataList_MayChinh(Ship_ID) {
            {
                $.ajax({
                    type: "GET",
                    url: linkapi + "v2/maychinh?id=" + Ship_ID,
                    dataType: "json",
                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                        //$('#loader').removeClass('hidden');
                    },
                    success: function (data) {
                        var tabletext = "<thead><tr><th>STT(vị trí đặt)</th><th>KÝ HIỆU</th><th>CÔNG SUẤT(CV)</th><th>VÒNG QUAY(Vg/p)</th><th></tr></thead><tbody>";

                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + item.THONGSOCOBAN.VITRILAPRAP + "</td><td>" + item.THONGSOCOBAN.KYHIEU + "</td><td>" + item.THONGSOCOBAN.CONGSUAT + "</td><td>" + item.THONGSOCOBAN.VONGQUAY +  "</td></tr>";
                          
                        });
                        tabletext += "</tbody>";
                        $('#table_MayChinh').html(tabletext);
                        loadTable('table_MayChinh');
                        //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                    }, error: function (ret) {
                        console.log('errorGET');
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        //$('#loader').addClass('hidden');
                       
                    },
                });
            }
        }

        function loadTable(id_table) {
            $('table[id=' + id_table +']').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 30 },
                        { name: 'KÝ HIỆU VẬT LIỆU', width: 120 },
                        { name: 'SỐ KHOANG KÍN NƯỚC', width: 120 },
                        { name: 'SỐ SƯỜN TÀU', width: 80 },
                        { name: 'SỐ KÉT DÀU CHÁY', width: 80 },
                        { name: 'SỐ KÉT DẦU NHỜN', width: 100 },
                        { name: 'SỐ KÉT NƯỚC', width: 80 }
                    ],
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
                    lengthMenu: false,
                    searching: false,
                    info: false,
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
