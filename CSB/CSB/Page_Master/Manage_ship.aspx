﻿<%@ Page Title="Quản lý tàu" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_ship.aspx.cs" Inherits="CSB.Page_Master.Manage_ship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/manage_ship.css" rel="stylesheet" />
    <style>
        .panel{
            margin-bottom: 20px;
            background-color: #fff;
        }

        .panel-success{
            border-radius: 4px;
            border: 1px solid #ced4da;
        }
        .panel-heading{
            padding: 5px 15px;

        }
        .panel-title {
            margin-top: 0;
            margin-bottom: 0;
            font-size: 16px;
            color: inherit;
        }
        .pull-left {
            float: left!important;
        }
        .panel-success>.panel-heading {
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
            <div class="col-12">
                <div class="section">
                    <div class="section-header" style="margin-bottom: 2%">
                        <h4 id="title" style="color: black; margin: 0">QUẢN LÝ TÀU - VÙNG 1</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý tàu</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-12">
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

    <div class="modal fade" id="model-infordetail-ship" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document" style="max-width: 70%;">
            <div class="modal-content">
                <div class="card auth_form">
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thông tin chi tiết của tàu</h6>
                    </div>
                    <div class="modal-body">

                        <div class="clearfix ">
                            <div style="display:flex;">
                                <div class="imageupload panel panel-success col-md-6" style="min-height: 300px; padding:0;">
                                    <div class="panel-heading clearfix">
                                        <h3 class="panel-title pull-left">Hình ảnh</h3>
                                    </div>
                                    <div class="file-tab panel-body">
                                        <img class="img-responsive" id="upload_imageproduct" name="Anh"  src="../Image/Ships/Tau1.jpg" style="margin: 8% 2%; height: 200px; max-width: 300px;" />
                                        <label class="btn btn-default btn-file">
                                            <span>Tải lên</span>
                                            <input type="file" name="Anh" id="Anh" onchange="PreviewImage()">
                                        </label>
                                        <%--<button type="button" class="btn btn-dejfault" id="delete" onclick="Xoa()">Xóa</button>--%>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding:0;">
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align:right"><strong>Tên tàu     <span style="color:red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="TenTau" name="TenTau" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align:right"><strong>Số hiệu     <span style="color:red;">(*)</span>: </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="SoHieu" name="SoHieu" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align:right"><strong>Nơi cấp   : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NoiCap" name="NoiCap" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align:right"><strong>Ngày Cấp    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="date" class="form-control" id="NgayCap" name="NgayCap" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align:right"><strong>Năm hạ thủy    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="NamHaThuy" name="NamHaThuy" required value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align:right"><strong>Trọng tải    : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="TrongTai" name="TrongTai" required value=""> 
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: left; padding: 5px" class="col-md-12">
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" style="text-align:right"><strong>Số thuyền viên   : </strong></label>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="SoThuyenVien" name="SoThuyenVien" required value="">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 5px">
                                <div class="form-group">
                                    <label class="col-md-4 control-label" style="text-align:right"><strong>Thuyền trưởng   : </strong></label>
                                    <div class="col-md-6">
                                        <select class="form-control" id="ThuyenTruong">
                                            <option value="AD">Admin</option>
                                            <option selected value="US">User</option>
                                        </select>
                                    </div>
                                    <div class="wrap-layout col-md-2" style="padding-left:0px;">
                                        <button id="btn_SeeCaptain" class="btn btn-secondary" style="padding:3px;border: 0px;"><i class="fas fa-edit icon_action" title="Xem thông tin thuyền trưởng"></i> </button>
                                        <button id="btn_AddCaptai" class="btn btn-secondary" style="padding:3px;border: 0px;"><i class="fas fa-edit icon_action" title="Thêm thuyền trưởng"></i> </button>
                                    </div>
                                    
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 5px">
                                <div class="form-group">
                                    <label class="col-md-4 control-label" style="text-align:right"><strong>Lượng nhiên liệu tối đa   : </strong></label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="NhienLieuToiDa" name="NhienLieuToiDa" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 5px">
                                <div class="form-group">
                                    <label class="col-md-4 control-label" style="text-align:right"><strong>Lượng nước ngọt tối đa   : </strong></label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="NuocNgotToiDa" name="NuocNgotToiDa" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 5px">
                                <div class="form-group">
                                    <label class="col-md-4 control-label" style="text-align:right"><strong>Tốc độ(hải lý/giờ)   : </strong></label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="TocDo" name="TocDo" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 5px">
                                <div class="form-group">
                                    <label class="col-md-4 control-label" style="text-align:right"><strong>Thời gian hành trình tối đa   : </strong></label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="TG_HanhTrinhToiDa" name="TG_HanhTrinhToiDa" required value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 5px">
                                <div class="form-group">
                                    <label class="col-md-4 control-label" style="text-align:right"><strong>Ngày tạo   : </strong></label>
                                    <div class="col-md-8">
                                        <input type="date" class="form-control" id="NgayTao" name="NgayTao"  value="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
   <script>
       $(document).ready(function () {
           var vung = sessionStorage.getItem("vung");
           if (vung == null) { vung = "1";}
           sessionStorage.removeItem("vung");
           $('#Vung' + vung).css('background-color', 'beige');
           $('#title').text('QUẢN LÝ TÀU - VÙNG ' + vung);
           loadDataListShips(vung);
       });
       function loadDataListShips(vung) {
           
           $.ajax({
               type: "GET",
               url: linkapi + "ships?region=" + vung,
               dataType: "json",
               beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                   $('#loader').removeClass('hidden');
               },
               success: function (data) {
                   var tabletext = "<thead><tr><th>STT</th><th>TÊN TÀU</th><th>SỐ HIỆU</th><th>SỐ THUYỀN VIÊN</th><th>NĂM HẠ THỦY</th><th>TRỌNG TẢI</th><th>TỐC ĐỘ</th><th title='Thời gian hành trình tối đa'>TG HT TỐI ĐA</th><th  title='Xem thiết bị trên tàu'>XEM THIẾT BỊ</th><th>TÁC VỤ</th></tr></thead><tbody>";
                   var i = 1;
                   $.each(data, function (key, item) {
                       tabletext += "<tr><td>" + i + "</td><td>" + item.Ship.Name + "</td><td>" + item.Ship.RegistrationNumber + "</td><td>" + item.Ship.Personel + "</td><td>" + item.Ship.LaunchYear + "</td><td>" + item.Ship.Weight + "</td><td>" + item.Ship.Speed + "</td><td>" + item.Ship.Time + '</td>' + '<td><button class="btn btn-info btn_ViewInforShip" style="padding: 0;"><i class="fas fa-eye icon_action" title="Xem thiết bị trên tàu"></i></button> </td>'+ '<td><button class="btn btn-info btn_ViewInforShip" onclick="ViewInforShip(`' + item.Ship.Name + '`,`' + item.Ship.RegistrationNumber + '`,`' + item.Ship.RegistrationPlace + '`,`' + item.Ship.RegistrationDate + '`,`' + item.Ship.LaunchYear + '`,`' + item.Ship.Weight + '`,`' + item.Ship.Fuel + '`,`' + item.Ship.Water + '`,`' + item.Ship.Personel + '`,`' + item.Ship.Captain + '`,`' + item.Ship.Speed + '`,`' + item.Ship.Time + '`,`' + item.Ship.Created + '`)" data-toggle="modal" data-target="#model-infordetail-ship"  style="padding: 0;"> <i class="fas fa-edit icon_action" title="Xem thông tin chi tiết" ></i></button><button class="btn btn-info btn_ViewEquipment" style="padding: 0;"><i class="fas fa-trash-alt icon_action" title="Xoá thông tin"></i></button></td></tr>';
                       i = i + 1;
                   });
                   tabletext += "</tbody>";
                   $('#tableship').html(tabletext);
                   console.log(linkapi + "ships?region=" + vung);
                   loadTableShip();
               }, error: function (ret) {
                   console.log('errorGET');
               },
               complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                  
                   $('#loader').addClass('hidden');
                   $('#model-edit-user').addClass('hidden');
               },
           });
       };
       function ViewInforShip(Name, RegistrationNumber, RegistrationPlace, RegistrationDate, LaunchYear, Weight, Fuel, Water, Personel, Captain, Speed, Time, Created) {
           debugger;
           $("#TenTau").val(Name);
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
   </script>
</asp:Content>
