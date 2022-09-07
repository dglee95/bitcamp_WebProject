<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" ng-app="app" class="ng-scope">
<head>
<style type="text/css">
[uib-typeahead-popup].dropdown-menu {
	display: block;
}
</style>
<style type="text/css">
.uib-time input {
	width: 50px;
}
</style>
<style type="text/css">
[uib-tooltip-popup].tooltip.top-left>.tooltip-arrow, [uib-tooltip-popup].tooltip.top-right>.tooltip-arrow,
	[uib-tooltip-popup].tooltip.bottom-left>.tooltip-arrow, [uib-tooltip-popup].tooltip.bottom-right>.tooltip-arrow,
	[uib-tooltip-popup].tooltip.left-top>.tooltip-arrow, [uib-tooltip-popup].tooltip.left-bottom>.tooltip-arrow,
	[uib-tooltip-popup].tooltip.right-top>.tooltip-arrow, [uib-tooltip-popup].tooltip.right-bottom>.tooltip-arrow,
	[uib-tooltip-html-popup].tooltip.top-left>.tooltip-arrow, [uib-tooltip-html-popup].tooltip.top-right>.tooltip-arrow,
	[uib-tooltip-html-popup].tooltip.bottom-left>.tooltip-arrow, [uib-tooltip-html-popup].tooltip.bottom-right>.tooltip-arrow,
	[uib-tooltip-html-popup].tooltip.left-top>.tooltip-arrow, [uib-tooltip-html-popup].tooltip.left-bottom>.tooltip-arrow,
	[uib-tooltip-html-popup].tooltip.right-top>.tooltip-arrow, [uib-tooltip-html-popup].tooltip.right-bottom>.tooltip-arrow,
	[uib-tooltip-template-popup].tooltip.top-left>.tooltip-arrow, [uib-tooltip-template-popup].tooltip.top-right>.tooltip-arrow,
	[uib-tooltip-template-popup].tooltip.bottom-left>.tooltip-arrow, [uib-tooltip-template-popup].tooltip.bottom-right>.tooltip-arrow,
	[uib-tooltip-template-popup].tooltip.left-top>.tooltip-arrow, [uib-tooltip-template-popup].tooltip.left-bottom>.tooltip-arrow,
	[uib-tooltip-template-popup].tooltip.right-top>.tooltip-arrow, [uib-tooltip-template-popup].tooltip.right-bottom>.tooltip-arrow,
	[uib-popover-popup].popover.top-left>.arrow, [uib-popover-popup].popover.top-right>.arrow,
	[uib-popover-popup].popover.bottom-left>.arrow, [uib-popover-popup].popover.bottom-right>.arrow,
	[uib-popover-popup].popover.left-top>.arrow, [uib-popover-popup].popover.left-bottom>.arrow,
	[uib-popover-popup].popover.right-top>.arrow, [uib-popover-popup].popover.right-bottom>.arrow,
	[uib-popover-html-popup].popover.top-left>.arrow, [uib-popover-html-popup].popover.top-right>.arrow,
	[uib-popover-html-popup].popover.bottom-left>.arrow, [uib-popover-html-popup].popover.bottom-right>.arrow,
	[uib-popover-html-popup].popover.left-top>.arrow, [uib-popover-html-popup].popover.left-bottom>.arrow,
	[uib-popover-html-popup].popover.right-top>.arrow, [uib-popover-html-popup].popover.right-bottom>.arrow,
	[uib-popover-template-popup].popover.top-left>.arrow, [uib-popover-template-popup].popover.top-right>.arrow,
	[uib-popover-template-popup].popover.bottom-left>.arrow, [uib-popover-template-popup].popover.bottom-right>.arrow,
	[uib-popover-template-popup].popover.left-top>.arrow, [uib-popover-template-popup].popover.left-bottom>.arrow,
	[uib-popover-template-popup].popover.right-top>.arrow, [uib-popover-template-popup].popover.right-bottom>.arrow
	{
	top: auto;
	bottom: auto;
	left: auto;
	right: auto;
	margin: 0;
}

[uib-popover-popup].popover, [uib-popover-html-popup].popover, [uib-popover-template-popup].popover
	{
	display: block !important;
}
</style>
<style type="text/css">
.uib-datepicker .uib-title {
	width: 100%;
}

.uib-day button, .uib-month button, .uib-year button {
	min-width: 100%;
}

.uib-datepicker-popup.dropdown-menu {
	display: block;
	float: none;
	margin: 0;
}

.uib-button-bar {
	padding: 10px 9px 2px;
}

.uib-left, .uib-right {
	width: 100%
}
</style>
<style type="text/css">
.uib-position-measure {
	display: block !important;
	visibility: hidden !important;
	position: absolute !important;
	top: -9999px !important;
	left: -9999px !important;
}

.uib-position-scrollbar-measure {
	position: absolute;
	top: -9999px;
	width: 50px;
	height: 50px;
	overflow: scroll;
}
</style>
<style type="text/css">
.ng-animate.item:not(.left):not(.right) {
	-webkit-transition: 0s ease-in-out left;
	transition: 0s ease-in-out left
}
</style>
<style type="text/css">
@charset "UTF-8"; 

[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak,
	.x-ng-cloak, .ng-hide:not(.ng-hide-animate) {
	display: none !important;
}

ng\:form {
	display: block;
}

.ng-animate-shim {
	visibility: hidden;
}

.ng-anchor {
	position: absolute;
}
</style>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://connect.facebook.net/signals/config/433382963854092?v=2.9.79&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=UA-46055939-10"></script>
<script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {dataLayer.push(arguments);}

        gtag('js', new Date());
        gtag('config', 'UA-46055939-10');
    </script>

<!-- Facebook Pixel Code -->
<script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window,document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '433382963854092');
        fbq('track', 'PageView');
        fbq('track', 'ViewContent');
    </script>
<noscript>
	<img height="1" width="1"
		src="https://www.facebook.com/tr?id=433382963854092&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="naver-site-verification"
	content="2a4490aa01efd7b04e64611a72e2966cf2c2ffc8">
<meta name="google-site-verification"
	content="TJROdRzU0Di3UdFzsQG2qmATcvtl4Qobz7Akic3ewOA">

<link rel="shortcut icon" type="image/png"
	href="/static/img/favicon.ico">
<link rel="shortcut icon" type="image/x-icon"
	href="/static/img/favicon.ico">
<link href="/static/bootstrap_dist/css/bootstrap.css" rel="stylesheet">
<link href="/static/css/mobile_view.css?20151201959" rel="stylesheet">

<title>오늘도 이색 데이트, 데이트팝</title>
<meta name="description" content="400만 다운로드를 기록한 데이트코스 1위 앱">

<meta property="fb:app_id" content="653939254697232">

<meta property="al:android:url" content="datepopapp://tenfingers">
<meta property="al:android:package"
	content="com.tenfingers.seouldatepop">
<meta property="al:android:app_name" content="데이트팝">

<meta property="al:ios:app_store_id" content="815000358">
<meta property="al:ios:url" content="seouldatepop://">
<meta property="al:ios:app_name" content="데이트팝">

<meta property="al:web:should_fallback" content="true">
<meta property="al:web:url" content="https://datepop.co.kr/view/">

<meta property="og:title" content="오늘도 이색 데이트, 데이트팝">
<meta property="og:type" content="website">
<meta property="og:description" content="400만 다운로드를 기록한 데이트코스 1위 앱">
<meta property="og:url" content="https://datepop.co.kr/view/">
<meta property="og:image"
	content="https://datepop.co.kr/static/img/new_og_image.png">

<!-- css -->
<link href="/static/bootstrap_dist/css/bootstrap.css" rel="stylesheet">
<link
	href="/static/bower_components/bootstrap-toggle/css/bootstrap-toggle.min.css"
	rel="stylesheet">
<link href="/static/Ecommerce/css/popup.css" rel="stylesheet">

<!-- js -->
<script src="/static/js/jquery-1.11.1.min.js"></script>
<script src="/static/bootstrap_dist/js/bootstrap.min.js"></script>
<script src="/static/js/jquery.formset.js"></script>

<script src="/static/bower_components/angular/angular.min.js"></script>
<script
	src="/static/bower_components/angular-animate/angular-animate.min.js"></script>
<script src="/static/js/ui-bootstrap-tpls-1.2.5.min.js"></script>
<script src="/static/js/spin.min.js"></script>
<style type="text/css"></style>
<script src="/static/js/angular-spinner.min.js"></script>
<script
	src="/static/bower_components/bootstrap-toggle/js/bootstrap-toggle.min.js"></script>
<script src="/static/Ecommerce/js/js.cookie.min.js"></script>
<script src="/static/Ecommerce/js/popup.js"></script>

<style type="text/css">
@import url(https://fonts.googleapis.com/earlyaccess/notosanskr.css);

.wrapper {
	width: 100%;
	min-height: 100%;
	margin: 0 auto;
	padding: 0;
	text-align: center;
	font-family: "Noto Sans KR", sans-serif;
}

html, body {
	padding: 0;
	margin: 0 auto;
	font-size: 16px;
}

footer {
	left: 0;
	bottom: 0;
	width: 100%
}

.header {
	width: 100%;
	background-color: #f4f4f4;
}

.inner_header {
	height: 68px;
	margin: auto;
	max-width: 770px;
}

.header_logo {
	float: left;
	width: 30%;
	padding-top: 11px;
	padding-left: 10px;
	text-align: left;
}

#logo_img {
	width: 48px;
	height: 48px;
}

.header_menubar {
	float: right;
	width: 70%;
	text-align: right;
	padding-top: 24px;
}

ul {
	list-style-type: none;
}

li {
	display: inline;
}

#menubar_sub_linebar {
	font-size: 1rem;
	color: #979797;
	padding: 0px;
	font-weight: 500;
	text-decoration: none;
}

#menubar_subtitle {
	margin-left: 14px;
	margin-right: 14px;
	padding: 0px;
	font-size: 1rem;
	color: #979797;
	text-decoration: none;
}
</style>

<style type="text/css">
.web_main_title_image {
	width: 100%;
	height: 240px;
	max-height: 240px;
	line-height: 240px;
	vertical-align: middle;
	background-color: #00EAEB;
}

#web_main_title_image_img {
	margin: auto;
	height: auto;
	max-width: 399px;
	width: 100%;
}
</style>

<style type="text/css">
.floating-menu {
	box-shadow: 0px 0px 10px #b7b7b7;
	background: white;
	border-radius: 10px;
	width: 124px;
	height: 506px;
	z-index: 9999;
	overflow: hidden;
	position: fixed;
	top: 220px;
	right: 115px;
	padding: 0px;
	margin-bottom: 0px;
}

.floating-menu a {
	font-size: 1rem;
	display: block;
	color: black;
	text-decoration: none;
}

.floating-menu-title p {
	font-size: 1.125em;
	font-weight: bold;
	margin-top: 23px;
	color: black;
}

.icon {
	margin-top: 34px;
	margin-bottom: 10px;
}

.icon-ceo {
	width: 100%;
	height: 100%;
	max-width: 40px;
	max-height: 40px;
}

.icon-call {
	width: 100%;
	height: 100%;
	max-width: 40px;
	max-height: 40px;
}

.icon-email {
	width: 100%;
	height: 100%;
	max-width: 40px;
	max-height: 40px;
}

.icon-kakao {
	width: 100%;
	height: 100%;
	max-width: 40px;
	max-height: 40px;
}

.icon-text {
	font-size: 1rem;
	color: black;
}
</style>

<style type="text/css">
.today-course {
	width: 100%;
}

.today-course-header {
	margin: auto;
	max-width: 770px;
	padding-left: 21px;
	padding-right: 18px;
	height: 56px;
	width: 100%;
	overflow: hidden;
	line-height: 56px;
	vertical-align: middle;
}

#today-course-header-title {
	float: left;
	font-size: 1.25rem;
	font-weight: bold;
	color: black;
	text-decoration: none;
}

#today-course-header-subtitle {
	float: left;
	font-size: 0.9375rem;
	margin-left: 7px;
	color: black;
	text-decoration: none;
}

.today-course-content {
	margin: auto;
	max-width: 770px;
	padding-left: 18px;
	padding-right: 18px;
	overflow: hidden;
	width: 100%;
}

.inner-today-course-content {
	width: 32.28%;
	float: left;
	cursor: pointer;
}

.today-course-content-img-wrapper {
	position: relative;
	width: 100%;
	max-height: 280px;
}

#today-course-content-img {
	width: 100%;
	height: 280px;
}

#inner-today-course-content-textwrapper {
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: 100%;
	height: 280px;
	text-align: center;
	z-index: 10;
	background-color: white;
	background-color: rgba(255, 255, 255, 0.7);
}

#today-course-title {
	width: 100%;
	padding-left: 41px;
	padding-right: 41px;
	margin-top: 71px;
	font-size: 1.25rem;
	font-weight: bold;
	color: black;
}

#today-course-area {
	width: 100%;
	margin-top: 15px;
	font-size: 1rem;
	font-weight: bold;
	color: black;
}

#today-course-short-note {
	width: 100%;
	padding-left: 18px;
	padding-right: 18px;
	margin-top: 14px;
	margin-bottom: 71px;
	font-size: 1rem;
	color: black;
}

<!--
-->
.today-course-header-mobile {
	width: 100%;
	margin: auto;
	max-width: 770px;
	padding-left: 21px;
	padding-right: 18px;
	overflow: hidden;
	height: 24px;
	line-height: 24px;
	vertical-align: middle;
}

#today-course-header-subtitle-mobile {
	width: 100%;
	height: 24px;
	padding-left: 21px;
	padding-right: 18px;
	margin-top: 11px;
	margin-bottom: 11px;
	text-align: left;
	font-size: 0.9375rem;
	color: black;
	text-decoration: none;
}

#today-course-header-title-mobile {
	float: left;
	font-size: 1.25rem;
	font-weight: bold;
	color: black;
	text-decoration: none;
}

<!--
-->
.inner-today-course-content-mobile {
	width: 100%;
	float: left;
}

.today-course-content-img-wrapper-mobile {
	position: relative;
	width: 100%;
	max-height: 180px;
	overflow: hidden;
}

#today-course-content-img-mobile {
	float: left;
	width: 100%;
	height: 100%;
	margin-top: -166px;
}

#inner-today-course-content-textwrapper-mobile {
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: 100%;
	height: 180px;
	text-align: center;
	z-index: 10;
	background-color: white;
	background-color: rgba(255, 255, 255, 0.7);
}

#today-course-title-mobile {
	width: 100%;
	padding-left: 29px;
	padding-right: 29px;
	margin-top: 38px;
	font-size: 1.25rem;
	font-weight: bold;
	text-align: center;
	color: black;
}

#today-course-area-mobile {
	width: 100%;
	margin-top: 10px;
	font-size: 1rem;
	font-weight: bold;
	color: black;
}

#today-course-short-note-mobile {
	width: 100%;
	padding-left: 29px;
	padding-right: 29px;
	margin-top: 9px;
	margin-bottom: 38px;
	font-size: 1rem;
	color: black;
}
</style>

<style type="text/css">
.week-showshowshow {
	width: 100%;
}

.week-showshowshow-title {
	margin: auto;
	max-width: 770px;
	padding-left: 21px;
	padding-right: 18px;
	height: 56px;
	width: 100%;
	text-align: left;
	font-size: 1.25rem;
	font-weight: bold;
	color: black;
	line-height: 56px;
	vertical-align: middle;
}

.week-showshowshow-content {
	margin: auto;
	max-width: 770px;
	padding-left: 18px;
	padding-right: 18px;
	overflow: hidden;
	width: 100%;
}

.inner-week-showshowshow-content-left {
	width: 49%;
	float: left;
	cursor: pointer;
}

.inner-week-showshowshow-content-right {
	width: 49%;
	float: right;
	cursor: pointer;
}

.week-showshowshow-content-text-wrapper {
	padding-left: 8px;
	padding-right: 8px;
	width: 100%;
	max-height: 60px;
}

.week-showshowshow-content-img-wrapper {
	position: relative;
	overflow: hidden;
	width: 100%;
	max-height: 180px;
}

#week-showshowshow-content-img {
	width: 100%;
	max-height: 100%;
	margin-top: -30px;
}

.week-showshowshow-content-title-wrapper {
	width: 100%;
	max-width: 360px;
	padding-top: 11px;
	vertical-align: top;
	text-align: left;
	white-space: nowrap;
	overflow: hidden;
}

.week-showshowshow-content-short-note-wrapper {
	overflow: hidden;
	width: 100%;
	padding-top: 2px;
	padding-bottom: 10px;
	vertical-align: top;
}

#week-showshowshow-shop-title {
	font-size: 0.875rem;
	color: black;
	font-weight: bold;
	margin-right: 3px;
	display: inline-block;
}

#week-showshowshow-subway-station {
	font-size: 0.875rem;
	color: black;
	display: inline-block;
}

#week-showshowshow-short-note {
	font-size: 0.875rem;
	float: left;
	width: 100%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: block;
	text-align: left;
}
</style>

<style type="text/css">
.today-popdeal {
	width: 100%;
}

.today-popdeal-header {
	width: 100%;
	margin: auto;
	max-width: 770px;
	padding-left: 18px;
	padding-right: 18px;
	overflow: hidden;
	height: 56px;
	line-height: 56px;
	vertical-align: middle;
}

#today-popdeal-title {
	float: left;
	font-size: 1.25rem;
	font-weight: bold;
	color: black;
	text-decoration: none;
}

#today-popdeal-subtitle {
	float: left;
	font-size: 0.9375rem;
	margin-left: 7px;
	color: black;
	text-decoration: none;
}

#today-popdeal-more {
	float: right;
	font-size: 1rem;
	margin-right: 13px;
	color: #b0b0b0;
	text-decoration: none;
}

.today-popdeal-content {
	margin: auto;
	max-width: 770px;
	padding-left: 18px;
	padding-right: 18px;
	overflow: hidden;
	width: 100%;
}

.inner-today-popdeal-content-left {
	width: 49%;
	float: left;
	cursor: pointer;
}

.inner-today-popdeal-content-right {
	width: 49%;
	float: right;
	cursor: pointer;
}

.popdeal_content_text_wrapper {
	padding-left: 15px;
	padding-right: 15px;
	width: 100%;
	max-height: 68px;
	background-color: #F2F2F2;
}

.popdeal_img_wrapper {
	position: relative;
	overflow: hidden;
	width: 100%;
	max-height: 204px;
}

#popdeal_img {
	width: 100%;
	max-height: 100%;
	margin-top: -30px;
}

#discount {
	position: absolute;
	display: table;
	top: 11.27%;
	right: 4.1667%;
	height: 68px;
	width: 68px;
	margin: 0;
	padding: 0;
}

#discount_inner {
	display: table-cell;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	border-radius: 50%;
	vertical-align: middle;
	line-height: 1.1;
	font-size: 1.25rem;
	font-weight: bold;
	text-align: center;
	color: #ffffff;
	background-color: #05d7e2;
}

.shop_title_wrapper {
	overflow: hidden;
	width: 100%;
	padding-top: 11px;
	vertical-align: top;
}

#shop_title {
	font-size: 0.875rem;
	float: left;
	width: 70%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: block;
	text-align: left;
	font-weight: 500;
	vertical-align: top;
}

#shop_net_price {
	font-size: 0.875rem;
	float: right;
	width: 28%;
	text-align: right;
	font-weight: bold;
	vertical-align: top;
	text-decoration: line-through;
}

.shop_item_title_wrapper {
	overflow: hidden;
	width: 100%;
	padding-top: 2px;
	padding-bottom: 10px;
	vertical-align: top;
}

#shop_item_title {
	font-size: 1rem;
	float: left;
	width: 70%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: block;
	text-align: left;
	font-weight: bold;
}

#shop_current_price {
	font-size: 1.125rem;
	float: right;
	width: 28%;
	text-align: right;
	font-weight: bold;
	vertical-align: top;
}

.today-popdeal-header-mobile {
	width: 100%;
	margin: auto;
	max-width: 770px;
	padding-left: 21px;
	padding-right: 18px;
	overflow: hidden;
	height: 24px;
	line-height: 24px;
	vertical-align: middle;
}

#today-popdeal-title-mobile {
	float: left;
	font-size: 1.25rem;
	font-weight: bold;
	color: black;
	text-decoration: none;
}

#today-popdeal-more-mobile {
	float: right;
	font-size: 1rem;
	color: #b0b0b0;
	text-decoration: none;
}

#today-popdeal-subtitle-mobile {
	width: 100%;
	height: 24px;
	padding-left: 21px;
	padding-right: 18px;
	margin-top: 11px;
	margin-bottom: 11px;
	text-align: left;
	font-size: 0.9375rem;
	color: black;
	text-decoration: none;
}
</style>

<style type="text/css">
.contact-title {
	margin: auto;
	padding: 0 18px 0 18px;
	max-width: 770px;
	height: 56px;
	width: 100%;
	text-align: center;
	font-size: 1.25rem;
	font-weight: bold;
	color: black;
	line-height: 56px;
	vertical-align: middle;
}

.floating-menu-mobile {
	width: 100%;
	margin: auto;
	max-width: 770px;
	padding: 0 18px 0 18px;
	text-align: center;
	overflow: hidden;
}

.floating-menu-icon-mobile {
	width: 33%;
	float: left;
	margin-top: 10px;
}

.icon-call-mobile {
	max-width: 40px;
	max-height: 40px;
}

.icon-email-mobile {
	max-width: 40px;
	max-height: 40px;
}

.icon-kakao-mobile {
	max-width: 40px;
	max-height: 40px;
}

.icon-text-mobile {
	margin-top: 10px;
	font-size: 1rem;
	color: black;
}
</style>

<style type="text/css">
.exit_link {
	width: 100%;
}

.inner_exit_link {
	margin: auto;
	max-width: 770px;
	height: 140px;
	overflow: hidden;
}

.exit_link_left {
	float: left;
	width: 50%;
	margin: 0px;
	height: 100%;
	padding: 0px 7px 0px 18px;
	max-height: 140px;
	cursor: pointer;
}

.exit_link_right {
	float: right;
	width: 50%;
	margin: 0px;
	height: 100%;
	padding: 0px 18px 0px 7px;
	max-height: 140px;
	cursor: pointer;
}

#ceo_case_link {
	border: none;
	height: 100%;
	max-height: 140px;
	max-width: 360px;
	width: 100%;
	outline: 0;
}

#app_download_link {
	border: none;
	height: 100%;
	max-height: 140px;
	max-width: 360px;
	width: 100%;
	outline: 0;
}

#ceo_case_link_img {
	max-width: 360px;
	height: 140px;
}

#app_download_link_img {
	max-width: 360px;
	height: 140px;
}

.inner_exit_link_mobile {
	margin: auto;
	max-width: 770px;
}

.exit_link_mobile {
	
}

#exit_link_mobile {
	width: 100%;
	margin: 0px;
	height: 140px;
	max-height: 140px;
	padding-left: 18px;
	padding-right: 18px;
	cursor: pointer;
}

#ceo_case_link_mobile {
	display: block;
	border: none;
	height: 140px;
	width: 100%;
	max-width: 770px;
	max-height: 140px;
	outline: 0;
	overflow: hidden;
}

#app_download_link_mobile {
	display: block;
	border: none;
	height: 140px;
	width: 100%;
	max-width: 770px;
	max-height: 140px;
	outline: 0;
	overflow: hidden;
}

#ceo_case_link_img_mobile {
	float: left;
	width: 100%;
	min-width: 100%;
	height: auto;
}

#app_download_link_img_mobile {
	float: left;
	width: 100%;
	min-width: 100%;
	height: auto;
}
</style>

<style type="text/css">
.footer {
	background-color: #F2F2F2;
	width: 100%;
}

.company_wrapper {
	margin: auto;
	max-width: 770px;
}

.link_wrapper {
	width: 100%;
	padding-top: 20px;
	display: flex;
	justify-content: space-evenly;
}

.link-item {
	font-size: 0.875rem;
	height: 17px;
	line-height: 1.5;
	text-align: center;
	color: rgba(0, 0, 0, 0.87);
}

.etc {
	padding: 18px 18px 30px;
	width: 100%;
	height: 100%;
	max-height: 166px;
	font-size: 0.8125rem;
	line-height: 1.5;
	text-align: left;
	color: rgba(0, 0, 0, 0.35);
}

#footer-text {
	color: black;
	text-decoration: none;
}
</style>

<style type="text/css">
#div_hr_20 {
	height: 20px;
}

#div_hr_26 {
	height: 26px;
}

#div_hr_28 {
	height: 28px;
}

#div_hr_36 {
	height: 36px;
}

#div_hr_50 {
	height: 50px;
}

#div_hr_60 {
	height: 60px;
}
</style>

</head>

<body>

	<!-- app down modal -->
	<div class="modal hide" id="app_down_popup_2" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<img src="/static/img/popdeal_web/cancel.png"
						onclick="closeAppDownModal('app_down_popup_2')">
				</div>
				<div class="modal-body_2"></div>
				<div class="modal-footer_2">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						onclick="window.open('https://datepop.co.kr/so/?id=9')">
						<span>데이트팝 앱에서</span><br>
						<span><b>훨~씬 더 많은 데이트코스 보기</b></span>
					</button>
				</div>
			</div>

		</div>
	</div>
	<!-- -->

	<div ng-controller="DatepopWebMain" class="ng-scope">
		<div class="wrapper">
			<header class="header">
				<div class="inner_header">
					<div class="header_logo">
						<img id="logo_img"
							src="/static/img/datepop_web_main/main_logo.png">
					</div>
					<ul class="hidden-xs header_menubar">
						<li><a id="menubar_subtitle" style="font-weight: bold"
							target="_blank" href="http://ceo.datepop.co.kr/ceo/contact"
							onclick="gtag('event', '상단 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '제휴 문의(PC)'});">제휴
								문의</a></li>
						<li><a id="menubar_subtitle" target="_blank"
							href="http://goto.kakao.com/@데이트팝"
							onclick="gtag('event', '상단 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '카카오톡(PC)'});">카카오톡</a>
						</li>
						<li><a id="menubar_sub_linebar"> | </a></li>
						<li><a id="menubar_subtitle" target="_blank"
							href="https://ceo.datepop.co.kr/ceo/contact"
							onclick="gtag('event', '상단 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '메일(PC)'});">메일</a>
						</li>
						<li><a id="menubar_sub_linebar"> | </a></li>
						<li><a id="menubar_subtitle" href="tel:070-4410-8836"
							onclick="gtag('event', '상단 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '전화(PC)'});">전화</a>
						</li>
					</ul>
				</div>
			</header>

			<section class="hidden-xs floating-menubar">
				<ul class="floating-menu">
					<li class="floating-menu-title">
						<p>제휴 제안</p>
					</li>
					<li class="floating-menu-icon"><a href="tel:070-4410-8836"
						onclick="gtag('event', '플로팅 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '전화 문의(PC)'});">
							<span> <img class="icon icon-call"
								src="/static/img/datepop_web_main/contact_call.png">
						</span>
							<div class="icon-text">전화 문의</div>
					</a></li>
					<li class="floating-menu-icon"><a target="_blank"
						href="http://bit.ly/2NhXciw"
						onclick="gtag('event', '플로팅 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '1:1 카톡문의(PC)'});">
							<span> <img class="icon icon-kakao"
								src="/static/img/datepop_web_main/contact_kakaotalk.png">
						</span>
							<div class="icon-text">1:1 카톡문의</div>
					</a></li>
					<li class="floating-menu-icon"><a target="_blank"
						href="http://bit.ly/2NnacDi"
						onclick="gtag('event', '플로팅 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '이메일 문의(PC)'});">
							<span> <img class="icon icon-email"
								src="/static/img/datepop_web_main/contact_mail.png">
						</span>
							<div class="icon-text">이메일 문의</div>
					</a></li>
					<li class="floating-menu-icon"
						onclick="gtag('event', '플로팅 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '제휴 안내(PC)'});">
						<a target="_blank" href="http://bit.ly/2M1Ob8s"> <span>
								<img class="icon icon-ceo"
								src="/static/img/datepop_web_main/contact_interview.png">
						</span>
							<div class="icon-text">제휴 안내</div>
					</a>
					</li>
				</ul>
			</section>

			<section class="web_main_title_image">
				<img id="web_main_title_image_img"
					src="/static/img/datepop_web_main/top_img.png">
			</section>

			<div class="hidden-xs" id="div_hr_36"></div>

			<div class="hidden-lg hidden-md hidden-sm" id="div_hr_20"></div>

			<section class="week-showshowshow">
				<div class="week-showshowshow-title">이번 주 인기 Show Show Show</div>

				<div class="hidden-xs week-showshowshow-content">




					<!-- ngIf: 0%2==0 -->
					<div ng-if="0%2==0"
						class="inner-week-showshowshow-content-left ng-scope"
						target="_self" ng-click="go_to_spot_view('/view/spot/아트쉬프트')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '아트쉬프트'});">
						<!-- ngIf: 0>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/junggu/11659_spot_main_feed_thumbnail_1647336581.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('1', '아트쉬프트')" class="ng-binding">1위
									| 아트쉬프트</div>
								<div id="week-showshowshow-subway-station">을지로3가역 7번 출구 도보
									1분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">들어서는 순간 동화 속에 온 듯한
									분위기! 호차타, 코코프레시 등 이색적인 음료를 맛 볼 수 있는 힙지로 전시 카페</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 0%2==0 -->

					<!-- ngIf: 0%2!=0 -->



					<!-- ngIf: 1%2==0 -->

					<!-- ngIf: 1%2!=0 -->
					<div ng-if="1%2!=0"
						class="inner-week-showshowshow-content-right ng-scope"
						target="_self" ng-click="go_to_spot_view('/view/spot/코칭심리카페')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '코칭심리카페'});">
						<!-- ngIf: 1>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/mapo/5927_spot_main_feed_thumbnail__fzq2QSZ.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('2', '코칭심리카페')" class="ng-binding">2위
									| 코칭심리카페</div>
								<div id="week-showshowshow-subway-station">홍대입구역 9번 출구 도보
									3분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">성격 검사와 분석을 통해 서로가
									몰랐던 각자의 성격을 알고, 그에 맞는 코칭까지 받아볼 수 있는 심리 카페</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 1%2!=0 -->



					<!-- ngIf: 2%2==0 -->
					<div ng-if="2%2==0"
						class="inner-week-showshowshow-content-left ng-scope"
						target="_self" ng-click="go_to_spot_view('/view/spot/쌈바플스방')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '쌈바플스방'});">
						<!-- ngIf: 2>1 -->
						<div ng-if="2>1" style="height: 8px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 2>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/gwangjin/8758_spot_main_feed_thumbnail__DjDKQ1v.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('3', '쌈바플스방')" class="ng-binding">3위
									| 쌈바플스방</div>
								<div id="week-showshowshow-subway-station">건대입구역 2번 출구 도보
									4분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">피시방을 자주 가는 커플이라면
									가끔은 플스방데이트! 겜하면서 싹트는 전우애 아아.. 아니 사랑~!</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 2%2==0 -->

					<!-- ngIf: 2%2!=0 -->



					<!-- ngIf: 3%2==0 -->

					<!-- ngIf: 3%2!=0 -->
					<div ng-if="3%2!=0"
						class="inner-week-showshowshow-content-right ng-scope"
						target="_self"
						ng-click="go_to_spot_view('/view/spot/hide-and-seek-홍대점')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': 'HIDE AND SEEK 홍대점'});">
						<!-- ngIf: 3>1 -->
						<div ng-if="3>1" style="height: 8px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 3>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/guro/11812_spot_main_feed_thumbnail_1646817119.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('4', 'HIDE AND SEEK 홍대점')"
									class="ng-binding">4위 | HIDE AND SEEK ...</div>
								<div id="week-showshowshow-subway-station">홍대입구역 1번 출구 도보
									6분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">'IoT글러브'를 착용해 다양한
									아이템 활용가능! 숨바꼭질을 기반으로한 최초 오프라인 e스포츠</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 3%2!=0 -->



					<!-- ngIf: 4%2==0 -->
					<div ng-if="4%2==0"
						class="inner-week-showshowshow-content-left ng-scope"
						target="_self"
						ng-click="go_to_spot_view('/view/spot/연애하기-좋은-날-연극')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '연애하기 좋은 날 (연극)'});">
						<!-- ngIf: 4>1 -->
						<div ng-if="4>1" style="height: 8px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 4>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/jongro/6834_spot_main_feed_thumbnail__kRTy6KH.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('5', '연애하기 좋은 날 (연극)')"
									class="ng-binding">5위 | 연애하기 좋은 날 (연극)...</div>
								<div id="week-showshowshow-subway-station">혜화역 2번 출구 도보 8분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">썸남썸녀, 100일 미만 커플,
									장수커플 등등! 연애하는 모든이들을 설레게하는 연극♡</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 4%2==0 -->

					<!-- ngIf: 4%2!=0 -->



					<!-- ngIf: 5%2==0 -->

					<!-- ngIf: 5%2!=0 -->
					<div ng-if="5%2!=0"
						class="inner-week-showshowshow-content-right ng-scope"
						target="_self" ng-click="go_to_spot_view('/view/spot/카페-바우')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '카페 바우'});">
						<!-- ngIf: 5>1 -->
						<div ng-if="5>1" style="height: 8px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 5>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/mapo/12355_spot_main_feed_thumbnail_1660888464.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('6', '카페 바우')" class="ng-binding">6위
									| 카페 바우</div>
								<div id="week-showshowshow-subway-station">홍대입구역 8번 출구 도보
									6분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">200년 된 빈티지 찻잔에 와인
									발효 더치커피와 로즈밀크티를 마실 수 있는 중세 유럽풍 엔틱 카페</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 5%2!=0 -->
















				</div>

				<div class="hidden-lg hidden-md hidden-sm week-showshowshow-content">




					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_spot_view('/view/spot/아트쉬프트')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '아트쉬프트'});">
						<!-- ngIf: 0>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/junggu/11659_spot_main_feed_thumbnail_1647336581.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('1', '아트쉬프트')" class="ng-binding">1위
									| 아트쉬프트</div>
								<div id="week-showshowshow-subway-station">을지로3가역 7번 출구 도보
									1분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">들어서는 순간 동화 속에 온 듯한
									분위기! 호차타, 코코프레시 등 이색적인 음료를 맛 볼 수 있는 힙지로 전시 카페</div>
							</div>
						</div>
					</div>



					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_spot_view('/view/spot/코칭심리카페')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '코칭심리카페'});">
						<!-- ngIf: 1>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/mapo/5927_spot_main_feed_thumbnail__fzq2QSZ.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('2', '코칭심리카페')" class="ng-binding">2위
									| 코칭심리카페</div>
								<div id="week-showshowshow-subway-station">홍대입구역 9번 출구 도보
									3분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">성격 검사와 분석을 통해 서로가
									몰랐던 각자의 성격을 알고, 그에 맞는 코칭까지 받아볼 수 있는 심리 카페</div>
							</div>
						</div>
					</div>



					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_spot_view('/view/spot/쌈바플스방')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '쌈바플스방'});">
						<!-- ngIf: 2>1 -->
						<div ng-if="2>1" style="height: 8px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 2>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/gwangjin/8758_spot_main_feed_thumbnail__DjDKQ1v.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('3', '쌈바플스방')" class="ng-binding">3위
									| 쌈바플스방</div>
								<div id="week-showshowshow-subway-station">건대입구역 2번 출구 도보
									4분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">피시방을 자주 가는 커플이라면
									가끔은 플스방데이트! 겜하면서 싹트는 전우애 아아.. 아니 사랑~!</div>
							</div>
						</div>
					</div>



					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_spot_view('/view/spot/hide-and-seek-홍대점')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': 'HIDE AND SEEK 홍대점'});">
						<!-- ngIf: 3>1 -->
						<div ng-if="3>1" style="height: 8px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 3>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/guro/11812_spot_main_feed_thumbnail_1646817119.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('4', 'HIDE AND SEEK 홍대점')"
									class="ng-binding">4위 | HIDE AND SEEK ...</div>
								<div id="week-showshowshow-subway-station">홍대입구역 1번 출구 도보
									6분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">'IoT글러브'를 착용해 다양한
									아이템 활용가능! 숨바꼭질을 기반으로한 최초 오프라인 e스포츠</div>
							</div>
						</div>
					</div>



					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_spot_view('/view/spot/연애하기-좋은-날-연극')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '연애하기 좋은 날 (연극)'});">
						<!-- ngIf: 4>1 -->
						<div ng-if="4>1" style="height: 8px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 4>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/jongro/6834_spot_main_feed_thumbnail__kRTy6KH.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('5', '연애하기 좋은 날 (연극)')"
									class="ng-binding">5위 | 연애하기 좋은 날 (연극)...</div>
								<div id="week-showshowshow-subway-station">혜화역 2번 출구 도보 8분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">썸남썸녀, 100일 미만 커플,
									장수커플 등등! 연애하는 모든이들을 설레게하는 연극♡</div>
							</div>
						</div>
					</div>



					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_spot_view('/view/spot/카페-바우')"
						onclick="gtag('event', '이번 주 랭킹 SHOW SHOW SHOW 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '카페 바우'});">
						<!-- ngIf: 5>1 -->
						<div ng-if="5>1" style="height: 8px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 5>1 -->
						<div class="week-showshowshow-content-img-wrapper">
							<img id="week-showshowshow-content-img"
								src="http://cdn.datepop.co.kr/image/seoul/mapo/12355_spot_main_feed_thumbnail_1660888464.jpg">
						</div>
						<div class="week-showshowshow-content-text-wrapper">
							<div class="week-showshowshow-content-title-wrapper">
								<div id="week-showshowshow-shop-title"
									ng-bind="set_text_ellipsis('6', '카페 바우')" class="ng-binding">6위
									| 카페 바우</div>
								<div id="week-showshowshow-subway-station">홍대입구역 8번 출구 도보
									6분</div>
							</div>
							<div class="week-showshowshow-content-short-note-wrapper">
								<div id="week-showshowshow-short-note">200년 된 빈티지 찻잔에 와인
									발효 더치커피와 로즈밀크티를 마실 수 있는 중세 유럽풍 엔틱 카페</div>
							</div>
						</div>
					</div>
















				</div>

			</section>

			<div class="hidden-xs" id="div_hr_50"></div>

			<div class="hidden-lg hidden-md hidden-sm">
				<div id="div_hr_20"></div>
				<hr color="#d8d8d8" style="padding: 0; margin: 0; width: 100%;"
					size="0.5">
				<div id="div_hr_26"></div>
			</div>

			<section class="today-popdeal">

				<div class="hidden-xs today-popdeal-header">
					<div>
						<a id="today-popdeal-title">오늘의 팝딜</a>
					</div>
					<div>
						<a id="today-popdeal-subtitle">인기 데이트 장소 선착순 할인! 지금 바로 구매하세요.</a>
					</div>
					<div>
						<a id="today-popdeal-more" target="_blank"
							href="https://datepop.co.kr/popdeal/">더보기 &gt;</a>
					</div>
				</div>

				<div class="hidden-xs today-popdeal-content">


					<!-- ngIf: 0%2==0 -->
					<div ng-if="0%2==0"
						class="inner-today-popdeal-content-left ng-scope" target="_self"
						ng-click="go_to_purchase_info('11617')"
						onclick="gtag('event', '오늘의 팝딜 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '이미지호'});">
						<!-- ngIf: 0>1 -->
						<div class="popdeal_img_wrapper">
							<img id="popdeal_img"
								src="http://cdn.datepop.co.kr/image/shop/11617/46376_shop_item_2022-05-17_141527.jpg">
							<div id="discount">
								<div id="discount_inner" ng-bind="current_discount('10')"
									class="ng-binding">10%</div>
							</div>
						</div>
						<div class="popdeal_content_text_wrapper">
							<div class="shop_title_wrapper">
								<div id="shop_title">방배역 / 이미지호</div>
								<div id="shop_net_price" ng-bind="set_net_price('118000')"
									class="ng-binding">118,000원</div>
							</div>
							<div class="shop_item_title_wrapper">
								<div id="shop_item_title">2인 1:2 컬러컨설팅 (컬러진단, 원형칩, 패션추천,
									색조점검) 평일 이용권</div>
								<div id="shop_current_price"
									ng-bind="set_current_price('118000', '11800')"
									class="ng-binding">106,200원</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 0%2==0 -->

					<!-- ngIf: 0%2!=0 -->




					<!-- ngIf: 1%2==0 -->

					<!-- ngIf: 1%2!=0 -->
					<div ng-if="1%2!=0"
						class="inner-today-popdeal-content-right ng-scope" target="_self"
						ng-click="go_to_purchase_info('13366')"
						onclick="gtag('event', '오늘의 팝딜 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '리저브9'});">
						<!-- ngIf: 1>1 -->
						<div class="popdeal_img_wrapper">
							<img id="popdeal_img"
								src="http://cdn.datepop.co.kr/image/shop/13366/53465_shop_item_2022-08-18_134824.jpg">
							<div id="discount">
								<div id="discount_inner" ng-bind="current_discount('30')"
									class="ng-binding">30%</div>
							</div>
						</div>
						<div class="popdeal_content_text_wrapper">
							<div class="shop_title_wrapper">
								<div id="shop_title">송도 / 리저브9</div>
								<div id="shop_net_price" ng-bind="set_net_price('145000')"
									class="ng-binding">145,000원</div>
							</div>
							<div class="shop_item_title_wrapper">
								<div id="shop_item_title">Dry Aged Steak Set 2인 평일 이용권</div>
								<div id="shop_current_price"
									ng-bind="set_current_price('145000', '43500')"
									class="ng-binding">101,500원</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 1%2!=0 -->




					<!-- ngIf: 2%2==0 -->
					<div ng-if="2%2==0"
						class="inner-today-popdeal-content-left ng-scope" target="_self"
						ng-click="go_to_purchase_info('11460')"
						onclick="gtag('event', '오늘의 팝딜 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '하련 터프팅'});">
						<!-- ngIf: 2>1 -->
						<div ng-if="2>1" style="height: 14px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 2>1 -->
						<div class="popdeal_img_wrapper">
							<img id="popdeal_img"
								src="http://cdn.datepop.co.kr/image/shop/11460/45748_shop_item_2022-04-27_175652.jpg">
							<div id="discount">
								<div id="discount_inner" ng-bind="current_discount('40')"
									class="ng-binding">40%</div>
							</div>
						</div>
						<div class="popdeal_content_text_wrapper">
							<div class="shop_title_wrapper">
								<div id="shop_title">오이도역 / 하련 터프팅</div>
								<div id="shop_net_price" ng-bind="set_net_price('320000')"
									class="ng-binding">320,000원</div>
							</div>
							<div class="shop_item_title_wrapper">
								<div id="shop_item_title">2인 터프팅 클래스 (거울 2개) 이용권</div>
								<div id="shop_current_price"
									ng-bind="set_current_price('320000', '128000')"
									class="ng-binding">192,000원</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 2%2==0 -->

					<!-- ngIf: 2%2!=0 -->




					<!-- ngIf: 3%2==0 -->

					<!-- ngIf: 3%2!=0 -->
					<div ng-if="3%2!=0"
						class="inner-today-popdeal-content-right ng-scope" target="_self"
						ng-click="go_to_purchase_info('4734')"
						onclick="gtag('event', '오늘의 팝딜 클릭(PC)', {'event_category': '데이트팝 웹', 'event_label': '마초쉐프 광명점'});">
						<!-- ngIf: 3>1 -->
						<div ng-if="3>1" style="height: 14px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 3>1 -->
						<div class="popdeal_img_wrapper">
							<img id="popdeal_img"
								src="http://cdn.datepop.co.kr/image/shop/4734/18669_shop_item_2022-01-25_142136.jpg">
							<div id="discount">
								<div id="discount_inner" ng-bind="current_discount('25')"
									class="ng-binding">25%</div>
							</div>
						</div>
						<div class="popdeal_content_text_wrapper">
							<div class="shop_title_wrapper">
								<div id="shop_title">금천구청역 / 마초쉐프 광명점</div>
								<div id="shop_net_price" ng-bind="set_net_price('20000')"
									class="ng-binding">20,000원</div>
							</div>
							<div class="shop_item_title_wrapper">
								<div id="shop_item_title">20,000원 평일 자유 이용권</div>
								<div id="shop_current_price"
									ng-bind="set_current_price('20000', '5000')" class="ng-binding">15,000원</div>
							</div>
						</div>
					</div>
					<!-- end ngIf: 3%2!=0 -->

































				</div>

				<div
					class="hidden-lg hidden-md hidden-sm today-popdeal-header-mobile">
					<div>
						<a id="today-popdeal-title-mobile">오늘의 팝딜</a>
					</div>
					<div>
						<a id="today-popdeal-more-mobile" target="_blank"
							href="https://datepop.co.kr/popdeal/">더보기 &gt;</a>
					</div>
				</div>
				<div class="hidden-lg hidden-md hidden-sm"
					id="today-popdeal-subtitle-mobile">인기 데이트 장소 선착순 할인! 지금 바로
					구매하세요.</div>

				<div class="hidden-lg hidden-md hidden-sm today-popdeal-content">


					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_purchase_info('11617')"
						onclick="gtag('event', '오늘의 팝딜 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '이미지호'});">
						<!-- ngIf: 0!=0 -->
						<div class="popdeal_img_wrapper">
							<img id="popdeal_img"
								src="http://cdn.datepop.co.kr/image/shop/11617/46376_shop_item_2022-05-17_141527.jpg">
							<div id="discount">
								<div id="discount_inner" ng-bind="current_discount('10')"
									class="ng-binding">10%</div>
							</div>
						</div>
						<div class="popdeal_content_text_wrapper">
							<div class="shop_title_wrapper">
								<div id="shop_title">방배역 / 이미지호</div>
								<div id="shop_net_price" ng-bind="set_net_price('118000')"
									class="ng-binding">118,000원</div>
							</div>
							<div class="shop_item_title_wrapper">
								<div id="shop_item_title">2인 1:2 컬러컨설팅 (컬러진단, 원형칩, 패션추천,
									색조점검) 평일 이용권</div>
								<div id="shop_current_price"
									ng-bind="set_current_price('118000', '11800')"
									class="ng-binding">106,200원</div>
							</div>
						</div>
					</div>



					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_purchase_info('13366')"
						onclick="gtag('event', '오늘의 팝딜 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '리저브9'});">
						<!-- ngIf: 1!=0 -->
						<div ng-if="1!=0" style="height: 10px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 1!=0 -->
						<div class="popdeal_img_wrapper">
							<img id="popdeal_img"
								src="http://cdn.datepop.co.kr/image/shop/13366/53465_shop_item_2022-08-18_134824.jpg">
							<div id="discount">
								<div id="discount_inner" ng-bind="current_discount('30')"
									class="ng-binding">30%</div>
							</div>
						</div>
						<div class="popdeal_content_text_wrapper">
							<div class="shop_title_wrapper">
								<div id="shop_title">송도 / 리저브9</div>
								<div id="shop_net_price" ng-bind="set_net_price('145000')"
									class="ng-binding">145,000원</div>
							</div>
							<div class="shop_item_title_wrapper">
								<div id="shop_item_title">Dry Aged Steak Set 2인 평일 이용권</div>
								<div id="shop_current_price"
									ng-bind="set_current_price('145000', '43500')"
									class="ng-binding">101,500원</div>
							</div>
						</div>
					</div>



					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_purchase_info('11460')"
						onclick="gtag('event', '오늘의 팝딜 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '하련 터프팅'});">
						<!-- ngIf: 2!=0 -->
						<div ng-if="2!=0" style="height: 10px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 2!=0 -->
						<div class="popdeal_img_wrapper">
							<img id="popdeal_img"
								src="http://cdn.datepop.co.kr/image/shop/11460/45748_shop_item_2022-04-27_175652.jpg">
							<div id="discount">
								<div id="discount_inner" ng-bind="current_discount('40')"
									class="ng-binding">40%</div>
							</div>
						</div>
						<div class="popdeal_content_text_wrapper">
							<div class="shop_title_wrapper">
								<div id="shop_title">오이도역 / 하련 터프팅</div>
								<div id="shop_net_price" ng-bind="set_net_price('320000')"
									class="ng-binding">320,000원</div>
							</div>
							<div class="shop_item_title_wrapper">
								<div id="shop_item_title">2인 터프팅 클래스 (거울 2개) 이용권</div>
								<div id="shop_current_price"
									ng-bind="set_current_price('320000', '128000')"
									class="ng-binding">192,000원</div>
							</div>
						</div>
					</div>



					<div target="_self" style="cursor: pointer;"
						ng-click="go_to_purchase_info('4734')"
						onclick="gtag('event', '오늘의 팝딜 클릭(모바일)', {'event_category': '데이트팝 웹', 'event_label': '마초쉐프 광명점'});">
						<!-- ngIf: 3!=0 -->
						<div ng-if="3!=0" style="height: 10px; width: 100%;"
							class="ng-scope"></div>
						<!-- end ngIf: 3!=0 -->
						<div class="popdeal_img_wrapper">
							<img id="popdeal_img"
								src="http://cdn.datepop.co.kr/image/shop/4734/18669_shop_item_2022-01-25_142136.jpg">
							<div id="discount">
								<div id="discount_inner" ng-bind="current_discount('25')"
									class="ng-binding">25%</div>
							</div>
						</div>
						<div class="popdeal_content_text_wrapper">
							<div class="shop_title_wrapper">
								<div id="shop_title">금천구청역 / 마초쉐프 광명점</div>
								<div id="shop_net_price" ng-bind="set_net_price('20000')"
									class="ng-binding">20,000원</div>
							</div>
							<div class="shop_item_title_wrapper">
								<div id="shop_item_title">20,000원 평일 자유 이용권</div>
								<div id="shop_current_price"
									ng-bind="set_current_price('20000', '5000')" class="ng-binding">15,000원</div>
							</div>
						</div>
					</div>
































				</div>

			</section>

			<div class="hidden-xs" id="div_hr_50"></div>

			<div class="hidden-lg hidden-md hidden-sm" id="div_hr_20"></div>

			<section
				class="hidden-lg hidden-md hidden-sm floating-menubar-mobile">
				<div class="contact-title">제휴문의</div>

				<ul class="floating-menu-mobile">
					<li class="floating-menu-icon-mobile"><a
						style="text-decoration: none;" href="tel:070-4410-8836"
						onclick="gtag('event', '플로팅 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '전화 문의(모바일)'});">
							<span> <img class="icon-call-mobile"
								src="/static/img/datepop_web_main/contact_call.png">
						</span>
							<div class="icon-text-mobile">전화 문의</div>
					</a></li>
					<li class="floating-menu-icon-mobile"><a
						style="text-decoration: none;" target="_blank"
						href="http://bit.ly/2NhXciw"
						onclick="gtag('event', '플로팅 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '1:1 카톡문의(모바일)'});">
							<span> <img class="icon-kakao-mobile"
								src="/static/img/datepop_web_main/contact_kakaotalk.png">
						</span>
							<div class="icon-text-mobile">1:1 카톡문의</div>
					</a></li>
					<li class="floating-menu-icon-mobile"><a
						style="text-decoration: none;" target="_blank"
						href="http://bit.ly/2NnacDi"
						onclick="gtag('event', '플로팅 메뉴바 클릭', {'event_category': '데이트팝 웹', 'event_label': '이메일 문의(모바일)'});">
							<span> <img class="icon-email-mobile"
								src="/static/img/datepop_web_main/contact_mail.png">
						</span>
							<div class="icon-text-mobile">이메일 문의</div>
					</a></li>
				</ul>

			</section>

			<div class="hidden-lg hidden-md hidden-sm" id="div_hr_28"></div>

			<section class="exit_link">
				<div class="hidden-xs inner_exit_link">
					<div class="exit_link_left">
						<a id="ceo_case_link" type="submit" target="_blank"
							href="https://ceo.datepop.co.kr/case"
							onclick="gtag('event', '하단 배너 클릭', {'event_category': '데이트팝 웹', 'event_label': '사장님 제휴사례 인터뷰 배너(PC)'});">
							<img id="ceo_case_link_img"
							src="/static/img/datepop_web_main/bottom_banner1.png">
						</a>
					</div>
					<div class="exit_link_right">
						<a id="app_download_link" type="submit"
							href="https://ceo.datepop.co.kr/contact"
							onclick="gtag('event', '하단 배너 클릭', {'event_category': '데이트팝 웹', 'event_label': '데이트팝 제휴/제안/문의 배너(PC)'});">
							<img id="app_download_link_img"
							src="/static/img/datepop_web_main/bottom_banner2.png">
						</a>
					</div>
				</div>

				<div class="hidden-lg hidden-md hidden-sm inner_exit_link_mobile">
					<div class="exit_link_mobile" id="exit_link_mobile"
						style="height: 140px;">
						<a id="ceo_case_link_mobile" type="submit" target="_blank"
							href="https://ceo.datepop.co.kr/case"
							onclick="gtag('event', '하단 배너 클릭', {'event_category': '데이트팝 웹', 'event_label': '사장님 제휴사례 인터뷰 배너(모바일)'});"
							style="height: 140px;"> <img id="ceo_case_link_img_mobile"
							src="/static/img/datepop_web_main/bottom_banner1.png"
							style="height: auto;">
						</a>
					</div>
					<div class="exit_link_mobile" id="exit_link_mobile"
						style="margin-top: 16px">
						<a id="app_download_link_mobile" type="submit"
							href="https://ceo.datepop.co.kr/contact"
							onclick="gtag('event', '하단 배너 클릭', {'event_category': '데이트팝 웹', 'event_label': '데이트팝 제휴/제안/문의 배너(모바일)'});"
							style="height: 140px;"> <img
							id="app_download_link_img_mobile"
							src="/static/img/datepop_web_main/bottom_banner2.png"
							style="height: auto;">
						</a>
					</div>
				</div>
			</section>

			<div class="hidden-xs" id="div_hr_60"></div>

			<div class="hidden-lg hidden-md hidden-sm" id="div_hr_20"></div>

			<footer class="footer">
				<div class="company_wrapper">
					<div class="link_wrapper">
						<div class="link-item">
							<a id="footer-text" target="_blank"
								href="https://10fingers.datepop.co.kr/press"
								onclick="gtag('event', '푸터 클릭', {'event_category': '데이트팝 웹', 'event_label': '회사소개'});">회사소개</a>
						</div>
						<div class="link-item">
							<a id="footer-text" target="_blank"
								href="https://10fingers.datepop.co.kr/terms"
								onclick="gtag('event', '푸터 클릭', {'event_category': '데이트팝 웹', 'event_label': '이용약관'});">이용약관</a>
						</div>
						<div class="link-item">
							<a id="footer-text" target="_blank"
								href="https://10fingers.datepop.co.kr/privacy"
								onclick="gtag('event', '푸터 클릭', {'event_category': '데이트팝 웹', 'event_label': '개인정보처리방침'});">개인정보처리방침</a>
						</div>
						<div class="link-item">
							<a id="footer-text" target="_blank"
								href="https://10fingers.datepop.co.kr/data_leakage"
								onclick="gtag('event', '푸터 클릭', {'event_category': '데이트팝 웹', 'event_label': '사고대응매뉴얼'});">사고대응매뉴얼</a>
						</div>
						<div class="link-item">
							<a id="footer-text" target="_blank"
								href="https://ceo.datepop.co.kr/ceo/contact"
								onclick="gtag('event', '푸터 클릭', {'event_category': '데이트팝 웹', 'event_label': '제휴문의'});">제휴문의</a>
						</div>
					</div>
					<div class="etc">
						<br>주식회사 텐핑거스(대표 신동해) <br>서울특별시 구로구 디지털로272, 한신IT타워 617호
						<br>사업자등록번호 : 119-86-86868 <br>통신판매업신고 제2017-서울구로-1419호
						<br>고객센터: 070-4410-8836 / support@datepop.co.kr
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script type="text/javascript">

    function width360() {
        const windowWidth = window.outerWidth;

        if (windowWidth < 360) {
            const height = windowWidth / 2.5714;

            $("#ceo_case_link_img_mobile").css("margin-top", 0);
            $("#app_download_link_img_mobile").css("margin-top", 0);

            $("#ceo_case_link_img_mobile").css("height", height);
            $("#app_download_link_img_mobile").css("height", height);

            $("#ceo_case_link_mobile").css("height", height);
            $("#app_download_link_mobile").css("height", height);
            $("#exit_link_mobile").css("height", height);

        } else {
            $("#ceo_case_link_img_mobile").css("height", 'auto');
            $("#app_download_link_img_mobile").css("height", 'auto');

            $("#ceo_case_link_mobile").css("height", 140);
            $("#app_download_link_mobile").css("height", 140);
            $("#exit_link_mobile").css("height", 140);
        }
    }

    $(document).ready(function () {
        width360();

        $(window).resize(function () {
            const maxsize = 140;
            const banner_img = document.getElementById("ceo_case_link_img_mobile");
            const windowWidth = window.outerWidth;

            if (windowWidth < 768) {
                if (eval('banner_img.height > maxsize')) {
                    const top = -((banner_img.height - maxsize) / 2);

                    $("#ceo_case_link_img_mobile").css("margin-top", top);
                    $("#app_download_link_img_mobile").css("margin-top", top);

                } else {
                    $("#ceo_case_link_img_mobile").css("margin-top", 0);
                    $("#app_download_link_img_mobile").css("margin-top", 0);
                }
            }
            width360();
        })

    });

</script>

	<script type="text/javascript">
    console.log("https://datepop.co.kr/view/".replace("www.", ""));
    if ("datepop.co.kr".startsWith("www.")) {
        location.replace("https://datepop.co.kr/view/".replace("www.", ""));
    }

    var app = angular.module('app', ['ui.bootstrap']);
    app.config([
        '$httpProvider',
        '$interpolateProvider',
        function($httpProvider, $interpolateProvider, $resourceProvider) {
            $interpolateProvider.startSymbol('[[');
            $interpolateProvider.endSymbol(']]');
            $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';
            $httpProvider.defaults.transformRequest = function(data){
                if (data === undefined) {
                    return data;
                }
                return $.param(data);
            };
        }
    ]);

    app.controller('DatepopWebMain', ['$http', '$scope', '$window', 'ajax', function($http, $scope, $window, ajax) {
        $scope.ajax = ajax;
        $scope.popdeal_list = [];
        $scope.item_count = 0;
        $scope.is_more = '';

        $scope.set_net_price = function (net_price) {
            var net_price = Number(net_price)
            return numberWithCommas(net_price)+'원'
        };

        $scope.set_current_price = function (net_price, support_price) {
            var current_price = Number(net_price)-Number(support_price);
            return numberWithCommas(current_price)+'원'
        };

        $scope.current_discount = function (discount) {
            if(discount != '0'){
                return discount+'%';
            }else{
                return 'POP DEAL';
            }
        };

        $scope.set_text_ellipsis = function (num, input) {
            if (input.length >= 14) {
                return num.toString()+ "위 | "+ input.substr(0, 14) + "...";
            }else {
                return num.toString()+ "위 | "+ input;
            }
        };

        $scope.set_item_image_one = function (item_image) {
            return item_image;
        };

        function numberWithCommas(num) {
            return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

        $scope.go_to_course_view = function (slug_url) {
            location.href = "/view/course/" + slug_url;
        };

        $scope.go_to_spot_view = function (slug_url) {
            location.href = slug_url;
        };

        $scope.go_to_purchase_info = function (shop_item_id) {
            location.href = "/item/"+shop_item_id;
        };

    }]);

    app.factory('ajax', function($http) {
        return {
        };
    });

</script>



	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://datepop.co.kr"> <a
		itemprop="sameAs" href="https://www.facebook.com/seouldatepop/"></a> <a
		itemprop="sameAs" href="https://blog.naver.com/seouldatepop"></a> <a
		itemprop="sameAs"
		href="https://m.post.naver.com/my.nhn?memberNo=808040"></a> <a
		itemprop="sameAs" href="https://www.instagram.com/datepop/"></a> <a
		itemprop="sameAs"
		href="https://play.google.com/store/apps/details?id=com.tenfingers.seouldatepop&amp;hl=ko"></a>
		<a itemprop="sameAs"
		href="https://itunes.apple.com/kr/app/%EB%8D%B0%EC%9D%B4%ED%8A%B8%ED%8C%9D/id815000358"></a>
	</span>

</body>
</html>