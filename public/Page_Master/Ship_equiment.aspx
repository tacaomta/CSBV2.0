<%@ Page Title="Thiết bị trên tàu" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Ship_equiment.aspx.cs" Inherits="CSB.Page_Master.Ship_equiment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
.accordion-item {
    margin: 3px 0 0 0;
    border-radius: 3px !important;
    border: 1px solid rgb(4 39 94 / 13%)
}
.accordion-item:not(:first-of-type) {
    border-top: 1px solid rgb(4 39 94 / 13%)
}
.accordion-button:not(.collapsed) {
    color: #ffffff;
    background-color: #63aff7;
    border-color: #c6e2e9;
    box-shadow: inset 0 -1px 0 rgb(4 3 98 / 13%);
}
.accordion-button {
    background-color: #63aff717;
    color: #3a4787;
    font-weight: bold;
    font-size: 16px;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
     <div id="form1">
        <div class="section-header">
            <div class="col-12">
                <div class="section">
                    <div class="section-header" style="margin-bottom: 2%">
                        <h4 id="title" style="color: black; margin: 0">THIẾT BỊ TRÊN TÀU - TÀU CỨU HỘ XH123</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="Manage_ship.aspx" style="color: #01b5f9">Quản lý tàu vùng N</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-12">
                            <div class="accordion" id="accorShipEquiment">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headMainEngine">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collMainEngine"> 4 - Máy chính </button>									
                                    </h2>
                                    <div id="collMainEngine" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headSecondaryEngine">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collSecondaryEngine"> 2 - Máy phụ </button>									
                                    </h2>
                                    <div id="collSecondaryEngine" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headScrew">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collScrew"> 2 - Hệ trục chân vịt </button>									
                                    </h2>
                                    <div id="collScrew" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headWeapon">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collWeapon"> 1 - Khí tài, hàng hải </button>									
                                    </h2>
                                    <div id="collWeapon" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headMotoBoat">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collMotoBoat"> 1 - Xuồng công tác </button>									
                                    </h2>
                                    <div id="collMotoBoat" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headAnchor">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collAnchor"> 4 - Neo, tời neo, xích neo </button>									
                                    </h2>
                                    <div id="collAnchor" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headLifeSaving">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collLifeSaving"> 2 - Trang bị cứu sinh </button>									
                                    </h2>
                                    <div id="collLifeSaving" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headOther">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collOther"> 0 - Các trang bị khác </button>									
                                    </h2>
                                    <div id="collOther" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headSupplies">
                                        <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collSupplies"> 0 - Vật tư bảo đảm </button>									
                                    </h2>
                                    <div id="collSupplies" class="accordion-collapse collapse" data-bs-parent="#accorShipEquiment">
                                        <div class="card-body">
                                            <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

