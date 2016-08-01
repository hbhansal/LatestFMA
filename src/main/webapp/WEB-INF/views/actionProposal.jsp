<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Potential Failure</title>
<!-- Core CSS - Include with every page -->
<link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href="assets/plugins/pace/pace-theme-big-counter.css"
	rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/main-style.css" rel="stylesheet" />
<!-- Page-Level CSS -->
<link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
</head>
<body>


	<div class="row">
		<!-- page header -->
		<div class="col-lg-12">
			<h3 class="page-header">
				<center>Action Proposal</center>
			</h3>
		</div>
		<!--end page header -->
	</div>


	<form action="" enctype="multipart/form-data" method=''>


		<div class="row">
			<div class="col-lg-12">
				<!-- Form Elements -->
				<div class="panel panel-default">
					<div class="panel-heading">Action Proposal</div>
					<div class="panel-body">
						<div class="row">
	
			
						</div>
					</div>

				</div>
			</div>
			<!-- End Form Elements -->
		</div>
		</div>

	</form>



	<div class="row">
		<form action="saveData" method="post" modelAttribute="actionProposalData">

			<sql:setDataSource var="" driver="com.mysql.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/test" user="root" password="" />

			<sql:query var="recFailureInfo" dataSource="${myDS}">
        SELECT * FROM RecFailure;
    </sql:query>

			<sql:query var="causeCodeinfo" dataSource="${myDS}">
        select distinct causeCode from causecodestatictable;
    </sql:query>

			<div id="inline" style="display: none">

				<p>
					<em>This</em> is some <strong>content</strong>.
				</p>

			</div>

			<div class="col-lg-12">
				<!-- Advanced Tables -->
				<div class="panel panel-default">
					<div class="panel-heading">Import details</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
										<th style="font-size: 80%;">S.No</th>
										<th style="font-size: 80%;">Root Cause Category</th>
										<th style="font-size: 80%;">Cause Code</th>
										<th style="font-size: 80%;">Action Proposal Description</th>
										<th style="font-size: 80%;">Action Proposal Category</th>
										<th style="font-size: 80%;">Selected for Implementation</th>
										<th style="font-size: 80%;">Reason/ rationale for
											selection of this action</th>
										<th style="font-size: 80%;">Reference Decision Analysis
											Report</th>
									</tr>
								</thead>



								<tbody>
									<c:forEach var="info" items="${recFailureInfo.rows}">
										<tr class="odd gradeX">

											<td style="font-size: 70%;"><c:out
													value="${info.calRef}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.category}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.customer}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.openDate}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.Priority}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.problemSummary}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.Status}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.AssignedTo}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.closedAt}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.closedBy}" /></td>
											<td style="font-size: 70%;"><c:out
													value="${info.fixedBy}" /></td>
											<%--  <td><c:out value="${info.causeCode}" /></td> --%>
											<td style="font-size: 70%;" class="file"><select
												name="select2">
													<option><c:out value="${info.causeCode}" /></option>
													<c:forEach var="ccinfo" items="${causeCodeinfo.rows}">
														<option><c:out value="${ccinfo.causeCode}" /></option>
													</c:forEach>
											</select></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<input type="submit" name="save" value="Save" /></input>
						</div>

					</div>
				</div>
				<!--End Advanced Tables -->
			</div>
	</div>

	</form>

	</div>


</body>