﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Add_Ship.aspx.cs" Inherits="CSB.Page_Master.Add_Ship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <style type="text/css">
        .row {
            margin-bottom: 20px;
        }
    </style>
    <div class="container">
        
        <br />
        <br />
        <br />
        <form id="form_add_ship" runat="server" class="panel panel-info">
            <div class="panel-heading">
                <h2 class="panel-title">Thêm thông tin tàu</h2>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="imageupload panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title">Hình ảnh tàu kiểm ngư 4007</h3>
                            </div>
                            <div class="file-tab panel-body">
                                <img class="img-responsive" id="upload_imageproduct" src="../Image/Ships/boat.jpg" />
                            </div>
                            <div class="panel-footer text-justify">
                                <%--<input type="file" name="Anh" id="Anh" title="Cập nhật ảnh mới" class="btn btn-default" style="width: stretch" />--%>
                                 <asp:FileUpload ID="FileImgsave" runat="server"  />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="form-group has-feedback">
                                <label class="col-md-4 control-label" style="text-align: right">Tên tàu <span style="color: red;">(*)</span></label>
                                <div class="col-md-7 input-group">
                                    <span class="input-group-addon">ví dụ: 4008</span>
                                 <%--   <input type="text" class="form-control" placeholder="Tên tàu">--%>
                                    <asp:TextBox ID="addTenTau" class="form-control"  name="add_TenTau" runat="server" ></asp:TextBox>
                                    <span class="glyphicon glyphicon-ok form-control-feedback text-success"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group has-feedback">
                                <label class="col-md-4 control-label" style="text-align: right"><strong>Số hiệu <span style="color: red;">(*)</span>: </strong></label>
                                <div class="col-md-7 input-group">
                                    <span class="input-group-addon">ví dụ: 22-44-66</span>
                                    <input type="text" id="add_SoHieu"  class="form-control" placeholder="Số hiệu tàu">
                                    <span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group has-feedback">
                                <label class="col-md-4 control-label"  style="text-align: right">Nơi cấp</label>
                                <div class="col-md-7 input-group">
                                    <span class="input-group-addon">ví dụ: Đà Nẵng</span>
                                    <input type="text"  id="add_NoiCap" class="form-control" placeholder="Nơi cấp phép">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback text-warning"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-4 control-label" style="text-align: right">Ngày cấp</label>
                            <div class='col-md-7 input-group' id='dateIssued'>
                                <input type='text' id="add_NgayCap" class="form-control"  placeholder="Ngày cấp phép" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-4 control-label" style="text-align: right">Hải đội</label>
                            <div class="col-md-7 input-group">
                                <select id="add_HaiDoi" class="form-control">
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-4 control-label" style="text-align: right">Thuyền trưởng</label>
                            <div class="col-md-7 input-group">
                                <div class="row">
                                    <div class="col-md-8">
                                        <select  id="add_ThuyenTruong" class="form-control">
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <span class="btn btn-info btn-sm glyphicon glyphicon-eye-open pull-left" title="Xem thông tin"></span>
                                        <span class="btn btn-primary btn-sm glyphicon glyphicon-plus pull-right" title="Thêm thuyền trưởng"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-4 control-label" style="text-align: right">Số thuyền viên</label>
                            <div class="col-md-7 input-group">
                                <input type="text" id="add_SoThuyenVien" class="form-control" placeholder="Số thuyền viên">
                                <span class="input-group-addon">người</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label" style="text-align: right">Lượng nhiên liệu</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" id="add_NhienLieuToiDa"  placeholder="Lượng nhiên liệu đối đa">
                            <span class="input-group-addon">tấn
                            </span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Lượng nước ngọt</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" id="add_NuocNgotToiDa"  placeholder="Lượng nước ngọt tối đa">
                            <span class="input-group-addon">tấn
                            </span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Tốc độ</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" id="add_TocDo" placeholder="Tốc độ tối đa">
                            <span class="input-group-addon">hải lý/giờ</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Th/g hành trình tối đa</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control"  id="add_TG_HanhTrinhToiDa" placeholder="Thời gian hành trình tối đa">
                            <span class="input-group-addon">năm</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Ngày tạo</label>
                        <div class="col-md-8 input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            <input type="text" class="form-control" id="add_NgayTao" placeholder="Ngày tạo" value="01/5/2010" readonly>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Ngày cập nhật</label>
                        <div class="col-md-8 input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            <input type="text" class="form-control" id="add_NgayCapNhat" placeholder="Ngày cập nhật cuối cùng" readonly value="20/6/2021">
                        </div>
                        <br />
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label" style="text-align: right">Trọng tải</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" id="add_TrongTai" placeholder="Trọng tải">
                            <span class="input-group-addon">tấn</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Chiều dài</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" id="add_ChieuDai"  placeholder="Chiều dài">
                            <span class="input-group-addon">mét</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Chiều rộng</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control"  id="add_ChieuRong" placeholder="Chiều rộng">
                            <span class="input-group-addon">mét</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Mớn nước</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" id="add_MonNuoc"  placeholder="Mớn nước">
                            <span class="input-group-addon">mét</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Vật liệu</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" id="add_VatLieu" placeholder="Vật liệu">
                            <span class="input-group-addon">Ví dụ: Thép, gỗ...</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Năm hạ thuỷ</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" id="add_NamHaThuy" placeholder="Năm hạ thuỷ">
                            <span class="input-group-addon">Ví dụ: 2000</span>
                        </div>
                        <br />
                    </div>
                </div>
            </div>

            <div class="panel-footer text-right">
                <asp:Button ID="btn_save" class="btn btn-info" runat="server" Text="Lưu thông tin" OnClick="btn_save_Click"/>
                <button class="btn btn-warning"><span class="glyphicon glyphicon-remove-sign"></span>Xoá ô nhập</button>
          <%--      <button class="btn btn-success"><span class="glyphicon glyphicon-floppy-saved"></span>Lưu thông tin</button>--%>
            </div>
        </form>


    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
 <%--   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.14.30/js/bootstrap-datetimepicker.min.js"></script>--%>
  <%--  <script type="text/javascript">
        $(function () {
            $('#add_NgayCap').datepicker({
                format: 'LT'
            });
        });
    </script>--%>
    <script>
        var date = new Date();
        var strDate = '' + date.getDate() + '/' + (Number(date.getMonth()) + 1) + '/' + date.getFullYear() + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds();
        var selectedValue_Captain_ID;
        var selectedValue_Flotilla_ID;
        $(document).ready(function () {

            list_captain('', 'add_ThuyenTruong');
            list_flotilla('', 'add_HaiDoi');
        });
        function list_flotilla(id_flotilla, string_HaiDoi) {
            $.ajax({
                type: "GET",
                url: linkapi + "flotillas",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $.each(data, function (key, item) {

                        if (item.Id == id_flotilla) {
                            $('#' + string_HaiDoi).append($('<option>', {
                                selected: true,
                                value: item.Id,
                                text: item.Name
                            }));
                        }
                        else {
                            $('#' + string_HaiDoi).append($('<option>', {
                                selected: false,
                                value: item.Id,
                                text: item.Name
                            }));
                        }

                    });
                    //debugger
                    if (id_flotilla == '') {
                        $('#' + string_HaiDoi + 'select').val(data[0].Id);
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function list_captain(id_captain, string_thuyentruong) {
            $.ajax({
                type: "GET",
                url: linkapi + "captains",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    $('#' + string_thuyentruong).empty();
                    $.each(data, function (key, item) {

                        if (item.ID == id_captain) {
                            $('#' + string_thuyentruong).append($('<option>', {
                                selected: true,
                                value: item.ID,
                                text: item.Fullname
                            }));
                        }
                        else {
                            $('#' + string_thuyentruong).append($('<option>', {
                                selected: false,
                                value: item.ID,
                                text: item.Fullname
                            }));
                        }

                    });
                    if (id_captain == '') {
                        $('#' + string_thuyentruong + 'select').val(data[0].ID);
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        $("#form_add_ship").submit(function () {
            debugger;
            var id_Flotilla = $('#add_HaiDoi').val();
            var id_Captain = $('#add_ThuyenTruong').val();
            var New_Ship = {
                Image: $('#MainContentAdmin_addTenTau').val() + ".jpg",
                Name: $('#MainContentAdmin_addTenTau').val(),
                RegistrationNumber: $('#add_SoHieu').val(),
                Weight: $('#add_TrongTai').val(),
                Fuel: $('#add_NhienLieuToiDa').val(),
                Water: $('#add_NuocNgotToiDa').val(),
                Personel: $('#add_SoThuyenVien').val(),
                Captain: {
                    ID: id_Captain
                },
                Speed: $("#add_TocDo").val(),
                Time: $("#add_TG_HanhTrinhToiDa").val(),
                LaunchYear: $("#add_NamHaThuy").val(),
                RegistrationDate: $("#add_NgayCap").val(),
                RegistrationPlace: $("#add_NoiCap").val(),
                Width: $("#add_ChieuDai").val(),
                Wide: $("#add_ChieuRong").val(),
                Draught: $("#add_MonNuoc").val(),
                Material: $("#add_VatLieu").val(),
                Created: $("#add_NgayTao").val(),
                Updated: strDate,
                Flotilla: {
                    Id: id_Flotilla
                }
            };
            $.ajax({
                type: "POST",
                url: linkapi + "ship_insert",
                dataType: "json",
                data: JSON.stringify(New_Ship),
                contentType: "application/json",

                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    toastSuccess("Thành công", "Thêm tàu thành công.");
                    $('#model-add-ship').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại! Có thể số hiệu tàu này đã tồn tại", ret.responseJSON.Message);
                    loadDataListShips(vung_id);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        });
    </script>
</asp:Content>
