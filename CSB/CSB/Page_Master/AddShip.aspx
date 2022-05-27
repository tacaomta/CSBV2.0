<%@ Page Title="" Language="C#" MasterPageFile="~/Master/TrangChu.Master" AutoEventWireup="true" CodeBehind="AddShip.aspx.cs" Inherits="CSB.Page_Master.AddShip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-body">
        <div class="page-wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>THÊM MỚI TÀU</h5>
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#!">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Quản lý tàu</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Thêm mới tàu</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-block">
                            <form>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số hiệu tàu <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" placeholder="Ví dụ: CSB 1234" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Ký hiệu tàu <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" placeholder="Ví dụ: K123" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Năm tiếp nhận <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Năm hạ thủy:</label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Vùng <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" required>
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Hải đoàn <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" required>
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Hải đội <span style="color: red;">(*)</span>: </label>
                                            <div class="col-sm-8">
                                                <select class="form-control" required>
                                                    <option selected="" disabled="" value="">Chưa chọn...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Nơi sản xuất:</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" placeholder="Ví dụ: Liên Xô">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Chức năng và nhiệm vụ: </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="Ví dụ: Tuần tra" required>
                                    </div>
                                </div>
                                <div class="form-group row" style="margin-bottom: 5px;">
                                    <label class="col-sm-2 col-form-label">Thay đổi số hiệu: </label>
                                    <div class="col-sm-10">
                                        <div class="btn-group btn-group-right" role="group" aria-label="Basic example">
                                            <button type="button" class="btn btn-primary"><i class="fas fa-bars"></i>Thêm</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-10">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" style="width:100%;">
                                                <thead>
                                                    <tr>
                                                        <th>Tháng, năm</th>
                                                        <th>Số hiệu</th>
                                                        <th>Cấp quy định</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Larry</td>
                                                        <td>the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Lượng giãn nước (tấn)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dmax: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dmin: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Kích thước (m)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dài nhất (Lmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dài thiết kế (Ltk): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Rộng nhất (Bmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Cao mạn (Htb): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Chiều cao nhất của tàu: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Chiều sâu nhất của tàu: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Mớn nước (m)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Mũi tàu (Tm): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Giữa tàu (Ttb): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Đuôi tàu (tđ): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Lớn nhất (Tmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Vận tốc (HL/h)</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Lớn nhất (Vmax): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Kinh tế (Vkt): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Khả năng hoạt động trên biển</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Bán kính hoạt động (H1): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Thời gian HĐ tối đa (ngày đêm): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Cấp chịu đựng sóng gió (max): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                    </div>
                                </div>
                                <h4 class="sub-title">Lượng dự trữ</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dầu cháy: Ký hiệu: </label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số lượng (Tấn): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Dầu nhờn: Ký hiệu: </label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số lượng (Tấn): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Nước ngọt: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Số lượng (Tấn): </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="sub-title">Biên chế</h4>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Tổng quân số: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Sĩ quan: </label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">VCQP: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">QNCN: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">HSQ, CS: </label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </form>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('table').each(function () {
                var table1 = $(this).DataTable({
                    destroy: true,
                    searching: false,
                    stateSave: true,
                    info: false,
                    paging: false,
                    lengthChange: false,
                    "columns": [
                        { name: 'Tháng, năm', width: 200 },
                        { name: 'Số hiệu', width: 200 },
                        { name: 'Cấp quy định', width: 400 },
                    ],
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
            });


        });
    </script>


</asp:Content>
