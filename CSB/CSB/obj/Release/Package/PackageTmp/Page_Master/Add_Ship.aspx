<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Add_Ship.aspx.cs" Inherits="CSB.Page_Master.Add_Ship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <style type="text/css">
        .row {
            margin-bottom: 20px;
        }
    </style>
    <div class="container">
        <button class="btn btn-primary" data-toggle="modal" data-target="#model-add-ship"><span class="glyphicon glyphicon-plus-sign"></span>Thêm mới tàu</button>
        <br />
        <br />
        <br />
        <div class="panel panel-info">
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
                                <input type="file" name="Anh" id="Anh" title="Cập nhật ảnh mới" class="btn btn-default" style="width: stretch" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="form-group has-feedback">
                                <label class="col-md-4 control-label" style="text-align: right">Tên tàu <span style="color: red;">(*)</span></label>
                                <div class="col-md-7 input-group">
                                    <span class="input-group-addon">ví dụ: 4008</span>
                                    <input type="text" class="form-control" placeholder="Tên tàu">
                                    <span class="glyphicon glyphicon-ok form-control-feedback text-success"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group has-feedback">
                                <label class="col-md-4 control-label" style="text-align: right"><strong>Số hiệu <span style="color: red;">(*)</span>: </strong></label>
                                <div class="col-md-7 input-group">
                                    <span class="input-group-addon">ví dụ: 22-44-66</span>
                                    <input type="text" class="form-control" placeholder="Số hiệu tàu">
                                    <span class="glyphicon glyphicon-remove form-control-feedback text-danger"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group has-feedback">
                                <label class="col-md-4 control-label" style="text-align: right">Nơi cấp</label>
                                <div class="col-md-7 input-group">
                                    <span class="input-group-addon">ví dụ: Đà Nẵng</span>
                                    <input type="text" class="form-control" placeholder="Nơi cấp phép">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback text-warning"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-4 control-label" style="text-align: right">Ngày cấp</label>
                            <div class='col-md-7 input-group' id='dateIssued'>
                                <input type='text' class="form-control" id='dateIssued1' placeholder="Ngày cấp phép" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-4 control-label" style="text-align: right">Hải đội</label>
                            <div class="col-md-7 input-group">
                                <select class="form-control">
                                    <option>Hải đội 221</option>
                                    <option>Hải đội 222</option>
                                    <option>Hải đội 201</option>
                                    <option>Hải đội 211</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-4 control-label" style="text-align: right">Thuyền trưởng</label>
                            <div class="col-md-7 input-group">
                                <div class="row">
                                    <div class="col-md-8">
                                        <select class="form-control">
                                            <option>Nguyễn Văn Bình</option>
                                            <option>Hà Đức Duy</option>
                                            <option>Nguyễn Nhật Nam</option>
                                            <option>Võ Thiện Chiến</option>
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
                                <input type="text" class="form-control" placeholder="Số thuyền viên">
                                <span class="input-group-addon">người</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="col-md-4 control-label" style="text-align: right">Lượng nhiên liệu</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Lượng nhiên liệu đối đa">
                            <span class="input-group-addon">tấn
                            </span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Lượng nước ngọt</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Lượng nước ngọt tối đa">
                            <span class="input-group-addon">tấn
                            </span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Tốc độ</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Tốc độ tối đa">
                            <span class="input-group-addon">hải lý/giờ</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Th/g hành trình tối đa</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Thời gian hành trình tối đa">
                            <span class="input-group-addon">năm</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Ngày tạo</label>
                        <div class="col-md-8 input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            <input type="text" class="form-control" placeholder="Ngày tạo" value="01/5/2010" readonly>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Ngày cập nhật</label>
                        <div class="col-md-8 input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            <input type="text" class="form-control" placeholder="Ngày cập nhật cuối cùng" readonly value="20/6/2021">
                        </div>
                        <br />
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-4 control-label" style="text-align: right">Trọng tải</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Trọng tải">
                            <span class="input-group-addon">tấn</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Chiều dài</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Chiều dài">
                            <span class="input-group-addon">mét</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Chiều rộng</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Chiều rộng">
                            <span class="input-group-addon">mét</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Mớn nước</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Mớn nước">
                            <span class="input-group-addon">mét</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Vật liệu</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Vật liệu">
                            <span class="input-group-addon">Ví dụ: Thép, gỗ...</span>
                        </div>
                        <br />
                        <label class="col-md-4 control-label" style="text-align: right">Năm hạ thuỷ</label>
                        <div class="col-md-8 input-group">
                            <input type="text" class="form-control" placeholder="Năm hạ thuỷ">
                            <span class="input-group-addon">Ví dụ: 2000</span>
                        </div>
                        <br />
                    </div>
                </div>
            </div>

            <div class="panel-footer text-right">
                <button class="btn btn-warning"><span class="glyphicon glyphicon-remove-sign"></span>Xoá ô nhập</button>
                <button class="btn btn-success"><span class="glyphicon glyphicon-floppy-saved"></span>Lưu thông tin</button>
            </div>
        </div>


    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
 <%--   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.14.30/js/bootstrap-datetimepicker.min.js"></script>--%>
  <%--  <script type="text/javascript">
        $(function () {
            $('#dateIssued1').datepicker({
                format: 'LT'
            });
        });
    </script>--%>
</asp:Content>
