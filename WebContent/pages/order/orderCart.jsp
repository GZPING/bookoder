<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <base href="<%=basePath%>">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <link rel="shortcut icon" href="#" type="image/png">

  <title>订单</title>

  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">


</head>

<body class="sticky-header">

<section>
<input id="path" type="hidden" value="<%=path%>">
    <!-- left side start-->
    <%@include file="/pages/left.jsp"%>
   <!-- left side end-->
    
    <!-- main content start-->
    <div class="main-content" >
    	<%@include file="/pages/topMenu.jsp"%>
        <!--body wrapper start-->
        <div class="wrapper">
		<input type="hidden"  id="cartId"  value="<s:property value="cartId"/>" >
		<input type="hidden"  id="number"  value="<s:property value="totalNum"/>" >
            <div class="panel">
                <div class="panel-body invoice">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <h1 class="invoice-title">订单：<s:property value="cartId"/></h1>
                        </div>
                        <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4">
                            <img class="inv-logo" src="images/invoice-logo.jpg" alt=""/>
                            <p >订单状态 <br/> </p>
                             未确认
                        </div>
                    </div>
                    <div class="invoice-address">
                        <div class="row">
                            <div class="col-md-5 col-sm-5">
                                <p>
                                  <h4 class="inv-to">下单人:</h4>
                                <h2 class="corporate-id"> <s:property value="#session.userInfo.name"/></h2>
                                <p>
                                    电话：<s:property value="#session.userInfo.phone"/><br>
                                    邮箱：<s:property value="#session.userInfo.mail"/><br>
                                </p>
                                </p>

                            </div>
                            <div class="col-md-4 col-md-offset-3 col-sm-4 col-sm-offset-3">
                                <div class="inv-col"><span>订单号：</span> <s:property value="cartId"/></div>
                                <div class="inv-col"><span>订单日期 :</span> <s:property value="time"/></div>
                                <h1 class="t-due">总价</h1>
                                <h2 class="amnt-value">$  <s:property value="total"/></h2>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table table-bordered table-invoice">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>商品信息</th>
              			<th>订单人</th>
                        <th class="text-center">单价</th>
                        <th class="text-center">数量</th>
                        <th class="text-center">总价</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <s:iterator value="orderList">
									<tr>
										<td ><s:property value="id" /></td>
										
										<td >
										<h4><s:property value="bookName" /></h4>
                           				 <p>出版社：<s:property value="pub" /></p>
										</td>
										<td ><s:property value="person" /></td>
										<td class="text-center"><strong style="color:#6bc5a4">$ <s:property value="price" /></strong></td>
										<td class="text-center"><strong style="color:#6bc5a4"><s:property value="number" /></strong></td>
										<td class="text-center"><strong style="color:#6bc5a4" >$<s:property value="totalPrice" /></strong></td>
										</tr>
									</s:iterator>
						<tr>
                    <tr>
                        <td colspan="2" class="payment-method">
                            <h4>提示</h4>
                            <p>1. 订单出现问题请及时与商家联系.</p>
                            <p>2. 若点单数量与实际收货数量不符，请及时和商家联系.</p>
                            <br>
                        </td>
                        <td class="text-right" colspan="2">
                            <p>商品种量(种)</p>
                            <p>商品总数量(件)</p>
                            <p><strong>商品总价格</strong></p>
                        </td>
                        <td class="text-center">
                            <p><s:property value="orderList.size()"/></p>
                            <p><s:property value="totalNum"/></p>
                            <p><strong>$  <s:property value="total"/></strong></p>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
            <div class="text-center ">
            <s:if test="orderList.size()>0">
            	<button type="button" class="btn btn-success btn-lg" onclick="submitCart()"><i class="fa fa-check"></i> 提交订单 </button>
            </s:if><s:else>
        	    <button  type="button"  class="btn btn-success btn-lg" disabled="disabled"><i class="fa fa-check"></i> 提交订单 </button>
            </s:else>
            </div>
			
        </div>
        <footer class="">
            2017 &copy; GOBOOK<a href="http://www.zhiping.me/"
			target="_blank"> &nbsp;ZPING</a>
        </footer>
    </div>
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>


<!--common scripts for all pages-->
<script src="js/scripts.js"></script>
<script src="js/order/orderManager.js"></script>

</body>
</html>

