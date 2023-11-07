<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/signup.css">

    <title>RMS - Sign up</title>
</head>
<style>
.custom-form {
    max-width: 700px;
    margin-top: 900px;
}
</style>

<body>
    <div class="center-container">
        <form class="custom-form" enctype="multipart/form-data" action="php/signup.php" method="post">

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
            <!-- Header -->
            <div class="header">
                <img src="img/favicon - Copy.png" alt="Logo" class="logo">
                <div class="title">REGISTRAR MANAGEMENT SYSTEM</div>
            </div>

            <!-- Email input -->
            <div class="form-outline">
                <label class="form-label">Email Address</label>
                <input type="email" name="R_EMAIL" class="form-control" placeholder="Enter your email address" />
            </div>

            <!-- Password inputs -->
            <div class="form-outline">
                <label class="form-label">Password</label>
                <input type="password" id="password" name="R_PASS" class="form-control"
                    placeholder="Enter your password" />
                <input type="password" id="confirm-password" name="R_CPASS" class="form-control"
                    placeholder="Confirm your password" />

                <p class="password-match">Passwords match</p>
                <p class="password-requirement">Passwords do not match or are too short</p>

            </div>
            <!-- Full Name inputs -->
            <div class="form-outline">
                <label class="form-label">Full Name</label>
                <input type="text" name="R_FULL" class="form-control" placeholder="Last Name" />
                <input type="text" name="R_FIRST" class="form-control" placeholder="First Name" />
                <input type="text" name="R_MIDD" class="form-control" placeholder="Middle Name" />
            </div>

            <!-- School ID input -->
            <div class="form-outline">
                <label class="form-label">School ID</label>
                <input type="text" name="R_STU" class="form-control" placeholder="Enter your school ID" />
            </div>

            <!-- Course selection -->
            <div class="form-outline">
                <label class="form-label" for="courseSelect">Course</label>
                <select name="R_COU" class="form-control" id="courseSelect">
                    <option value="" disabled selected>Select a course</option>
                    <option value="course1">Course 1</option>
                    <option value="course2">Course 2</option>
                    <option value="course3">Course 3</option>
                    <!-- Add more options as needed -->
                </select>
            </div>

            <!-- Year Level selection -->
            <div class="form-outline">
                <label class="form-label" for="yearLevelSelect">Year Level</label>
                <select name="R_YEAR" class="form-control" id="yearLevelSelect">
                    <option value="" disabled selected>Select a year level</option>
                    <option value="year1">Year 1</option>
                    <option value="year2">Year 2</option>
                    <option value="year3">Year 3</option>
                    <option value="year4">Year 4</option>
                    <!-- Add more options as needed -->
                </select>
            </div>

            <!-- Additional fields -->
            <div class="form-outline">
                <label class="form-label">If Undergraduate Semester/Year</label>
                <input type="text" name="R_UN" class="form-control"
                    placeholder="If you are an undergraduate semester and year" />
            </div>

            <div class="form-outline">
                <label class="form-label">Company</label>
                <input type="email" name="R_COM" class="form-control" placeholder="Enter your company" />
            </div>

            <div class="form-outline">
                <label class="form-label">Position</label>
                <input type="text" name="R_POS" class="form-control" placeholder="Enter your position" />
            </div>

            <!-- Contact Number input -->
            <div class="form-outline">
                <label class="form-label">Contact Number</label>
                <input type="number" name="R_CON" class="form-control" placeholder="Enter your contact number" />
            </div>

            <!-- Full Address inputs -->
            <div class="form-outline">
                <label class="form-label">Full Address</label>
                <input type="number" name="R_ADD" class="form-control" placeholder="House/Unit No." />
                <input type="text" name="R_STRE" class="form-control" placeholder="Street" />
                <input type="text" name="R_BRGY" class="form-control" placeholder="District" />
                <input type="text" name="R_MUNI" class="form-control" placeholder="City" />
                <input type="text" name="R_CITY" class="form-control" placeholder="Region" />
            </div>

            <!-- File upload -->
            <div class="form-outline">
                <label class="form-label">Send Student ID or Proof</label>
                <input type="file" name="R_IMG" class="form-control" />
            </div>

            <!-- Submit button -->
            <button type="button" id="registerButton" class="btn btn-primary btn-block confirmRegistration">Sign
                up</button>


            <!-- Sign in link -->
            <div class="text-center mt-3">
                <p>Already a member? <a href="signin" class="link">Sign in</a></p>
            </div>
        </form>
    </div>

    <?php include "php/student/studentjs.php"; ?>
    <script src="js/registerallert.js"></script>
    <script src="js/registerinput.js"></script>



</body>

</html>