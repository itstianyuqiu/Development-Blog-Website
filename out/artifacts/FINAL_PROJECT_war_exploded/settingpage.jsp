<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personal page</title>
    <link rel="stylesheet" href="TianCSS/settingpage.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script type="text/javascript" src="JQuery_lib/jquery-3.3.1.js"></script>
    <script src="myJS.js"></script>

</head>
<body>
<div id="side_both" class="container " align="center">
    <!--research-->
    <div id="zone_search_icon">
        <span id="zone_search">
        <input type="search" id="search_bar" placeholder=" Search..."/>
        </span>
        <!--icon_setting_logout-->
        <span id="icon_logout&setting">
            <a href="homepage.jsp">
                <img id="icon_setting" src="images/icon_setting.jpg">
            </a>
            <a href="/UserLogOutServlet">
                <img id="icon_logout" src="images/icon_logout.png" width="40px">
            </a>
        </span>
    </div>

    <div id="zone_avatar_main" class="row">
        <!--Avatar-->
        <div id="zone_left" class="col-lg-4" align="center">
            <a href="#">
                <img id="image_avatar" src="${userPOJO.getAvatar()}" alt="loading..."/>
            </a>
            <br>
            <button type="button" id="btn_change_avatar" name="changeavatar" value="changeavatar">Change avatar
            </button>
            <!-- Change avatar -->
            <div id="change_avatar" class="avatar_update">
                <div class="avatar_update_content">
                    <div class="avatar_update_header">
                        <span class="close">&times;</span>
                    </div>
                    <div class="avatar_update_body">
                        <img src="images/image_default_avatar.png" width="40px">
                        <img src="images/icon_logo.png" width="40px">
                        <img src="images/icon_logout.png" width="40px">
                    </div>
                    <div class="avatar_update_footer">
                        <form action="/UserUpdateAccountServlet" method="post" enctype="multipart/form-data">
                            <input type="file" name="aaaaaa" accept="image/png,image/jpeg" value="Choose File">
                            <button type="submit" name="avatarsubmit" value="submit">Submit</button>
                            <button type="submit" name="avatarcancel" value="cancel">Cancel</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <div class="col-lg-8" align="left">
            <div id="zone_right">
                <section id="one">
                    <form action="/UserUpdateAccountServlet" method="post">
                        <h2>General Account Settings</h2>
                        <br>
                        <p class="sub_title">Username</p>
                        <br>
                        <input type="text" name="username" id="setting_username" class="setting_text_field"
                               value="${userPOJO.getUsername()}"/>
                        <br>
                        <br>
                        <p class="sub_title"> Email address</p>
                        <br>
                        <input type="text" name="emailaddress" id="setting_emailaddress" class="setting_text_field"
                               value="${userPOJO.getEmail()}"/>
                        <br>
                        <br>
                        <p class="sub_title"> Country</p>
                        <br>
                        <input type="text" name="country" id="setting_country"
                               class="setting_text_field" value="${userPOJO.getCountry()}"/>
                        <br>
                        <br>
                        <p class="sub_title">Describe yourself in one sentence</p>
                        <br>
                        <input type="text" name="description" id="setting_description" class="setting_text_field"
                               value="${userPOJO.getDescription()}"/>
                        <br>
                        <br>
                        <button type="submit" id="btn_savechange" name="savechange1" value="savechange1">Save change
                        </button>
                        <br>
                        <br>
                        <hr>
                        <br>
                    </form>
                </section>

                <section id="two">
                    <form action="/UserUpdateAccountServlet" method="post">
                        <h2>Security</h2>
                        <br>
                        <!--Email address-->
                        <!--<br>-->
                        <!--<input type="text" id="security_emailaddress" class="setting_text_field_long"/>-->
                        <!--<br>-->
                        <!--<button type="button" id="btn_sendcode" value="sendcode"> Send verification code</button>-->
                        <p class="sub_title">Security question</p>
                        <br>
                        <select id="form_securityquestion" name="securityquestion">
                            <option value="-">select a question</option>
                            <option value="1">What is your favourite movie?</option>
                            <option value="2">Where are you born?</option>
                            <option value="3">What is your first pet's name?</option>
                        </select>
                        <br>
                        <br>
                        <p class="sub_title">Answer</p>
                        <br>
                        <input type="text" id="security_questionanswer" class="setting_text_field"/>
                        <br>
                        <br>
                        <p class="sub_title">New password</p>
                        <br>
                        <input type="text" name="newpwd" id="security_password" class="setting_text_field"/>
                        <br>
                        <br>
                        <p class="sub_title">Confirm password</p>
                        <br>
                        <input type="text" name="confirmpwd" id="security_conpassword" class="setting_text_field"/>
                        <br>
                        <br>
                        <button type="submit" id="btn_savechange_security" name="savechange2" value="savechange2">Save
                            change
                        </button>
                        <br>
                        <br>
                        <hr>
                        <br>
                    </form>
                </section>

                <section id="three">
                    <form action="/UserDeleteAccountServlet" method="post">
                        <h2>Delete Account</h2>
                        <br>
                        <p>Deleting an account will delete all your information. Do you want to continue?</p>
                        <br>
                        <button type="submit" id="btn_delet" value="delete">Yes, delete my account</button>
                    </form>
                </section>
                <br><br><br><br><br><br><br>


            </div>
        </div>


    </div>


</div>
</body>
<script>
    $("#btn_change_avatar").click(function () {
        $("#change_avatar").show();
    });
    $("#image_avatar").click(function () {
        $("#change_avatar").show();
    });
    $(".avatar_update_header .close").click(function () {
        $("#change_avatar").hide();
    });
</script>
</html>