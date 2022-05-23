<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Manage_squadron.aspx.cs" Inherits="CSB.Page_Master.Manage_squadron" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
        <div id="form1">
        <div class="section-header">
            <div class="section">
                <div class="section-header">
                    <h4 style="color: black; margin: 0; margin-left: 15px;">QUẢN LÝ HẢI ĐOÀN</h4>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ </a></div>
                        /<div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý hải đoàn</a></div>
                    </div>
                </div>
                <div class="section-header">
                    <div class="col-md-12">
                        <table id="table_squadron" class="table table-bordered table-striped table-md" style="width: 100%">
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div class="modal fade" id="model-add-squadron" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm hải đoàn mới</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên hải đoàn   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenHaiDoan_addsquadron" name="TenHaiDoan" placeholder="Nhập tên hải đoàn" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vùng     : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="TT_Vung_addsquadron">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddSquadron" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Squadron()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
            <div class="modal fade" id="model-edit-squadron" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" style="margin-bottom: 0px">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold" >Sửa thông tin hải đoàn</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <input hidden id="id_editsquadron" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên hải đoàn   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="TenHaiDoan_editsquadron" name="TenHaiDoan" placeholder="Nhập tên hải đoàn" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vùng     : </strong></label>
                                    <div class="col-md-7">
                                        <select class="form-control" style="height: 42px;" id="TT_Vung_editsquadron">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <p id="Error_EditSquadron" hidden="hidden" class="textER" style="color: red; margin-left: 25px;">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Edit_Squadron()" type="submit" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        $(document).ready(function () {
            loadDataList_Squadron();
            list_Region('', 'TT_Vung_addsquadron');

        });
        function loadDataList_Squadron() {
            $.ajax({
                type: "GET",
                url: linkapi + "squadrons",
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>Tên hải đoàn</th><th>Trưc thuộc</th><th>Tác vụ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.NavalRegion.Name + '</td><td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" data-toggle="modal" data-target="#model-edit-squadron"  onclick="editsquadron(`' + item.Id + '`,`' + item.Name + '`,`' + item.NavalRegion.ID + '`)"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_squadron(`' + item.Id + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_squadron').html(tabletext);
                    console.log("okGET");
                    loadTableSquadron();
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                },
            });
        };

        function loadTableSquadron() {
            $('table[id=table_squadron]').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    "columns": [
                        { name: 'STT', width: 90 },
                        { name: 'Tên hải đoàn' },
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
                $('.col-sm-12').first().html('<div class="btn-group"><button onclick="btn_Load_listsquadron()" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-refresh"></span> &nbsp;Load dữ liệu</button><button id="btn_addsquadron" onclick="btn_addsquadron()" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#model-add-squadron" style=" padding - top: 4px;margin - top: -4px;"><span class="glyphicon glyphicon-plus-sign"></span> Thêm hải đoàn</button>');
            });
        };
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

        function btn_Load_listsquadron() {
            location.reload(true);
        }
        function btn_addsquadron() {
            $('#Error_AddSquadron').attr('hidden', '');
            $("#TenHaiDoan_addsquadron").val("");
            list_Region('', 'TT_Vung_addsquadron');
        }
        function Add_Squadron() {
            if ($("#TenHaiDoan_addsquadron").val() == "") {
                $("#Error_AddSquadron").text("Chưa nhập tên hải đoàn!");
                $("#Error_AddSquadron").removeAttr('hidden');
            }
            else {
                var id_region = $("#TT_Vung_addsquadron").val();
                var squadron = {
                    Name: $("#TenHaiDoan_addsquadron").val(),
                    NavalRegion: {
                        ID: id_region
                    }
                };
                console.log(squadron);
                $.ajax({
                    type: "POST",
                    url: linkapi + "squadron_insert",
                    dataType: "json",
                    data: JSON.stringify(squadron),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm hải đoàn mới thành công.");
                        loadDataList_Squadron();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-add-squadron').modal("hide");

                    },
                });
            }
        }

        function editsquadron(squadron_id, squadron_name, id_region) {
            $('#Error_EditSquadron').attr('hidden', '');
            $("#TenHaiDoan_editsquadron").val(squadron_name);
            $("#id_editsquadron").val(squadron_id);
            list_Region(id_region, 'TT_Vung_editsquadron');
        }

        function Edit_Squadron() {
            if ($("#TenHaiDoan_editsquadron").val() == "") {
                $("#Error_EditSquadron").text("Chưa nhập tên hải đoàn!");
                $("#Error_EditSquadron").removeAttr('hidden');
            }
            else {
                var id_region = $("#TT_Vung_editsquadron").val();
                var squadron = {
                    Id: $("#id_editsquadron").val(),
                    Name: $("#TenHaiDoan_editsquadron").val(),
                    NavalRegion: {
                        ID: id_region
                    }
                };
                console.log(squadron);
                $.ajax({
                    type: "PUT",
                    url: linkapi + "squadron_update?id=" + $("#id_editsquadron").val(),
                    dataType: "json",
                    data: JSON.stringify(squadron),
                    contentType: "application/json",

                    beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.

                    },
                    success: function (data) {
                        toastSuccess("Thành công", "Sửa hải đoàn mới thành công.");
                        loadDataList_Squadron();
                    }, error: function (ret) {
                        console.log(ret.responseJSON.Message);
                        toastError("Thất bại", ret.responseJSON.Message);
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                        $('#model-edit-squadron').modal("hide");

                    },
                });
            }
        }

        function delete_squadron(squadron_id) {
            debugger;
            let text = "Bạn có chắc muốn xóa hải đoàn này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "squadron_delete?id=" + squadron_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataList_Squadron();
                    toastSuccess("Thành công", "Xóa hải đaonf thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa hải đoàn không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
