<?php
session_start();

if (isset($_SESSION['R_VERIFIED'])) {

    switch ($_SESSION['R_VERIFIED']) {
        case "1":
            header("location: student/dashboard");
            break;
        case "2":
            header("location: accounting/dashboard");
            break;
        case "3":
            header("location: registrar/dashboard");
            break;
        case "4":
            header("location: admin/dashboard");
            break;
        case "5":
            header("location: disable");
            break;
        case "6":
            header("location: disabled");
            break;
        default:
  
            break;
    }
    exit(); 
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/signup.css">
    <title>RMS - Sign In</title>
</head>

<body>

    <div class="center-container">
        <form class="custom-form" method="post" action="php/signin">

            <?php if(isset($_GET['error'])){ ?>
            <div class="alert alert-danger" role="alert">
                <?php echo $_GET['error']; ?>
            </div>
            <?php } ?>

            <?php if(isset($_GET['success'])){ ?>
            <div class="alert alert-success" role="alert">
                <?php echo $_GET['success']; ?>
            </div>
            <?php } ?>

            <div class="header">
                <img src="img/favicon - Copy.png" alt="Logo" class="logo">
                <div class="title">REGISTRAR MANAGEMENT SYSTEM</div>
            </div>

            <!-- Email input -->
            <div class="form-outline">
                <label class="form-label">Email address</label>
                <input type="email" id="form2Example1" name="R_EMAIL" class="form-control"
                    placeholder="Enter your email address"
                    value="<?php echo isset($_SESSION['login_email']) ? $_SESSION['login_email'] : ''; ?>" />
            </div>

            <!-- Password input -->
            <div class="form-outline">
                <label class="form-label">Password</label>
                <input type="password" id="form2Example2" name="R_PASS" class="form-control"
                    placeholder="Enter your password" />
            </div>

            <!-- Checkbox and forgot password link -->
            <div class="d-flex justify-content-between align-items-center">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                    <label class="form-check-label" for="form2Example31"> Remember me </label>
                </div>
                <a href="php/forgot/forgot" class="link">Forgot password?</a>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block">Sign in</button>

            <!-- Register link -->
            <div class="text-center mt-3">
                <p>Not a member? <a href="signup" class="link">Sign up</a></p>
            </div>
        </form>
    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="js/registerinput.js"></script>

</body>

</html>