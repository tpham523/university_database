
<html>


  <body>
    <?php

    $link = mysql_connect('mariadb', 'cs332z25', 'boo4AiVi');

    if (!$link) {
      die('Could not connect:'.mysql_error());
    }
    echo 'Connected successfully<p>';

    mysql_select_db("cs332z25", $link);


    $inputCWID = $_POST["scwid"];

    $query = "SELECT CNO, Ctitle, Grade
              FROM COURSE, STUDENT, ENROLLMENT, SECTION
              WHERE CNO = Course_no AND Course_no = C_num AND CWID = Stu_CWID
              AND CWID = $inputCWID";

    $result = mysql_query($query,$link);

    if (mysql_numrows($result) > 0) {

      echo "You took the following course(s): " , "<br />";
      echo "<br />";

    for($i = 0; $i < mysql_numrows($result); $i++) {

                 echo "Course Number: ", mysql_result($result,$i,"CNO"),"<br>";
                 echo "Course Title: ", mysql_result($result,$i,"Ctitle"),"<br>";
                 echo "Grade: ", mysql_result($result,$i,"Grade"),"<br>";
                 echo "<br>";
                 echo "<hr />";

     }

   }

   else {
     echo "CWID not found.", "<br />";
     echo "<br />";
     echo "Please make sure your CWID is in correct format.";
   }


    mysql_close($link);

     ?>
  </body>


</html>
