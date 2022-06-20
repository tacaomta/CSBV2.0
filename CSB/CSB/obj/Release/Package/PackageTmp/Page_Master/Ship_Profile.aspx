<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Ship_Profile.aspx.cs" Inherits="CSB.Page_Master.Ship_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .profile-link {
            color: #0086db;
            margin: 10px 0;
        }

        .profile-link a {
            color: #4d4d4d;
            margin-left: 10px;
        }

            .profile-link a:hover {
                color: black;
            }

            .profile-link a span:hover {
                text-decoration: none;
            }
    </style>
    <div class="section" style="background-color: #fff; padding-bottom: 5px;">
        <div class="section-header" style="background-color: #fff;">
            <div class="title">
                <h4 id="title_HoSoTau" style="color: black; margin: 0; text-align: center;">HỒ SƠ TÀU</h4>
                <div class="blue-hr"></div>
            </div>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item"><a href="Null.aspx" style="color: #01b5f9; font-size: 16px;">Trang chủ</a></div>
                <div class="breadcrumb-item"><a href="Manage_Tau?vung=1" style="color: #01b5f9; font-size: 16px;">Quản lý tàu</a></div>
                <div class="breadcrumb-item"><a href="#" style="color: #01b5f9; font-size: 16px;">Hồ sơ tàu</a></div>
            </div>
        </div>
        <div class="section-content">
            <div class="profile-link">
                1. <a onclick="DS_CB_NV()" href="#">Danh sách đội ngũ cán bộ, nhân viên kỹ thuật</a>
            </div>
            <div class="profile-link">
                2. <a onclick="DacDiemChung()" href="#">Đặc điểm chung của tàu</a>
            </div>
            <div class="profile-link">
                3. <a onclick="TinhNangChuYeu()"  href="#">Tính năng chủ yếu của tàu</a>
            </div>
            <div class="profile-link">
                4. <a onclick="TinhNangThietBi()" href="#">Tính năng các thiết bị</a>
            </div>
            <div class="profile-link">
                5. <a href="#" onclick="THeoDoiHoatDongTau()">Theo dõi hoạt động của tàu</a>
            </div>
            <div class="profile-link">
                6. <a href="#" onclick="ThoiGianLamViec()">Thời gian làm việc của máy chính, máy phụ, máy chuyên dụng</a>
            </div>
            <div class="profile-link">
                7. <a href="#" onclick="DangKyTaiNanHuHong()">Đăng ký tai nạn hư hỏng</a>
            </div>
            <div class="profile-link">
                8. <a href="#" onclick="TheoDoiSuaChuaTau()">Theo dõi sửa chữa tàu</a>
            </div>
            <div class="profile-link">
                9. <a href="#" onclick="TheoDoiCaiHoanThayThe()">Theo dõi cải hoán, thay thế, bổ sung</a>
            </div>
            <div class="profile-link">
                10.<a href="#" onclick="DangKyPhuongTien()" style="margin-left: 5px;">Đăng ký các phương tiện bảo vệ sức sống tàu và cứu sinh</a>
            </div>
            <div class="profile-link">
                11.<a href="#" onclick="KiemTraKyThuat()" style="margin-left: 5px;">Kiểm tra kỹ thuật</a>
            </div>
            <a href="../Page_Master/Manage_Tau?vung=1" class="btn btn-secondary"><span class="bi-arrow-return-left"></span>&nbsp;Quay lại</a>
        </div>  
    </div>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script>
        var Ship_ID;
        var shipName;
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
                window.location = baseaddress + "Page_Master/Manage_Tau?vung=1";
            }
            else {
                Load_Profile(Ship_ID);
            }

        });
        function Load_Profile(Ship_ID) {
            debugger
            $.ajax({
                type: "GET",
                url: linkapi + "v2/ship_detail?id=" + Ship_ID,
                dataType: "json",
                beforeSend: function () { // Before we send the request, remove the .hidden class from the spinner and default to inline-block.
                    
                },
                success: function (data) {
                    $("#title_HoSoTau").html("HỒ SƠ TÀU " + data.TTCOBAN.SOHIEU);
                }, error: function (ret) {
                    console.log('errorGET');
                },
                complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                  
                    
                },
            });
        }

        function DS_CB_NV() {
            var win = window.open(baseaddress + "Page_Master/Manage_Staff?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }

        function DacDiemChung() {
            var win = window.open(baseaddress + "Page_Master/DacDiemChung?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }

        function TinhNangChuYeu() {
            var win = window.open(baseaddress + "Page_Master/TinhNangChuYeu?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }

        function TinhNangThietBi() {
            var win = window.open(baseaddress + "Page_Master/TinhNangThietBi?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }

        function THeoDoiHoatDongTau() {
            var win = window.open(baseaddress + "Page_Master/HoatDongTau?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }

        function ThoiGianLamViec() {
            var win = window.open(baseaddress + "Page_Master/ThoiGianLamViecMay?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        
        function DangKyTaiNanHuHong() {
            var win = window.open(baseaddress + "Page_Master/TaiNanHuHong?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
      
        function TheoDoiSuaChuaTau() {
            var win = window.open(baseaddress + "Page_Master/TheoDoiSuaChuaTau?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
        function TheoDoiCaiHoanThayThe() {
            var win = window.open(baseaddress + "Page_Master/TheoDoiCaiHoanThayThe?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }

        function KiemTraKyThuat() {
            var win = window.open(baseaddress + "Page_Master/KiemTraKyThuat?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }

        function DangKyPhuongTien() {
            var win = window.open(baseaddress + "Page_Master/DangKyPhuongTien?Ship_ID=" + Ship_ID, '_blank');
            win.focus();
        }
    </script>
</asp:Content>
