<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <link rel="stylesheet" href="TianCSS/index.css">
    <script src="http://www.google.com/recaptcha/api.js" async defer></script>
    <script src="myJS.js"></script>
    <script src="myJS_Two.js"></script>
    <style>
        .g-recaptcha {
            padding: 10px 48px 0;
        }

        .gender_avatar {
            width: 15%;
        }
    </style>
</head>
<body onload="loadCountries()">
<form action="/UserNewAccountServlet" method="post" enctype="multipart/form-data">
    <div id="signup_frame_signup">
        <p id="image_logo"><img src="images/icon_logo.png" width="100px"></p>
        <input placeholder="  First name " type="text" name="firstname" id="firstname" class="signup_text_field_name"/>
        <input placeholder="  Surname " type="text" name="surname" id="surname" class="signup_text_field_name"/>
        <br>
        <br>
        <input placeholder="  Username " type="text" name="username" id="signup_username"
               class="signup_text_field_usernameemailpassword"/>
        <div><label id="display"><b></b></label></div>
        <br>
        <br>
        <input placeholder="  Email address " type="email" name="emailaddress" id="emailaddress"
               class="signup_text_field_usernameemailpassword"/>
        <br>
        <br>
        <input placeholder="  New password " type="password" name="password" id="newpassword"
               class="signup_text_field_usernameemailpassword"/>
        <br>
        <br>
        Birthday:
        <select id="form_dob_day" name="dob_day">
            <option value="-">Day</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
        </select>
        <select id="form_dob_month" name="dob_month">
            <option value="-">Month</option>
            <option value="1">January</option>
            <option value="2">Febuary</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
        </select>
        <select id="form_dob_year" name="dob_year">
            <option value="-">Year</option>
            <option value="2011">2011</option>
            <option value="2010">2010</option>
            <option value="2009">2009</option>
            <option value="2008">2008</option>
            <option value="2007">2007</option>
            <option value="2006">2006</option>
            <option value="2005">2005</option>
            <option value="2004">2004</option>
            <option value="2003">2003</option>
            <option value="2002">2002</option>
            <option value="2001">2001</option>
            <option value="2000">2000</option>
            <option value="1999">1999</option>
            <option value="1998">1998</option>
            <option value="1997">1997</option>
            <option value="1996">1996</option>
            <option value="1995">1995</option>
            <option value="1994">1994</option>
            <option value="1993">1993</option>
            <option value="1992">1992</option>
            <option value="1991">1991</option>
            <option value="1990">1990</option>
            <option value="1989">1989</option>
            <option value="1988">1988</option>
            <option value="1987">1987</option>
            <option value="1986">1986</option>
            <option value="1985">1985</option>
            <option value="1984">1984</option>
            <option value="1983">1983</option>
            <option value="1982">1982</option>
            <option value="1981">1981</option>
            <option value="1980">1980</option>
            <option value="1979">1979</option>
            <option value="1978">1978</option>
            <option value="1977">1977</option>
            <option value="1976">1976</option>
            <option value="1975">1975</option>
            <option value="1974">1974</option>
            <option value="1973">1973</option>
            <option value="1972">1972</option>
            <option value="1971">1971</option>
            <option value="1970">1970</option>
            <option value="1969">1969</option>
            <option value="1968">1968</option>
            <option value="1967">1967</option>
            <option value="1966">1966</option>
            <option value="1965">1965</option>
            <option value="1964">1964</option>
            <option value="1963">1963</option>
            <option value="1962">1962</option>
            <option value="1961">1961</option>
            <option value="1960">1960</option>
            <option value="1959">1959</option>
        </select>
        <br>
        <br>
        <div id="countries">
            Country:
            <select id="countrySelect" name="country" class="signup_text_field_usernameemailpassword"></select>
        </div>
        <br>
        Description:
        <input type="text" name="description" id="description" class="signup_text_field_usernameemailpassword">
        <br>
        <br>
        <div id="signup_control">
            <div class="gender_both">
                <input class="gender" type="radio" checked="checked" name="gender" value="male"/>Male
                <img src="images/default08.png" class="gender_avatar">
                <input class="gerder" type="radio" name="gender" value="female"/>Female
                <img src="images/default07.png" class="gender_avatar">
            </div>
            <input type="file" accept="image/*" name="avatar" width="38px" id="upload_avatar"
                   class="signup_text_field_usernameemailpassword">
            <br>
            <input type="submit" id="btn_signup" value="Sign up"/>
        </div>
        <div class="g-recaptcha" data-sitekey="6Lfkp3UUAAAAAF26TrKkeofLcFidZExKMthqYE_s" data-callback="onSubmit"></div>



        <input id="gre" type="hidden" name="grecaptcha">

        <%--<script>--%>
        <%--console.log(grecaptcha.getResponse());--%>

        <%--document.getElementById("gre").setAttribute('value', true);--%>

        <%--// $('#gre').attr('value',grecaptcha.getResponse())--%>

        <%--</script>--%>


    </div>
</form>
</body>


<script SRC="JQuery_lib/jquery-3.3.1.js"></script>
<script SRC="JQuery_lib/jQuery.md5.js"></script>
<script>
    $("#btn_signup").click(function () {
        document.getElementById("gre").setAttribute('value', grecaptcha.getResponse());
    });

    var errMsg = 0;
    $('#signup_username').on('blur', function () {// when entry value changes
        var username = $("#signup_username").val();     //when username changes
        //not null
        //ajax request
        $.post(//post data to the URL
            "/checkUserNameServlet",  //url /....servlet
            {
                'username': $("#signup_username").val(),
                'form': "username"
            }
            , function (data) {//callback function when it's successful

                var errMsg = data.toString();
                if (errMsg == 1) {
                    $('#display b').text("No  username input!");
                    $('#display b').css('color', 'red');
                } else if (errMsg == 2) {
                    $('#display b').text("Valid username");
                    $('#display b').css('color', 'green');
                } else if (errMsg == 3) {
                    $('#display b').text("username already exist");
                    $('#display b').css('color', 'red');
                }


            });

    });

    // check username when submit the form
    // if username is empty, show "username can not be empty", only post username when it's not null
    $("#btn_signup").click(function () {

        var username = $("#signup_username").val();

        // submitTest(){

        $.ajax({//request data

            type: "POST",
            url: "/checkUserNameServlet",  //url /....servlet
            async: false,
            data: {
                username: $("#signup_username").val(), //data "suer"
                form: "username"
            },
            success: function (data) {//callback function when it's successful
                // console.log(data);
                errMsg = data;
                // submitTest();
            }
        });

        // function submitTest() {
        if (errMsg == 1) {
            alert("No  user name input!");
            return false;
        } else if (errMsg == 3) {
            // console.log(errMsg)
            alert("username already exist");

            return false;
        }
        //if username is null
        else if (username == null || username.length < 1) {

            alert("username can not be empty!")
            return false;
        }
        else {
            $("form").submit();
        }
    });
</script>
</html>

