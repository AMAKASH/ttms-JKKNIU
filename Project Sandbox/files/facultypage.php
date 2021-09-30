<?php
// Turn off all error reporting
//error_reporting(0);
//error_reporting(E_ERROR | E_WARNING | E_PARSE);
session_start();
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>TimeTable Management System</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
    <script type="text/javascript" src="assets/js/html2canvas.js"></script>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- FLEXSLIDER CSS -->
    <link href="assets/css/flexslider.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Google	Fonts -->
</head>

<body>

    <div class="navbar navbar-inverse navbar-fixed-top " id="menu">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>
            <div class="navbar-collapse collapse move-me">
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="#">Hello <?php echo $_SESSION['loggedin_name']; ?></a></li>


                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.php">LOGOUT</a></li>
                </ul>

            </div>
        </div>
    </div>
    <!--NAVBAR SECTION END-->
    <br>
    <!--Algorithm Implementation-->


    <form action="facultypage.php" method="post">
        <div style="margin-top: 100px" align="center">
            <select name="select_teacher" class="list-group-item">
                <option selected disabled>Select Teacher</option>
                <?php
                $q = mysqli_query(
                    mysqli_connect("localhost", "root", "", "ttms"),
                    "SELECT * FROM teachers "
                );
                while ($row = mysqli_fetch_assoc($q)) {
                    echo " \"<option value=\"{$row['Teacher_ID']}\">{$row['name']}</option>\"";
                }
                ?>
            </select>
            <button type="submit" id="viewteacher" class="btn btn-success btn-lg" style="margin-top: 5px">VIEW TIMETABLE
            </button>
        </div>
    </form>
    <form action="facultypage.php" method="post">
        <div align="center" style="margin-top: 10px">
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
            <button type="submit" id="viewsemester" style="margin-top: 5px" class="btn btn-success btn-lg">VIEW TIMETABLE
            </button>
        </div>
    </form>

    <div>
        <br>
        <style>
            table {
                margin-top: 20px;
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td,
            th {
                border: 2px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #ffffff;
            }

            tr:nth-child(odd) {
                background-color: #ffffff;
            }
        </style>
        <div id="TT" style="background-color: #FFFFFF">
            <table border="2" cellspacing="3" align="center" id="timetable">
                <caption><strong><br><br>
                        <?php
                        if (isset($_POST['select_semester'])) {
                            echo "COMPUTER ENGINEERING DEPARTMENT SEMESTER " . $_POST['select_semester'] . " ";
                            $year = (int)($_POST['select_semester'] / 2) + $_POST['select_semester'] % 2;
                            $r = mysqli_fetch_assoc(mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), "SELECT * from classrooms
                        WHERE status = '$year'"));
                            echo " ( " . $r['name'], " ) ";
                        } else if (isset($_POST['select_teacher'])) {
                            $id = $_POST['select_teacher'];
                            $r = mysqli_fetch_assoc(mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), "SELECT * from teachers
                        WHERE Teacher_ID = '$id'"));
                            echo $r['name'];
                        } else if (isset($_SESSION['loggedin_name'])) {
                            echo $_SESSION['loggedin_name'];
                        }
                        ?>
                    </strong></caption>
                <tr>
                    <td style="text-align:center">WEEKDAYS</td>
                    <td style="text-align:center">9:30-10:30AM</td>
                    <td style="text-align:center">10:30-11:30AM</td>
                    <td style="text-align:center">11:30-12:30PM</td>
                    <td style="text-align:center">12:30-1:30PM</td>
                    <td style="text-align:center">1:30-2:30PM</td>
                    <td style="text-align:center">2:30-3:30PM</td>
                    <td style="text-align:center">3:30-4:30PM</td>
                </tr>
                <tr>
                    <?php
                    $table = null;
                    if (isset($_POST['select_semester'])) {
                        $table = " semester" . $_POST['select_semester'] . " ";
                    } else if (isset($_POST['select_teacher'])) {
                        $table = " " . $_POST['select_teacher'] . " ";
                    } else if (isset($_SESSION['loggedin_id'])) {
                        $table = " " . $_SESSION['loggedin_id'] . " ";
                    } else
                        echo '</table>';
                    if (isset($_POST['select_semester']) || isset($_POST['select_teacher']) || isset($_SESSION['loggedin_id'])) {
                        $q = mysqli_query(
                            mysqli_connect("localhost", "root", "", "ttms"),
                            "SELECT * FROM" . $table
                        );
                        $qq = mysqli_query(
                            mysqli_connect("localhost", "root", "", "ttms"),
                            "SELECT * FROM subjects"
                        );
                        $days = array('SUNDAY', 'MONDAY', 'TUESDAY', 'WEDNESDAY', 'THURSDAY');
                        $i = -1;
                        $str = "<br>";
                        if (isset($_POST['select_semester'])) {
                            while ($r = mysqli_fetch_assoc($qq)) {
                                if ($r['isAlloted'] == 1 && $r['semester'] == $_POST['select_semester']) {
                                    $str .= $r['subject_code'] . ": " . $r['subject_name'] . " ";
                                    if (isset($r['alloted_to'])) {
                                        $id = $r['alloted_to'];
                                        $qqq = mysqli_query(
                                            mysqli_connect("localhost", "root", "", "ttms"),
                                            "SELECT * FROM teachers WHERE Teacher_ID = '$id'"
                                        );
                                        $rr = mysqli_fetch_assoc($qqq);
                                        $str .= " " . $rr['alias'] . ": " . $rr['name'] . " ";
                                    }
                                    if ($r['course_type'] !== "LAB") {
                                        $str .= "<br>";
                                        continue;
                                    } else {
                                        $str .= ", ";
                                    }
                                    if (isset($r['allotedto2'])) {
                                        $id = $r['allotedto2'];
                                        $qqq = mysqli_query(
                                            mysqli_connect("localhost", "root", "", "ttms"),
                                            "SELECT * FROM teachers WHERE Teacher_ID = '$id'"
                                        );
                                        $rr = mysqli_fetch_assoc($qqq);
                                        $str .= " " . $rr['alias'] . ": " . $rr['name'] . ", ";
                                    }
                                    if (isset($r['allotedto3'])) {
                                        $id = $r['allotedto3'];
                                        $qqq = mysqli_query(
                                            mysqli_connect("localhost", "root", "", "ttms"),
                                            "SELECT * FROM teachers WHERE Teacher_ID = '$id'"
                                        );
                                        $rr = mysqli_fetch_assoc($qqq);
                                        $str .= " " . $rr['alias'] . ": " . $rr['name'] . "<br>";
                                    }
                                }
                            }
                        } else if (isset($_POST['select_teacher']) || isset($_SESSION['loggedin_id'])) {
                            if (isset($_POST['select_teacher'])) {
                                $tid = $_POST['select_teacher'];
                            } else {
                                $tid = $_SESSION['loggedin_id'];
                            }
                            while ($r = mysqli_fetch_assoc($qq)) {
                                if ($r['isAlloted'] == 1 && $r['alloted_to'] == $tid) {
                                    $str .= $r['subject_code'] . ": " . $r['subject_name'] . " <br>";
                                } else if ($r['isAlloted'] == 1 && isset($r['allotedto2']) && $r['allotedto2'] == $tid) {
                                    $str .= $r['subject_code'] . ": " . $r['subject_name'] . " <br>";
                                } else if ($r['isAlloted'] == 1 && isset($r['allotedto3']) && $r['allotedto3'] == $tid) {
                                    $str .= $r['subject_code'] . ": " . $r['subject_name'] . " <br>";
                                }
                            }
                        }
                        while ($row = mysqli_fetch_assoc($q)) {
                            $i++;

                            echo "
                 <tr><td style=\"text-align:center\">$days[$i]</td>
                 <td style=\"text-align:center\">{$row['period1']}</td>
                <td style=\"text-align:center\">{$row['period2']}</td>
                <td style=\"text-align:center\">{$row['period3']}</td>
                 <td style=\"text-align:center\">{$row['period4']}</td>
                  <td style=\"text-align:center\">{$row['period5']}</td>
                  <td style=\"text-align:center\">{$row['period6']}</td>
                  <td style=\"text-align:center\">{$row['period7']}</td>
                </tr>\n";
                        }

                        echo '</table>';
                        $sign = "GENERATED VIA TIMETABLE MANAGEMENT SYSTEM, CSE DEPARTMENT, JKKNIU.";
                        echo "<div align=\"center\">" . "<br>" . $str . "<br>
                            <strong>" . $sign . "<br></strong></div>";
                    }
                    ?>
        </div>
    </div>
    <script type="text/javascript">
        function gendf() {
            var doc = new jsPDF();

            doc.addHTML(document.getElementById('TT'), function() {
                doc.save('<?php
                            if (isset($_POST["select_semester"])) {
                                echo "ttms semester " . $_POST["select_semester"];
                            } else if (isset($_POST["select_teacher"])) {
                                echo "ttms " . $_POST["select_teacher"];
                            } else if (isset($_SESSION["loggedin_id"])) {
                                echo "ttms " . $_SESSION["loggedin_id"];
                            }
                            ?>' + '.pdf');
                alert("Downloaded!");

            });
        }
    </script>
    <div align="center" style="margin: 10px">
        <button id="saveaspdf" class="btn btn-info btn-lg" onclick="gendf()">SAVE AS PDF</button>
    </div>


    <!--HOME SECTION END-->

    <div id="footer">
        &copy 2014 TTMS | All Rights Reserved | <span>Design by CSE Department, JKKNIU</span>

        <!-- FOOTER SECTION END-->

        <!--  Jquery Core Script -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!--  Core Bootstrap Script -->
        <script src="assets/js/bootstrap.js"></script>
        <!--  Flexslider Scripts -->
        <script src="assets/js/jquery.flexslider.js"></script>
        <!--  Scrolling Reveal Script -->
        <script src="assets/js/scrollReveal.js"></script>
        <!--  Scroll Scripts -->
        <script src="assets/js/jquery.easing.min.js"></script>
        <!--  Custom Scripts -->
        <script src="assets/js/custom.js"></script>
</body>

</html>