<%@ Page Title="Quản lí hải đội" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_flotilla.aspx.cs" Inherits="CSB.Page_Master.Manage_flotilla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="form1">
        <div class="section" style="background-color: #fff; padding-bottom: 5px;">
            <div class="section-header" style="background-color: #fff;">
                <h4 id="title_manage_staff" style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ HẢI ĐỘI</h4>                        
                <div class="section-header-breadcrumb" style="margin-right: 15px;">
                    <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9; font-size: 16px;">Trang chủ </a></div>
                    <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9; font-size: 16px;">Quản lý hải đội</a></div>
                </div>
            </div>
            <div class="section-content">
                <div class="section">
                    <div class="col-md-12">
                        <table id="table_flotilla" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-flotilla" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
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
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Hải đoàn    : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="TT_HaiDoan_addflotilla">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddFlotillar" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Flotilla()" type="submit" class="btn btn-info">Thêm</button>
                        <button onclick="Close_AddFlotilla()" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-edit-flotilla" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin hải đội </h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                              <input hidden id="id_editflotilla" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên hải đội   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenHaiDoi_editflotilla" name="TenHaiDoi" placeholder="Nhập tên hải đội" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vùng     : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="TT_Vung_editflotilla">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Hải đoàn    : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="TT_HaiDoan_editflotilla">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <p id="Error_editFlotillar" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Edit_Flotilla()" type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_Flotilla();
            list_Region('', 'TT_Vung_addflotilla');

        });
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        function loadDataList_Flotilla() {
            $.ajax({
                type: "GET",
                url: linkapi + "flotillas",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                  
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên hải đội</th><th>Trưc thuộc</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {

                        if (item.Squadron == null) {
                            tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.NavalRegion.Name + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-flotilla"  onclick="editflotilla(`' + item.Id + '`,`' + item.Name + '`,`' + item.NavalRegion.ID + '`,`' + item.Squadron + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_flotilla(`' + item.Id + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        }
                        else {
                            tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Squadron.Name + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-flotilla"  onclick="editflotilla(`' + item.Id + '`,`' + item.Name + '`,`' +item.NavalRegion.ID + '`,`' + item.Squadron + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_flotilla(`' + item.Id + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
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
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listflotilla()" class="btn btn-lg btn-secondary mb-3"><span class="bi-arrow-repeat"></span> &nbsp;Load dữ liệu</button><button id="btn_addflotilla" onclick="btn_addflotilla()" class="btn btn-lg btn-secondary mb-3" data-toggle="modal" data-target="#model-add-flotilla"><span class="bi-plus-circle"></span> Thêm hải đội</button></div>');
            });
        };

        function btn_Load_listflotilla() {
            location.reload(true);
        }
        function list_Region(id_Region, string_Region) {
            debugger
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
        $("#TT_Vung_addflotilla").change(function () {
            list_Squadron('', $("#TT_Vung_addflotilla").val(), 'TT_HaiDoan_addflotilla');
        });
        $("#TT_Vung_editflotilla").change(function () {
            list_Squadron('', $("#TT_Vung_editflotilla").val(), 'TT_HaiDoan_editflotilla');
        });
        //$("#TT_HaiDoan_addflotilla").change(function () {
        //    alert($("#TT_HaiDoan_addflotilla").val());
        //});
        function list_Squadron(id_Squadron, id_Region, string_Squadron) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "squadrons_by_region?id=" + id_Region,
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_Squadron).empty();

                    $.each(data, function (key, item) {

                        if (item.Id == id_Squadron) {
                            $('#' + string_Squadron).append($('<option>', {
                                selected: true,
                                value: item.Id,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_Squadron).append($('<option>', {
                                selected: false,
                                value: item.Id,
                                text: item.Name
                            }));
                        }

                    });
                    if (id_Squadron == '') {
                        $('#' + string_Squadron + 'select').val(data[0].Id);
                        $('#' + string_Squadron).append($('<option>', {
                            selected: false,
                            value: 'null',
                            text: "Không trực thuộc"
                        }));
                    }
                    else if (id_Squadron == 'null') {
                        $('#' + string_Squadron).append($('<option>', {
                            selected: true,
                            value: 'null',
                            text: "Không trực thuộc"
                        }));
                    }
                    else {
                        $('#' + string_Squadron).append($('<option>', {
                            selected: false,
                            value: 'null',
                            text: "Không trực thuộc"
                        }));
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }

        function Close_AddFlotilla() {
            list_Region('', 'TT_Vung_addflotilla');
        }
        function btn_addflotilla() {
            $('#Error_AddFlotillar').attr('hidden', '');
            $("#TenHaiDoi_addflotilla").val("");          
            list_Squadron('', $("#TT_Vung_addflotilla").val(), 'TT_HaiDoan_addflotilla');
        }
        function Add_Flotilla() {

            if ($("#TenHaiDoi_addflotilla").val() == "") {
                $("#Error_AddFlotillar").text("Chưa nhập tên hải đội!");
                $("#Error_AddFlotillar").removeAttr('hidden');
            }
            else {
                debugger
                var id_region = $("#TT_Vung_addflotilla").val();
                if ($("#TT_HaiDoan_addflotilla").val() == 'null') {
                    var flotilla = {
                        Name: $("#TenHaiDoi_addflotilla").val(),
                        Squadron: null,
                        NavalRegion: {
                            ID: id_region
                        }
                    };
                }
                else {
                    var id_squadron = $("#TT_HaiDoan_addflotilla").val();
                    var flotilla = {
                        Name: $("#TenHaiDoi_addflotilla").val(),
                        Squadron: {
                            ID: id_squadron
                        },
                        NavalRegion: {
                            ID: id_region
                        }
                    };
                }
                console.log(flotilla);
                $.ajax({
                    type: "POST",
                    url: linkapi + "flotilla_insert",
                    dataType: "json",
                    data: JSON.stringify(flotilla),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                     
                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm hải đội mới thành công.");
                        loadDataList_Flotilla();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-flotilla').modal("hide");
                       
                    },
                });
            }
        }

        function editflotilla(id_flotilla, name_flotilla ,id_region, Squadron) {
            debugger
            $('#Error_editFlotillar').attr('hidden', '');
            $("#id_editflotilla").val(id_flotilla);
            $("#TenHaiDoi_editflotilla").val(name_flotilla);
            if (Squadron == "null") {
                list_Region(id_region, 'TT_Vung_editflotilla');
                list_Squadron(Squadron, id_region, 'TT_HaiDoan_editflotilla');
            }
            else {
                list_Region(id_region, 'TT_Vung_editflotilla');
                list_Squadron(Squadron.Id, id_region, 'TT_HaiDoan_editflotilla');
            }
        }

        function Edit_Flotilla() {
            debugger
            if ($("#TenHaiDoi_editflotilla").val() == "") {
                $("#Error_editFlotillar").text("Chưa nhập tên hải đội!");
                $("#Error_editFlotillar").removeAttr('hidden');
            }
            else {
                debugger
                var id_region = $("#TT_Vung_editflotilla").val();
                if ($("#TT_HaiDoan_editflotilla").val() == 'null') {
                    var flotilla = {
                        Id: $("#id_editflotilla").val(),
                        Name: $("#TenHaiDoi_editflotilla").val(),
                        Squadron: null,
                        NavalRegion: {
                            ID: id_region
                        }
                    };
                }
                else {
                    var id_squadron = $("#TT_HaiDoan_editflotilla").val();
                    var flotilla = {
                        Id: $("#id_editflotilla").val(),
                        Name: $("#TenHaiDoi_editflotilla").val(),
                        Squadron: {
                            ID: id_squadron
                        },
                        NavalRegion: {
                            ID: id_region
                        }
                    };
                }
                console.log(flotilla);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "flotilla_update?id=" + $("#id_editflotilla").val(),
                    dataType: "json",
                    data: JSON.stringify(flotilla),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa hải đội mới thành công.");
                        loadDataList_Flotilla();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-flotilla').modal("hide");

                    },
                });
            }
        }
        function delete_flotilla(flotilla_id) {
            debugger;
            let text = "Bạn có chắc muốn xóa hải đội này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "flotilla_delete?id=" + flotilla_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Flotilla();
                    toastSuccess("Thành công", "Xóa hải đội thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa hải đội không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
