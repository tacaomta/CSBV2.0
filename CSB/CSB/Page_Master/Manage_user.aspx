<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="Manage_user.aspx.cs" Inherits="CSB.Page_Master.Manage_user" %>

<asp:Content ID="Manage_User" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background: #ececec;
        }
        /*Hidden class for adding and removing*/
        .lds-dual-ring.hidden {
            display: none;
        }

        /*Add an overlay to the entire page blocking any further presses to buttons or other elements.*/
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            background: rgba(0,0,0,.8);
            z-index: 999;
            opacity: 1;
            transition: all 0.5s;
        }

        /*Spinner Styles*/
        .lds-dual-ring {
            display: inline-block;
            width: 100%;
            height: 100%;
        }

            .lds-dual-ring:after {
                content: " ";
                display: block;
                width: 64px;
                height: 64px;
                margin: 5% auto;
                border-radius: 50%;
                border: 6px solid #fff;
                border-color: #fff transparent #fff transparent;
                animation: lds-dual-ring 1.2s linear infinite;
            }

        @keyframes lds-dual-ring {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        /* 1.8 DataTables */
        table.dataTable {
            border-collapse: collapse !important;
        }

            table.dataTable thead th, table.dataTable thead td {
                border-bottom: 1px solid #ddd !important;
            }

            table.dataTable.no-footer {
                border-bottom: 1px solid #ddd !important;
            }

        .dataTables_wrapper {
            padding: 0 !important;
            font-size: 13px !important;
        }

            .dataTables_wrapper .dataTables_paginate .paginate_button {
                padding: 0 !important;
                margin: 0 !important;
                float: left;
            }

        div.dataTables_wrapper div.dataTables_processing {
            font-size: 0 !important;
            background-image: url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJsb2FkZXItMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiDQogd2lkdGg9IjQwcHgiIGhlaWdodD0iNDBweCIgdmlld0JveD0iMCAwIDUwIDUwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MCA1MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHBhdGggZmlsbD0iIzAwMCIgZD0iTTQzLjkzNSwyNS4xNDVjMC0xMC4zMTgtOC4zNjQtMTguNjgzLTE4LjY4My0xOC42ODNjLTEwLjMxOCwwLTE4LjY4Myw4LjM2NS0xOC42ODMsMTguNjgzaDQuMDY4YzAtOC4wNzEsNi41NDMtMTQuNjE1LDE0LjYxNS0xNC42MTVjOC4wNzIsMCwxNC42MTUsNi41NDMsMTQuNjE1LDE0LjYxNUg0My45MzV6Ij4NCjxhbmltYXRlVHJhbnNmb3JtIGF0dHJpYnV0ZVR5cGU9InhtbCINCiAgYXR0cmlidXRlTmFtZT0idHJhbnNmb3JtIg0KICB0eXBlPSJyb3RhdGUiDQogIGZyb209IjAgMjUgMjUiDQogIHRvPSIzNjAgMjUgMjUiDQogIGR1cj0iMC42cyINCiAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiLz4NCjwvcGF0aD4NCjwvc3ZnPg0K") !important;
            background-color: #fff;
            background-size: 100%;
            width: 50px !important;
            height: 50px;
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.03);
            top: 50% !important;
            left: 50% !important;
            transform: translate(-50%, -50%) !important;
            margin: 0 !important;
            opacity: 1 !important;
        }

        .icon_action {
            color: rgb(102,102, 102);
            cursor: pointer;
            padding: 5px;
            font-size: 20px;
        }


        /* 3.6 Table */
        .table {
            color: inherit;
        }

            .table td, .table:not(.table-bordered) th {
                border-top: none;
            }

            .table:not(.table-sm):not(.table-md):not(.dataTable) td,
            .table:not(.table-sm):not(.table-md):not(.dataTable) th {
                padding: 0 25px;
                height: 60px;
                vertical-align: middle;
            }

            .table:not(.table-sm) thead th {
                border-bottom: none;
                background-color: rgba(0, 0, 0, 0.04);
                color: #666;
                padding-top: 15px;
                padding-bottom: 15px;
            }

            .table.table-md th,
            .table.table-md td {
                padding: 10px 15px;
            }

            .table.table-bordered td,
            .table.table-bordered th {
                border-color: #f6f6f6;
            }

        .table-links {
            color: #34395e;
            font-size: 12px;
            margin-top: 5px;
            opacity: 0;
            transition: all .3s;
        }

            .table-links a {
                color: #666;
            }

        table tr:hover .table-links {
            opacity: 1;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.02);
        }

        @media (max-width: 575.98px) {
            .table-responsive table {
                min-width: 800px;
            }
        }

        /* 3.8 Modal */
        .modal-header,
        .modal-body,
        .modal-footer {
            padding: 25px;
        }

        .modal-body {
            padding-top: 15px;
        }

        .modal-footer {
            padding-top: 15px;
            padding-bottom: 15px;
        }

        .modal-header {
            border-bottom: none;
            padding-bottom: 5px;
        }

            .modal-header h5 {
                font-size: 18px;
            }

        .modal-footer {
            border-top: none;
            border-radius: 0 0 3px 3px;
        }

        .modal-content {
            max-width: 100%;
            border: none;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.05);
        }

        .modal.show .modal-content {
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .modal-progress .modal-content {
            position: relative;
        }

            .modal-progress .modal-content:after {
                content: ' ';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(255, 255, 255, 0.5);
                z-index: 999;
                background-image: url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJsb2FkZXItMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiDQogd2lkdGg9IjQwcHgiIGhlaWdodD0iNDBweCIgdmlld0JveD0iMCAwIDUwIDUwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MCA1MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHBhdGggZmlsbD0iIzAwMCIgZD0iTTQzLjkzNSwyNS4xNDVjMC0xMC4zMTgtOC4zNjQtMTguNjgzLTE4LjY4My0xOC42ODNjLTEwLjMxOCwwLTE4LjY4Myw4LjM2NS0xOC42ODMsMTguNjgzaDQuMDY4YzAtOC4wNzEsNi41NDMtMTQuNjE1LDE0LjYxNS0xNC42MTVjOC4wNzIsMCwxNC42MTUsNi41NDMsMTQuNjE1LDE0LjYxNUg0My45MzV6Ij4NCjxhbmltYXRlVHJhbnNmb3JtIGF0dHJpYnV0ZVR5cGU9InhtbCINCiAgYXR0cmlidXRlTmFtZT0idHJhbnNmb3JtIg0KICB0eXBlPSJyb3RhdGUiDQogIGZyb209IjAgMjUgMjUiDQogIHRvPSIzNjAgMjUgMjUiDQogIGR1cj0iMC42cyINCiAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiLz4NCjwvcGF0aD4NCjwvc3ZnPg0K");
                background-size: 80px;
                background-repeat: no-repeat;
                background-position: center;
                border-radius: 3px;
            }

        .modal-part {
            display: none;
        }

        /* 3.10 Pagination */
        .page-item .page-link {
            color: #1ba822;
            border-radius: 3px;
            margin: 0 3px;
        }

        .page-item.active .page-link {
            background-color: #01b5f9;
            border-color: #00b6ef;
        }

        .page-item.disabled .page-link {
            border-color: transparent;
            background-color: #efffff;
            color: #00b2e7;
            opacity: .8;
        }

        .page-link {
            border-color: transparent;
            background-color: #f9fafe;
            font-weight: 600;
        }

            .page-link:hover {
                background-color: #219112;
                color: #fff;
                border-color: transparent;
            }

            .page-link:focus {
                box-shadow: none;
            }


        /* 3.12 Button */
        .buttons .btn {
            margin: 0 8px 10px 0;
        }

        .btn:focus {
            box-shadow: none !important;
            outline: none;
        }

        .btn:active {
            box-shadow: none !important;
            outline: none;
        }

            .btn:active:focus {
                box-shadow: none !important;
                outline: none;
            }

        .btn.btn-icon-split i, .dropdown-item.has-icon i {
            text-align: center;
            width: 15px;
            font-size: 15px;
            float: left;
            margin-right: 10px;
        }

        .btn {
            font-weight: 600;
            font-size: 12px;
            line-height: 24px;
            padding: .3rem .8rem;
            letter-spacing: .5px;
        }

            .btn.btn-icon-split {
                position: relative;
            }

                .btn.btn-icon-split i {
                    position: absolute;
                    left: 0;
                    top: 0;
                    height: 100%;
                    width: 45px;
                    border-radius: 3px 0 0 3px;
                    line-height: 32px;
                }

                .btn.btn-icon-split div {
                    margin-left: 40px;
                }

            .btn.btn-icon-noflo-splitat {
                display: table;
                text-align: right;
            }

                .btn.btn-icon-noflo-splitat i {
                    float: none;
                    margin: 0;
                    display: table-cell;
                    vertical-align: middle;
                    width: 30%;
                }

                .btn.btn-icon-noflo-splitat div {
                    display: table-cell;
                    vertical-align: middle;
                    width: 70%;
                    text-align: left;
                    padding-left: 10px;
                }

            .btn:not(.btn-social):not(.btn-social-icon):active, .btn:not(.btn-social):not(.btn-social-icon):focus, .btn:not(.btn-social):not(.btn-social-icon):hover {
                border-color: transparent !important;
                background-color: white;
            }

            .btn > i {
                margin-left: 0 !important;
            }

            .btn.btn-lg {
                padding: .55rem 1.5rem;
                font-size: 12px;
            }

                .btn.btn-lg.btn-icon-split i {
                    line-height: 42px;
                }

                .btn.btn-lg.btn-icon-split div {
                    margin-left: 25px;
                }

            .btn.btn-sm {
                padding: .10rem .4rem;
                font-size: 12px;
            }

            .btn.btn-icon .ion, .btn.btn-icon .fas, .btn.btn-icon .far, .btn.btn-icon .fab, .btn.btn-icon .fal {
                margin-left: 0 !important;
                font-size: 12px;
            }

            .btn.btn-icon.icon-left .ion, .btn.btn-icon.icon-left .fas, .btn.btn-icon.icon-left .far, .btn.btn-icon.icon-left .fab, .btn.btn-icon.icon-left .fal {
                margin-right: 3px;
            }

            .btn.btn-icon.icon-right .ion, .btn.btn-icon.icon-right .fas, .btn.btn-icon.icon-right .far, .btn.btn-icon.icon-right .fab, .btn.btn-icon.icon-right .fal {
                margin-left: 3px !important;
            }

        .btn-action {
            color: #fff !important;
            line-height: 25px;
            font-size: 12px;
            min-width: 35px;
            min-height: 35px;
        }

        .btn-secondary, .btn-secondary.disabled {
            box-shadow: 0 2px 6px #e1e5e8;
            background-color: #cdd3d8;
            border-color: #cdd3d8;
            color: #fff;
        }

            .btn-secondary:hover, .btn-secondary:focus, .btn-secondary:active, .btn-secondary.disabled:hover, .btn-secondary.disabled:focus, .btn-secondary.disabled:active {
                background-color: #bfc6cd !important;
                color: #fff !important;
            }

        .btn-outline-secondary:hover, .btn-outline-secondary:focus, .btn-outline-secondary:active, .btn-outline-secondary.disabled:hover, .btn-outline-secondary.disabled:focus, .btn-outline-secondary.disabled:active {
            background-color: #cdd3d8 !important;
            color: #fff !important;
        }

        .btn-success, .btn-success.disabled {
            box-shadow: 0 2px 6px #81d694;
            background-color: #47c363;
            border-color: #47c363;
            color: #fff;
        }

            .btn-success:hover, .btn-success:focus, .btn-success:active, .btn-success.disabled:hover, .btn-success.disabled:focus, .btn-success.disabled:active {
                background-color: #3bb557 !important;
                color: #fff !important;
            }

        .btn-outline-success:hover, .btn-outline-success:focus, .btn-outline-success:active, .btn-outline-success.disabled:hover, .btn-outline-success.disabled:focus, .btn-outline-success.disabled:active {
            background-color: #47c363 !important;
            color: #fff !important;
        }

        .btn-danger, .btn-danger.disabled {
            box-shadow: 0 2px 6px #fd9b96;
            background-color: #fc544b;
            border-color: #fc544b;
            color: #fff;
        }

            .btn-danger:hover, .btn-danger:focus, .btn-danger:active, .btn-danger.disabled:hover, .btn-danger.disabled:focus, .btn-danger.disabled:active {
                background-color: #fb160a !important;
            }

        .btn-outline-danger:hover, .btn-outline-danger:focus, .btn-outline-danger:active, .btn-outline-danger.disabled:hover, .btn-outline-danger.disabled:focus, .btn-outline-danger.disabled:active {
            background-color: #fb160a !important;
            color: #fff !important;
        }

        .btn-dark, .btn-dark.disabled {
            box-shadow: 0 2px 6px #728394;
            background-color: #191d21;
            border-color: #191d21;
            color: #fff;
        }

            .btn-dark:hover, .btn-dark:focus, .btn-dark:active, .btn-dark.disabled:hover, .btn-dark.disabled:focus, .btn-dark.disabled:active {
                background-color: black !important;
            }

        .btn-outline-dark:hover, .btn-outline-dark:focus, .btn-outline-dark:active, .btn-outline-dark.disabled:hover, .btn-outline-dark.disabled:focus, .btn-outline-dark.disabled:active {
            background-color: black !important;
            color: #fff !important;
        }

        .btn-light, .btn-light.disabled {
            box-shadow: 0 2px 6px #e6ecf1;
            background-color: #e3eaef;
            border-color: #e3eaef;
            color: #191d21;
        }

            .btn-light:hover, .btn-light:focus, .btn-light:active, .btn-light.disabled:hover, .btn-light.disabled:focus, .btn-light.disabled:active {
                background-color: #c3d2dc !important;
            }

        .btn-outline-light, .btn-outline-light.disabled {
            border-color: #e3eaef;
            color: #e3eaef;
        }

            .btn-outline-light:hover, .btn-outline-light:focus, .btn-outline-light:active, .btn-outline-light.disabled:hover, .btn-outline-light.disabled:focus, .btn-outline-light.disabled:active {
                background-color: #e3eaef !important;
                color: #fff !important;
            }

        .btn-warning, .btn-warning.disabled {
            box-shadow: 0 2px 6px #ffc473;
            background-color: #ffa426;
            border-color: #ffa426;
            color: #fff;
        }

            .btn-warning:hover, .btn-warning:focus, .btn-warning:active, .btn-warning.disabled:hover, .btn-warning.disabled:focus, .btn-warning.disabled:active {
                background-color: #ff990d !important;
                color: #fff !important;
            }

        .btn-outline-warning:hover, .btn-outline-warning:focus, .btn-outline-warning:active, .btn-outline-warning.disabled:hover, .btn-outline-warning.disabled:focus, .btn-outline-warning.disabled:active {
            background-color: #ffa426 !important;
            color: #fff !important;
        }

        .btn-info, .btn-info.disabled {
            box-shadow: 0 2px 6px #82d3f8;
            background-color: #01b5f9;
            border-color: #3abaf4;
            color: #fff;
        }

            .btn-info:hover, .btn-info:focus, .btn-info:active, .btn-info.disabled:hover, .btn-info.disabled:focus, .btn-info.disabled:active {
                background-color: #0da8ee !important;
            }

        .btn-outline-info:hover, .btn-outline-info:focus, .btn-outline-info:active, .btn-outline-info.disabled:hover, .btn-outline-info.disabled:focus, .btn-outline-info.disabled:active {
            background-color: #0da8ee !important;
            color: #fff !important;
        }



        .btn-outline-primary, .btn-outline-primary.disabled {
            border-color: #6777ef;
            color: #6777ef;
        }

            .btn-outline-primary:hover, .btn-outline-primary:focus, .btn-outline-primary:active, .btn-outline-primary.disabled:hover, .btn-outline-primary.disabled:focus, .btn-outline-primary.disabled:active {
                background-color: #6777ef !important;
                color: #fff;
            }

        .btn-outline-white, .btn-outline-white.disabled {
            border-color: #fff;
            color: #fff;
        }

            .btn-outline-white:hover, .btn-outline-white:focus, .btn-outline-white:active, .btn-outline-white.disabled:hover, .btn-outline-white.disabled:focus, .btn-outline-white.disabled:active {
                background-color: #fff;
                color: #6777ef;
            }

        .btn-round {
            border-radius: 30px;
            padding-left: 34px;
            padding-right: 34px;
        }

        .btn-social-icon, .btn-social {
            border: none;
            border-radius: 3px;
        }

        .btn-social-icon {
            color: #fff !important;
            padding-left: 18px;
            padding-right: 18px;
        }

            .btn-social-icon > :first-child {
                font-size: 16px;
            }

        .btn-social {
            padding: 12px 12px 12px 50px;
            color: #fff !important;
            font-weight: 500;
        }

            .btn-social > :first-child {
                width: 55px;
                line-height: 50px;
                border-right: none;
            }

        .btn-reddit {
            color: #000 !important;
        }

        .btn-group .btn.active {
            background-color: #6777ef;
            color: #fff;
        }

        .btn-progress {
            position: relative;
            background-image: url("data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJsb2FkZXItMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiDQogd2lkdGg9IjQwcHgiIGhlaWdodD0iNDBweCIgdmlld0JveD0iMCAwIDUwIDUwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MCA1MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHBhdGggZmlsbD0iI2ZmZiIgZD0iTTQzLjkzNSwyNS4xNDVjMC0xMC4zMTgtOC4zNjQtMTguNjgzLTE4LjY4My0xOC42ODNjLTEwLjMxOCwwLTE4LjY4Myw4LjM2NS0xOC42ODMsMTguNjgzaDQuMDY4YzAtOC4wNzEsNi41NDMtMTQuNjE1LDE0LjYxNS0xNC42MTVjOC4wNzIsMCwxNC42MTUsNi41NDMsMTQuNjE1LDE0LjYxNUg0My45MzV6Ij4NCjxhbmltYXRlVHJhbnNmb3JtIGF0dHJpYnV0ZVR5cGU9InhtbCINCiAgYXR0cmlidXRlTmFtZT0idHJhbnNmb3JtIg0KICB0eXBlPSJyb3RhdGUiDQogIGZyb209IjAgMjUgMjUiDQogIHRvPSIzNjAgMjUgMjUiDQogIGR1cj0iMC42cyINCiAgcmVwZWF0Q291bnQ9ImluZGVmaW5pdGUiLz4NCjwvcGF0aD4NCjwvc3ZnPg0K");
            background-position: center;
            background-repeat: no-repeat;
            background-size: 30px;
            color: transparent !important;
            pointer-events: none;
        }


        /* 4.2 Section */
        .section {
            position: relative;
            z-index: 1;
        }

            .section > *:first-child {
                margin-top: -7px;
            }

            .section .section-header {
                box-shadow: 2px 4px 8px 2px rgba(0, 0, 0, 0.05);
                background-color: #fff;
                border-radius: 3px;
                border: none;
                position: relative;
                margin-bottom: 30px;
                padding: 20px;
                display: flex;
                align-items: center;
            }

                .section .section-header h1 {
                    margin-bottom: 0;
                    font-weight: 700;
                    display: inline-block;
                    font-size: 24px;
                    margin-top: 3px;
                    color: #34395e;
                }

                .section .section-header .section-header-back {
                    margin-right: 15px;
                }

                    .section .section-header .section-header-back .btn:hover {
                        background-color: #6777ef;
                        color: #fff;
                    }

                .section .section-header .section-header-button {
                    margin-left: 20px;
                }

                .section .section-header .section-header-breadcrumb {
                    margin-left: auto;
                    display: flex;
                    align-items: center;
                }

                    .section .section-header .section-header-breadcrumb .breadcrumb-item {
                        font-size: 14px;
                    }

                .section .section-header .btn {
                    font-size: 12px;
                }

            .section .section-title {
                font-size: 18px;
                color: #191d21;
                font-weight: 600;
                position: relative;
                margin: 30px 0 25px 0;
            }

                .section .section-title:before {
                    content: ' ';
                    border-radius: 5px;
                    height: 8px;
                    width: 30px;
                    background-color: #6777ef;
                    display: inline-block;
                    float: left;
                    margin-top: 6px;
                    margin-right: 15px;
                }

                .section .section-title + .section-lead {
                    margin-top: -20px;
                }

            .section .section-lead {
                margin-left: 45px;
            }

        .main-wrapper-1 .section .section-header {
            margin-left: -30px;
            margin-right: -30px;
            margin-top: -10px;
            border-radius: 0;
            border-top: 1px solid #dbd1d1;
            padding-left: 35px;
            padding-right: 35px;
        }

        @media (max-width: 575.98px) {
            .section .section-title {
                font-size: 14px;
            }

            .section .section-header {
                flex-wrap: wrap;
                margin-bottom: 20px !important;
            }

                .section .section-header h1 {
                    font-size: 18px;
                }

                .section .section-header .float-right {
                    display: inline-block;
                    width: 100%;
                    margin-top: 15px;
                }

                .section .section-header .section-header-breadcrumb {
                    flex-basis: 100%;
                    margin-top: 10px;
                }
        }

        .form-group {
            display: flex;
            margin-bottom: 0px;
        }

        .control-label {
            padding-top: 8px;
        }
    </style>
    <div id="form1">
        <div class="section-header">
            <div class="col-12">
                <div class="section">
                    <div class="section-header" style="margin-bottom: 2%">
                        <h4 style="color: black; margin: 0">QUẢN LÝ NGƯỜI DÙNG</h4>
                        <div class="section-header-breadcrumb">
                            <div class="breadcrumb-item active"><a href="TrangChu.aspx" style="color: #01b5f9">Trang chủ</a></div>
                            <div class="breadcrumb-item active"><a href="#" style="color: #01b5f9">Quản lý người dùng</a></div>
                        </div>
                    </div>
                    <div class="section-header">
                        <div class="col-12">
                            <button class="btn btn-info btn-lg col-6" data-toggle="modal" data-target="#model-add-user">Thêm người dùng</button>
                            <table id="tableuser" class="table table-bordered table-striped table-md" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Họ tên</th>
                                        <th>Tên DN</th>
                                        <th>Mật khẩu</th>
                                        <th>Quyền</th>
                                        <th>Cập nhật gần đây</th>
                                        <th>Khóa</th>
                                        <th>Tác vụ</th>
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
        <div id="loader" class="lds-dual-ring overlay"></div>
    </div>
    <div class="modal fade" id="model-add-user" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="card auth_form" <%--method="post" action="/Account/UpdateItem"--%>>
                    <div class="modal-header">
                        <h6 class="title-modal-banve font-weight-bold" id="largeModalLabel">Thêm người dùng mới</h6>
                    </div>
                    <div class="modal-body">
                        <div class="row clearfix " style="border: 3px solid #36aee5">
                            <input hidden id="TenDN" name="id[0]" value="">
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tên đăng nhập     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" name="TenND" placeholder="Nhập tên người dùng" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Mật khẩu     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" name="TenND" placeholder="Nhập tên người dùng" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Xác nhận mật khẩu     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" name="TenND" placeholder="Nhập tên người dùng" value="">
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%; float: left; padding: 10px">
                                <div class="form-group">
                                    <label class="col-5 control-label"><strong>Tên đầy đủ     : </strong></label>
                                    <div class="col-7">
                                        <input type="text" class="form-control" name="TenND" placeholder="Nhập tên người dùng" value="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-info">Cập nhật</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

