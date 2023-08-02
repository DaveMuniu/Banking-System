<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Family Bank</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" rel="noopener"></script>
    <style>
        .dropdown-btn {
            color: white;
            margin-top: -5px;
            padding: 1px;
            border: none;
        }
    </style>
</head>
<body>
    <header>
        <div class="headerArea fixed">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 d-flex flex-wrap justify-content-center justify-content-lg-start">
                        <h3>Family Bank</h3>
                    </div>
                    <div class="col-lg-9 d-flex flex-wrap justify-content-center justify-content-lg-end">
                        <div class="headerRightArea">
                            <div class="headerMenu f-right">
                                <nav>
                                    <ul>
                                        <li><a href="index.php">Home</a></li>
                                        <li><a href="index.php#About">About</a></li>
                                        <li><a href="index.php#Services">Services</a></li>
                                        <li><a href="index.php#Contact">Contact</a></li>
                                        <li>
                                            <div class="dropdown">
                                                <button type="button" class="btn dropdown-btn" data-bs-toggle="dropdown" aria-expanded="false" aria-haspopup="true">
                                                    Account
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item1" href="applicationPage.php">Open Account</a></li>
                                                    <li><a class="dropdown-item1" href="loginPage.php">E-Login</a></li>
                                                    <li><a class="dropdown-item1" href="registerPage.php">E-Register</a></li>
                                                    <li><a class="dropdown-item1" href="admin_login.php">Admin Login</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>
</html>
