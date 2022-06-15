<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="ThanVo.aspx.cs" Inherits="CSB.Page_Master.ThanVo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12" style="padding: 0px 5px;">
                    <div class="card">
                        <div class="card-header">
                            <h5 id="name">THÔNG TIN THÂN VỎ</h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#!">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Quản lý tàu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <form id="form-edit-THANVO" onsubmit="return false">
                        <input type="hidden" id="edit-THANVO-ID" />
                        <div class="" style="margin-bottom: 0px">
                                <div class="row clearfix ">
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-3 control-label"><p>Ký hiệu vật liệu   : </p></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" id="edit-THANVO-KYHIEUVATLIEU" placeholder="Ký hiệu vật liệu" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-3 control-label"><p>Số khoang kín nước   : </p></label>
                                            <div class="col-md-9">
                                                <input type="number" min="0" step="any" class="form-control" id="edit-THANVO-SOKHOANGKINNUOC" >
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-3 control-label"><p>Số sườn tàu   : </p></label>
                                            <div class="col-md-9">
                                                <input type="number" min="0" step="any" class="form-control" id="edit-THANVO-SOSUONTAU">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-3 control-label"><p>Số két dầu cháy   : </p></label>
                                            <div class="col-md-9">
                                                <input type="number" min="0" step="any" class="form-control" id="edit-THANVO-SOKETDAUCHAY">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-3 control-label"><p>Số két dầu nhờn  : </p></label>
                                            <div class="col-md-9">
                                                <input type="number" min="0" step="any" class="form-control" id="edit-THANVO-SOKETDAUNHON" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width: 100%; float: left; padding: 10px">
                                        <div class="form-group" style="display: flex">
                                            <label class="col-md-3 control-label"><p>Số két nước  : </p></label>
                                            <div class="col-md-9">
                                                <input type="number" min="0" step="any" class="form-control" id="edit-THANVO-SOKETNUOC" placeholder="Nhập số lượng" required min="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <div class="right">
                                <button type="submit" onclick="edit_THANVO()" class="btn btn-info"> Cập nhật</button>
                                </div>
                        </div>
                    </form>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script>
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }
        $(document).ready(function () {
            loadDataList_THANVO();
        });
        function loadDataList_THANVO() {
            $.ajax({
                type: "GET",
                url: linkapi + "v2/thanvo?id=" + getParameterByName("Ship_ID"),
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    if (data != null) {
                        var i = 1;
                        $.each(data, function (key, item) {
                            if (i == 1) {
                                $('#edit-THANVO-ID').val(item.ID);
                                $("#edit-THANVO-KYHIEUVATLIEU").val(item.KYHIEUVATLIEU);
                                $("#edit-THANVO-SOKHOANGKINNUOC").val(item.SOKHOANGKINNUOC);
                                $("#edit-THANVO-SOSUONTAU").val(item.SOSUONTAU);
                                $("#edit-THANVO-SOKETDAUCHAY").val(item.SOKETDAUCHAY);
                                $("#edit-THANVO-SOKETDAUNHON").val(item.SOKETDAUNHON);
                                $("#edit-THANVO-SOKETNUOC").val(item.SOKETNUOC);
                            }
                            i = i + 1;
                        });
                        
                    }
                    console.log("okGET");
                    /*loadTableTHANVO();*/
                }, error: function (ret) {
                    console.log('errorGET');
                },
            });
        };
        function add_THANVO() {
            var form = document.getElementById("form-edit-THANVO");
            console.log(form.checkValidity());
            if (form.checkValidity() == true) {
                var THANVO = {
                    KYHIEUVATLIEU: $("#edit-THANVO-KYHIEUVATLIEU").val(),
                    SOKHOANGKINNUOC: $("#edit-THANVO-SOKHOANGKINNUOC").val(),
                    SOSUONTAU: $("#edit-THANVO-SOSUONTAU").val(),
                    SOKETDAUCHAY: $("#edit-THANVO-SOKETDAUCHAY").val(),
                    SOKETDAUNHON: $("#edit-THANVO-SOKETDAUNHON").val(),
                    SOKETNUOC: $("#edit-THANVO-SOKETNUOC").val()
                };
                $.ajax({
                    type: "POST",
                    url: linkapi + "v2/insert_thanvo?id=" + getParameterByName("Ship_ID"),
                    dataType: "json",
                    data: JSON.stringify(THANVO),
                    contentType: "application/json",
                    success: function (data) {
                        toastSuccess("Thành công", "Thêm thông tin thân vỏ thành công.");
                        loadDataList_THANVO();
                    }, error: function (ret) {
                        toastError("Thất bại", "");
                    },
                    complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                       
                    },
                });
            }
            return false;
        }
        function edit_THANVO() {
            var form = document.getElementById("form-edit-THANVO");
            console.log(form.checkValidity());
            if ($("#edit-THANVO-ID").val() == null || $("#edit-THANVO-ID").val() == "") add_THANVO();
            else {
                if (form.checkValidity() == true) {
                    var THANVO = {
                        ID: $("#edit-THANVO-ID").val(),
                        KYHIEUVATLIEU: $("#edit-THANVO-KYHIEUVATLIEU").val(),
                        SOKHOANGKINNUOC: $("#edit-THANVO-SOKHOANGKINNUOC").val(),
                        SOSUONTAU: $("#edit-THANVO-SOSUONTAU").val(),
                        SOKETDAUCHAY: $("#edit-THANVO-SOKETDAUCHAY").val(),
                        SOKETDAUNHON: $("#edit-THANVO-SOKETDAUNHON").val(),
                        SOKETNUOC: $("#edit-THANVO-SOKETNUOC").val()
                    };
                    console.log(THANVO);
                    $.ajax({
                        type: "PUT",
                        url: linkapi + "v2/update_thanvo?id=" + THANVO.ID,
                        dataType: "json",
                        data: JSON.stringify(THANVO),
                        contentType: "application/json",
                        success: function (data) {
                            toastSuccess("Thành công", "Cập nhật thông tin thân vỏ thành công.");
                            loadDataList_THANVO();
                        }, error: function (ret) {
                            console.log(ret.responseJSON.Message);
                            toastError("Thất bại", "");
                        },
                        complete: function () { // Set our complete callback, adding the .hidden class and hiding the spinner.
                            $('#model-edit-THANVO').modal("hide");
                        },
                    });
                }
            }
           
            return false;
        }
        function delete_THANVO(id) {
            let text = "Bạn có chắc muốn xóa thân vỏ này?";
            if (confirm(text) == true) {
                $.ajax({
                    url: linkapi + "v2/delete_thanvo?id=" + id,
                    type: "DELETE",
                }).done(function (res) {
                    loadDataList_THANVO();
                    toastSuccess("Thành công", "Xóa thông tin thân vỏ thành công!");
                }).fail(function (res) {
                    toastError("Lỗi", "Xóa thông tin thân vỏ không thành công!");
                })
            } else {

            }
        }
    </script>
</asp:Content>
