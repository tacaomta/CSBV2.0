<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Ship_Profile.aspx.cs" Inherits="CSB.Page_Master.Ship_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .profile-link {
            background-color: #d2edf9;
            color: #0086db;
            margin: 5px 0;
            padding: 10px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            width: 100%;
            text-align: left;
            transition: all 0.3s;
        }

            .profile-link:hover {
                background-color: #2070cc;
                color: white;
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
            <button onclick="DS_CB_NV()" class="profile-link">
                1. Danh sách đội ngũ cán bộ, nhân viên kỹ thuật
            </button>
            <button onclick="DacDiemChung()" class="profile-link">
                2. Đặc điểm chung của tàu
            </button>
            <button onclick="TinhNangChuYeu()" class="profile-link">
                3. Tính năng chủ yếu của tàu
            </button>
            <button onclick="TinhNangThietBi()" class="profile-link">
                4. Tính năng các thiết bị
            </button>
            <button onclick="THeoDoiHoatDongTau()" class="profile-link">
                5. Theo dõi hoạt động của tàu
            </button>
            <button onclick="ThoiGianLamViec()" class="profile-link">
                6. Thời gian làm việc của máy chính, máy phụ, máy chuyên dụng
            </button>
            <button onclick="DangKyTaiNanHuHong()" class="profile-link">
                7. Đăng ký tai nạn hư hỏng
            </button>
            <button onclick="TheoDoiSuaChuaTau()" class="profile-link">
                8. Theo dõi sửa chữa tàu
            </button>
            <button onclick="TheoDoiCaiHoanThayThe()" class="profile-link">
                9. Theo dõi cải hoán, thay thế, bổ sung
            </button>
            <button onclick="DangKyPhuongTien()" class="profile-link">
                10. Đăng ký các phương tiện bảo vệ sức sống tàu và cứu sinh
            </button>
            <button onclick="KiemTraKyThuat()" class="profile-link">
                11. Kiểm tra kỹ thuật
            </button>
            <a href="../Page_Master/Manage_Tau?vung=1" class="btn btn-secondary mt-3"><span class="bi-arrow-return-left"></span>&nbsp;Quay lại</a>
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
