<%@page import="TOs.UserTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	session.removeAttribute("endUrl");
	String mseq = (String) session.getAttribute("sess_mseq");

	if (mseq != null || !mseq.equals("")) {
%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta name="author" content="soledot">
<meta name="description" content="애완동물을 위한, DogCatLife 입니다.">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="ALL">

<meta property="og:title" content="DogCatLife">
<meta property="og:description" content="애완동물을 위한, DogCatLife 입니다.">
<meta property="og:image" content="resources/images/logo.png">
<!-- <meta property="og:url" content="http://medisvc.com/home/fo/index.sd"> -->
<meta property="og:type" content="website">

<title>DogCatLife</title>

<!-- commoncss -->

<!-- Favicon and Touch Icons -->
<link href="resources/sitedesign/images/favicon.png" rel="shortcut icon"
	type="image/png">
<link href="resources/sitedesign/images/apple-touch-icon.png"
	rel="apple-touch-icon">
<link href="resources/sitedesign/images/apple-touch-icon-72x72.png"
	rel="apple-touch-icon" sizes="72x72">
<link href="resources/sitedesign/images/apple-touch-icon-114x114.png"
	rel="apple-touch-icon" sizes="114x114">
<link href="resources/sitedesign/images/apple-touch-icon-144x144.png"
	rel="apple-touch-icon" sizes="144x144">

<!-- Stylesheet -->
<link href="resources/sitedesign/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/sitedesign/css/jquery-ui.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/sitedesign/css/animate.css" rel="stylesheet"
	type="text/css">
<link href="resources/sitedesign/css/css-plugin-collections.css"
	rel="stylesheet" />
<!-- CSS | menuzord megamenu skins -->

<link id="menuzord-menu-skins"
	href="resources/sitedesign/css/menuzord-skins/menuzord-subcolored.css"
	rel="stylesheet" />

<!-- CSS | Main style file -->
<link href="resources/sitedesign/css/style-main.css" rel="stylesheet"
	type="text/css">
<!-- CSS | Preloader Styles -->

<!-- CSS | Custom Margin Padding Collection -->
<link
	href="resources/sitedesign/css/custom-bootstrap-margin-padding.css"
	rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="resources/sitedesign/css/responsive.css" rel="stylesheet"
	type="text/css">

<!-- CSS | Theme Color -->
<link href="resources/sitedesign/css/colors/theme-skin-blue.css"
	rel="stylesheet" type="text/css">

<link href="resources/soledot/css/fo/soledot.css" rel="stylesheet"
	type="text/css">

<!-- commonheaderjs -->

<!-- external javascripts -->
<script src="resources/sitedesign/js/jquery-2.2.0.min.js"></script>
<script src="resources/sitedesign/js/jquery-ui.min.js"></script>
<script src="resources/sitedesign/js/bootstrap.min.js"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="resources/sitedesign/js/jquery-plugin-collection.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#submit').on('click', function() {
			if ($('#id').val().trim() == "") {
				alert('ID를 입력해주세요.');
				return false;
			}
			if ($('#password').val().trim() == "") {
				alert('비밀번호를 입력해주세요.');
				return false
			}
			if (confirm('탈퇴하시겠습니까?')) {
				$('#frm').submit();
			} else {
				return false;
			}
		});
	});
</script>
</head>

<body
	class="has-side-panel side-panel-right fullwidth-page side-push-panel">

	<div class="body-overlay"></div>
	<div id="wrapper" class="clearfix">
		<!-- Header -->
		<jsp:include page="../login_menu.jsp"></jsp:include>

		<!-- Start main-content -->
		<div class="main-content">
			<!-- Section: inner-header -->
			<section class="inner-header divider layer-overlay overlay-light"
				style="background-image: url('resources/images/dogcat_board_main.jpg');"
				data-bg-img="resources/images/dogcat_board_main.jpg">
				<div class="container pt-90 pb-50">
					<!-- Section Content -->
					<div class="section-content">
						<div class="row">
							<div class="col-md-12 xs-text-center">
								<h3 class="text-theme-colored font-36">마이페이지</h3>
								<ol class="breadcrumb white mt-10">
									<li><a href="main.mysql">Home</a></li>
									<li><a>마이페이지</a></li>
									<li class="active text-theme-colored">회원 탈퇴</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section>
				<div class="container">
					<div class="row">
						<div class="col-sm-12 col-md-12">
							<div class="row">
								<jsp:include page="./mypagemenu.jsp"></jsp:include>
								<div class="col-md-1"></div>
								<div class="col-md-9">
									<!-- 게시판 타이틀 -->
									<div class="section-title mb-10">
										<div class="row">
											<div class="col-md-12">
												<div class="text-center">
													<h2 class="title heading-line-bottom">회원 탈퇴</h2>
												</div>
											</div>
										</div>
									</div>
									<form id="frm" name="frm" class="register-form" method="post"
										action="leave_ok.mysql">
										<input type="hidden" name="mseq" value="<%=mseq%>">
										<hr>
										<div class="row">
											<div class="form-group col-md-12">
												<label for="id">ID</label> <input id="id" name="id"
													class="form-control" type="text">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-12">
												<label for="password">비밀번호</label> <input id="password"
													name="password" class="form-control" type="password">
											</div>
										</div>
										<div class="form-group">
											<button id="submit"
												class="btn btn-dark btn-flat btn-lg btn-block mt-15"
												type="submit">회원 탈퇴</button>
										</div>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- end main-content -->
	</div>

	<!-- footer content -->
	<jsp:include page="../footer.jsp"></jsp:include>


	<!-- JS | Custom script for all pages -->
	<script src="resources/sitedesign/js/custom.js"></script>

	<!-- notify -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/mouse0270-bootstrap-notify/3.1.7/bootstrap-notify.min.js"></script>

	<!-- jquery-cookie-->
	<script src="resources/common/js/jquery-cookie/jquery.cookie.js"></script>

	<!-- soledot -->
	<script src="resources/soledot/js/fo/soledot.js"></script>

	<script src="resources/common/js/jquery-validation/jquery.validate.js"></script>
	<script
		src="resources/common/js/jquery-validation/additional-methods.js"></script>
	<script
		src="resources/common/js/jquery-validation/localization/messages_ko.js"></script>

</body>
</html>
<%
	} else {
		out.println("<script type='text/javascript'>");
		out.println("alert('로그인해주세요.');");
		out.println("location.href='login.mysql';");
		out.println("</script>");
	}
%>