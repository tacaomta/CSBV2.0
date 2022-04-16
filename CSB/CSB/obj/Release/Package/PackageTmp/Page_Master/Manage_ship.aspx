<%@ Page Title="Quản lý tàu" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Manage_ship.aspx.cs" Inherits="CSB.Page_Master.Manage_ship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <style>
        .panel {
            margin-bottom: 20px;
            background-color: #fff;
        }

        .panel-success {
            border-radius: 4px;
            border: 1px solid #ced4da;
        }

        .panel-heading {
            padding: 5px 15px;
        }

        .panel-title {
            margin-top: 0;
            margin-bottom: 0;
            font-size: 16px;
            color: inherit;
        }

        .pull-left {
            float: left !important;
        }

        .panel-success > .panel-heading {
            color: #3c4676;
            background-color: #d8e8f0;
            border-color: #c6e2e9;
        }

        .wrap-layout {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap-reverse;
        }
    </style>
    <div id="form1">
        <div class="section-header">
            <div class="">
                <div class="section">
                    <div class="section-header">
                        <h4 id="title" style="color: black; margin: 0">QUẢN LÝ TÀU - VÙNG 1</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý tàu</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-md-12">
                            <table id="tableship" class="table table-bordered table-striped table-md" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>TÊN TÀU</th>
                                        <th>SỐ HIỆU</th>
                                        <th>SỐ THUYỀN VIÊN</th>
                                        <th>NĂM HẠ THỦY</th>
                                        <th>TRỌNG TẢI</th>
                                        <th>TỐC ĐỘ</th>
                                        <th title="Thời gian hành trình tối đa">TG HÀNH TRÌNH TỐI ĐA</th>
                                        <th>TÁC VỤ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>System Architect</td>
                                        <td>
                                            <a href="#"><i class="fas fa-edit icon_action" title="Sửa thông tin"></i></a>
                                            <a href="#"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></a>
                                        </td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="modal fade" id="model-add-ship" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document" style="max-width: 70%;">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold">Thêm mới tàu</h6>
                    </div>
                    <div class="modal-body">
                        <div class="clearfix ">
                            <div style="display: flex;">
                                <div class="imageupload panel panel-success col-md-6" style="min-height: 300px; padding: 0;">
                                    <div class="panel-heading clearfix">
                                        <h3 class="panel-title pull-left">Hình ảnh</h3>
                                    </div>
                                    <div class="file-tab panel-body">
                                        <img class="img-responsive" id="add_imageproduct" src="../Image/Ships/boat.jpg" style="margin: 8% 2%; height: 200px; max-width: 300px;" />
                                        <label class="btn btn-default btn-file">
                                            <span>Tải lên</span>
                                            <input type="file" name="Anh" id="add_Anh" onchange="PreviewImage()">
                                        </label>
                                        <%--<button type="button" class="btn btn-dejfault" id="delete" onclick="Xoa()">Xóa</button>--%>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding: 0;">
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Tên tàu     <span style="color: red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="add_TenTau" name="TenTau" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Số hiệu     <span style="color: red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="add_SoHieu" name="SoHieu" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Nơi cấp   : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="add_NoiCap" name="NoiCap" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Ngày Cấp    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="add_NgayCap" name="NgayCap" required value="">
                                            </div>
                                        </div>
                                    </div>
                                  
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Hải đội  : </strong></label>
                                            <div class="col-md-6">
                                                <select class="form-control" id="add_HaiDoi">
                                                </select>
                                            </div>
                                            <div class="wrap-layout col-md-2" style="padding-left: 0px;">
                                                <a href="#" class="view" title="Xem thông tin hải đội" onclick=""><i class="material-icons"></i></a>
                                                <a href="#" class="add" title="Thêm hải đội" onclick=""><i class="material-icons">add_circle</i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Thuyền trưởng   : </strong></label>
                                            <div class="col-md-6">
                                                <select class="form-control" id="add_ThuyenTruong">
                                                </select>
                                            </div>
                                            <div class="wrap-layout col-md-2" style="padding-left: 0px;">
                                                <a href="#" class="view" title="Xem thông tin thuyền trưởng" onclick=""><i class="material-icons"></i></a>
                                                <a href="#" class="add" title="Thêm thuyền trưởng" onclick=""><i class="material-icons">add_circle</i></a>
                                            </div>

                                        </div>
                                    </div>

                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Số thuyền viên   : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="add_SoThuyenVien" name="SoThuyenVien" required value="">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div style="display: flex; padding-top: 25px">
                                <div class="col-md-6" style="padding: 0px;">

                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Lượng nhiên liệu tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_NhienLieuToiDa" name="NhienLieuToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Lượng nước ngọt tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_NuocNgotToiDa" name="NuocNgotToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Tốc độ(hải lý/giờ)   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_TocDo" name="TocDo" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>TG hành trình tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_TG_HanhTrinhToiDa" name="TG_HanhTrinhToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Ngày tạo   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_NgayTao" name="NgayTao" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Ngày cập nhật  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_NgayCapNhat" name="NgayCapNhat" value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding: 0px;">
                                   
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Trọng tải    : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_TrongTai" name="TrongTai" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Chiều rộng (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_ChieuRong" name="ChieuRong" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Chiều dài (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_ChieuDai" name="ChieuDai" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Vật liệu  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_VatLieu" name="VatLieu" required value="">
                                            </div>
                                        </div>
                                    </div>

                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Mướn nước (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_MonNuoc" name="MonNuoc" required value="">
                                            </div>
                                        </div>
                                    </div>
                                      <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Năm hạ thủy    : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="add_NamHaThuy" name="NamHaThuy" required value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Ship()" type="button" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-infordetail-ship" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document" style="max-width: 70%;">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thông tin chi tiết của tàu</h6>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="Ship_ID">
                        <div class="clearfix ">
                            <div style="display: flex;">
                                <div class="imageupload panel panel-success col-md-6" style="min-height: 300px; padding: 0;">
                                    <div class="panel-heading clearfix">
                                        <h3 class="panel-title pull-left">Hình ảnh</h3>
                                    </div>
                                    <div class="file-tab panel-body">
                                        <img class="img-responsive" id="upload_imageproduct" src="../Image/Ships/boat.jpg" style="margin: 8% 2%; height: 200px; max-width: 300px;" />
                                        <label class="btn btn-default btn-file">
                                            <span>Tải lên</span>
                                            <input type="file" name="Anh" id="Anh" onchange="PreviewImage()">
                                        </label>
                                        <%--<button type="button" class="btn btn-dejfault" id="delete" onclick="Xoa()">Xóa</button>--%>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding: 0;">
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Tên tàu     <span style="color: red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="TenTau" name="TenTau" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Số hiệu     <span style="color: red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="SoHieu" name="SoHieu" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Nơi cấp   : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NoiCap" name="NoiCap" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Ngày Cấp    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NgayCap" name="NgayCap" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Năm hạ thủy    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NamHaThuy" name="NamHaThuy" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Hải đội  : </strong></label>
                                            <div class="col-md-6">
                                                <select class="form-control" id="HaiDoi">
                                                </select>
                                            </div>
                                            <div class="wrap-layout col-md-2" style="padding-left: 0px;">
                                                <a href="#" class="view" title="Xem thông tin hải đội" onclick=""><i class="material-icons"></i></a>
                                                <a href="#" class="add" title="Thêm hải đội" onclick=""><i class="material-icons">add_circle</i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align: right"><strong>Thuyền trưởng   : </strong></label>
                                            <div class="col-md-6">
                                                <select class="form-control" id="ThuyenTruong">
                                                </select>
                                            </div>
                                            <div class="wrap-layout col-md-2" style="padding-left: 0px;">
                                                <a href="#" class="view" title="Xem thông tin thuyền trưởng" onclick=""><i class="material-icons"></i></a>
                                                <a href="#" class="add" title="Thêm thuyền trưởng" onclick=""><i class="material-icons">add_circle</i></a>
                                            </div>

                                        </div>
                                    </div>

                                   

                                </div>
                            </div>
                            <div style="display: flex; padding-top: 25px">
                                <div class="col-md-6" style="padding: 0px;">

                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Lượng nhiên liệu tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NhienLieuToiDa" name="NhienLieuToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Lượng nước ngọt tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NuocNgotToiDa" name="NuocNgotToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Tốc độ(hải lý/giờ)   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TocDo" name="TocDo" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>TG hành trình tối đa   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TG_HanhTrinhToiDa" name="TG_HanhTrinhToiDa" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Ngày tạo   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NgayTao" name="NgayTao" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Ngày cập nhật  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="NgayCapNhat" name="NgayCapNhat" value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding: 0px;">
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Số thuyền viên   : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="SoThuyenVien" name="SoThuyenVien" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Trọng tải    : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="TrongTai" name="TrongTai" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Chiều rộng (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="ChieuRong" name="ChieuRong" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Chiều dài (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="ChieuDai" name="ChieuDai" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Vật liệu  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="VatLieu" name="VatLieu" required value="">
                                            </div>
                                        </div>
                                    </div>

                                    <div style="width: 100%; float: left; padding: 5px">
                                        <div class="form-group">
                                            <label class="col-md-5 control-label" style="text-align: right"><strong>Mướn nước (m)  : </strong></label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" id="MonNuoc" name="MonNuoc" required value="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>





                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_Ship()" type="button" class="btn btn-info">Save</button>
                        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
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
        $(document).ready(function () {
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
            $('#title').text('QUẢN LÝ TÀU - VÙNG ' + vung);
            loadDataListShips(vung_id);

        });
        var selectedValue_Captain_ID;
        var selectedValue_Flotilla_ID;
        //$("#HaiDoi").change(function () {

        //    // var selectedVal = $("#myselect option:selected").text();

        //    $("select option:selected").each(function () {
        //        selectedValue_Flotilla_ID = $(this).val();
        //        debugger
        //    });



        //});
        //$("#ThuyenTruong").change(function () {

        //    // var selectedVal = $("#myselect option:selected").text();

        //    $("select option:selected").each(function () {
        //        selectedValue_Captain_ID = $(this).val();
        //        debugger
        //    });



        //});
        function loadDataListShips(vung_id) {
            $.ajax({
                type: "GET",
                url: linkapi + "ships_region?id=" + vung_id,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN TÀU</th><th>SỐ HIỆU</th><th>SỐ THUYỀN VIÊN</th><th>NĂM HẠ THỦY</th><th>TRỌNG TẢI</th><th>TỐC ĐỘ</th><th title='Thời gian hành trình tối đa'>TG HT TỐI ĐA</th><th  title='Xem thiết bị trên tàu'>XEM THIẾT BỊ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {

                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.RegistrationNumber + "</td><td>" + item.Personel + "</td><td>" + item.LaunchYear + "</td><td>" + item.Weight + "</td><td>" + item.Speed + "</td><td>" + item.Time + '</td>' + '<td><a href="#" class="view" title="Xem trang bị tàu" onclick="View_EquimentShip(`' + item.ID + '`)"><i class="material-icons">&#xE417;</i></a></td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="ViewInforShip(`' + item.ID + '`)" data-toggle="modal" data-target="#model-infordetail-ship"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="delete_ship(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tableship').html(tabletext);
                    loadTableShip();
                    $('#tableship_wrapper .row .col-sm-12').first().html('<button onclick="btn_addship()" class="btn btn-info btn-lg col-md-6" data-toggle="modal" data-target="#model-add-ship" style="height: 35px; padding - top: 4px;margin - top: -4px;">Thêm tàu</button>');
                    $('#tableship_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');
                    $('#model-edit-user').addClass('hidden');
                },
            });
        };
        function btn_addship(){
            $('#add_Ship_ID').val('');
            //$("#Anh").val(data.Name);
            $("#add_TenTau").val('');
            $("#add_SoHieu").val('');
            $("#add_NoiCap").val('');
            $("#add_NgayCap").val('');
            $("#add_NamHaThuy").val('');
            $("#add_TrongTai").val('');
            $("#add_NhienLieuToiDa").val('');
            $("#add_NuocNgotToiDa").val('');
            $("#add_SoThuyenVien").val('');
            list_captain('','add_ThuyenTruong');
            $("#add_TocDo").val('');
            $("#add_TG_HanhTrinhToiDa").val('');
            $("#add_NgayTao").val('');
            $("#add_NgayCapNhat").val('');
            $("#add_ChieuDai").val('');
            $("#add_ChieuRong").val('');
            $("#add_VatLieu").val('');
            list_flotilla('','add_HaiDoi');
            $("#add_MonNuoc").val('');
        }

        function Add_Ship() {
            var id_Flotilla = $('#add_HaiDoi').val();
            var id_Captain = $('#add_ThuyenTruong').val();
            var New_Ship = {
                Image: 'imgs\\default.jpg',
                Name: $('#add_TenTau').val(),
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
            console.log(New_Ship);
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
        }
        function ViewInforShip(ID) {
            debugger;
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + ID,
                dataType: "json",
                success: function (data) {
                    $('#Ship_ID').val(data.ID);
                    //$("#Anh").val(data.Name);
                    $("#TenTau").val(data.Name);
                    $("#SoHieu").val(data.RegistrationNumber);
                    $("#NoiCap").val(data.RegistrationPlace);
                    $("#NgayCap").val(data.RegistrationDate);
                    $("#NamHaThuy").val(data.LaunchYear);
                    $("#TrongTai").val(data.Weight);
                    $("#NhienLieuToiDa").val(data.Fuel);
                    $("#NuocNgotToiDa").val(data.Water);
                    $("#SoThuyenVien").val(data.Personel);
                    list_captain(data.Captain.ID,'ThuyenTruong');
                    $("#TocDo").val(data.Speed);
                    $("#TG_HanhTrinhToiDa").val(data.Time);
                    $("#NgayTao").val(data.Created);
                    $("#NgayCapNhat").val(data.Updated);
                    $("#ChieuDai").val(data.Width);
                    $("#ChieuRong").val(data.Wide);
                    $("#VatLieu").val(data.Material);
                    list_flotilla(data.Flotilla.Id,'HaiDoi');
                    $("#MonNuoc").val(data.Draught);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function list_flotilla(id_flotilla,string_HaiDoi) {
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
                    debugger
                    if (id_flotilla == '') {
                        $('#' + string_HaiDoi).append($('<option>', {
                            selected: true,
                            value: data[0].Id,
                            text: data[0].Name
                        }));
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function list_captain(id_captain,string_thuyentruong) {
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
                        $('#' + string_thuyentruong).append($('<option>', {
                            selected: true,
                            value: data[0].ID,
                            text: data[0].Fullname
                        }));
                    }
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                },
            });

        }
        function loadTableShip() {
            $('table[id=tableship]').each(function () {
                var table1 = $(this).DataTable({
                    'destroy': true,
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
            });
        };
        function View_EquimentShip(ID_Ship) {
            window.location = baseaddress + "Page_Master/Ship_equiment?Ship_ID=" + ID_Ship;
        }
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        function PreviewImage() {
            var oFReader = new FileReader();
            if (document.getElementById("Anh").files[0] == null) alert("1");
            oFReader.readAsDataURL(document.getElementById("Anh").files[0]);

            oFReader.onload = function (oFREvent) {
                document.getElementById("upload_imageproduct").src = oFREvent.target.result;
            };
        };
        function Xoa() {
            $('#Anh').attr('disabled', '');
            document.getElementById("upload_imageproduct").src = ""
        }
        function delete_ship(ship_id) {
            debugger;
            let text = "Bạn có chắc muốn xóa thông tin tàu này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "ship_delete/?id=" + ship_id,
                    type: "DELETE",

                }).done(function (res) {
                    loadDataListShips();
                    toastSuccess("Thành công", "Xóa thông tin tàu thành công.");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin tàu không thành công");
                })

            } else {

            }
        }

        function Update_Ship() {
            var id_Flotilla = $('#HaiDoi').val();
            var id_Captain = $('#ThuyenTruong').val();
            var New_Ship = {
                ID: $('#Ship_ID').val(),
                Image: 'imgs\\default.jpg',
                Name: $('#TenTau').val(),
                RegistrationNumber: $('#SoHieu').val(),
                Weight: $('#TrongTai').val(),
                Fuel: $('#NhienLieuToiDa').val(),
                Water: $('#NuocNgotToiDa').val(),
                Personel: $('#SoThuyenVien').val(),
                Captain: {
                    ID: id_Captain
                },
                Speed: $("#TocDo").val(),
                Time: $("#TG_HanhTrinhToiDa").val(),
                LaunchYear: $("#NamHaThuy").val(),
                RegistrationDate: $("#NgayCap").val(),
                RegistrationPlace: $("#NoiCap").val(),
                Width: $("#ChieuDai").val(),
                Wide: $("#ChieuRong").val(),
                Draught: $("#MonNuoc").val(),
                Material: $("#VatLieu").val(),
                Created: $("#NgayTao").val(),
                Updated: strDate,
                Flotilla: {
                    Id: id_Flotilla
                }
            };
            console.log(New_Ship);
            $.ajax({
                type: "PUT",
                url: linkapi + "ship_update",
                dataType: "json",
                data: JSON.stringify(New_Ship),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập tàu thành công.");
                    loadDataListShips(vung_id);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-infordetail-ship').modal("hide");
                },
            });
        }
    </script>
</asp:Content>
