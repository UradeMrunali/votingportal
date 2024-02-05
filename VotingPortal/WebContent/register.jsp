<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Voting Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
       body {
    background-image: url('https://colorlib.com/etc/regform/colorlib-regform-12/images/body-bg.jpg');
    background-size: cover;
    background-position: center;
    margin: 0;
    display: flex;
    align-items: center;
    justify-content: center;
}

.page-container {
    max-width: 600px;
    padding: 60px;
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}


        .form-group {
            margin-bottom: 20px;
        }

        label {
            color: black;
            font-weight: bold;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>

<body>
    <div class="page-container">
        <h1 class="text-center mb-8">Registration Form</h1>
        <form method="post" action="RegistrationServlet">
            <div class="form-group">
                <label for="fname" style="color: black;">First Name:</label>
                <input type="text" id="fname" name="fname" class="form-control" placeholder="First Name">
            </div>

            <div class="form-group">
                <label for="dob" style="color: black;">Date of Birth:</label>
                <input type="date" id="dob" name="dob" class="form-control" placeholder="Date of Birth">
            </div>

            <div class="form-group">
                <label for="gender" style="color: black;">Gender:</label>
                <div class="form-check">
                    <input type="radio" id="male" name="gender" value="Male" class="form-check-input">
                    <label for="male" class="form-check-label">Male</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="female" name="gender" value="Female" class="form-check-input">
                    <label for="female" class="form-check-label">Female</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="other" name="gender" value="Other" class="form-check-input">
                    <label for="other" class="form-check-label">Other</label>
                </div>
            </div>

            <div class="form-group">
                <label for="address" style="color: black;">Address:</label>
                <input type="text" id="address" name="address" class="form-control" placeholder="Address">
            </div>

            <div class="form-group">
                <label for="city" style="color: black;">City:</label>
                <input type="text" id="city" name="city" class="form-control" placeholder="City">
            </div>

            <div class="form-group">
                <label for="state" style="color: black;">State:</label>
                <input type="text" id="state" name="state" class="form-control" placeholder="State">
            </div>

            <div class="form-group">
                <label for="uname" style="color: black;">Username:</label>
                <input type="text" id="uname" name="uname" class="form-control" placeholder="Username">
            </div>

            <div class="form-group">
                <label for="regpwd" style="color: black;">Password:</label>
                <input type="password" id="regpwd" name="regpwd" class="form-control" placeholder="Password">
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
