
<html>

  <body>
    <?php

    $link = mysql_connect('mariadb', 'cs332z25', 'boo4AiVi');

    if (!$link) {
      die('Could not connect:'.mysql_error());
    }
    echo 'Connected successfully<p>';

    mysql_select_db("cs332z25", $link);

    $inputSNO = $_POST['sectionNo'];
    $inputCNO = '"'.$_POST["courseNo"].'"';

    $query = "SELECT Grade, COUNT(*) as 'Count'
	            FROM ENROLLMENT, COURSE, SECTION
              WHERE CNO = Course_no AND C_num = CNO
              AND Sec_no = SNO
              AND Sec_no = $inputSNO AND CNO = $inputCNO
              GROUP BY Grade";

    $result = mysql_query($query,$link);


    if (mysql_numrows($result) > 0)
    {
      echo "Course Number: ", $inputCNO, "<BR>";
      echo "Section Number: ", $inputSNO ,"<BR>", "<BR>";

    for($i = 0; $i < mysql_numrows($result); $i++) {
            
                 echo mysql_result($result,$i,"Count"), " student(s) with Grade ", mysql_result($result,$i,"Grade"), "<br />";
     }

   }

   else { echo "Course not found.";
     echo "<br />";
     echo " Please make sure your Course Number and Section Number are in correct format.";
   }

    mysql_close($link);

     ?>
  </body>


</html>
