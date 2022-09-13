<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gugi&family=Hahmlet&family=Jua&family=Lobster&family=Rubik+Beastly&family=Rubik+Burned&family=Rubik+Marker+Hatch&family=Single+Day&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<style type="text/css">
	*{
		font-family: 'Jua';
	}
</style>
</head>
<body>
<script type="text/javascript">
	window.Kakao.init('161d79e1c463f185663c372123ec7671');
	function kakaoLogout() {
		if (!Kakao.Auth.getAccessToken()) {
		    console.log('Not logged in.');
		    return;
	    }
	    Kakao.Auth.logout(function(response) {
			alert(response +' logout');
		    window.location.href='kakaologin.jsp'
	    });
	};
	function secession() {
		Kakao.API.request({
	    	url: '/v1/user/unlink',
	    	success: function(response) {
	    		console.log(response);
	    		callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
	    		window.location.href='kakaologin.jsp'
	    	},
	    	fail: function(error) {
	    		console.log('탈퇴 미완료');
	    		console.log(error);
	    	},
		});
	};
</script>
  <a href="javascript:kakaoLogout();"><img src="../testimage/logout.png" alt="로그아웃" style="width:100px;"></a>
  <a href="javascript:kakaoLogin();"><img src="../testimage/kakao_login_medium_narrow.png" alt="카카오계정 로그인"></a>

    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        window.Kakao.init('161d79e1c463f185663c372123ec7671');

        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, profile_image, account_email, gender, age_range, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                        	const nickname = res.kakao_account.profile.nickname;
                        	const thumbnail_image_url = res.kakao_account.profile_thumnail_image_url;
                            const profile = res.kakao_account.profile;
                            const name = res.kakao_account.name;
                            const email = res.kakao_account.email;
                            const age_range = res.kakao_account.age_range;
                            const birthday = res.kakao_account.birthday;
                            const gender = res.kakao_account.gender;
                            console.log(nickname);
                            console.log(profile);
                            console.log(name);
                            $("#nickname").val(nickname);
                            $("#thumbnail_image_url").val(thumbnail_image_url);
                            $("#profile").val(profile);
                            $("#name").val(name)
                            $("#email").val(email);
                            $("#age_range").val(age_range);
                            $("#birthday").val(birthday);
                            $("#gender").val(gender);
                            
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>

<input type="text" id="nickname" class="form-control" value="">
<input type="text" id="thumbnail_image_url" class="form-control" value="">
<input type="text" id="name" class="form-control" value="">
<input type="text" id="email" class="form-control" value="">
<input type="text" id="age_range" class="form-control" value="">
<input type="text" id="birthday" class="form-control" value="">
<input type="text" id="gender" class="form-control" value="">
</body>
</html>