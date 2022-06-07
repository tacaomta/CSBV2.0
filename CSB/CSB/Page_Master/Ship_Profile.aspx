<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Ship_Profile.aspx.cs" Inherits="CSB.Page_Master.Ship_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .blue-hr {
            width: 50px;
            height: 4px;
            margin-top: 5px;
            background-color: #0086db;
        }

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
    <div class="section" style="background-color: #fff; padding-bottom: 15px;">
                <div class="section-header" style="background-color: #fff;">
                    <div class="title">
                        <h4 id="title" style="color: black; margin: 0; text-align: center;">HỒ SƠ TÀU</h4>
                        <div class="blue-hr"></div>
                    </div>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item"><a href="Null.aspx" style="color: #01b5f9; font-size: 14px;">Trang chủ</a></div>
                        <div class="breadcrumb-item"><a href="Manage_ship?vung=1" style="color: #01b5f9; font-size: 14px;">Quản lý tàu</a></div>
                        <div class="breadcrumb-item"><a href="Ship_Profile.aspx" style="color: #01b5f9; font-size: 14px;">Hồ sơ tàu</a></div>
                    </div>
                </div>
                <div class="section-content">
                    <div class="profile-link">
                        1. <a href="#">Danh sách đội ngũ cán bộ, nhân viên kỹ thuật</a>
                    </div>
                    <div class="profile-link">
                        2. <a href="#">Đặc điểm chung của tàu</a>
                    </div>
                    <div class="profile-link">
                        3. <a href="#">Tính năng chủ yếu của tàu</a>
                    </div>
                    <div class="profile-link">
                        4. <a href="#">Tính năng các thiết bị</a>
                    </div>
                    <div class="profile-link">
                        5. <a href="#">Theo dõi hoạt động của tàu</a>
                    </div>
                    <div class="profile-link">
                        6. <a href="#">Thời gian làm việc của máy chính, máy phụ, máy chuyên dụng</a>
                    </div>
                    <div class="profile-link">
                        7. <a href="#">Đăng ký tai nạn hư hỏng</a>
                    </div>
                    <div class="profile-link">
                        8. <a href="#">Theo dõi sửa chữa tàu</a>
                    </div>
                    <div class="profile-link">
                        9. <a href="#">Theo dõi cải hoán, thay thế, bổ sung</a>
                    </div>
                    <div class="profile-link">
                        10.<a href="#" style="margin-left: 5px;">Đăng ký các phương tiện bảo vệ sức sống tàu và cứu sinh</a>
                    </div>
                    <div class="profile-link">
                        11.<a href="#" style="margin-left: 5px;">Kiểm tra kỹ thuật</a>
                    </div>
                </div>
            </div>
</asp:Content>
