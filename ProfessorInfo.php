
<html>

  <body>
    <?php

    $link = mysql_connect('mariadb', 'cs332z25', 'boo4AiVi');
    if (!$link) {
      die('Could not connect:'.mysql_error());
    }
    echo 'Connected successfully<p>';

    mysql_select_db("cs332z25", $link);

    $inputSSN = $_POST['SSN'];

    $query = "SELECT Ctitle, Classroom, Meeting_days, startTime, endTime
              FROM PROFESSOR, COURSE, SECTION
              WHERE PSSN = Prof_SSN AND Course_no = CNO
              AND PSSN = $inputSSN";

    $result = mysql_query($query,$link);

    if (mysql_numrows($result) > 0) {

    echo "You have the following class(es):","<br />";
    echo "<BR />";

    for($i = 0; $i < mysql_numrows($result); $i++) {
                 echo "Class Title: ", mysql_result($result,$i,"Ctitle"),"<br>";
                 echo "Classroom: ", mysql_result($result,$i,"Classroom"),"<br>";
                 echo "Meeting Days: ", mysql_result($result,$i,"Meeting_days"),"<br>";
                 echo "Start Time: ", mysql_result($result,$i,"startTime"),"<br>";
                 echo "End Time: ", mysql_result($result,$i,"endTime"),"<br>";
                 echo "<br>";
                 echo "<hr />";
     }

   }

   else {
     echo "Information not found.", "<br />";
     echo "<br />";
     echo "Please make sure your SSN is in correct format.";
   }

    mysql_close($link);

     ?>
  </body>


</html>
