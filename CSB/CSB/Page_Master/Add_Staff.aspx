<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Add_Staff.aspx.cs" Inherits="CSB.Page_Master.Add_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    </style>
    <div class="main-body">
        <div class="page-wrapper">
            <div class="card">
                <div class="card-header">
                    <h5>THÊM MỚI CÁN BỘ, NHÂN VIÊN TÀU</h5>
                    <div class="page-header-breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Null.aspx" style="font-size: 14px;">Trang chủ</a>
                            </li>
                            <li class="breadcrumb-item"><a href="#" style="font-size: 14px;">Quản lý nhân viên</a>
                            </li>
                            <li class="breadcrumb-item"><a href="Add_Staff.aspx" style="font-size: 14px;">Thêm mới nhân viên</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card-block">
                    <form>
                        <h4 class="sub-title">Thông tin cơ bản</h4>
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Họ và tên <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="add-staffFullName" class="form-control" placeholder="Ví dụ: Nguyễn Văn A" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Năm sinh <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="add-staffBirthYear" class="form-control" placeholder="Ví dụ: 1982" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Quê quán <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="add-staffResidence" class="form-control" placeholder="Ví dụ: Diễn Châu - Nghệ An - Nghệ An" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-md-3 col-form-label">Nhập ngũ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-lg-8 col-md-9">
                                        <input type="text" id="add-staffEnlist" class="form-control" placeholder="Ví dụ: 9/2001" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Thông tin trình độ</h4>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Cấp bậc <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staffRanking" onchange="onchangeCapBac(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Chức vụ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staffPosition" onchange="onchangeChucVu(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Chuyên ngành <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staffMajoring" onchange="onchangeChuyenNganh(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Trình độ <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staffDegree" onchange="onchangeTrinhDo(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Trường đào tạo <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add-staffInstitution" onchange="onchangeTruong(this.value)">
                                            <option selected="" disabled="" value="">Chưa chọn...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Năm tốt nghiệp <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="add-staffGraduation" class="form-control" placeholder="Ví dụ: 2007" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Chuyển đến</h4>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Từ đâu đến <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="add-staffFrom" class="form-control" placeholder="Ví dụ: 9/2001" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Ngày, tháng <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="add-staffFromDate" class="form-control" placeholder="Ví dụ: 2007" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Chuyển đi</h4>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Đi đâu <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="add-staffLeave" class="form-control" placeholder="Ví dụ: 9/2001" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Ngày, tháng <span style="color: red;">(*)</span>: </label>
                                    <div class="col-sm-8">
                                        <input type="text" id="add-staffLeaveDate" class="form-control" placeholder="Ví dụ: 2007" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4 class="sub-title">Thông tin khác</h4>
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="form-group row">
                                    <label class="col-lg-2 col-md-3 col-form-label">Ghi chú : </label>
                                    <div class="col-lg-10 col-md-9">
                                        <input type="text" id="add-staffNote" class="form-control" placeholder="Nhập ghi chú: " required>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-footer">
                            <button type="button" class="btn btn-primary right" onclick="addStaff()">Lưu thông tin</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>

</asp:Content>
