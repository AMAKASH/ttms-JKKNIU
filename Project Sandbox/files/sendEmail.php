<?php

include 'connection.php';
$id = $_GET['id'];

if (isset($_GET['day'])) {
    $day = $_GET['day'];
}
$q = mysqli_query(
    mysqli_connect("localhost", "root", "", "ttms"),
    "SELECT * FROM teachers WHERE Teacher_ID = '$id' "
);
$result = mysqli_fetch_assoc($q);

$emailID = $result['email_id'];
$name = $result['name'];
echo 'Sending Email Please Wait. You will be Redirected Shortly';
$get = "SELECT * FROM " . $id;

$q = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), $get);




?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
    <script type="text/javascript" src="assets/js/html2canvas.js"></script>
    <script src="assets/js/jquery-1.10.2.js"></script>
    <title>Document</title>
</head>

<body>

    <div id="TT" style="background-color: #FFFFFF">
        <table border="2" cellspacing="3" align="center" id="timetable">
            <caption><strong><br><br>
                    <?php
                    if (isset($_SESSION['loggedin_name'])) {
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

                $table = " " . $id . " ";

                if (isset($id)) {
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
                        if (isset($day) && $row['day'] != $day) {
                            continue;
                        }


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

    <script>
        let bodyText = "Dear <?php echo $name ?>,<br>Please Find your Routine Below:<br> <br>"
        bodyText += document.getElementById('TT').innerHTML;
        bodyText += "<br><br>Regards,<br>CSE Depertment,<br>JKKNIU";

        let subjectText = "Routine <?php echo $id ?>"
        <?php
        if (isset($day)) { ?>
            subjectText += ' <?php echo "[" . $day . "]"; ?>';
        <?php } ?>
        console.log(subjectText);
        //sendEmail();

        function sendEmail() {
            console.log('Triggered Send email')
            Email.send({
                Host: "smtp.gmail.com",
                Username: "demo.csedept@gmail.com",
                Password: "Csedept123",
                To: '<?php echo $emailID ?>',
                From: "demo.csedept@gmail.com",
                Subject: subjectText,
                Body: bodyText,

            }).then(
                message => window.location.href = "/addteachers.php"
            );
        }
    </script>

</body>

</html>