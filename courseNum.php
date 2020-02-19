
<html>

  <body>
    <?php

    $link = mysql_connect('mariadb', 'cs332z25', 'boo4AiVi');

    if (!$link) {
      die('Could not connect:'.mysql_error());
    }
    echo 'Connected successfully<p>';

    mysql_select_db("cs332z25", $link);


    $inputCNO = '"'.$_POST["cno"].'"';

    $query = "SELECT SNO, Classroom, Meeting_days, startTime, endTime , COUNT(Stu_CWID) as 'Count'
              FROM COURSE, SECTION, ENROLLMENT
              WHERE CNO = Course_no AND SNO = Sec_no AND C_num = Course_no
              AND CNO = $inputCNO
              GROUP BY SNO";

    $result = mysql_query($query,$link);

    if ( mysql_numrows($result) > 0) {

      echo "Course Number: ", $inputCNO, "<br>";
      echo "<br>";

    for($i = 0; $i < mysql_numrows($result); $i++) {
                 echo "Section Number: ", mysql_result($result,$i,"SNO"),"<br>";
                 echo "Classroom: ", mysql_result($result,$i,"Classroom"),"<br>";
                 echo "Meeting Days: ", mysql_result($result,$i,"Meeting_days"),"<br>";
                 echo "Start Time: ", mysql_result($result,$i,"startTime"),"<br>";
                 echo "End Time: ", mysql_result($result,$i,"endTime"),"<br>";
                 echo "Number of Students: ", mysql_result($result,$i,"Count"), "<br>";
     }

   }

   else {
     echo "Course not found.";
     echo "<br />";
     echo "Please make sure course number is in correct format.";
   }


    mysql_close($link);

     ?>
  </body>


</html>
