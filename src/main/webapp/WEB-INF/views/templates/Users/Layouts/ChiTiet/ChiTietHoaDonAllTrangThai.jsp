<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết hóa đơn tất cả các trạng thái</title>

    <link rel="stylesheet" href="../../../resources/css/add_formHuy.css">

    <style>

        .boderForm {
            max-width: 800px;
            margin: 0px auto;
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 5px;
        }

    </style>

</head>
<body>
<%@ include file="../../../../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThaoHoaDon.jsp" %>
<div class="container" style="margin-top: 50px">

    <div class="back">

        <a href="/Admin/HoaDon/XacNhanHoaDonDangDongGoi">
            <button class="btn btn-primary">Back</button>
        </a>

    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-12" style="">

            <div class="row">
                <%--        Trạng thái đơn hàng--%>
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 14px">
                                        Trạng thái đơn hàng
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800" style="margin-top: 17px;font-size: 17px">
                                        <c:choose>
                                            <c:when test="${trangThaiView == 0}">Chưa thanh toán</c:when>
                                            <c:when test="${trangThaiView == 1}">Chờ xác nhận</c:when>
                                            <c:when test="${trangThaiView == 2}">Đang đóng gói hàng</c:when>
                                            <c:when test="${trangThaiView == 3}">Đang giao</c:when>
                                            <c:when test="${trangThaiView == 4}">Giao hàng thành công</c:when>
                                            <c:when test="${trangThaiView == 5}">Hủy đơn hàng</c:when>
                                            <c:otherwise>Trạng thái không xác định</c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <%--                                        <i class="fa fa-shopping-cart fa-2x text-gray-300"></i>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--        Trạng thái thanh toán--%>
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 14px">
                                        Trạng thái thanh toán
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800" style="margin-top: 17px;font-size: 17px">
                                        ${trangThaiMoney == 1 ? "Đã thanh toán " : "Chưa thanh toán"}
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <%--                                        <i class="fa fa-shopping-cart fa-2x text-gray-300"></i>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--        Hình thức thanh toán--%>
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 14px">
                                        Hình thức thanh toán
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800" style="margin-top: 17px;font-size: 17px">
                                        ${hinhThucView == 0 ? "Online" : "Tại quầy"}
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <%--                                        <i class="fa fa-shopping-cart fa-2x text-gray-300"></i>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--        Loại hình thức thanh toán--%>
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 14px">
                                        Loại hình thức thanh toán
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800" style="margin-top: 17px;font-size: 17px">
                                        <c:choose>
                                            <c:when test="${hinhThucThanhToan == 0}">Tại quầy</c:when>
                                            <c:when test="${hinhThucThanhToan == 1}">Ví điện tử</c:when>
                                            <c:when test="${hinhThucThanhToan == 2}">Momo</c:when>
                                            <c:when test="${hinhThucThanhToan == 3}">Nhận hàng</c:when>
                                            <c:otherwise>Trạng thái không xác định</c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <%--                                        <i class="fa fa-shopping-cart fa-2x text-gray-300"></i>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <br>
    <h3 style="color: black;text-align: center;margin-bottom: 30px">Thông tin chi tiết hóa đơn</h3>
    <br>
    <table class="table table-striped;" style="border-radius: 10px 10px 10px">
        <tr>
            <td scope="col" style="color: black;font-weight: bold;font-size: 17px;background-color: #bac8f3;width: 130px">Mã hóa đơn</td>
            <td scope="col" style="color: black;font-weight: bold;font-size: 17px;background-color: #bac8f3;width: 200px">Khách hàng</td>
            <td scope="col" style="color: black;font-weight: bold;font-size: 17px;background-color: #bac8f3;width: 300px">Ngày thanh toán</td>
            <td scope="col" style="color: black;font-weight: bold;font-size: 17px;background-color: #bac8f3;width: 170px">Tổng tiền</td>
            <td scope="col" style="color: black;font-weight: bold;font-size: 17px;background-color: #bac8f3;width: 170px">Phí ship</td>
            <td scope="col" style="color: black;font-weight: bold;font-size: 17px;background-color: #bac8f3;width: 300px">Thông tin nhận hàng</td>
            <td scope="col" style="color: black;font-weight: bold;font-size: 17px;background-color: #bac8f3;width: 210px;text-align: center">Ghi chú</td>
<%--            <td scope="col" style="color: black;font-weight: bold;font-size: 17px;background-color: #bac8f3;width: 200px">Hình thức</td>--%>
        </tr>
            <tr>
                <td style="font-size: 14px;color: black;font-weight: bold">${maHoaDonView}</td>
                <td style="font-size: 14px;color: black;font-weight: bold">${khachHangView}</td>
                <td style="font-size: 14px;color: black;font-weight: bold">

                    <c:set var="dateTimeString" value="${ngayThanhToanView}"/>
                    <fmt:parseDate value="${dateTimeString}" var="parsedDate"
                                   pattern="yyyy-MM-dd'T'HH:mm:ss"/>
                    <fmt:formatDate value="${parsedDate}" var="formattedDate"
                                    pattern="yyyy-MM-dd HH:mm:ss"/>
                    ${formattedDate}

                </td>
                <td style="font-size: 14px;color: black;font-weight: bold">
                    <fmt:formatNumber type="" value="${tongTienView + 30000}" pattern="#,##0.###" /> VNĐ
                </td>
                <td style="font-size: 14px;color: black;font-weight: bold">
                    <fmt:formatNumber type="" value="30000" pattern="#,##0.###" /> VNĐ
                </td>
                <td style="font-size: 14px;color: black;font-weight: bold">${thongTienNhanHangView}</td>
                <td style="font-size: 14px;color: black;font-weight: bold">

                        <c:choose>
                            <c:when test="${not empty list.mess}">${messView}</c:when>
                            <c:otherwise>N/A</c:otherwise>
                        </c:choose>

                </td>

            </tr>
    </table>

    <br>

    <h3 style="text-align: center;color: black;margin-bottom: 50px">Thông tin chi tiết sản phẩm</h3>
    <c:forEach items="${hoaDonChiTiets}" var="list" varStatus="i">
        <c:if test="${list.hoaDon.trangThai eq 1}">
        <p>
                <span style="display: inline-block;color: black;font-size: 16px;margin-left: 15px">${i.index+1} :</span>
                <span style="display: inline-block;color: black;font-size: 16px">${list.giayTheThaoChiTiet.giayTheThao.tenGiayTheThao}</span>
                <span style="display: inline-block;padding-left: 20px;color: black;font-size: 16px">Size: ${list.giayTheThaoChiTiet.size.size}</span>
                <span style="display: inline-block;padding-left: 20px;color: black;font-size: 16px">Màu sắc: ${list.giayTheThaoChiTiet.mauSac.tenMauSac}</span>
                <span style="display: inline-block;padding-left: 20px;color: black;font-size: 16px">Số lượng mua: ${list.soLuong}</span>
                <span style="display: inline-block;padding-left: 20px;color: black;font-size: 16px;margin-top: 30px">Giá bán:
                <fmt:formatNumber type="" value="${list.giayTheThaoChiTiet.giayTheThao.giaBan}" pattern="#,##0.###"/> VNĐ
            </span>
                <span style="display: inline-block;padding-left: 20px">
                <img src="/upload/${list.giayTheThaoChiTiet.giayTheThao.image.get(0).link}" width="110px"
                     style="border-radius: 10px 10px 10px">
            </span>
            </p>
        </c:if>
    </c:forEach>

</div>


</body>
</html>
