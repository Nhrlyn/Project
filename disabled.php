<?php
include "php/dbcon.php";
session_start();
if (isset($_SESSION['R_VERIFIED']) && isset($_SESSION['R_FULL']) && isset($_SESSION['R_EMAIL']) && isset($_SESSION['R_FIRST']) && isset($_SESSION['R_MIDD'])) {

?>
<?php
if (!isset($_SESSION['R_VERIFIED']) || $_SESSION['R_VERIFIED'] != "6") {
    header("location: signin");
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
    <link rel="stylesheet" href="css/dasboard.css">
    <link rel="stylesheet" href="css/nitification.css">
    <title>RMS - disabled</title>

</head>

<body style="display: flex; flex-direction: column; min-height: 100vh;">
    <header>
        <!-- Header content goes here -->
    </header>

    <div style="flex: 1; display: flex;">
        <nav class="col-md-3 col-lg-2 d-md-block bg-light border-right" id="sidebar">
            <div class="sidebar-heading p-3">
                <img src="../img/Phinma-logi.jpg" alt="Logo" class="img-fluid">
                <h5 style="font-weight: 700;">REGISTRAR MANAGEMENT SYSTEM</h5>
            </div>
            <div class="list-group list-group-flush">
                <a href="Dashboard" class="list-group-item list-group-item-action active">
                    <i class="fas fa-book mr-2"></i><span class="sidebar-text">Dashboard</span>
                </a>
                <a href="php/signout" class="list-group-item list-group-item-action">
                    <i class="fas fa-sign-out-alt mr-2"></i><span class="sidebar-text">Logout</span>
                </a>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-md-auto col-lg-10 px-1" id="main-content">
    <button id="sidebarToggle" class="btn btn-secondary btn-notification position-fixed" style="top: 15px; font-size: 12px">
        <i class="fas fa-bars mr2"></i>
    </button>
    <div class="container-fluid">
        <div class="mt-5">
            <p style="font-size: 24px; text-align: center; color: red;">Your account has been disabled.</p>
            <!-- You can add more content or formatting as needed -->
        </div>
    </div>
</main>
    </div>

    <!-- Notification button in the upper right corner -->
    <button class="btn btn-secondary btn-notification position-fixed" style="top: 15px; right: 40px; font-size:12px">
        <i class="fas fa-user-circle mr-2"></i>
        <?php echo htmlspecialchars($_SESSION['R_FIRST'] . ' ' . $_SESSION['R_MIDD'] . ' ' . $_SESSION['R_FULL']); ?>
    </button>


    <footer class="mt-auto" style="background-color: #f2f2f2; text-align: center; padding: 2px 0; font-size: 10px;">
        <p>&copy; 2023 Registrar Management System. All rights reserved.</p>
    </footer>


    <?php include "php/student/studentjs.php"; ?>
    <?php include "php/student/notification.php"; ?>

</body>

</html>

<?php
} else {

    header("location: signin");
    exit();
}

?>