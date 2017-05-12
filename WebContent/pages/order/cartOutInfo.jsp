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

  <title>订单详情</title>

  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

</head>

<body class="print-body">

<section>

    <!--body wrapper start-->
        <div class="wrapper">
		<input type="hidden"  id="cartId"  value="<s:property value="id"/>" >
            <div class="panel">
                <div class="panel-body invoice">
                      <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <h1 class="invoice-title">订单：<s:property value="cart.id"/></h1>
                        </div>
                        <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4">
                            <img class="inv-logo" src="images/invoice-logo.jpg" alt=""/>
                            <p >订单状态 <br/> </p>
                              <h4> <s:if test="cart.status==0">未确认</s:if><s:else>以确定 </s:else> </h4><br/>
                               
                        </div>
                    </div>
                    <div class="invoice-address">
                        <div class="row">
                            <div class="col-md-5 col-sm-5">
                                <h4 class="inv-to">下单人:</h4>
                                <h2 class="corporate-id"> <s:property value="cart.person"/></h2>
                                <p>
                                    电话：<s:property value="cart.personPhone"/><br>
                                    邮箱：<s:property value="cart.personMail"/><br>
                                </p>

                            </div>
                            <div class="col-md-4 col-md-offset-3 col-sm-4 col-sm-offset-3">
                                <div class="inv-col"><span>订单号：</span> <s:property value="cart.id"/></div>
                                <div class="inv-col"><span>订单日期 :</span><s:date name="cart.date" format="yyyy-MM-dd hh:mm:ss" /> </div>
                                <h1 class="t-due">总价</h1>
                                <h2 class="amnt-value">$  <s:property value="cart.price"/></h2>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table table-bordered table-invoice">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>商品信息</th>
                        <th class="text-center">单价</th>
                        <th class="text-center">数量</th>
                        <th class="text-center">库存量</th>
                        <th class="text-center">库存位置</th>
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
										<td class="text-center"><strong style="color:#6bc5a4">$ <s:property value="price" /></strong></td>
										<td class="text-center"><strong style="color:#428bca"><s:property value="number" /></strong></td>
										<td class="text-center"><strong style="color:#6bc5a4"><s:property value="storeNumber+number" /></strong></td>
										<td class="text-center"><strong><s:property value="storePlace" /></strong></td>
										<td class="text-center"><strong style="color:#6bc5a4">$<s:property value="totalPrice" /></strong></td>
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
                            <p><s:property value="cart.totalNum"/></p>
                            <p><strong>$  <s:property value="cart.price"/></strong></p>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>


<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

<script type="text/javascript">
window.print();
    
</script>

</body>
</html>
