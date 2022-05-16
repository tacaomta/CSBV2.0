<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Ship_equipment2.aspx.cs" Inherits="CSB.Page_Master.Ship_equipment2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentAdmin" runat="server">
    <div id="form1">
        <div class="section-header">
            <div class="">
                <div class="section">
                    <div class="section-header" style="flex-direction: column; align-items: baseline;">
                        <h4 id="title" style="color: black;"></h4>
                        <%--<div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9; font-size: 18px;">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="Manage_ship.aspx" style="color: #01b5f9; font-size: 18px;">Quản lý tàu</a></div>
                        </div>--%>
                    </div>
                    
                    <div class="">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                          <li class="nav-item" role="presentation">
                            <a class="nav-link active" id="btn_MayChinh" data-toggle="tab" href="#cnt_MayChinh" role="tab" aria-controls="maychinh" aria-selected="true" style="display: flex; color: #000;"></a>
                          </li>
                          <li class="nav-item" role="presentation">
                            <a class="nav-link" id="btn_MayPhu" data-toggle="tab" href="#cnt_MayPhu" role="tab" aria-controls="mayphu" aria-selected="false" style="display: flex; color: #000;"></a>
                          </li>
                          <li class="nav-item" role="presentation">
                            <a class="nav-link" id="btn_ChanVit" data-toggle="tab" href="#cnt_ChanVit" role="tab" aria-controls="chanvit" aria-selected="false" style="display: flex; color: #000;"></a>
                          </li>
                          <li class="nav-item" role="presentation">
                            <a class="nav-link" id="btn_KhiTai" data-toggle="tab" href="#cnt_KhiTai" role="tab" aria-controls="khitai" aria-selected="false" style="display: flex; color: #000;"></a>
                          </li>
                          <li class="nav-item" role="presentation">
                            <a class="nav-link" id="btn_XuongCT" data-toggle="tab" href="#cnt_XuongCT" role="tab" aria-controls="xuongct" aria-selected="false" style="display: flex; color: #000;"></a>
                          </li>
                          <li class="nav-item" role="presentation">
                            <a class="nav-link" id="btn_Neo" data-toggle="tab" href="#cnt_Neo" role="tab" aria-controls="neo" aria-selected="false" style="display: flex; color: #000;"></a>
                          </li>
                          <li class="nav-item" role="presentation">
                            <a class="nav-link" id="btn_TBCuuSinh" data-toggle="tab" href="#cnt_TBCuuSinh" role="tab" aria-controls="tbcuusinh" aria-selected="false" style="display: flex; color: #000;"></a>
                          </li>
                          <li class="nav-item" role="presentation">
                            <a class="nav-link" id="btn_TBKhac" data-toggle="tab" href="#cnt_TBKhac" role="tab" aria-controls="tbkhac" aria-selected="false" style="display: flex; color: #000;"></a>
                          </li>
                          <li class="nav-item" role="presentation">
                            <a class="nav-link" id="btn_VatTu" data-toggle="tab" href="#cnt_VatTu" role="tab" aria-controls="vattu" aria-selected="false" style="display: flex; color: #000;"></a>
                          </li>
                        </ul>
                        <div class="section-header" style="width: 100%;">
                            <div class="tab-content" id="myTabContent" style="width: 100%;">
                              <div class="tab-pane active" id="cnt_MayChinh" role="tabpanel" aria-labelledby="btn_MayChinh">
                                  <div id="collMainEngine">
                                    <div class="col-md-12">
                                        <table id="table_maychinh" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>
                              </div>
                              <div class="tab-pane" id="cnt_MayPhu" role="tabpanel" aria-labelledby="btn_MayPhu">
                                  <div id="collSecondaryEngine">
                                    <div class="col-md-12">
                                        <table id="table_mayphu" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>
                              </div>
                              <div class="tab-pane" id="cnt_ChanVit" role="tabpanel" aria-labelledby="btn_ChanVit">
                                  <div id="collScrew">
                                    <div class="col-md-12">
                                        <table id="table_chanvit" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>
                              </div>
                              <div class="tab-pane" id="cnt_KhiTai" role="tabpanel" aria-labelledby="btn_KhiTai">
                                  <div id="collWeapon">
                                    <div class="col-md-12">
                                        <table id="table_khitai" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>
                              </div>
                              <div class="tab-pane" id="cnt_XuongCT" role="tabpanel" aria-labelledby="btn_XuongCT">
                                  <div id="collMotoBoat">
                                    <div class="col-md-12">
                                        <table id="table_xuongct" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>
                              </div>
                              <div class="tab-pane" id="cnt_Neo" role="tabpanel" aria-labelledby="btn_Neo">
                                  <div id="collAnchor">
                                    <div class="col-md-12">
                                        <table id="table_toineo" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                    <div class="col-md-12">
                                        <table id="table_neo" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                    <div class="col-md-12">
                                        <table id="table_xichneo" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>     
                              </div>
                              <div class="tab-pane" id="cnt_TBCuuSinh" role="tabpanel" aria-labelledby="btn_TBCuuSinh">
                                  <div id="collLifeSaving">
                                    <div class="col-md-12">
                                        <table id="table_tbcuusinh" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>
                              </div>
                              <div class="tab-pane" id="cnt_TBKhac" role="tabpanel" aria-labelledby="btn_TBKhac">
                                  <div id="collOther">
                                    <div class="col-md-12">
                                        <table id="table_tbkhac" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>
                              </div>
                              <div class="tab-pane" id="cnt_VatTu" role="tabpanel" aria-labelledby="btn_VatTu">
                                  <div id="collSupplies">
                                    <div class="col-md-12">
                                        <table id="table_vattu" class="table table-bordered table-striped table-md" style="width: 130%">
                                        </table>
                                    </div>
                                  </div>
                              </div>
                              <div class="tab-pane" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-ScrewSystem" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm hệ trục chân vịt</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên trục     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemName" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Chiều dài hệ trục (mm)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemWidth" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính cơ bản (mm)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemBasicDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính ổ đỡ sau (mm)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemBehindDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính ổ đỡ giữa (mm)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemMiddleDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính ổ đỡ trước (mm)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemFrontDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính chân vịt     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số cánh chân vịt    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemWings" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aScrewSystemNote" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddScrewSystem" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_ScrewSystem()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-ScrewSystem" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin máy phụ</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="uScrewSystemID">
                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên trục     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemName" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Chiều dài hệ trục (mm)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemWidth" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính cơ bản (mm)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemBasicDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính ổ đỡ sau (mm)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemBehindDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính ổ đỡ giữa (mm)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemMiddleDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính ổ đỡ trước (mm)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemFrontDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính chân vịt     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemDiameter" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số cánh chân vịt    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemWings" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uScrewSystemNote" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdateScrewSystem" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_ScrewSystem()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-add-MainEngine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm máy chính</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại máy    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_LoaiMay" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Năm sản xuất    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_NSX" name="NamSanXuat" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_XuatXu" name="XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Công xuất (CV)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_CongXuat" name="CongXuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Định mức tiêu thụ (l/h)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_DinhMucTT" name="DinhMucTieuThu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vòng quay max (v/p)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_VongQuayMax" name="VongQuayMax" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số xy lanh   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_SoXyLanh" name="SoXyLanh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đk xy lanh   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_DkXyLanh" name="DuongKinhXyLanh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MainEngine_GhiChu" name="GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_Add_MayChinh" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_MainEngine()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-MainEngine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin máy chính</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="update_MainEngine_ID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại máy   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_LoaiMay" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Năm sản xuất    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_NSX" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Công xuất    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_CongXuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Định mức tiêu thụ    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_DinhMucTT" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vòng quay max    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_VongQuayMax" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số xy lanh   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_SoXyLanh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>ĐK xy lanh   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_DkXyLanh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MainEngine_GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdMainEngine" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_MainEngine()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-add-SecondaryEngine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm máy phụ</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Động cơ diesel     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineName" name="DongCo" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Năm sản xuất     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineProductionYear" name="NamSanXuat" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineOrigin" name="XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Công suất (KW)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEnginePower" name="CongXuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Định mức tiêu thụ (I/h)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineWaste" name="DinhMuc" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vòng quay lớn nhất (V/P)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineSpeed" name="VongQuayMax" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Máy phát điện     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineMachine" name="MayPhatDien" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Năm sản xuất     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineYear" name="NamSanXuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEngineOrigin2" name="XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Công suất (KW)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aSecondaryEnginePower2" name="CongXuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddSecondaryEngine" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_SecondaryEngine()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-SecondaryEngine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin máy phụ</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="uSecondaryEngineID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Động cơ diesel     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineName" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Năm sản xuất     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineProductionYear" name="TenDayDu" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Công suất (KW)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEnginePower" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Định mức tiêu thụ (I/h)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineWaste" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Vòng quay lớn nhất (V/P)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineSpeed" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Máy phát điện     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineMachine" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Năm sản xuất     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineYear" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEngineOrigin2" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Công suất (KW)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uSecondaryEnginePower2" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdateSecondaryEngine" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_SecondaryEngine()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-WeaponMarine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm khí tài, hàng hóa khác</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại thiết bị    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_WeaponMarine_LoaiTB" name="LoaiThietBi" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kí mã hiệu   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_WeaponMarine_KiMaHieu" name="KiMaHieu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_WeaponMarine_SoLuong" name="SoLuong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_WeaponMarine_XuatXu" name="XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Công Suất   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_WeaponMarine_CongSuat" name="CongXuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tính năng ngắn gọn   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_WeaponMarine_TinhNang" name="TinhNang" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddWeaponMarine" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_WeaponMarine()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-WeaponMarine" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin khí tài, hàng hóa</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="update_WeaponMarine_ID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại thiết bị   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_WeaponMarine_LoaiTB" name="LoaiThietBi" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kí mã hiệu   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_WeaponMarine_KiMaHieu" name="KiMaHieu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_WeaponMarine_SoLuong" name="Soluong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_WeaponMarine_XuatXu" name="XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Công suất     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_WeaponMarine_CongSuat" name="CongSuat" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tính năng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_WeaponMarine_TinhNang" name="TinhNang" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdWeaponMarine" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_WeaponMarinet()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-MotoBoat" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm xuồng công tác</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_Ten" name="Ten" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số thuyền viên max     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="number" class="form-control" id="add_MotoBoat_SoTV" name="SoThuyenVienMax" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Dài (m)   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_Dai" name="Dai" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Rộng (m)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_Rong" name="Rong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Mớn nước (m)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_MonNuoc" name="MonNuoc" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tốc độ tối đa (dặm/h)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_TocDoMax" name="TocDoMax" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tải trọng (tấn)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_TaiTrong" name="TaiTrong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Máy xuồng   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_MayXuong" name="MayXuong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng máy xuồng    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_SLMayXuong" name="SoLuongMayXuong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kiểu chân vịt    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_KieuChanVit" name="KieuChanVit" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số trục chân vịt    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_SoTrucChanVit" name="SoTrucChanVit" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_MotoBoat_GhiChu" name="GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddMotoBoat" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_MotoBoat()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-update-MotoBoat" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin xuồng công tác</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="update_MotoBoat_ID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tên : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_Ten" name="Ten" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số thuyền viên tối đa   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_SoTV" name="SoThanhVienMax" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Dài (m)   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_Dai" name="Dai" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Rộng (m)   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_Rong" name="Rong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Mớn nước (m)   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_MonNuoc" name="MuonNuoc" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tốc độ tối đa (dặm/h)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_TocDoMax" name="TocDoMax" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tải trọng (tấn)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_TaiTrong" name="TaiTrong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Máy xuồng    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_MayXuong" name="MayXuong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng máy xuồng    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_SLMayXuong" name="SoLuongMayXuong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kiểu chân vịt   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_KieuChanVit" name="KieuChanVit" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số trục chân vịt    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_SoTrucChanVit" name="SoTrucChanVit" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_MotoBoat_GhiChu" name="GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdMotoBoat" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_MotoBoat()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-LifeSaving" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm trang bị cứu sinh</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại trang bị    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_LifeSaving_LoaiTB" name="LoaiTrangBi" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_LifeSaving_XuatXu" name="XuatXu" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tình trạng   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_LifeSaving_TinhTrang" name="TinhTrang" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_LifeSaving_SoLuong" name="SoLuong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_LifeSaving_DonViTinh" name="DonViTinh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_LifeSaving_GhiChu" name="GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddLifeSaving" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_LifeSaving()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-LifeSaving" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thiết bị cứu sinh</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="update_LifeSaving_ID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_LifeSaving_LoaiTB" name="LoaiThietBi" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_LifeSaving_XuatXu" name="XuatXu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_LifeSaving_TinhTrang" name="TinhTrang" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_LifeSaving_SoLuong" name="SoLuong" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_LifeSaving_DonViTinh" name="DonViTinh" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_LifeSaving_GhiChu" name="GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdLifeSaving" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_LifeSaving()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-ToiNeo" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm tời neo</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kiểu tời neo     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_ToiNeo_Kieu" name="KieuNeo" required value="" placeholder="Nhập kiểu tời neo">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Trọng tải (tấn)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_ToiNeo_TrongTai" name="TrongTai" placeholder="Nhập trọng tải tời neo" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_ToiNeo_SoLuong" name="SoLuong" placeholder="Nhập số lượng tời neo" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_ToiNeo_GhiChu" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddToiNeo" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_ToiNeo()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-update-ToiNeo" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tời neo</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="update_ToiNeo_Id">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kiểu tời neo    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_ToiNeo_Kieu">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Trọng tải(tấn)   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_ToiNeo_TrongTai">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_ToiNeo_SoLuong">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_ToiNeo_GhiChu">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdToiNeo" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_ToiNeo()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-Neo" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm neo</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kiểu neo     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_Neo_Kieu" name="KieuNeo" required value="" placeholder="Nhập kiểu neo">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Trọng lượng neo (tấn)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_Neo_TrongLuong" name="TrongLuong" placeholder="Nhập trọng lượng neo" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_Neo_SoLuong" name="SoLuong" placeholder="Nhập số lượng neo" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_Neo_GhiChu" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddNeo" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Neo()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-update-Neo" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông neo</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="update_Neo_Id">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kiểu neo    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_Neo_Kieu">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Trọng lượng neo(tấn)   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_Neo_TrongLuong">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_Neo_SoLuong">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_Neo_GhiChu" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdNeo" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_Neo()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-add-XichNeo" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm xích neo</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kiểu xích neo     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_XichNeo_Kieu" name="KieuNeo" required value="" placeholder="Nhập kiểu xích neo">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>CHiều dài xích neo(m)     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_XichNeo_ChieuDai" name="ChieuDai" placeholder="Nhập chiều dài xích neo" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính xích neo(mm)   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_XichNeo_DuongKinh" name="SoLuong" placeholder="Nhập đường kính xích neo" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="add_XichNeo_GhiChu" name="GhiChu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddXichNeo" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_XichNeo()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-update-XichNeo" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông xích neo</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="update_XichNeo_Id">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Kiểu xích neo    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_XichNeo_Kieu">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Chiều dài xích neo(m)   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_XichNeo_ChieuDai">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đường kính xích neo(mm)    : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_XichNeo_DuongKinh">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú   : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="update_XichNeo_GhiChu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdXichNeo" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_XichNeo()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="model-add-OtherEquipment" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm trang bị khác</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentType" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentState" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentQuantity" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentUnit" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="aOtherEquipmentNote" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_AddOtherEquipment" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_OtherEquipment()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-OtherEquipment" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin vật tư bảo đảm</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="uOtherEquipmentID">
                        <div class="row clearfix ">

                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentType" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentState" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentQuantity" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentUnit" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="uOtherEquipmentNote" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_UpdOtherEquipment" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_OtherEquipment()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-add-supply" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Thêm vật tư bảo đảm</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Mã vật tư     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="asupplyCode" name="TenDayDu" placeholder="Nhập mã vật tư" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="asupplyType" name="TenDayDu" placeholder="Nhập loại trang bị" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="asupplyOrigin" name="TenDayDu" placeholder="Nhập xuất xứ" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="asupplyState" name="TenDayDu" placeholder="Nhập trình trạng" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="asupplyQuantity" name="TenDayDu" placeholder="Nhập số lượng" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="asupplyUnit" name="TenDayDu" placeholder="Nhập đơn vị tính" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="asupplyNote" name="TenDayDu" placeholder="Nhập ghi chú" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_Addsupply" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Add_Supply()" type="submit" class="btn btn-info">Thêm</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="model-update-supply" tabindex="-2" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h4 class="title-modal-banve font-weight-bold">Sửa thông tin vật tư bảo đảm</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" class="form-control" id="usupplyID">
                        <div class="row clearfix ">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Mã vật tư     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="usupplyCode" name="TenDayDu" placeholder="Nhập mã vật tư" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Loại trang bị     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="usupplyType" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Xuất xứ     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="usupplyOrigin" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Tình trạng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="usupplyState" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Số lượng     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="usupplyQuantity" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Đơn vị tính     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="usupplyUnit" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-md-5 control-label"><strong>Ghi chú     : </strong></label>
                                    <div class="col-md-7">
                                        <input type="text" class="form-control" id="usupplyNote" name="TenDayDu" required value="">
                                    </div>
                                </div>
                            </div>
                            <p id="Error_Updsupply" class="textER" hidden="hidden">Lỗi</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="Update_Supply()" type="submit" class="btn btn-info">Lưu</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        <!--
        /* Font Definitions */
        @font-face {
            font-family: "Cambria Math";
            panose-1: 2 4 5 3 5 4 6 3 2 4;
        }

        @font-face {
            font-family: Calibri;
            panose-1: 2 15 5 2 2 2 4 3 2 4;
        }
        /* Style Definitions */
        p.MsoNormal, li.MsoNormal, div.MsoNormal {
            margin-right: 0in;
            margin-left: 0in;
            text-align: justify;
            text-indent: .5in;
            line-height: 115%;
            font-size: 14.0pt;
            font-family: "Times New Roman",serif;
        }

        .MsoChpDefault {
            font-family: "Calibri",sans-serif;
        }

        .MsoPapDefault {
            margin-bottom: 10.0pt;
            line-height: 115%;
        }

        @page WordSection1 {
            size: 11.0in 8.5in;
            margin: 42.55pt 31.5pt 70.9pt 63.0pt;
        }

        div.WordSection1 {
            page: WordSection1;
        }
        /* List Definitions */
        -->
    </style>


    <div id="contentptrMayChinh" style="width: fit-content;" hidden="hidden">
        <div class="WordSection1" id="contentMayChinh">

            <table class="MsoTableGrid" border="0" cellspacing="0" cellpadding="0" width="933"
                style='width: 700.0pt; border-collapse: collapse; border: none'>
                <tr style='height: 20.9pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            B&#7896; T&#431; L&#7878;NH C&#7842;NH SÁT BI&#7874;N
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>C&#7896;NG HÒA XÃ H&#7896;I CH&#7910; NGH&#296;A VI&#7878;T
  NAM</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 35.35pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span id="donvi"></span></b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&#272;&#7897;c
  L<u>&#7853;p – T&#7921; Do – H&#7841;nh P</u>húc</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 34.4pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="right" style='text-align: right; text-indent: 0in; line-height: normal'>
                            <i>Hà N&#7897;i, ngày <span id="sp-day">Day</span> tháng <span id="sp-month">Month</span> n&#259;m <span id="sp-year">Year</span></i>
                        </p>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="center" style='margin: 0in; text-align: center; text-indent: 0in'>
                <b><span style='font-size: 16.0pt; line-height: 115%'>DANH M&#7908;C</span></b>
            </p>

            <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in'>
                <b>Thông t<u>in máy chính tàu “</u><span id="shipname"></span>”</b>
            </p>

            <table id="tablecontentMayChinh" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                style='width: 694.6pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">LO&#7840;I
  MÁY</span></b>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">N&#258;M
  SX</span></b>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XU&#7844;T
  X&#7912;</span></b>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">CÔNG SU&#7844;T</span></b>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SU&#7844;T
  TIÊU HAO</span></b>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">T&#7888;C
  &#272;&#7896;</span></b>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">S&#7888;
  XY LANH</span></b>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">&#272;&#431;&#7900;NG
  KÍNH XY LANH</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">9</span>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="left" style='margin-top: 7.0pt; text-align: left; text-indent: 0in'>
                <span style='line-height: 115%'>&nbsp;</span>
            </p>

        </div>
    </div>

    <div id="" style="width: fit-content;" hidden="hidden">
        <div class="WordSection1" id="contentMayPhu">

            <table class="MsoTableGrid" border="0" cellspacing="0" cellpadding="0" width="933"
                style='width: 700.0pt; border-collapse: collapse; border: none'>
                <tr style='height: 20.9pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            BỘ TƯ LỆNH CẢNH SÁT BIỂN
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 35.35pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span id="donviMayPhu"></span></b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>Độc L<u>ập – Tự Do – Hạnh P</u>húc</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 34.4pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="right" style='text-align: right; text-indent: 0in; line-height: normal'>
                            <i>Hà Nội, ngày <span id="sp-dayMayPhu">Day</span> tháng <span id="sp-monthMayPhu">Month</span> năm <span id="sp-yearMayPhu">Year</span></i>
                        </p>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="center" style='margin: 0in; text-align: center; text-indent: 0in'>
                <b><span style='font-size: 16.0pt; line-height: 115%'>DANH MỤC</span></b>
            </p>

            <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in'>
                <b>Thông t<u>in máy phụ tàu “</u><span id="shipnameMayPhu"></span>”</b>
            </p>

            <table id="tablecontentMayPhu" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="926"
                style='width: 694.6pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="152" style="width: 114.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐỘNG CƠ DIESEL</span></b>
                        </p>
                    </td>
                    <td width="83" style="width: 62.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">NĂM SX</span></b>
                        </p>
                    </td>
                    <td width="72" style="width: 60.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XUẤT XỨ</span></b>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SUẤT TIÊU HAO</span></b>
                        </p>
                    </td>
                    <td width="67" style="width: 50.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TỐC ĐỘ</span></b>
                        </p>
                    </td>
                    <td width="156" style="width: 117.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">MÁY PHÁT ĐIỆN</span></b>
                        </p>
                    </td>
                    <td width="78" style="width: 58.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">NĂM SX</span></b>
                        </p>
                    </td>
                    <td width="78" style="width: 58.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XUẤT XỨ</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">9</span>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="left" style='margin-top: 7.0pt; text-align: left; text-indent: 0in'>
                <span style='line-height: 115%'>&nbsp;</span>
            </p>

        </div>
    </div>

    <div id="contentprtChanVit" style="width: fit-content;" hidden="hidden">
        <div class="WordSection1" id="contentChanVit">

            <table class="MsoTableGrid" border="0" cellspacing="0" cellpadding="0" width="933"
                style='width: 700.0pt; border-collapse: collapse; border: none'>
                <tr style='height: 20.9pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            BỘ TƯ LỆNH CẢNH SÁT BIỂN
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 35.35pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span id="donviChanVit"></span></b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>Độc L<u>ập – Tự Do – Hạnh P</u>húc</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 34.4pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="right" style='text-align: right; text-indent: 0in; line-height: normal'>
                            <i>Hà Nội, ngày <span id="sp-dayChanVit">Day</span> tháng <span id="sp-monthChanVit">Month</span> năm <span id="sp-yearChanVit">Year</span></i>
                        </p>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="center" style='margin: 0in; text-align: center; text-indent: 0in'>
                <b><span style='font-size: 16.0pt; line-height: 115%'>DANH MỤC</span></b>
            </p>

            <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in'>
                <b>Thông t<u>in hệ thống chân vịt tàu “</u><span id="shipnameChanVit"></span>”</b>
            </p>

            <table id="tablecontentChanVit" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="923"
                style='width: 692.45pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TÊN HỆ TRỤC</span></b>
                        </p>
                    </td>
                    <td width="101" style="width: 76.1pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">CHIỀU DÀI HỆ TRỤC</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK CƠ SỞ</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ SAU</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ GIỮA</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ TRƯỚC</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">ĐK CHÂN VỊT</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SỐ CÁNH CHÂN VỊT</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="113" style="width: 85.05pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">9</span>
                        </p>
                    </td>
                    <td width="123" style="width: 92.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="left" style='margin-top: 7.0pt; text-align: left; text-indent: 0in'>
                <span style='line-height: 115%'>&nbsp;</span>
            </p>

        </div>
    </div>

    <div id="" style="width: fit-content;" hidden="hidden">
        <div class="WordSection1" id="contentKhiTai">

            <table class="MsoTableGrid" border="0" cellspacing="0" cellpadding="0" width="933"
                style='width: 700.0pt; border-collapse: collapse; border: none'>
                <tr style='height: 20.9pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            BỘ TƯ LỆNH CẢNH SÁT BIỂN
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 35.35pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span id="donviKhiTai"></span></b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>Độc L<u>ập – Tự Do – Hạnh P</u>húc</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 34.4pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="right" style='text-align: right; text-indent: 0in; line-height: normal'>
                            <i>Hà Nội, ngày <span id="sp-dayKhiTai">Day</span> tháng <span id="sp-monthKhiTai">Month</span> năm <span id="sp-yearKhiTai">Year</span></i>
                        </p>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="center" style='margin: 0in; text-align: center; text-indent: 0in'>
                <b><span style='font-size: 16.0pt; line-height: 115%'>DANH MỤC</span></b>
            </p>

            <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in'>
                <b>Thông t<u>in khí tài hàng hải trên tàu “</u><span id="shipnameKhiTai"></span>”</b>
            </p>

            <table id="tablecontentKhiTai" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="923"
                style='width: 692.45pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="212" style="width: 159.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">LOẠI KHÍ TÀI</span></b>
                        </p>
                    </td>
                    <td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">KÍ HIỆU MÃ</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b>
                        </p>
                    </td>
                    <td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">XUẤT XỨ</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b>
                        </p>
                    </td>
                    <td width="258" style="width: 193.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TÍNH NĂNG</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="left" style='margin-top: 7.0pt; text-align: left; text-indent: 0in'>
                <span style='line-height: 115%'>&nbsp;</span>
            </p>

        </div>
    </div>

    <div id="" style="width: fit-content;" hidden="hidden">
        <div class="WordSection1" id="contentXuongCT">

            <table class="MsoTableGrid" border="0" cellspacing="0" cellpadding="0" width="933"
                style='width: 700.0pt; border-collapse: collapse; border: none'>
                <tr style='height: 20.9pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            BỘ TƯ LỆNH CẢNH SÁT BIỂN
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 20.9pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 35.35pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b><span id="donviXuongCT"></span></b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 35.35pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>Độc L<u>ập – Tự Do – Hạnh P</u>húc</b>
                        </p>
                    </td>
                </tr>
                <tr style='height: 34.4pt'>
                    <td width="284" valign="top" style='width: 212.65pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                    <td width="650" valign="top" style='width: 487.35pt; padding: 0in 5.4pt 0in 5.4pt; height: 34.4pt'>
                        <p class="MsoNormal" align="right" style='text-align: right; text-indent: 0in; line-height: normal'>
                            <i>Hà Nội, ngày <span id="sp-dayXuongCT">Day</span> tháng <span id="sp-monthXuongCT">Month</span> năm <span id="sp-yearXuongCT">Year</span></i>
                        </p>
                        <p class="MsoNormal" align="center" style='text-align: center; text-indent: 0in; line-height: normal'>
                            <b>&nbsp;</b>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="center" style='margin: 0in; text-align: center; text-indent: 0in'>
                <b><span style='font-size: 16.0pt; line-height: 115%'>DANH MỤC</span></b>
            </p>

            <p class="MsoNormal" align="center" style='margin-top: 0in; text-align: center; text-indent: 0in'>
                <b>Thông t<u>in xuồng công tác trên tàu “</u><span id="shipnameXuongCT"></span>”</b>
            </p>

            <table id="tablecontentXuongCT" class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="923"
                style='width: 692.45pt; ; border-collapse: collapse; border: none'>
                <tr style="height: 46.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">STT</span></b>
                        </p>
                    </td>
                    <td width="200" style="width: 150.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TÊN</span></b>
                        </p>
                    </td>
                    <td width="119" style="width: 89.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">SỐ THUYỀN VIÊN TỐI ĐA</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">DÀI (m)</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in;  border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">RỘNG (m)</span></b>
                        </p>
                    </td>
                    <td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TỐC ĐỘ TỐI ĐA (dặm/h)</span></b>
                        </p>
                    </td>
                    <td width="103" style="width: 76.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">TẢI TRỌNG (tấn)</span></b>
                        </p>
                    </td>
                    <td width="156" style="width: 117.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <b><span style="font-size: 12.0pt">KIỂU CHÂN VỊT</span></b>
                        </p>
                    </td>
                </tr>
                <tr style="height: 24.1pt">
                    <td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">1</span>
                        </p>
                    </td>
                    <td width="189" style="width: 141.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">C1</span>
                        </p>
                    </td>
                    <td width="94" style="width: 70.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">5</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.8pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">4</span>
                        </p>
                    </td>
                    <td width="95" style="width: 70.9pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">3</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                    <td width="85" style="width: 63.75pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">
                        <p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">
                            <span style="font-size: 12.0pt">2</span>
                        </p>
                    </td>
                </tr>
            </table>

            <p class="MsoNormal" align="left" style='margin-top: 7.0pt; text-align: left; text-indent: 0in'>
                <span style='line-height: 115%'>&nbsp;</span>
            </p>

        </div>
    </div>

    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>


    <script>
        var Ship_ID;
        var shipName;
        $(document).ready(function () {
            Ship_ID = getParameterByName('Ship_ID');
            if (Ship_ID == null) {
                window.location = baseaddress + "Page_Master/Manage_ship?vung=1";
            }
            else {
                Load_Equiment(Ship_ID);
            }

        });
        function Load_Equiment(Ship_ID) {
            $('#loader').removeClass('hidden');
            loadInforShip(Ship_ID);
            loadDataList_Main_Engine(Ship_ID);
            loadDataList_Secondary_Engine(Ship_ID)
            loadDataList_Screw_System(Ship_ID);
            loadDataList_WeaponMarine(Ship_ID);
            loadDataList_Other_Equipment(Ship_ID);
            loadDataList_Supply(Ship_ID);
            loadDataList_MotoBoat(Ship_ID);
            loadDataList_Anchor(Ship_ID);
            loadDataList_Winch(Ship_ID);
            loadDataList_Chain(Ship_ID);
            loadDataList_LifeSaving(Ship_ID);
            $('#loader').addClass('hidden');
        }
        function loadInforShip(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "ship_overview?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');

                },
                success: function (data) {
                    shipName = data.Ship.Name;
                    $('#shipname').html(shipName);
                    $("#title").html("THIẾT BỊ TRÊN TÀU - " + data.Ship.Name);
                    $('#btn_MayChinh').html('Máy chính <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.MainEngine + '</span>');
                    $('#btn_MayPhu').html('Máy phụ <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.SecondaryEngine + '</span>');
                    $('#btn_ChanVit').html('Hệ trục chân vịt <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.Screw + '</span>');
                    $('#btn_KhiTai').html('Khí tài, Hàng hải <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.Weapon + '</span>');
                    $('#btn_XuongCT').html('Xuồng công tác <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.MotoBoat + '</span>');
                    $('#btn_Neo').html('Neo, tời, xích neo <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.Anchor + '</span>');
                    $('#btn_TBCuuSinh').html('Trang bị cứu sinh <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.LifeSaving + '</span>');
                    $('#btn_TBKhac').html('Các trang bị khác <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.Other + '</span>');
                    $('#btn_VatTu').html('Vật tư bảo đảm <span class="badge badge-pill" style="margin-left: 0.5rem;">' + data.Supplies + '</span>');
                }, error: function (ret) {
                    console.log('errorGET');
                }, complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');
                }
            });

        }
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        // ===================================== MAIN_ENGINE========================================


        function loadDataList_Main_Engine(Ship_ID) {

            $.ajax({
                type: "GET",
                url: linkapi + "main_engines?imo=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>LOẠI MÁY</th><th>NĂM SẢN XUẤT</th><th>XUẤT XỨ</th><th>CÔNG SUẤT (CV)</th><th>ĐỊNH MỨC TIÊU THỤ (l/h)</th><th>VÒNG QUAY LỚN NHẤT (v/p)</th><th>SỐ XY LANH</th><th>ĐK XY LANH</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var tablechild = '<tr style="height:46.1pt"><td width=57 style="width:42.6pt;border:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">STT</span></b></p></td><td width=189 style="width:141.75pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">LO&#7840;I MÁY</span></b></p></td><td width=94 style="width:70.85pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">N&#258;M SX</span></b></p></td><td width=85 style="width:63.75pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">XU&#7844;T X&#7912;</span></b></p></td><td width=85 style="width:63.8pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">CÔNG SU&#7844;T</span></b></p></td><td width=95 style="width:70.9pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">SU&#7844;T TIÊU HAO</span></b></p></td><td width=85 style="width:63.75pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">T&#7888;C &#272;&#7896;</span></b></p></td><td width=113 style="width:85.05pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">S&#7888; XY LANH</span></b></p></td><td width=123 style="width:92.15pt;border:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:46.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><b><span style="font-size:12.0pt">&#272;&#431;&#7900;NG KÍNH XY LANH</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.ProductionYear + "</td><td>" + item.Origin + "</td><td>" + item.Power + "</td><td>" + item.Waste + "</td><td>" + item.Speed + "</td><td>" + item.Pittong + "</td><td>" + item.Diameter + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_MainEngine(`' + item.ID + '`,`' + item.Name + '`,`' + item.ProductionYear + '`,`' + item.Origin + '`,`' + item.Power + '`,`' + item.Waste + '`,`' + item.Speed + '`,`' + item.Pittong + '`,`' + item.Diameter + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-MainEngine" ><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="btn_delete_MainEngine(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.ProductionYear + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Power + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Waste + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Speed + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Pittong + '</span></p></td>';
                        tablechild += '<td width=123 style="width:92.15pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Diameter + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tablecontentMayChinh').html(tablechild);
                    $('#table_maychinh').html(tabletext);
                    console.log(linkapi + "main_engines?imo=" + Ship_ID);
                    loadTable("table_maychinh");
                    $('#table_maychinh_wrapper .row .col-sm-12').first().css("display", "flex");
                    $('#table_maychinh_wrapper .row .col-sm-12').first().css("flex-direction", "row");
                    $('#table_maychinh_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addMayChinh" onclick="btn_addMayChinh()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-MainEngine" ><span class="glyphicon glyphicon-plus-sign"></span> Thêm máy chính</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo </button><ul class="dropdown-menu" role="menu"><li><a href="#" onclick="exportToWord(`contentMayChinh`,`Thông tin máy chính tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwMayChinh" onclick="In_Content(`contentMayChinh`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>');
                    $('#table_maychinh_wrapper .row').first().next().children().css("overflow-x", "auto");
                    console.log('<div class="dropdown">< button class= "btn btn-secondary dropdown-toggle" type = "button" id = "dropdownMenuButton" data - toggle="dropdown" aria - haspopup="true" aria - expanded="false" >Dropdown button</button ><div class="dropdown-menu" aria-labelledby="dropdownMenuButton"><a class="dropdown-item" href="#">Action</a><a class="dropdown-item" href="#">Another action</a><a class="dropdown-item" href="#">Something else here</a></div></div >')
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');

                },
            });
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    var strdonvi = data.Flotilla.Name;
                    strdonvi = strdonvi.slice(0, 2) + '<u>' + strdonvi.slice(2, strdonvi.length - 2) + '</u>' + strdonvi.slice(strdonvi.length - 2);
                    console.log(strdonvi);
                    $('#donvi').html(strdonvi);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            var date = new Date();
            $('#sp-day').html(date.getDate());
            $('#sp-month').html(Number(date.getMonth()) + 1);
            $('#sp-year').html(date.getFullYear());
        };

        function Add_MainEngine() {

            var New_MainEngine = {
                Name: $("#add_MainEngine_LoaiMay").val(),
                ProductionYear: $("#add_MainEngine_NSX").val(),
                Origin: $("#add_MainEngine_XuatXu").val(),
                Power: $("#add_MainEngine_CongXuat").val(),
                Waste: $("#add_MainEngine_DinhMucTT").val(),
                Speed: $("#add_MainEngine_VongQuayMax").val(),
                Pittong: $("#add_MainEngine_SoXyLanh").val(),
                Diameter: $("#add_MainEngine_DkXyLanh").val(),
                Ship: {
                    ID: Ship_ID,
                },
                Note: $("#add_MainEngine_GhiChu").val(),
                Time: null,
                State: null
            };
            $.ajax({
                type: "POST",
                url: linkapi + "insert_main_engine",
                dataType: "json",
                data: JSON.stringify(New_MainEngine),
                contentType: "application/json",

                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    $('#model-add-MainEngine').modal("hide");
                    toastSuccess("Thành công", "Thêm máy chính thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
        function btn_update_MainEngine(ID, Name, ProductionYear, Origin, Power, Waste, Speed, Pittong, Diameter, Note) {
            $('#update_MainEngine_ID').val(ID);
            $('#update_MainEngine_LoaiMay').val(Name);
            $('#update_MainEngine_NSX').val(ProductionYear);
            $('#update_MainEngine_XuatXu').val(Origin);
            $('#update_MainEngine_CongXuat').val(Power);
            $('#update_MainEngine_DinhMucTT').val(Waste);
            $('#update_MainEngine_VongQuayMax').val(Speed);
            $('#update_MainEngine_SoXyLanh').val(Pittong);
            $('#update_MainEngine_DkXyLanh').val(Diameter);
            $('#update_MainEngine_GhiChu').val(Note);
        }
        function btn_addMayChinh() {
            $('#add_MainEngine_LoaiMay').val('');
            $('#add_MainEngine_NSX').val('');
            $('#add_MainEngine_XuatXu').val('');
            $('#add_MainEngine_CongXuat').val('');
            $('#add_MainEngine_DinhMucTT').val('');
            $('#add_MainEngine_VongQuayMax').val('');
            $('#new_SoXyLanh').val('');
            $('#add_MainEngine_DkXyLanh').val('');
            $('#add_MainEngine_GhiChu').val('');
        }
        function Update_MainEngine() {
            var New_MainEngine = {
                ID: $('#update_MainEngine_ID').val(),
                Name: $("#update_MainEngine_LoaiMay").val(),
                ProductionYear: $("#update_MainEngine_NSX").val(),
                Origin: $("#update_MainEngine_XuatXu").val(),
                Power: $("#update_MainEngine_CongXuat").val(),
                Waste: $("#update_MainEngine_DinhMucTT").val(),
                Speed: $("#update_MainEngine_VongQuayMax").val(),
                Pittong: $("#update_MainEngine_SoXyLanh").val(),
                Diameter: $("#update_MainEngine_DkXyLanh").val(),
                Ship: {
                    ID: Ship_ID,
                },
                Note: $("#update_MainEngine_GhiChu").val(),
                Time: null,
                State: null
            };
            debugger
            $.ajax({
                type: "PUT",
                url: linkapi + "update_main_engine",
                dataType: "json",
                data: JSON.stringify(New_MainEngine),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thông tin máy chính thành công.");
                    Load_Equiment(Ship_ID);
                    $('#model-update-MainEngine').modal("hide");
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_delete_MainEngine(ID) {
            let text = "Bạn có chắc muốn xóa máy chính này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_main_engine?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Xóa máy chính thành công.");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa máy chính không thành công");
                })
            } else {

            }
        }
        // ===================================== ScrewSystem ========================================

        function loadDataList_Screw_System(Ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "ship_overview?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    shipName = data.Ship.Name;
                    $('#shipnameChanVit').html(shipName);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "screw_systems?imo=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN TRỤC</th><th>CHIỀU DÀI HỆ TRỤC</th><th>ĐK CƠ BẢN (mm)</th><th>ĐK Ổ ĐỠ SAU (mm)</th><th>ĐK Ổ ĐỠ GIỮA (mm)</th><th>ĐK Ổ ĐỠ TRƯỚC (mm)</th><th>ĐƯỜNG KÍNH CHÂN VỊT (mm)</th><th>SỐ CÁNH CHÂN VỊT</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="189" style="width: 141.75pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÊN HỆ TRỤC</span></b></p></td><td width="101" style="width: 76.1pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">CHIỀU DÀI HỆ TRỤC</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK CƠ SỞ</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ SAU</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ GIŨA</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK Ổ ĐỠ TRƯỚC</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐK CHÂN VỊT</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SỐ CÁNH CHÂN VỊT</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Width + "</td><td>" + item.BasicDiameter + "</td><td>" + item.BehindDiameter + "</td><td>" + item.MiddleDiameter + "</td><td>" + item.FrontDiameter + "</td><td>" + item.Diameter + "</td><td>" + item.Wings + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" onclick="btn_update_ScrewSystem(`' + item.ID + '`,`' + item.Name + '`,`' + item.Width + '`,`' + item.BasicDiameter + '`,`' + item.BehindDiameter + '`,`' + item.MiddleDiameter + '`,`' + item.FrontDiameter + '`,`' + item.Diameter + '`,`' + item.Wings + '`,`' + item.Note + '`)"  title="Sửa" data-toggle="modal" data-target="#model-update-ScrewSystem"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="btn_delete_ScrewSystem(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Width + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.BasicDiameter + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.BehindDiameter + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.MiddleDiameter + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.FrontDiameter + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Diameter + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Wings + '</span></p></td>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tablecontentChanVit').html(tablechild);
                    $('#table_chanvit').html(tabletext);
                    console.log(linkapi + "screw_system?imo=" + Ship_ID);
                    loadTable('table_chanvit');
                    $('#table_chanvit_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addScrewSystem" onclick="btn_addScrewSystem()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-ScrewSystem"><span class="glyphicon glyphicon-plus-sign"></span> Thêm hệ trục chân vịt</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`contentChanVit`,`Thông tin hệ thống chân vịt tàu ' + shipName + '`)" >Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwChanVit" onclick="In_Content(`contentChanVit`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>');
                    $('#table_chanvit_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.

                    $('#loader').addClass('hidden');
                    $('#model-edit-user').addClass('hidden');
                },
            });
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    var strdonvi = data.Flotilla.Name;
                    strdonvi = strdonvi.slice(0, 2) + '<u>' + strdonvi.slice(2, strdonvi.length - 2) + '</u>' + strdonvi.slice(strdonvi.length - 2);
                    console.log(strdonvi);
                    $('#donviChanVit').html(strdonvi);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            var date = new Date();
            $('#sp-dayChanVit').html(date.getDate());
            $('#sp-monthChanVit').html(Number(date.getMonth()) + 1);
            $('#sp-yearChanVit').html(date.getFullYear());
            
        };
        function btn_addScrewSystem() {
            $('#uScrewSystemID').val();
            $("#uScrewSystemName").val();
            $("#uScrewSystemWidth").val();
            $("#uScrewSystemBasicDiameter").val();
            $("#uScrewSystemBehindDiameter").val();
            $("#uScrewSystemMiddleDiameter").val();
            $("#uScrewSystemFrontDiameter").val();
            $("#uScrewSystemDiameter").val();
            $("#uScrewSystemWings").val();
            $("#uScrewSystemNote").val();
        }
        function Add_ScrewSystem() {

            var ScrewSystem = {
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                Name: $("#aScrewSystemName").val(),
                Width: $("#aScrewSystemWidth").val(),
                BasicDiameter: $("#aScrewSystemBasicDiameter").val(),
                BehindDiameter: $("#aScrewSystemBehindDiameter").val(),
                MiddleDiameter: $("#aScrewSystemMiddleDiameter").val(),
                FrontDiameter: $("#aScrewSystemFrontDiameter").val(),
                Diameter: $("#aScrewSystemDiameter").val(),
                ID: "",
                IMO: "",
                Note: $("#aScrewSystemNote").val(),
                Wings: $("#aScrewSystemWings").val()
            };
            console.log(ScrewSystem);
            $.ajax({
                type: "POST",
                url: linkapi + "insert_screw",
                dataType: "json",
                data: JSON.stringify(ScrewSystem),
                contentType: "application/json",

                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    toastSuccess("Thành công", "Thêm hệ trục chân vịt thành công.");
                    $('#model-add-ScrewSystem').modal("hide");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    toastError("Thất bại", "Thêm không thành công.");
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_update_ScrewSystem(ID, Name, Width, BasicDiameter, BehindDiameter, MiddleDiameter, FrontDiameter, Diameter, Wings, Note) {
            debugger
            $('#uScrewSystemID').val(ID);
            $("#uScrewSystemName").val(Name);
            $("#uScrewSystemWidth").val(Width);
            $("#uScrewSystemBasicDiameter").val(BasicDiameter);
            $("#uScrewSystemBehindDiameter").val(BehindDiameter);
            $("#uScrewSystemMiddleDiameter").val(MiddleDiameter);
            $("#uScrewSystemFrontDiameter").val(FrontDiameter);
            $("#uScrewSystemDiameter").val(Diameter);
            $("#uScrewSystemWings").val(Wings);
            $("#uScrewSystemNote").val(Note);
        }

        function Update_ScrewSystem() {
            var New_ScrewSystem = {
                ID: $('#uScrewSystemID').val(),
                Name: $("#uScrewSystemName").val(),
                Width: $("#uScrewSystemWidth").val(),
                BasicDiameter: $("#uScrewSystemBasicDiameter").val(),
                BehindDiameter: $("#uScrewSystemBehindDiameter").val(),
                MiddleDiameter: $("#uScrewSystemMiddleDiameter").val(),
                FrontDiameter: $("#uScrewSystemFrontDiameter").val(),
                Diameter: $("#uScrewSystemDiameter").val(),
                Wings: $("#uScrewSystemWings").val(),
                Note: $("#uScrewSystemNote").val(),
                Ship: {
                    ID: Ship_ID,
                },
            };
            debugger
            $.ajax({
                type: "PUT",
                url: linkapi + "update_screw",
                dataType: "json",
                data: JSON.stringify(New_ScrewSystem),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thông tin hệ thống chân vịt thành công.");
                    $('#model-update-ScrewSystem').modal("hide");
                    Load_Equiment();
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
        function btn_delete_ScrewSystem(ID) {
            let text = "Bạn có chắc muốn xóa hệ trục chân vịt này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_screw?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Xóa hệ trục chân vịt thành công.");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa hệ trục chân vịt không thành công");
                })
            } else {

            }
        }
        // ===================================== SECONDARY_ENGINE ========================================
        function loadDataList_Secondary_Engine(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "secondary_engines?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>ĐỘNG CƠ DIESEL</th><th>NĂM SẢN XUẤT</th><th>XUẤT XỨ</th><th>CÔNG SUẤT (KW)</th><th>ĐỊNH MỨC TIÊU THỤ (I/h)</th><th>VÒNG QUAY LỚN NHẤT (V/P)</th><th>MÁY PHÁT ĐIỆN</th><th>NĂM SẢN XUẤT</th><th>XUẤT XỨ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="152" style="width: 114.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">ĐỘNG CƠ DIESEL</span></b></p></td><td width="83" style="width: 62.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">NĂM SX</span></b></p></td><td width="72" style="width: 60.6pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td><td width="85" style="width: 63.8pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b></p></td><td width="95" style="width: 70.9pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SUẤT TIÊU HAO</span></b></p></td><td width="67" style="width: 50.2pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TỐC ĐỘ</span></b></p></td><td width="156" style="width: 117.0pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">MÁY PHÁT ĐIỆN</span></b></p></td><td width="78" style="width: 58.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">NĂM SX</span></b></p></td><td width="78" style="width: 58.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.ProductionYear + "</td><td>" + item.Origin + "</td><td>" + item.Power + "</td><td>" + item.Waste + "</td><td>" + item.Speed + "</td><td>" + item.Machine + "</td><td>" + item.Year + "</td><td>" + item.Origin2 + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_Secondary_Engine(`' + item.ID + '`,`' + item.Name + '`,`' + item.ProductionYear + '`,`' + item.Origin + '`,`' + item.Power + '`,`' + item.Waste + '`,`' + item.Speed + '`,`' + item.Machine + '`,`' + item.Year + '`,`' + item.Origin2 + '`,`' + item.Power2 + '`)" data-toggle="modal" data-target="#model-update-SecondaryEngine"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_SecondaryEngine(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.ProductionYear + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Power + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Waste + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Speed + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Machine + '</span></p></td>';
                        tablechild += '<td width=113 style="width:85.05pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Year + '</span></p></td>';
                        tablechild += '<td width=123 style="width:92.15pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin2 + '</span></p></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tablecontentMayPhu').html(tablechild);
                    $('#table_mayphu').html(tabletext);
                    loadTable('table_mayphu');
                    $('#table_mayphu_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addSecondaryEngine" onclick="btn_addSecondaryEngine()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-SecondaryEngine"><span class="glyphicon glyphicon-plus-sign"></span> Thêm máy phụ</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo </button><ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`contentMayPhu`,`Thông tin máy phụ tàu' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwMayPhu" onclick="In_Content(`contentMayPhu`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>');
                    $('#table_mayphu_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    var strdonvi = data.Flotilla.Name;
                    strdonvi = strdonvi.slice(0, 2) + '<u>' + strdonvi.slice(2, strdonvi.length - 2) + '</u>' + strdonvi.slice(strdonvi.length - 2);
                    console.log(strdonvi);
                    $('#donviMayPhu').html(strdonvi);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            var date = new Date();
            $('#sp-dayMayPhu').html(date.getDate());
            $('#sp-monthMayPhu').html(Number(date.getMonth()) + 1);
            $('#sp-yearMayPhu').html(date.getFullYear());
            $.ajax({
                type: "GET",
                url: linkapi + "ship_overview?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    shipName = data.Ship.Name;
                    $('#shipnameMayPhu').html(shipName);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function Add_SecondaryEngine() {

            var SecondaryEngine = {
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                Name: $("#aSecondaryEngineName").val(),
                ProductionYear: $("#aSecondaryEngineProductionYear").val(),
                Origin: $("#aSecondaryEngineOrigin").val(),
                Voltage: "",
                Intensity: "",
                Power: $("#aSecondaryEnginePower").val(),
                Waste: $("#aSecondaryEngineWaste").val(),
                Speed: $("#aSecondaryEngineSpeed").val(),
                Machine: $("#aSecondaryEngineMachine").val(),
                Year: $("#aSecondaryEngineYear").val(),
                Origin2: $("#aSecondaryEngineOrigin2").val(),
                Power2: $("#aSecondaryEnginePower2").val(),
                Speed2: "",
                Cosphi: "",
                Note: "",
                Time1: "",
                State1: "",
                Time2: "",
                State2: ""
            };
            console.log(SecondaryEngine);
            $.ajax({
                type: "POST",
                url: linkapi + "insert_secondary_engine",
                dataType: "json",
                data: JSON.stringify(SecondaryEngine),
                contentType: "application/json",

                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    toastSuccess("Thành công", "Thêm máy phụ thành công.");
                    $('#model-add-SecondaryEngine').modal("hide");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_update_Secondary_Engine(ID, Name, ProductionYear, Origin, Power, Waste, Speed, Machine, Year, Origin2, Power2) {
            $('#uSecondaryEngineID').val(ID);
            $("#uSecondaryEngineName").val(Name);
            $("#uSecondaryEngineProductionYear").val(ProductionYear);
            $("#uSecondaryEngineOrigin").val(Origin);
            $("#uSecondaryEnginePower").val(Power);
            $("#uSecondaryEngineWaste").val(Waste);
            $("#uSecondaryEngineSpeed").val(Speed);
            $("#uSecondaryEngineMachine").val(Machine);
            $("#uSecondaryEngineYear").val(Year);
            $("#uSecondaryEngineOrigin2").val(Origin2);
            $("#uSecondaryEnginePower2").val(Power2);
        }

        function btn_addSecondaryEngine() {
            $("#aSecondaryEngineName").val();
            $("#aSecondaryEngineProductionYear").val();
            $("#aSecondaryEngineOrigin").val();
            $("#aSecondaryEnginePower").val();
            $("#aSecondaryEngineWaste").val();
            $("#aSecondaryEngineSpeed").val();
            $("#aSecondaryEngineMachine").val();
            $("#aSecondaryEngineYear").val();
            $("#aSecondaryEngineOrigin2").val();
            $("#aSecondaryEnginePower2").val();
        }

        function Update_SecondaryEngine() {
            var SecondaryEngine = {
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                ID: $("#uSecondaryEngineID").val(),
                Name: $("#uSecondaryEngineName").val(),
                ProductionYear: $("#uSecondaryEngineProductionYear").val(),
                Origin: $("#uSecondaryEngineOrigin").val(),
                Power: $("#uSecondaryEnginePower").val(),
                Waste: $("#uSecondaryEngineWaste").val(),
                Speed: $("#uSecondaryEngineSpeed").val(),
                Machine: $("#uSecondaryEngineMachine").val(),
                Year: $("#uSecondaryEngineYear").val(),
                Origin2: $("#uSecondaryEngineOrigin2").val(),
                Power2: $("#uSecondaryEnginePower2").val(),
                Voltage: "",
                Intensity: "",
                Speed2: "",
                Cosphi: "",
                Note: "",
                Time1: "",
                State1: "",
                Time2: "",
                State2: ""
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_secondary_engine",
                dataType: "json",
                data: JSON.stringify(SecondaryEngine),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thông tin máy phụ thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-SecondaryEngine').modal("hide");

                },
            });
        }

        function btn_delete_SecondaryEngine(ID) {
            let text = "Bạn có chắc muốn xóa máy phụ này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_secondary_engine/?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Xóa máy phụ thành công.");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa máy phụ không thành công");
                })
            } else {

            }
        }
        // ===================================== WeaponMarine========================================
        function loadDataList_WeaponMarine(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "ship_detail?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    var strdonvi = data.Flotilla.Name;
                    strdonvi = strdonvi.slice(0, 2) + '<u>' + strdonvi.slice(2, strdonvi.length - 2) + '</u>' + strdonvi.slice(strdonvi.length - 2);
                    console.log(strdonvi);
                    $('#donviKhiTai').html(strdonvi);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            var date = new Date();
            $('#sp-dayKhiTai').html(date.getDate());
            $('#sp-monthKhiTai').html(Number(date.getMonth()) + 1);
            $('#sp-yearKhiTai').html(date.getFullYear());
            $.ajax({
                type: "GET",
                url: linkapi + "ship_overview?id=" + Ship_ID,
                dataType: "json",
                success: function (data) {
                    shipName = data.Ship.Name;
                    $('#shipnameKhiTai').html(shipName);
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
            $.ajax({
                type: "GET",
                url: linkapi + "weapon_marines?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>LOẠI TRANG BỊ</th><th>KÍ MÃ HIỆU</th><th>SỐ LƯỢNG</th><th>XUẤT XỨ</th><th>CÔNG XUẤT</th><th>TÍNH NĂNG NGẮN GỌN</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var tablechild = '<tr style="height: 46.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">STT</span></b></p></td><td width="212" style="width: 159.35pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">LOẠI KHÍ TÀI</span></b></p></td><td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">KÍ HIỆU MÃ</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">SỐ LƯỢNG</span></b></p></td><td width="102" style="width: 76.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">XUẤT XỨ</span></b></p></td><td width="96" style="width: 1.0in; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">CÔNG SUẤT</span></b></p></td><td width="258" style="width: 193.5pt; border: solid windowtext 1.0pt; border-left: none; padding: 0in 5.4pt 0in 5.4pt; height: 46.1pt"><p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal"><b><span style="font-size: 12.0pt">TÍNH NĂNG</span></b></p></td></tr>';
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Type + "</td><td>" + item.Quantity + "</td><td>" + item.Origin + "</td><td>" + item.Power + "</td><td>" + item.Function + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_WeaponMarine(`' + item.ID + '`,`' + item.Name + '`,`' + item.Type + '`,`' + item.Quantity + '`,`' + item.Origin + '`,`' + item.Power + '`,`' + item.Function + '`)" data-toggle="modal" data-target="#model-update-WeaponMarine"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_WeaponMarine(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        tablechild += '<tr style="height:24.1pt"><td width="57" style="width: 42.6pt; border: solid windowtext 1.0pt; border-top: none; padding: 0in 5.4pt 0in 5.4pt; height: 24.1pt">'
                            + '<p class="MsoNormal" align="center" style="margin-top: 0in; text-align: center; text-indent: 0in; line-height: normal">'
                            + '<span style="font-size: 12.0pt">' + i + '</span></p></td>';
                        tablechild += '<td width=189 style="width:141.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Name + '</span></p></td>';
                        tablechild += '<td width=94 style="width:70.85pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Type + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Quantity + '</span></p>';
                        tablechild += '<td width=85 style="width:63.8pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Origin + '</span></p></td>';
                        tablechild += '<td width=95 style="width:70.9pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Power + '</span></p></td>';
                        tablechild += '<td width=85 style="width:63.75pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.1pt"><p class=MsoNormal align=center style="margin-top:0in;text-align:center;text-indent:0in;line-height:normal"><span style="font-size:12.0pt">' + item.Function + '</span></p></td>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#tablecontentKhiTai').html(tablechild);
                    $('#table_khitai').html(tabletext);
                    loadTable('table_khitai');
                    $('#table_khitai_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addWeaponMarine" onclick="btn_addWeaponMarine()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-WeaponMarine"><span class="glyphicon glyphicon-plus-sign"></span> Thêm khí tài, hàng hóa</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`contentKhiTai`,`Thông tin khí tài, hàng hóa tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwKhiTai" onclick="In_Content(`contentKhiTai`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>');
                    $('#table_khitai_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }
        function btn_addWeaponMarine() {
            $('#add_WeaponMarine_LoaiTB').val();
            $('#add_WeaponMarine_KiMaHieu').val();
            $('#add_WeaponMarine_SoLuong').val();
            $('#add_WeaponMarine_XuatXu').val();
            $('#add_WeaponMarine_CongXuat').val();
            $('#add_WeaponMarine_TinhNang').val();
        }
        function Add_WeaponMarine() {
            var New_WeaponMarine = {
                Ship: {
                    ID: Ship_ID
                },
                Name: $("#add_WeaponMarine_LoaiTB").val(),
                Type: $("#add_WeaponMarine_KiMaHieu").val(),
                Quantity: $("#add_WeaponMarine_SoLuong").val(),
                Origin: $("#add_WeaponMarine_XuatXu").val(),
                Power: $("#add_WeaponMarine_CongSuat").val(),
                Function: $("#add_WeaponMarine_TinhNang").val(),
            };
            $.ajax({
                type: "POST",
                url: linkapi + "insert_weapon",
                dataType: "json",
                data: JSON.stringify(New_WeaponMarine),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Thêm khí tài, hàng hóa thành công.");
                    $('#model-add-WeaponMarine').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_update_WeaponMarine(ID, Name, Type, Quantity, Origin, Power, Function) {
            $('#update_WeaponMarine_ID').val(ID);
            $('#update_WeaponMarine_LoaiTB').val(Name);
            $('#update_WeaponMarine_KiMaHieu').val(Type);
            $('#update_WeaponMarine_SoLuong').val(Quantity);
            $('#update_WeaponMarine_XuatXu').val(Origin);
            $('#update_WeaponMarine_CongSuat').val(Power);
            $('#update_WeaponMarine_TinhNang').val(Function);
        }

        function Update_WeaponMarinet() {
            var New_WeaponMarinet = {
                Ship: {
                    ID: Ship_ID
                },
                ID: $("#update_WeaponMarine_ID").val(),
                Name: $("#update_WeaponMarine_LoaiTB").val(),
                Type: $("#update_WeaponMarine_KiMaHieu").val(),
                Quantity: $("#update_WeaponMarine_SoLuong").val(),
                Origin: $("#update_WeaponMarine_XuatXu").val(),
                Power: $("#update_WeaponMarine_CongSuat").val(),
                Function: $("#update_WeaponMarine_TinhNang").val(),
            };
            debugger
            $.ajax({
                type: "PUT",
                url: linkapi + "update_weapon",
                dataType: "json",
                data: JSON.stringify(New_WeaponMarinet),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật khí tài, hàng hóa thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-WeaponMarine').modal("hide");
                },
            });
        }
        function btn_delete_WeaponMarine(ID) {
            let text = "Bạn có chắc muốn xóa khí tài, hàng hóa này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_weapon?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa khí tài, hàng hóa thành công.");
                    Load_Equiment(Ship_ID);
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa khí tài, hàng hóa không thành công");
                })
            } else {

            }
        }

        // =====================================MotoBoat ========================================
        function loadDataList_MotoBoat(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "moto_boats?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>TÊN</th><th>SỐ THUYỀN VIÊN MAX</th><th>DÀI (m)</th><th>RỘNG (m)</th><th>TỐC ĐỘ TỐI ĐA (m)</th><th>TẢI TRỌNG (tấn)</th><th>KIỂU CHÂN VỊT</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Name + "</td><td>" + item.Personel + "</td><td>" + item.Height + "</td><td>" + item.Width + "</td><td>" + item.Speed + "</td><td>" + item.Width + "</td><td>" + item.ScrewType + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_MotoBoat(`' + item.ID + '`,`' + item.Name + '`,`' + item.Personel + '`,`' + item.EngineType + '`,`' + item.EngineNumber + '`,`' + item.ScrewType + '`,`' + item.ScrewNumber + '`,`' + item.Note + '`,`' + item.Width + '`,`' + item.Height + '`,`' + item.Deep + '`,`' + item.Speed + '`,`' + item.Weight + '`)" data-toggle="modal" data-target="#model-update-MotoBoat"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_MotoBoat(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_xuongct').html(tabletext);
                    loadTable('table_xuongct');
                    $('#table_xuongct_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addMotoBoat" onclick="btn_addMotoBoat()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-MotoBoat"><span class="glyphicon glyphicon-plus-sign"></span> Thêm xuồng công tác</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`content`,`Thông tin xuồng công tác tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwXuongCT" onclick="In_Content(`contentXuongCT`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>')
                    $('#table_xuongct_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function btn_addMotoBoat() {
            $('#add_MotoBoat_Ten').val("");
            $('#add_MotoBoat_SoTV').val("");
            $('#add_MotoBoat_Dai').val("");
            $('#add_MotoBoat_Rong').val("");
            $('#add_MotoBoat_MonNuoc').val("");
            $('#add_MotoBoat_TocDoMax').val("");
            $('#add_MotoBoat_TaiTrong').val("");
            $('#add_MotoBoat_MayXuong').val("");
            $('#add_MotoBoat_SLMayXuong').val("");
            $('#add_MotoBoat_KieuChanVit').val("");
            $('#add_MotoBoat_SoTrucChanVit').val("");
            $('#add_MotoBoat_GhiChu').val("");
        }

        function Add_MotoBoat() {
            debugger
            var New_MotoBoat = {
                Ship: {
                    ID: Ship_ID
                },
                Name: $('#add_MotoBoat_Ten').val(),
                Personel: $('#add_MotoBoat_SoTV').val(),
                EngineType: $('#add_MotoBoat_MayXuong').val(),
                EngineNumber: $('#add_MotoBoat_SLMayXuong').val(),
                ScrewType: $('#add_MotoBoat_KieuChanVit').val(),
                ScrewNumber: $('#add_MotoBoat_SoTrucChanVit').val(),
                Note: $('#add_MotoBoat_GhiChu').val(),
                Width: $('#add_MotoBoat_Rong').val(),
                Height: $('#add_MotoBoat_Dai').val(),
                Deep: $('#add_MotoBoat_MonNuoc').val(),
                Speed: $('#add_MotoBoat_TocDoMax').val(),
                Weight: $('#add_MotoBoat_TaiTrong').val()
            };
            $.ajax({
                type: "POST",
                url: linkapi + "insert_moto_boat",
                dataType: "json",
                data: JSON.stringify(New_MotoBoat),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Thêm máy xuồng thành công.");
                    $('#model-add-MotoBoat').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
        function btn_update_MotoBoat(ID, Name, Personel, EngineType, EngineNumber, ScrewType, ScrewNumber, Note, Width, Height, Deep, Speed, Weight) {
            $('#update_MotoBoat_ID').val(ID);
            $('#update_MotoBoat_Ten').val(Name);
            $('#update_MotoBoat_SoTV').val(Personel);
            $('#update_MotoBoat_Dai').val(Height);
            $('#update_MotoBoat_Rong').val(Width);
            $('#update_MotoBoat_MonNuoc').val(Deep);
            $('#update_MotoBoat_TocDoMax').val(Speed);
            $('#update_MotoBoat_TaiTrong').val(Weight);
            $('#update_MotoBoat_MayXuong').val(EngineType);
            $('#update_MotoBoat_SLMayXuong').val(EngineNumber);
            $('#update_MotoBoat_KieuChanVit').val(ScrewType);
            $('#update_MotoBoat_SoTrucChanVit').val(ScrewNumber);
            $('#update_MotoBoat_GhiChu').val(Note);
        }

        function Update_MotoBoat() {
            debugger
            var New_MotoBoat = {
                Ship: {
                    ID: Ship_ID
                },
                ID: $('#update_MotoBoat_ID').val(),
                Name: $('#update_MotoBoat_Ten').val(),
                Personel: $('#update_MotoBoat_SoTV').val(),
                EngineType: $('#update_MotoBoat_MayXuong').val(),
                EngineNumber: $('#update_MotoBoat_SLMayXuong').val(),
                ScrewType: $('#update_MotoBoat_KieuChanVit').val(),
                ScrewNumber: $('#update_MotoBoat_SoTrucChanVit').val(),
                Note: $('#update_MotoBoat_GhiChu').val(),
                Width: $('#update_MotoBoat_Rong').val(),
                Height: $('#update_MotoBoat_Dai').val(),
                Deep: $('#update_MotoBoat_MonNuoc').val(),
                Speed: $('#update_MotoBoat_TocDoMax').val(),
                Weight: $('#update_MotoBoat_TaiTrong').val()
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_moto_boat",
                dataType: "json",
                data: JSON.stringify(New_MotoBoat),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật xuồng công tác thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-MotoBoat').modal("hide");
                },
            });
        }

        function btn_delete_MotoBoat(ID) {
            let text = "Bạn có chắc muốn xóa xuồng công tác này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_moto_boat?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa xuồng công tác thành công.");
                    Load_Equiment(Ship_ID);
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa xuồng công tác không thành công");
                })
            } else {

            }
        }
        // ===================================== Anchor ============================================
        function loadDataList_Anchor(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "anchor?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext_Neo = "<thead><tr><th>STT</th><th>KIỂU NEO</th><th>TRỌNG LƯỢNG NEO (tấn)</th><th>SỐ LƯỢNG</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext_Neo += "<tr><td>" + i + "</td><td>" + item.Type + "</td><td>" + item.Load + "</td><td>" + item.Quantity + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_Neo(`' + item.ID + '`,`' + item.Type + '`,`' + item.Load + '`,`' + item.Quantity + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-Neo"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_Neo(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });

                    tabletext_Neo += "</tbody>";
                    $('#table_neo').html(tabletext_Neo);
                    loadTable('table_neo');
                    $('#table_neo_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addNeo" onclick="btn_addNeo()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-Neo"><span class="glyphicon glyphicon-plus-sign"></span> Thêm neo</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`content`,`Thông tin neo tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwNeo" onclick="In_Content(`contentNeo`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>')
                    $('#table_neo_wrapper .row').first().next().children().css("overflow-x", "auto");

                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function btn_addNeo() {
            $('#add_Neo_Kieu').val('');
            $('#add_Neo_TrongLuong').val('');
            $('#add_Neo_SoLuong').val('');
            $('#add_Neo_GhiChu').val('');
        }
        function Add_Neo() {
            var new_Neo = {
                Ship: {
                    ID: Ship_ID
                },
                Type: $("#add_Neo_Kieu").val(),
                Load: $("#add_Neo_TrongLuong").val(),
                Quantity: $("#add_Neo_SoLuong").val(),
                Note: $("#add_Neo_GhiChu").val(),
            };
            console.log(new_Neo);
            $.ajax({
                type: "POST",
                url: linkapi + "insert_anchor",
                dataType: "json",
                data: JSON.stringify(new_Neo),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Thêm neo thành công.");
                    $('#model-add-Neo').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
        function btn_update_Neo(ID, Type, Load, Quantity, Note) {

            $('#update_Neo_Id').val(ID);
            $('#update_Neo_Kieu').val(Type);
            $('#update_Neo_TrongLuong').val(Load);
            $('#update_Neo_SoLuong').val(Quantity);
            $('#update_Neo_GhiChu').val(Note);
        }
        function Update_Neo() {
            debugger
            var New_Neo = {
                Ship: {
                    ID: Ship_ID
                },
                ID: $('#update_Neo_Id').val(),
                Type: $('#update_Neo_Kieu').val(),
                Load: $('#update_Neo_TrongLuong').val(),
                Quantity: $('#update_Neo_SoLuong').val(),
                Note: $('#update_Neo_GhiChu').val()
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_anchor",
                dataType: "json",
                data: JSON.stringify(New_Neo),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật neo thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-Neo').modal("hide");
                },
            });
        }
        function btn_delete_Neo(ID) {
            let text = "Bạn có chắc muốn xóa neo này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_anchor?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa neo thành công.");
                    Load_Equiment(Ship_ID);
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa neo không thành công");
                })
            } else {

            }
        }
        // ===================================== Winch ============================================
        function loadDataList_Winch(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "winches?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext_ToiNeo = "<thead><tr><th>STT</th><th>KIỂU TỜI NEO</th><th>TRỌNG TẢI (tấn)</th><th>SỐ LƯỢNG</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext_ToiNeo += "<tr><td>" + i + "</td><td>" + item.Type + "</td><td>" + item.Weight + "</td><td>" + item.Quantity + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_ToiNeo(`' + item.ID + '`,`' + item.Type + '`,`' + item.Weight + '`,`' + item.Quantity + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-ToiNeo"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_ToiNeo(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext_ToiNeo += "</tbody>";

                    $('#table_toineo').html(tabletext_ToiNeo);
                    loadTable('table_toineo');
                    $('#table_toineo_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addToiNeo" onclick="btn_addToiNeo()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-ToiNeo"><span class="glyphicon glyphicon-plus-sign"></span> Thêm tời neo</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`content`,`Thông tin tời neo tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwToiNeo" onclick="In_Content(`contentToiNeo`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>')
                    $('#table_toineo_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function btn_addToiNeo() {
            $('#add_ToiNeo_Kieu').val('');
            $('#add_ToiNeo_TrongTai').val('');
            $('#add_ToiNeo_SoLuong').val('');
            $('#add_ToiNeo_GhiChu').val('');
        }
        function Add_ToiNeo() {
            var new_ToiNeo = {
                Ship: {
                    ID: Ship_ID
                },
                Type: $("#add_ToiNeo_Kieu").val(),
                Weight: $("#add_ToiNeo_TrongTai").val(),
                Quantity: $("#add_ToiNeo_SoLuong").val(),
                Note: $("#add_ToiNeo_GhiChu").val(),
            };
            console.log(new_ToiNeo);
            $.ajax({
                type: "POST",
                url: linkapi + "insert_winch",
                dataType: "json",
                data: JSON.stringify(new_ToiNeo),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Thêm tời neo thành công.");
                    $('#model-add-ToiNeo').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
        function btn_update_ToiNeo(ID, Type, Weight, Quantity, Note) {

            $('#update_ToiNeo_Id').val(ID);
            $('#update_ToiNeo_Kieu').val(Type);
            $('#update_ToiNeo_TrongTai').val(Weight);
            $('#update_ToiNeo_SoLuong').val(Quantity);
            $('#update_ToiNeo_GhiChu').val(Note);
        }
        function Update_ToiNeo() {
            debugger
            var New_ToiNeo = {
                Ship: {
                    ID: Ship_ID
                },
                ID: $('#update_ToiNeo_Id').val(),
                Type: $('#update_ToiNeo_Kieu').val(),
                Weight: $('#update_ToiNeo_TrongTai').val(),
                Quantity: $('#update_ToiNeo_SoLuong').val(),
                Note: $('#update_ToiNeo_GhiChu').val()
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_winch",
                dataType: "json",
                data: JSON.stringify(New_ToiNeo),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật tời neo thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-ToiNeo').modal("hide");
                },
            });
        }
        function btn_delete_ToiNeo(ID) {
            let text = "Bạn có chắc muốn xóa tời neo này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_winch?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa tời neo thành công.");
                    Load_Equiment(Ship_ID);
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa tời neo không thành công");
                })
            } else {

            }
        }
        // ===================================== Chain ============================================
        function loadDataList_Chain(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "chains?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext_XichNeo = "<thead><tr><th>STT</th><th>KIỂU XÍCH NEO</th><th>CHIỀU DÀI XÍCH NEO (m)</th><th>ĐƯỜNG KÍNH XÍCH NEO (mm)</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext_XichNeo += "<tr><td>" + i + "</td><td>" + item.Type + "</td><td>" + item.Width + "</td><td>" + item.Diameter + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_XichNeo(`' + item.ID + '`,`' + item.Type + '`,`' + item.Width + '`,`' + item.Diameter + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-XichNeo"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_XichNeo(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext_XichNeo += "</tbody>";

                    $('#table_xichneo').html(tabletext_XichNeo);
                    loadTable('table_xichneo');
                    $('#table_xichneo_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addXichNeo" onclick="btn_addXichNeo()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-XichNeo"><span class="glyphicon glyphicon-plus-sign"></span> Thêm xích neo</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`content`,`Thông tin xích neo tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwXichNeo" onclick="In_Content(`contentXichNeo`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>')
                    $('#table_xichneo_wrapper .row').first().next().children().css("overflow-x", "auto");

                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function btn_addXichNeo() {
            $('#add_XichNeo_Kieu').val('');
            $('#add_XichNeo_ChieuDai').val('');
            $('#add_XichNeo_DuongKinh').val('');
            $('#add_XichNeo_GhiChu').val('');
        }
        function Add_XichNeo() {
            var new_XichNeo = {
                Ship: {
                    ID: Ship_ID
                },
                Type: $("#add_XichNeo_Kieu").val(),
                Width: $("#add_XichNeo_ChieuDai").val(),
                Diameter: $("#add_XichNeo_DuongKinh").val(),
                Note: $("#add_XichNeo_GhiChu").val(),
            };
            console.log(new_XichNeo);
            $.ajax({
                type: "POST",
                url: linkapi + "insert_chain",
                dataType: "json",
                data: JSON.stringify(new_XichNeo),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Thêm xích neo thành công.");
                    $('#model-add-XichNeo').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
        function btn_update_XichNeo(ID, Type, Width, Diameter, Note) {

            $('#update_XichNeo_Id').val(ID);
            $('#update_XichNeo_Kieu').val(Type);
            $('#update_XichNeo_ChieuDai').val(Width);
            $('#update_XichNeo_DuongKinh').val(Diameter);
            $('#update_XichNeo_GhiChu').val(Note);
        }
        function Update_XichNeo() {
            debugger
            var New_XichNeo = {
                Ship: {
                    ID: Ship_ID
                },
                ID: $('#update_XichNeo_Id').val(),
                Type: $('#update_XichNeo_Kieu').val(),
                Width: $('#update_XichNeo_ChieuDai').val(),
                Diameter: $('#update_XichNeo_DuongKinh').val(),
                Note: $('#update_XichNeo_GhiChu').val()
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_chain",
                dataType: "json",
                data: JSON.stringify(New_XichNeo),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật xích neo thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-XichNeo').modal("hide");
                },
            });
        }
        function btn_delete_XichNeo(ID) {
            let text = "Bạn có chắc muốn xóa xích neo này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_chain?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa xích neo thành công.");
                    Load_Equiment(Ship_ID);
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa xích neo không thành công");
                })
            } else {

            }
        }
        // ===================================== LifeSaving ========================================


        function loadDataList_LifeSaving(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "lifesavings?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>LOẠI TRANG BỊ</th><th>XUẤT XỨ</th><th>TÌNH TRẠNG</th><th>SỐ LƯỢNG</th><th>ĐƠN VỊ TÍNH</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Type + "</td><td>" + item.Origin + "</td><td>" + item.State + "</td><td>" + item.Quantity + "</td><td>" + item.Unit + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_LifeSaving(`' + item.ID + '`,`' + item.Type + '`,`' + item.Origin + '`,`' + item.State + '`,`' + item.Quantity + '`,`' + item.Unit + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-LifeSaving"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_LifeSaving(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_tbcuusinh').html(tabletext);
                    loadTable('table_tbcuusinh');
                    $('#table_tbcuusinh_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addLifeSaving" onclick="btn_addLifeSaving()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-LifeSaving"><span class="glyphicon glyphicon-plus-sign"></span> Thêm trang bị cứu sinh</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`content`,`Thông tin trang bị cứu sinh tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwTBCuuSinh" onclick="In_Content(`contentTBCuuSinh`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>')
                    $('#table_tbcuusinh_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function btn_addLifeSaving() {
            $('#add_LifeSaving_LoaiTB').val('');
            $('#add_LifeSaving_XuatXu').val('');
            $('#add_LifeSaving_TinhTrang').val('');
            $('#add_LifeSaving_SoLuong').val('');
            $('#add_LifeSaving_DonViTinh').val('');
            $('#add_LifeSaving_GhiChu').val('');
        }
        function Add_LifeSaving() {
            var new_LifeSaving = {
                Ship: {
                    ID: Ship_ID
                },
                Type: $("#add_LifeSaving_LoaiTB").val(),
                Origin: $("#add_LifeSaving_XuatXu").val(),
                State: $("#add_LifeSaving_TinhTrang").val(),
                Quantity: $("#add_LifeSaving_SoLuong").val(),
                Unit: $("#add_LifeSaving_DonViTinh").val(),
                Note: $("#add_LifeSaving_GhiChu").val(),
            };
            $.ajax({
                type: "POST",
                url: linkapi + "insert_lifesaving",
                dataType: "json",
                data: JSON.stringify(new_LifeSaving),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Thêm trang bị cứu sinh thành công.");
                    $('#model-add-LifeSaving').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }
        function btn_update_LifeSaving(ID, Type, Origin, State, Quantity, Unit, Note) {
            $('#update_LifeSaving_ID').val(ID);
            $('#update_LifeSaving_LoaiTB').val(Type);
            $('#update_LifeSaving_XuatXu').val(Origin);
            $('#update_LifeSaving_TinhTrang').val(State);
            $('#update_LifeSaving_SoLuong').val(Quantity);
            $('#update_LifeSaving_DonViTinh').val(Unit);
            $('#update_LifeSaving_GhiChu').val(Note);
        }
        function Update_LifeSaving() {
            var new_lifesaving = {
                Ship: {
                    ID: Ship_ID
                },
                Type: $("#update_LifeSaving_LoaiTB").val(),
                Origin: $("#update_LifeSaving_XuatXu").val(),
                State: $("#update_LifeSaving_TinhTrang").val(),
                Quantity: $("#update_LifeSaving_SoLuong").val(),
                Unit: $("#update_LifeSaving_DonViTinh").val(),
                Note: $("#update_LifeSaving_GhiChu").val(),
                ID: $("#update_LifeSaving_ID").val(),
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_lifesaving",
                dataType: "json",
                data: JSON.stringify(new_lifesaving),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thiết bị cứu sinh thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-LifeSaving').modal("hide");
                },
            });
        }

        function btn_delete_LifeSaving(ID) {
            let text = "Bạn có chắc muốn xóa thiết bị cứu sinh này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_lifesaving?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa thiết bị cứu sinh thành công.");
                    Load_Equiment(Ship_ID);
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thiết bị cứu sinh không thành công");
                })
            } else {

            }
        }
        // ===================================== OtherEquipment ========================================
        function loadDataList_Other_Equipment(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "other_equipments?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>LOẠI TRANG BỊ</th><th>XUẤT XỨ</th><th>TÌNH TRẠNG</th><th>SỐ LƯỢNG</th><th>ĐƠN VỊ TÍNH</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Type + "</td><td>" + item.Origin + "</td><td>" + item.State + "</td><td>" + item.Quantity + "</td><td>" + item.Unit + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_OtherEquipment(`' + item.ID + '`,`' + item.Type + '`,`' + item.Origin + '`,`' + item.State + '`,`' + item.Quantity + '`,`' + item.Unit + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-OtherEquipment"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa"onclick="btn_delete_OtherEquipment(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_tbkhac').html(tabletext);
                    loadTable('table_tbkhac');
                    $('#table_tbkhac_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addOtherEquipment" onclick="btn_addOtherEquipment()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-OtherEquipment"><span class="glyphicon glyphicon-plus-sign"></span> Thêm trang bị khác</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`content`,`Thông tin trang bị khác tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwTBKhac" onclick="In_Content(`contentTBKhac`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>')
                    $('#table_tbkhac_wrapper .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function Add_OtherEquipment() {
            var OtherEquipment = {
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                Type: $("#aOtherEquipmentType").val(),
                Origin: $("#aOtherEquipmentOrigin").val(),
                State: $("#aOtherEquipmentState").val(),
                Quantity: $("#aOtherEquipmentQuantity").val(),
                Unit: $("#aOtherEquipmentUnit").val(),
                Note: $("#aOtherEquipmentNote").val(),
            };
            $.ajax({
                type: "POST",
                url: linkapi + "insert_equipment",
                dataType: "json",
                data: JSON.stringify(OtherEquipment),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    Load_Equiment(Ship_ID);
                    toastSuccess("Thành công", "Thêm trang bị thành công.");
                    $('#model-add-OtherEquipment').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_update_OtherEquipment(ID, Type, Origin, State, Quantity, Unit, Note) {
            $('#uOtherEquipmentID').val(ID);
            $('#uOtherEquipmentType').val(Type);
            $('#uOtherEquipmentOrigin').val(Origin);
            $('#uOtherEquipmentState').val(State);
            $('#uOtherEquipmentQuantity').val(Quantity);
            $('#uOtherEquipmentUnit').val(Unit);
            $('#uOtherEquipmentNote').val(Note);
        }

        function btn_addOtherEquipment() {
            $('#aOtherEquipmentType').val('');
            $('#aOtherEquipmentOrigin').val('');
            $('#aOtherEquipmentState').val('');
            $('#aOtherEquipmentQuantity').val('');
            $('#aOtherEquipmentUnit').val('');
            $('#aOtherEquipmentNote').val('');
        }

        function Update_OtherEquipment() {
            var OtherEquipment = {
                Ship: {
                    ID: Ship_ID
                },
                Type: $("#uOtherEquipmentType").val(),
                Origin: $("#uOtherEquipmentOrigin").val(),
                State: $("#uOtherEquipmentState").val(),
                Quantity: $("#uOtherEquipmentQuantity").val(),
                Unit: $("#uOtherEquipmentUnit").val(),
                Note: $("#uOtherEquipmentNote").val(),
                ID: $("#uOtherEquipmentID").val(),
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_equipment",
                dataType: "json",
                data: JSON.stringify(OtherEquipment),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thông tin trang bị thành công.");
                    Load_Equiment(Ship_ID);
                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-OtherEquipment').modal("hide");
                },
            });
        }

        function btn_delete_OtherEquipment(ID) {
            let text = "Bạn có chắc muốn xóa trang bị này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_equipment/?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa trang bị thành công.");
                    Load_Equiment(Ship_ID);
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa trang bị không thành công");
                })
            } else {

            }
        }

        // ===================================== Supplies ========================================
        function loadDataList_Supply(ship_ID) {
            $.ajax({
                type: "GET",
                url: linkapi + "supplies?imo=" + ship_ID,
                dataType: "json",
                success: function (data) {
                    var tabletext = "<thead><tr><th>STT</th><th>MÃ VẬT TƯ</th><th>LOẠI TRANG BỊ</th><th>XUẤT XỨ</th><th>TÌNH TRẠNG</th><th>SỐ LƯỢNG</th><th>ĐƠN VỊ TÍNH</th><th>GHI CHÚ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                    var i = 1;
                    $.each(data, function (key, item) {
                        tabletext += "<tr><td>" + i + "</td><td>" + item.Code + "</td><td>" + item.Type + "</td><td>" + item.Origin + "</td><td>" + item.State + "</td><td>" + item.Quantity + "</td><td>" + item.Unit + "</td><td>" + item.Note + '</td>' + '<td><div style="width: max-content;"><a href="#" class="edit" title="Sửa" onclick="btn_update_suply(`' + item.ID + '`,`' + item.Code + '`,`' + item.Type + '`,`' + item.Origin + '`,`' + item.State + '`,`' + item.Quantity + '`,`' + item.Unit + '`,`' + item.Note + '`)" data-toggle="modal" data-target="#model-update-supply"><i class="material-icons">&#xE254;</i></a><a href="#" class="delete" title="Xóa" onclick="btn_delete_supply(`' + item.ID + '`)"><i class="material-icons">&#xE872;</i></a></div></td></tr>';
                        i = i + 1;
                    });
                    tabletext += "</tbody>";
                    $('#table_vattu').html(tabletext);
                    loadTable('table_vattu');
                    $('#table_vattu_wrapper .row .col-sm-12').first().html('<div class="btn-group"><button id="btn_addsuply" onclick="btn_addsuply()" class="btn btn-lg btn-primary mb-3" data-toggle="modal" data-target="#model-add-supply"><span class="glyphicon glyphicon-plus-sign"></span> Thêm vật tư bảo đảm</button><div class="btn-group"><button type="button" class="btn btn-lg btn-primary mb-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="glyphicon glyphicon-file"></span> Xuất báo cáo <ul class="dropdown-menu" role="menu" style=""><li><a href="#" onclick="exportToWord(`content`,`Thông tin vật tư bảo đảm tàu ' + shipName + '`)">Xuất file Word</a></li><li><a href="#">Xuất file Excel</a></li><li><a href="#">Xuất file PDF</a></li></ul></div><button id="prt_etwSupply" onclick="In_Content(`contentSupply`)" class="btn btn-lg btn-primary mb-3"><span class="glyphicon glyphicon-print"></span> In báo cáo</button></div>')
                    $('#table_vattu .row').first().next().children().css("overflow-x", "auto");
                }, error: function (ret) {
                    console.log('errorGET');
                }
            });
        }

        function Add_Supply() {
            var supply = {
                Code: $("#asupplyCode").val(),
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                Type: $("#asupplyType").val(),
                Origin: $("#asupplyOrigin").val(),
                State: $("#asupplyState").val(),
                Quantity: $("#asupplyQuantity").val(),
                Unit: $("#asupplyUnit").val(),
                Note: $("#asupplyNote").val(),
            };
            console.log(supply);
            $.ajax({
                type: "POST",
                url: linkapi + "insert_supply",
                dataType: "json",
                data: JSON.stringify(supply),
                contentType: "application/json",

                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    toastSuccess("Thành công", "Thêm vật tư bảo đảm thành công.");
                    Load_Equiment(Ship_ID);
                    $('#model-add-supply').modal("hide");
                }, error: function (ret) {
                    console.log(ret.responseJSON.Message);
                    toastError("Thất bại", ret.responseJSON.Message);
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                },
            });
        }

        function btn_update_suply(ID, Code, Type, Origin, State, Quantity, Unit, Note) {
            $('#usupplyID').val(ID);
            $('#usupplyCode').val(Code);
            $('#usupplyType').val(Type);
            $('#usupplyOrigin').val(Origin);
            $('#usupplyState').val(State);
            $('#usupplyQuantity').val(Quantity);
            $('#usupplyUnit').val(Unit);
            $('#usupplyNote').val(Note);
        }

        function btn_addsuply() {
            $('#asupplyCode').val('');
            $('#asupplyType').val('');
            $('#asupplyOrigin').val('');
            $('#asupplyState').val('');
            $('#asupplyQuantity').val('');
            $('#asupplyUnit').val('');
            $('#asupplyNote').val('');
        }

        function Update_Supply() {
            var supply = {
                Code: $("#usupplyCode").val(),
                Ship: {
                    ID: getParameterByName('Ship_ID')
                },
                Type: $("#usupplyType").val(),
                Origin: $("#usupplyOrigin").val(),
                State: $("#usupplyState").val(),
                Quantity: $("#usupplyQuantity").val(),
                Unit: $("#usupplyUnit").val(),
                Note: $("#usupplyNote").val(),
                ID: $("#usupplyID").val(),
            };
            $.ajax({
                type: "PUT",
                url: linkapi + "update_supply",
                dataType: "json",
                data: JSON.stringify(supply),
                contentType: "application/json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    $('#loader').removeClass('hidden');
                },
                success: function (data) {
                    console.log("okPUT");
                    toastSuccess("Thành công", "Cập nhật thông tin vật tư bảo đảm thành công.");
                    Load_Equiment(Ship_ID);

                }, error: function (ret) {
                    console.log('errorPUT');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                    $('#loader').addClass('hidden');
                    $('#model-update-supply').modal("hide");
                },
            });
        }

        function btn_delete_supply(ID) {
            let text = "Bạn có chắc muốn xóa vật tư bảo đảm này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "delete_supply/?id=" + ID,
                    type: "DELETE",

                }).done(function (res) {
                    toastSuccess("Thành công", "Xóa vật tư bảo đảm thành công.");
                    Load_Equiment(Ship_ID);
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa vật tư bảo đảm không thành công");
                })
            } else {

            }
        }

        function loadTable(table_id) {
            $('table[id=' + table_id + ']').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    stateSave: true,
                    lengthChange: false,
                    searching: false,
                    "language": {
                        "sProcessing": "Đang xử lý...",
                        "sLengthMenu": "Xem _MENU_ mục",
                        "sZeroRecords": "Không tìm thấy thông tin phù hợp",
                        "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
                        "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
                        "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                        "sInfoPostFix": "",
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

        function exportToWord(element, filename) {
            var preHtml = "<html xmlns:  o='urn:schemas-microsoft-com:office:office' xmlns:w='urn:schemas-microsoft-com:office:word' xmlns='http://www.w3.org/TR/REC-html40'><head><meta charset='utf-8'><title>Export HTML To Doc</title></head><body>";
            var postHtml = "</body></html>";
            var html = preHtml + document.getElementById(element).innerHTML + postHtml;
            var blob = new Blob(['\ufeff', html], {
                type: 'application/msword'
            });
            // Specify link url
            var url = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(html);

            // Specify file name
            filename = filename ? filename + '.doc' : 'document.doc';

            // Create download link element
            var downloadLink = document.createElement("a");

            document.body.appendChild(downloadLink);
            if (navigator.msSaveOrOpenBlob) {
                navigator.msSaveOrOpenBlob(blob, filename);
            } else {
                // Create a link to the file
                downloadLink.href = url;
                // Setting the file name
                downloadLink.download = filename;
                //triggering the function
                downloadLink.click();
            }
            document.body.removeChild(downloadLink);
        }

        function In_Content(strid) {
            var prtContent = document.getElementById(strid);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=800,height=800');
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
        }
    </script>
</asp:Content>
