<?php
if (isset($_GET['generated']) && $_GET['generated'] == "false") {
    unset($_GET['generated']);
    echo '<script>alert("Timetable not generated yet!!");</script>';
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>TimeTable Management System</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- FONT AWESOME CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />

    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />

</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top" id="menu">
        <div class="container">
            <div>
                <img style="width: 100px; float:left" src="/assets/img/logo.jpg" alt="LOGO">
            </div>
            <div>
                <h3>TIME TABLE MANAGEMENT SYSTEM,CSE DEPARTMENT,JKKNIU</h3>
            </div>
        </div>
    </div>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="/assets/img/coverImg/cover-img1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/assets/img/coverImg/cover-img2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/assets/img/coverImg/cover-img3.jpg" alt="Third slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/assets/img/coverImg/cover-img4.png" alt="Fourth slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <div align="center" STYLE="margin-top: 30px">
        <button data-scroll-reveal="enter from the bottom after 0.2s" id="teacherLoginBtn" class="btn btn-info btn-lg">TEACHER LOGIN
        </button>
        <button data-scroll-reveal="enter from the bottom after 0.2s" id="adminLoginBtn" class="btn btn-success btn-lg">ADMIN LOGIN
        </button>
    </div>
    <br>
    <div align="center">
        <form data-scroll-reveal="enter from the bottom after 0.2s" action="studentvalidation.php" method="post">
            <select id="select_semester" name="select_semester" class="list-group-item">
                <option selected disabled>Select Semester</option>
                <option value="1"> B.Sc 1st Year First Semester</option>
                <option value="1"> B.Sc 1st Year Second Semester</option>
                <option value="3"> B.Sc 2nd Year First Semester</option>
                <option value="3"> B.Sc 2nd Year Second Semester</option>
                <option value="5"> B.Sc 3rd Year First Semester</option>
                <option value="5"> B.Sc 3rd Year Second Semester</option>
                <option value="7"> B.Sc Final Year First Semester</option>
                <option value="8"> B.Sc Final Year Second Semester</option>
            </select>
            <button type="submit" class="btn btn-info btn-lg" style="margin-top: 10px">Download</button>
        </form>
    </div>
    <!-- The Modal -->
    <div id="myModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="popupHead">Modal Header</h2>
                <span class="close">&times</span>

            </div>
            <div class="modal-body" id="LoginType">
                <!--Admin Login Form-->
                <div style="display:none" id="adminForm">
                    <form action="adminFormvalidation.php" method="POST">
                        <div class="form-group">
                            <label for="adminname">Username</label>
                            <input type="text" class="form-control" id="adminname" name="UN" placeholder="Username ...">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="PASS" placeholder="Password ...">
                        </div>
                        <div align="right">
                            <input type="submit" class="btn btn-default" name="LOGIN" value="LOGIN">
                        </div>
                    </form>
                </div>
            </div>
            <!--Faculty Login Form-->
            <div style="display:none" id="facultyForm">
                <form action="facultyformvalidation.php" method="POST" style="overflow: hidden">
                    <div class="form-group" style="margin: 5px;">
                        <label for="facultyno"> Enter Teacher ID:</label>
                        <input type="text" class="form-control" id="facultyno" name="FN" placeholder="Teacher ID....">
                    </div>
                    <div align="right">
                        <button type="submit" class="btn btn-default" style="margin: 5px;" name="LOGIN">LOGIN</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script>
        // Get the modal
        var modal = document.getElementById('myModal');

        // Get the button that opens the modal
        var teacherLoginBtn = document.getElementById("teacherLoginBtn");
        var adminLoginBtn = document.getElementById("adminLoginBtn");
        var heading = document.getElementById("popupHead");
        var facultyForm = document.getElementById("facultyForm");
        var adminForm = document.getElementById("adminForm");
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks the button, open the modal
        adminLoginBtn.onclick = function() {
            modal.style.display = "block";
            heading.innerHTML = "Admin Login";
            adminForm.style.display = "block";
            facultyForm.style.display = "none";

        }
        teacherLoginBtn.onclick = function() {
            modal.style.display = "block";
            heading.innerHTML = "Teacher Login";
            facultyForm.style.display = "block";
            adminForm.style.display = "none";


        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
            adminForm.style.display = "none";
            facultyForm.style.display = "none";

        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
    <!--HOME SECTION END-->
    <!--HOME SECTION TAG LINE END-->

    <div id="faculty-sec" style="margin-top: 20px;">
        <div class="container container-faculty-sec set-pad">
            <div class="row text-center">
                <div class="d-flex justify-content-center">
                    <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">OUR DEPERTMENT </h1>

                </div>

            </div>
            <!--/.HEADER LINE END-->

            <div class="row">


                <div class="faculty-container" data-scroll-reveal="enter from the bottom after 0.5s">
                    <div class="faculty-div">
                        <img src="assets/img/faculty/dean.JPG" class="img-rounded" alt="Dean Image" />
                        <h3>Prof. Dr. Mst Jannatul Ferdous</h3>
                        <hr />
                        <h4>Chairman<br /> Computer Science & Engineering Department</h4>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="container">
        <div class="row set-row-pad">
            <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1 " data-scroll-reveal="enter from the bottom after 0.4s">

                <h2><strong>Our Location </strong></h2>
                <hr />
                <div>
                    <h4>Trishal,
                        Mymensingh,
                    </h4>
                    <h4>Bangladesh</h4>
                    <h4><strong>PABX Telephone:</strong> 09032-56212, 56214 </h4>
                    <h4><strong>Fax: </strong>09032-56270</h4>
                </div>


            </div>
            <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1" data-scroll-reveal="enter from the bottom after 0.4s">

                <h2><strong>Social Conectivity </strong></h2>
                <hr />
                <div>
                    <a href="#"> <img src="assets/img/Social/facebook.png" alt="" /> </a>
                    <a href="#"> <img src="assets/img/Social/google-plus.png" alt="" /></a>
                    <a href="#"> <img src="assets/img/Social/twitter.png" alt="" /></a>
                </div>
            </div>


        </div>
    </div>
    <!-- CONTACT SECTION END-->
    <div id="footer">
        &copy 2021 TTMS | All Rights Reserved | <span style="color: #fff">Design by CSE Depertment, JKKNIU</span>

    </div>
    <!-- FOOTER SECTION END-->

    <!--  Jquery Core Script -->

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <!--  Core Bootstrap Script -->

    <!--  Flexslider Scripts -->
    <script src="assets/js/jquery.flexslider.js"></script>

    <script src="assets/js/scrollReveal.js"></script>

    <script src="assets/js/jquery.easing.min.js"></script>
    <!--  Custom Scripts -->
    <script src="assets/js/custom.js"></script>
    </div>
</body>

</html>