<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />
<script src="js/course/academy.js"></script>
	<script type="text/javascript" src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h4 class="modal-title">选择学院</h4>
		</div>
		<div class="modal-body" id="mainBoyd">
			<input type="text" id="search" name="search" placeholder="搜索"
				autocomplete="off" class="form-control placeholder-no-fix" onkeyup=" searchAcademy() ;"><br>
			<table class="academy display table table-bordered table-striped "
								id="academy">
								<thead>
									<tr >
										<th>学院号</th>
										<th>学院名</th>
									</tr>
								</thead>
								<tbody>
										<tr ondblclick="comformAca('数学')">
											<td>2</td>
											<td>数学</td>
										</tr>
											<tr ondblclick="comformAca('计算机')">
											<td>3</td>
											<td>计算机</td>
										</tr>
											<tr ondblclick="comformAca('艺术')">
											<td>4</td>
											<td>艺术</td>
										</tr>
								
									<s:iterator value="academyList">
									<div>
										<tr>
											<td><s:property value="id" /></td>
											<td><s:property value="name" /></td>
										</tr>
										</div>
									</s:iterator>
								</tbody>
							</table>
		</div>
	</div>
</div>
</html>