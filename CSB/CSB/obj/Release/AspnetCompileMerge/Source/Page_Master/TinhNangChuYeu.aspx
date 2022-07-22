<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="TinhNangChuYeu.aspx.cs" Inherits="CSB.Page_Master.TinhNangChuYeu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .breadcrumb {
            background-color: #ffffff !important;
        }
        .page-wrapper {
            padding-top: 0 !important;
        }
    </style>
    <div class="main-body">
        <input type="hidden" id="Count_MC" />
        <input type="hidden" id="Count_MNK" />
        <input type="hidden" id="Count_HH" />
        <input type="hidden" id="Count_RD" />
        <input type="hidden" id="Count_VK" />
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="title_TinhNangChuYeu">THÔNG TIN TÍNH NĂNG CHỦ YẾU CỦA TÀU</h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="Null.aspx" style="font-size: 14px;">Trang chủ</a>
                                    </li>

                                    <li class="breadcrumb-item"><a href="Manage_Tau?vung=1" style="font-size: 14px;">Quản lý tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#" onclick="HoSoTau()" style="font-size: 14px;">Hồ sơ tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#" style="font-size: 14px;">Tính năng chủ yếu của tàu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">

                            <table id="table_ThanVo" class="table table-bordered" style="width: 100%">
                            </table>
                            <h4 class="sub-title"></h4>
                            <div class="row">
                                <div class="col-lg-6 col-md-12" style="padding-left: 30px;">
                                    <div class="form-group row">
                                        <table id="table_MayChinh" class="table table-bordered" style="width: 100%">
                                        </table>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12" style="padding-right: 30px;">
                                    <div class="form-group row">
                                        <table id="table_MayNenKhi" class="table table-bordered" style="width: 100%">
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <h4 class="sub-title"></h4>
                            <table id="table_MayPhu_PhatDien" class="table table-bordered" style="width: 100%">
                            </table>
                            <h4 class="sub-title"></h4>
                            <div class="row">
                                <div class="col-lg-4 col-md-12" style="padding-left: 30px;">
                                    <div class="form-group row">
                                        <table id="table_HangHai" class="table table-bordered" style="width: 100%">
                                        </table>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12">
                                    <div class="form-group row">
                                        <table id="table_RaDa" class="table table-bordered" style="width: 100%">
                                        </table>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12" style="padding-right: 30px;">
                                    <div class="form-group row">
                                        <table id="table_VuKhi" class="table table-bordered" style="width: 100%">
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="form-footer">
                                <div class="left">
                                  <%--  <a href="#" onclick="QuayLai()" style="float: left" class="btn btn-success"><i class="bi bi-arrow-left-circle"></i>&nbsp;Quay lại</a>--%>
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
        var Ship_ID;
        var shipName;
        let count_mc = {values:0};
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
                loadDataList_ThanVo(Ship_ID);
                loadDataList_MayChinh(Ship_ID);
                loadDataList_MayNenKhi(Ship_ID);
                loadDataList_MayPhu_PhatDien(Ship_ID);
                loadDataList_HangHai(Ship_ID);
                loadDataList_RaDa(Ship_ID);
                loadDataList_VuKhi(Ship_ID);
               
               
            }
           
        });

        function Load_Title(Ship_ID) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    $("#title_TinhNangChuYeu").html("THÔNG TIN TÍNH NĂNG CHỦ YẾU CỦA TÀU " + data.TTCOBAN.SOHIEU);
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

        function QuayLai() {
            window.location = baseaddress + "Page_Master/Ship_profile?Ship_ID=" + Ship_ID;
        }
        function loadDataList_ThanVo(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "v2/thanvo?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = '<thead><tr><th style="text-align: center;" colspan="7">THÂN VỎ</th></tr><tr><th>STT</th><th>KÝ HIỆU VẬT LIỆU</th><th>SỐ KHOANG KÍN NƯỚC</th><th>SỐ SƯỜN TÀU</th><th>SỐ KÉT DÀU CHÁY</th><th>SỐ KÉT DẦU NHỜN</th><th>SỐ KÉT NƯỚC</th></tr></thead><tbody>';
                    var i = 1;
                    if (data == null) {
                        tabletext += '<tr><td colspan="7" style="text-align: center;" >Không có dữ liệu !</td></tr>';
                    }
                    else {
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + i + "</td><td>" + item.KYHIEUVATLIEU + "</td><td>" + item.SOKHOANGKINNUOC + "</td><td>" + item.SOSUONTAU + "</td><td>" + item.SOKETDAUCHAY + "</td><td>" + item.SOKETDAUNHON + "</td><td>" + item.SOKETNUOC + "</td></tr>";
                            i = i + 1;
                        });
                       
                    }
                  
                    tabletext += "</tbody>";
                    $('#table_ThanVo').html(tabletext);
                    //loadTable('table_ThanVo');
                    //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    //$('#loader').addClass('hidden');

                },
            });

        }
        function loadDataList_MayChinh(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maychinh?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = '<thead><tr><th style="text-align: center; " colspan="4">MÁY CHÍNH</th></tr><tr><th>STT(vị trí đặt)</th><th>KÝ HIỆU</th><th>CÔNG SUẤT(CV)</th><th>VÒNG QUAY(Vg/p)</th></tr></thead><tbody>';
                    var i = 1;
                    if (data == null) {
                        tabletext += '<tr><td colspan="4" style="text-align: center;" >Không có dữ liệu !</td></tr>';
                    }
                    else {
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + item.THONGSOCOBAN.VITRILAPRAP + "</td><td>" + item.THONGSOCOBAN.KYHIEU + "</td><td>" + item.THONGSOCOBAN.CONGSUAT + "</td><td>" + item.THONGSOCOBAN.VONGQUAY + "</td></tr>";
                            i = i + 1;
                        });
                    }
                
                    tabletext += "</tbody>";
                    $('#table_MayChinh').html(tabletext);
                
                    //loadTable('table_MayChinh');
                    //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    //$('#loader').addClass('hidden');
                  
                  
                },
            });
            
        }

        function loadDataList_MayNenKhi(Ship_ID) {           
            $.ajax({
                type: "GET",
                url: linkapi + "v2/maynenkhi?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = '<thead><tr><th style="text-align: center; " colspan="3">MÁY NÉN KHÍ</th></tr><tr><th>KÝ HIỆU</th><th>SỐ LƯỢNG</th><th>ÁP SUẤT(KG/cm2)</th></tr></thead><tbody>';
                    var i = 1;
                    if (data == null) {
                        tabletext += '<tr><td colspan="3" style="text-align: center;" >Không có dữ liệu !</td></tr>';
                    }
                    else {
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + item.KYHIEU + "</td><td>" + item.SOLUONG + "</td><td>" + item.APSUAT + "</td></tr>";
                            i++;
                        });
                    }
                    tabletext += "</tbody>";
                    $('#table_MayNenKhi').html(tabletext);

                   
                    //loadTable('table_MayNenKhi');
                    //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    //$('#loader').addClass('hidden');
                    var count_mc = $('#table_MayChinh tr').length;
                    var count_mnk = $('#table_MayNenKhi tr').length;
                    //alert($('#table_MayChinh tr').length);
                    //alert($('#table_MayNenKhi tr').length);
                    if (count_mc < count_mnk) {
                        debugger
                        var count = count_mnk - count_mc;
                        for (var i = 0; i < count; i++) {
                            $("#table_MayChinh > tbody").append(' <tr> <td colspan="4" >&nbsp;</td></tr>');
                        }
                    }
                    else if (count_mc > count_mnk) {
                        debugger
                        var count = count_mc - count_mnk;
                        for (var i = 1; i < count; i++) {
                            $("#table_MayNenKhi > tbody").append('<tr> <td colspan="3" >&nbsp;</td></tr>');
                        }
                       
                    }
                },
            });
        }
        function loadDataList_MayPhu_PhatDien(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "v2/mayphuphatdien?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = '<thead><tr><th style="text-align: center; " colspan="5">MÁY PHỤ, PHÁT ĐIỆN</th></tr><tr><th>STT(vị trí đặt)</th><th>KÝ HIỆU DIESEL</th><th>CÔNG SUẤT(CV/Kw)</th><th>VÒNG QUAY(Vg/p)</th></tr></thead><tbody>';
                    var i = 1;
                    if (data == null) {
                        tabletext += '<tr><td colspan="4" style="text-align: center;" >Không có dữ liệu !</td></tr>';
                    }
                    else {
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + item.THONGSOCOBAN.VITRILAPRAP + "</td><td>" + item.THONGSOCOBAN.KYHIEU + "</td><td>" + item.THONGSOCOBAN.CONGSUAT + "</td><td>" + item.THONGSOCOBAN.VONGQUAY + "</td></tr>";
                            i++;
                        });
                    }
                  
                    tabletext += "</tbody>";
                    $('#table_MayPhu_PhatDien').html(tabletext);
                    //loadTable('table_MayPhu_PhatDien');
                    //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    //$('#loader').addClass('hidden');

                },
            });

        }
        function loadDataList_HangHai(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "v2/hanghai?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = '<thead><tr><th style="text-align: center; " colspan="2">HÀNG HẢI</th></tr><tr><th>KÝ HIỆU</th><th>SỐ LƯỢNG</th></tr></thead><tbody>';
                    var i = 1;
                    if (data == null) {
                        tabletext += '<tr><td colspan="2" style="text-align: center;" >Không có dữ liệu !</td></tr>';
                    }
                    else {
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + item.KYHIEU + "</td><td>" + item.SOLUONG + "</td></tr>";
                            i++;
                        });
                    }
                  
                    tabletext += "</tbody>";
                    $('#table_HangHai').html(tabletext);

                    //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    //$('#loader').addClass('hidden');

                },
            });

        }
        function loadDataList_RaDa(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "v2/rada?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = '<thead><tr><th style="text-align: center; " colspan="2">RADA</th></tr><tr><th>KÝ HIỆU</th><th>SỐ LƯỢNG</th></tr></thead><tbody>';
                    var i = 1;
                    if (data == null) {
                        tabletext += '<tr><td colspan="2" style="text-align: center;" >Không có dữ liệu !</td></tr>';
                    }
                    else {
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + item.KYHIEU + "</td><td>" + item.SOLUONG + "</td></tr>";
                            i++;
                        });
                    }
                 
                    tabletext += "</tbody>";
                    $('#table_RaDa').html(tabletext);

                    //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    //$('#loader').addClass('hidden');

                },
            });

        }
        function loadDataList_VuKhi(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "v2/vukhi?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    //$('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = '<thead><tr><th style="text-align: center; " colspan="2">VŨ KHÍ</th></tr><tr><th>KÝ HIỆU</th><th>SỐ LƯỢNG</th></tr></thead><tbody>';
                    var i = 1;
                    if (data == null) {
                        tabletext += '<tr><td colspan="2" style="text-align: center;" >Không có dữ liệu !</td></tr>';
                    }
                    else {
                        $.each(data, function (key, item) {
                            tabletext += "<tr><td>" + item.KYHIEU + "</td><td>" + item.SOLUONG + "</td></tr>";
                            i++;
                        });
                    }
                  
                    tabletext += "</tbody>";
                    $('#table_VuKhi').html(tabletext);

                    //$('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" /*data-toggle="modal" data-target="#model-add-ship"*/ style="height: 40px; margin-bottom: 8px; margin-top: -4px; font-size: 18px;"><span class="glyphicon glyphicon-plus"></span>Thêm tàu</button>');

                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    var count_hh = $('#table_HangHai tr').length;
                    var count_rada = $('#table_RaDa tr').length;
                    var count_vukhi = $('#table_VuKhi tr').length;
                    var max = count_hh;
                    if (count_rada > max) {
                        max = count_rada;
                    }
                    if (count_vukhi > max) {
                        max = count_vukhi;
                    }
                    if (count_hh < max) {
                        debugger
                        var count = max - count_hh;
                        for (var i = 0; i < count; i++) {
                            $("#table_HangHai > tbody").append(' <tr> <td colspan="2" >&nbsp;</td></tr>');
                        }
              
                    }
                    if (count_rada < max) {
                        debugger
                        var count = max - count_rada;
                        for (var i = 0; i < count; i++) {
                            $("#table_RaDa > tbody").append(' <tr> <td colspan="2" >&nbsp;</td></tr>');
                        }
                       
                    }
                    if (count_vukhi < max) {
                        debugger
                        var count = max - count_vukhi;
                        for (var i = 0; i < count; i++) {
                            $("#table_VuKhi > tbody").append(' <tr> <td colspan="2" >&nbsp;</td></tr>');
                        }
                       
                    }
                  

                },
            });

        }
        function loadTable(id_table) {
            $('table[id=' + id_table + ']').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
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
        
        //var count_mc = $("#Count_MC").val();
       
        //var count_mnk = $("#Count_MNK").val();
        //if (count_mc > count_mnk) {
        //    var i = count_mc - count_mnk;
        //    alert(i);
        //}
        //else if (count_mc < count_mnk) {
        //    var i = count_mnk - count_mc;
        //    alert(i);
        //}
     
    </script>
</asp:Content>
