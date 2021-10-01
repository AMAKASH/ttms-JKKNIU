<?php
error_reporting(0);
error_reporting(E_ERROR | E_WARNING | E_PARSE);
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>TimeTable Management System</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
    <script type="text/javascript" src="assets/js/html2canvas.js"></script>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- FLEXSLIDER CSS -->
    <link href="assets/css/flexslider.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />

</head>

<body>
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
            <caption>
                <strong><br><br>
                    <?php
                    if (isset($_POST['select_semester'])) {
                        echo "COMPUTER ENGINEERING DEPARTMENT SEMESTER " . $_POST['select_semester'] . " ";
                        $year = (int)($_POST['select_semester'] / 2) + $_POST['select_semester'] % 2;
                        $r = mysqli_fetch_assoc(mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), "SELECT * from classrooms
                                WHERE status = '$year'"));
                        echo " ( " . $r['name'], " ) ";
                    }
                    ?>
                </strong>
            </caption>
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
                } else
                    echo '</table>';
                if (isset($_POST['select_semester'])) {
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
                                        "SELECT * FROM teachers WHERE faculty_number = '$id'"
                                    );
                                    $rr = mysqli_fetch_assoc($qqq);
                                    $str .= " " . $rr['alias'] . ": " . $rr['name'] . ", ";
                                }
                                if (isset($r['allotedto3'])) {
                                    $id = $r['allotedto3'];
                                    $qqq = mysqli_query(
                                        mysqli_connect("localhost", "root", "", "ttms"),
                                        "SELECT * FROM teachers WHERE faculty_number = '$id'"
                                    );
                                    $rr = mysqli_fetch_assoc($qqq);
                                    $str .= " " . $rr['alias'] . ": " . $rr['name'] . "<br>";
                                }
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
                    if (isset($_POST['select_semester'])) {
                        echo "<div align=\"center\">" . "<br>" . $str . "<br>
                            <strong>" . $sign . "<br></strong></div>";
                    }
                    unset($_GET['generated']);
                } else {
                    header("location:index.php?generated=false");
                }
                ?>
    </div>
    <script type="text/javascript">
        function gendf() {
            var doc = new jsPDF();
            doc.addHTML(document.getElementById('TT'), function() {
                doc.save('<?php echo "ttms semester " . $_POST["select_semester"] ?>' + '.pdf');
                alert("Downloaded!");
            });
        }
    </script>
    <div align="center" style="margin: 10px">
        <button id="saveaspdf" class="btn btn-info btn-lg" onclick="gendf()">SAVE AS PDF</button>
    </div>
    <div id="footer">
        &copy 2021 TTMS | All Rights Reserved | <span style="color: #fff">Design by CSE Department, JKKNIU</span>

    </div>
</body>

</html>