<?php

use Core\tokenCSRF;

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title><?=\Core\controller::$page_title?></title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="witcherAssets/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="witcherAssets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="witcherAssets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="witcherAssets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="witcherAssets/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="witcherAssets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="witcherAssets/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="witcherAssets/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="witcherAssets/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="witcherAssets/css/util.css">
	<link rel="stylesheet" type="text/css" href="witcherAssets/css/main.css">
<!--===============================================================================================-->

    <base href="<?=HTTP_SERVER?>">
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" method="post" action="/login">
					<span class="login100-form-title p-b-34">
						Account Login
					</span>
                    <b style="font-size: 18px;margin-left: 10px; color: red;"><?=\Model\Message::msg_box_session_show(1)?></b>
                    <input type="hidden" name="token" value="<?=tokenCSRF::get_token()?>">
					<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
						<input id="first-name" class="input100" type="text" name="login" placeholder="User name or Email">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
                            <input type="submit" value="Sign in" style="color: inherit;background: inherit">
						</button>
					</div>

                    <div class="w-full text-center p-t-27 p-b-239">
                        <span class="txt1">
                           <!-- Forgot-->
                        </span>

                        <a href="#" class="txt2">
                            <!-- User name / password?-->
                        </a>
                    </div>

                    <div class="w-full text-center">
                        <a href="#" class="txt3">
                            <!--   Sign Up-->
                        </a>
                    </div>
                </form>

                <div class="login100-more" style="background-image: url('witcherAssets/images/bg-01.jpg');"></div>
            </div>
        </div>
    </div>



    <div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="witcherAssets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="witcherAssets/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="witcherAssets/vendor/bootstrap/js/popper.js"></script>
	<script src="witcherAssets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="witcherAssets/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="witcherAssets/vendor/daterangepicker/moment.min.js"></script>
	<script src="witcherAssets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="witcherAssets/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="witcherAssets/js/main.js"></script>

</body>
</html>