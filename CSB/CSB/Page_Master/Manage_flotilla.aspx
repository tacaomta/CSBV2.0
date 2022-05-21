<%@ Page Title="Quản lí hải đội" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Manage_flotilla.aspx.cs" Inherits="CSB.Page_Master.Manage_flotilla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ HẢI ĐỘI</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                        /<div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý hải đội</a></div>
                    </div>
                </div>
                <div class="section-header">
                    <div class="col-md-12">
                        <table id="table_flotilla" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-flotilla" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm hải đội mới</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên hải đội   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenHaiDoi_addflotilla" name="TenHaiDoi" placeholder="Nhập tên hải đội" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vùng     : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="TT_Vung_addflotilla">
                                            <option selected >Vùng 1</option>
                                            <option >Vùng 2</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Hải đoàn    : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="TT_HaiDoan_addflotilla">
                                            <option selected >Vùng 1</option>
                                            <option >Vùng</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                           <%-- <p id="Error_AddFlotillar" class="textER">Lỗi</p>--%>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Flotilla()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_Flotilla();
            list_Region('','TT_Vung_addflotilla')
        });
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        function loadDataList_Flotilla() {
            $.ajax({
                type: "GET",
                url: linkapi + "flotillas",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên hải đội</th><th>Trưc thuộc</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {

                        if (item.Squadron == null) {
                            tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.NavalRegion.Name + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-user"  onclick="edituser(`' + item.Name + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_user(`' + item.Id + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        }
                        else {
                            tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Squadron.Name + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-user"  onclick="edituser(`' + item.Name + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_user(`' + item.Id + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        }
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_flotilla').html(tabletext);
                    console.log("okGET");
                    loadTableFlotilla();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        };

        function loadTableFlotilla() {
            $('table[id=table_flotilla]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Tên hải đội' },
                        { name: 'Trưc thuộc' },
                        { name: 'Tác vụ', width: 90 },
                    ],
                    "columnDefs": [
                        {
                            "targets": [0, 3],
                            "searchable": false,
                        },
                        {
                            "targets": [3],
                            "orderable": false
                        },
                        {
                            "targets": [0, 1, 2],
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
                table1.buttons().container()
                    .appendTo('this_wrapper .col-md-6:eq(0)');
                $('.col-sm-12').first().html('<button id="btn_flotilla" onclick="btn_flotilla()" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#model-add-flotilla" style="height: 35px; padding - top: 4px;margin - top: -4px;"><span class="glyphicon glyphicon-plus-sign"></span> Thêm hải đội</button>');
            });
        };
        function list_Region(id_Region, string_Region) {
            $.ajax({
                type: "GET",
                url: linkapi + "naval_region",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Region).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_Region) {
                            $('#' + string_Region).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.ShortName
                            }));
                        }
                        else {
                            $('#' + string_Region).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.ShortName
                            }));
                        }

                    });
                    if (id_Region == '') {
                        $('#' + string_Region + 'select').val(data[0].ID);
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function list_Squadron(id_Squadron, id_Region, string_Squadron) {
            $.ajax({
                type: "GET",
                url: linkapi + "naval_region",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Region).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_Region) {
                            $('#' + string_Region).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.ShortName
                            }));
                        }
                        else {
                            $('#' + string_Region).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.ShortName
                            }));
                        }

                    });
                    if (id_Region == '') {
                        $('#' + string_Region + 'select').val(data[0].ID);
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function btn_flotilla() {

        }
    </script>
</asp:Content>
