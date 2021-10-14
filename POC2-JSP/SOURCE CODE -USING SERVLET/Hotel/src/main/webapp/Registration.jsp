<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="Reg.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="regbox box">
                <img class="design" src="https://www.pixelstalk.net/wp-content/uploads/2016/07/Wallpapers-pexels-photo.jpg">
                <h1>Register Here</h1>
<form action="/RegisterServlet" method="post">
                 <p>First Name</p>
<input type="text" placeholder="First Name" name="Firstname" required>
                 <p>Last Name</p> 
<input type="text" placeholder="Last Name" name="Lastname" required>
                   <p>Phone number</p>  
 <input type="Number" placeholder="Phone" name="Phone" required>
                    <p>User name</p>
<input type="text" placeholder="UserName" name="UserName" required>
                   <p>DOB</p>
<input type="date" placeholder="DOB" name="DOB" required>
                   <p>Password</p>
<input type="password" placeholder="Password" name="Password" required>
                   <input type="submit" value="Register">
                   <a href="index.jsp">Already have Account?</a>
                </form>
</div>
</div>
</body>
</html>
