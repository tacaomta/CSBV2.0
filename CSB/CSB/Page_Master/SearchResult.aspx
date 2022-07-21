<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="CSB.Page_Master.SearchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .page-container {
            background-color: transparent;
        }
            .page-container p {
                margin: 0;
                font-weight: bold;
                color: #909090;
            }
        .left-result {
            padding: 20px 30px;
            border-right: 1px solid #d0d0d0;
        }
            /*Custom radio button*/
            .label-container {
                display: block;
                position: relative;
                padding-left: 35px;
                margin-bottom: 12px;
                cursor: pointer;
                font-size: 16px;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }
            .label-container input {
                position: absolute;
                opacity: 0;
                cursor: pointer;
            }
            .checkmark {
                position: absolute;
                top: 4px;
                left: 8px;
                height: 16px;
                width: 16px;
                background-color: #eee;
                border-radius: 50%;
            }
            .label-container:hover input ~ .checkmark {
                background-color: #ccc;
            }
            .label-container input:checked ~ .checkmark {
                background-color: #2196F3;
            }
            .checkmark:after {
                content: "";
                position: absolute;
                display: none;
            }
            .label-container input:checked ~ .checkmark:after {
                display: block;
            }
            .label-container .checkmark:after {
             	top: 4px;
            	left: 4px;
            	width: 8px;
            	height: 8px;
            	border-radius: 50%;
            	background: white;
            }
        .result-message {
            font-size: 20px;
        }
            .result-message span {
                color: dodgerblue;
            }
        .result-container {
            display: flex;
            padding: 0 15px;
            flex-direction: column;
        }
            .result-container p {
                color: #000000;
                font-weight: normal;
            }
        .result-card {
            padding: 15px;
            margin-bottom: 25px;
            background-color: #ffffff;
            width: 99%;
            border-radius: 10px;
            box-shadow: rgba(0, 0, 0, 0.15) 2px 2px 3px;
        }
        .res-button {
            background-color: Highlight;
            border-radius: 5px;
            color: #ffffff;
            padding: 10px;
            border: none;
            margin-top: 10px;   
        }
            .res-button:hover {
                background-color: darkblue;
            }
    </style>
    <div class="page-container row">
        <div class="left-result col-2">
            <p>Tìm kiếm theo</p>
            <label class="label-container" for="res-all">All
              <input type="radio" checked="checked" id="res-all" value="res-all" name="radio1">
              <span class="checkmark"></span>
            </label>
            <label class="label-container" for="res-id">ID tàu
              <input type="radio" id="res-id" value="res-id" name="radio1">
              <span class="checkmark"></span>
            </label>
            <label class="label-container" for="res-name">Tên tàu
              <input type="radio" id="res-name" value="res-name" name="radio1">
              <span class="checkmark"></span>
            </label>
            <label class="label-container" for="res-cap">Thuyền trưởng
              <input type="radio" id="res-cap" value="res-cap" name="radio1">
              <span class="checkmark"></span>
            </label>
            <label class="label-container" for="res-year">Năm hạ thủy
              <input type="radio" id="res-year" value="res-year" name="radio1">
              <span class="checkmark"></span>
            </label>

            <p>Lọc theo đơn vị</p>
            <label class="label-container" for="res-all-unit">All
              <input type="radio" checked="checked" id="res-all-unit" value="res-all-unit" name="radio2">
              <span class="checkmark"></span>
            </label>
            <label class="label-container" for="res-region">Vùng
              <input type="radio" id="res-region" value="res-region" name="radio2">
              <span class="checkmark"></span>
            </label>
            <label class="label-container" for="res-squad">Hải đoàn
              <input type="radio" id="res-squad" value="res-squad" name="radio2">
              <span class="checkmark"></span>
            </label>
            <label class="label-container" for="res-flot">Hải đội
              <input type="radio" id="res-flot" value="res-flot" name="radio2">
              <span class="checkmark"></span>
            </label>
        </div>
        <div class="right-result col-10 p-0">
            <div class="result-message" style="padding: 20px 15px">
                Tìm thấy <span id="result-num">3</span> kết quả phù hợp
                <div class="blue-hr"></div>
            </div>
            <div class="result-container">
                <div class="result-card">
                    <p style="font-size: 14px">ID: 0C7DEC67B2AE5AF01133B3C8E7E7A37B</p>
                    <p style="font-size: 30px; color: #2070cc; font-weight: bold;">Tàu CSB 4002</p>
                    <p>- Thuyền trưởng: Nguyễn Đình Vinh</p>
                    <p>- Năm hạ thủy: 2009</p>
                    <button class="res-button">Xem hồ sơ</button>
                </div>
                <div class="result-card">
                    <p style="font-size: 14px">ID: 0C7DEC67B2AE5AF01133B3C8E7E7A37B</span></p>
                    <p style="font-size: 30px; color: #2070cc; font-weight: bold;">Tàu CSB 4002</p>
                    <p>- Thuyền trưởng: Nguyễn Đình Vinh</p>
                    <p>- Năm hạ thủy: 2009</p>
                    <button class="res-button">Xem hồ sơ</button>
                </div>
                <div class="result-card">
                    <p style="font-size: 14px">ID: </p>
                    <p style="font-size: 30px; color: #2070cc; font-weight: bold;">Tàu CSB 4002</p>
                    <p>- Thuyền trưởng: Nguyễn Đình Vinh</p>
                    <p>- Năm hạ thủy: 2009</p>
                    <button class="res-button">Xem hồ sơ</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
