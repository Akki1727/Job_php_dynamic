<?php

include 'config.php';

$user = $edu = $work = $skill = $tech = $ref = $pref = '';
if (isset($_POST['submit'])) {
  $id = $_GET['id'];
  $fname = $_POST['fname'];
  $lname = $_POST['lname'];
  $designation = $_POST['designation'];
  $email = $_POST['email'];
  $address1 = $_POST['address1'];
  $address2 = $_POST['address2'];
  $number = $_POST['number'];
  $city = $_POST['city'];
  $state = $_POST['state'];
  $gender = $_POST['gender'];
  $zipcode = $_POST['zipcode'];
  $rstatus = $_POST['rstatus'];
  $bdate = $_POST['bdate'];

  $basic_update_sql = 'UPDATE basic_info SET fname="' . $fname . '",lname="' . $lname . '",designation="' . $designation . '",address1="' . $address1 . '",address2="' . $address2 . '",city="' . $city . '",state="' . $state . '",zipcode="' . $zipcode . '",email="' . $email . '",number="' . $number . '",bdate="' . $bdate . '",gender="' . $gender . '",rstatus="' . $rstatus . '" WHERE id = ' . $id . '';

  $basic_update_result = $conn->query($basic_update_sql);

  if ($basic_update_result == true) {
    echo " Basic Record Updated.....";
    // header('Location:view.php');
  } else {
    echo "Error---------->" . $basic_update_sql . "---------->" . $basic_update_result . "---------->" . $conn->error;
  }

  //education POST
  // $id = $conn->insert_id;
  // echo $s_id;

  $edu_delete_sql = 'DELETE FROM `edu_details` WHERE s_id = "' . $id . '"';
  $edu_delete_result = $conn->query($edu_delete_sql);
  if ($edu_delete_result == true) {
    echo "Edu Data Deleted...<br>";
  } else {
    echo "Error";
  }

  $work_delete_sql = 'DELETE FROM `work_exp` WHERE s_id = "' . $id . '"';
  $work_delete_result = $conn->query($work_delete_sql);
  if ($work_delete_result == true) {
    echo "Work Data Deleted...<br>";
  } else {
    echo "Error";
  }
  $skill_delete_sql = 'DELETE FROM `skill_details` WHERE s_id = "' . $id . '"';
  $skill_delete_result = $conn->query($skill_delete_sql);
  if ($skill_delete_result == true) {
    echo "Skill Data Deleted...<br>";
  } else {
    echo "Error";
  }
  $tech_delete_sql = 'DELETE FROM `tech_details` WHERE s_id = "' . $id . '"';
  $tech_delete_result = $conn->query($tech_delete_sql);
  if ($tech_delete_result == true) {
    echo "tech Data Deleted...<br>";
  } else {
    echo "Error";
  }
  $ref_delete_sql = 'DELETE FROM `ref_details` WHERE s_id = "' . $id . '"';
  $ref_delete_result = $conn->query($ref_delete_sql);
  if ($ref_delete_result == true) {
    echo "ref Data Deleted...<br>";
  } else {
    echo "Error";
  }

  $pref_delete_sql = 'DELETE FROM `pref_details` WHERE s_id = "' . $id . '"';
  $pref_delete_result = $conn->query($pref_delete_sql);
  if ($pref_delete_result == true) {
    echo "pref Data Deleted...<br>";
  } else {
    echo "Error";
  }

  $coursename = $_POST['coursename'];
  $school_university = $_POST['school_university'];
  $year = $_POST['year'];
  $cgpa_perc = $_POST['cgpa_perc'];

  for ($i = 0; $i < count($coursename); $i++) {
    if ($coursename[$i] != "" && $school_university[$i] != "" && $year[$i] != "" && $cgpa_perc[$i] != "") {
      $edu_sql = 'INSERT INTO edu_details (s_id,coursename,school_university,year,cgpa_perc) VALUES ("' . $id . '","' . $coursename[$i] . '","' . $school_university[$i] . '","' . $year[$i] . '","' . $cgpa_perc[$i] . '")';
    }
    $edu_result = $conn->query($edu_sql);
    if ($edu_result == true) {
      echo 'Education Details Added...<br>';
    } else {
      echo 'Error in Education details' . $edu_sql . '----------------->' . $edu_result . '--------->' . $conn->error;
    }
  }





  $companyname = $_POST['companyname'];
  $work_designation = $_POST['work_designation'];
  $from_date = $_POST['from_date'];
  $to_date = $_POST['to_date'];

  for ($i = 0; $i < count($companyname); $i++) {
    if ($companyname[$i] != "" && $work_designation[$i] != "" && $from_date[$i] != "" && $to_date[$i] != "") {
      $work_sql = 'INSERT INTO work_exp (s_id,companyname,work_designation,from_date,to_date) VALUES ("' . $id . '","' . $companyname[$i] . '","' . $work_designation[$i] . '","' . $from_date[$i] . '","' . $to_date[$i] . '")';
      echo $work_sql;
    } else {
      echo "Some Work Details are Empty.....................";
    }
    $work_result = $conn->query($work_sql);
    // echo $work_result;
    if ($work_result == true) {
      echo "Work Data Inserted...........<br>";
    } else {
      echo 'Error---->' . $work_sql . '-------->' . $work_result . '-------->' . $conn->error;
    }
  }



  $language = $_POST['language'];
  // $read = $_POST['read_lan'];
  // $write = $_POST['write_lan'];
  // $speak = $_POST['speak'];
  // $skill = implode(',',$_POST['skill']) ;
  var_dump($skill);

  for ($i = 0; $i < count($language); $i++) {
    $skill1 = $_POST['skill'];
    echo $skill = implode(',', $skill1[$i]);
    if ($language[$i] != "" && $skill[$i] != "") {
      $skill_sql = 'INSERT INTO skill_details (s_id,language,skill) VALUES ("' . $id . '","' . $language[$i] . '","' . $skill . '")';
      echo $skill_sql;
    } else {
      echo "Some Skill Details are Empty.....................";
    }
    $skill_result = $conn->query($skill_sql);
    // echo $skill_result;
    if ($skill_result == true) {
      echo 'Skill Details Added.....<br>';
    } else {
      echo 'Error---->' . $skill_sql . '-------->' . $skill_result . '-------->' . $conn->error;
    }
  }

  $php = $_POST['php'];
  $mysql = $_POST['mysql'];
  $laravel = $_POST['laravel'];
  $oracle = $_POST['oracle'];

  $tech_sql = 'INSERT INTO tech_details (s_id,php,mysql,laravel,oracle) VALUES ("' . $id . '","' . $php . '","' . $mysql . '","' . $laravel . '","' . $oracle . '")';

  $tech_result = $conn->query($tech_sql);

  if ($tech_result == true) {
    $tech = "Technology Added.....";
  } else {
    echo 'Error---->' . $tech_sql . '-------->' . $tech_result . '-------->' . $conn->error;
  }




  $name = $_POST['name'];
  $contact_number = $_POST['contact_number'];
  $relation = $_POST['relation'];
  for ($i = 0; $i < count($name); $i++) {
    if ($name[$i] != "" && $contact_number[$i] != "" && $relation[$i] != "") {
      $ref_sql = 'INSERT INTO ref_details (s_id,name,contact_number,relation) VALUES ("' . $id . '","' . $name[$i] . '","' . $contact_number[$i] . '","' . $relation[$i] . '")';
    } else {
      echo "Some Referance Details are Empty.....................";
    }
    $ref_result = $conn->query($ref_sql);

    if ($ref_result == true) {
      echo "Referance Details Added.....<br>";
    } else {
      echo 'Error---->' . $ref_sql . '-------->' . $ref_result . '-------->' . $conn->error;
    }
  }


  $location = implode(',', $_POST['location']);
  $notice_period = $_POST['notice_period'];
  $expected_ctc = $_POST['expected_ctc'];
  $current_ctc = $_POST['current_ctc'];
  $department = $_POST['department'];

  $pref_sql = 'INSERT INTO pref_details (s_id,location,notice_period,expected_ctc,current_ctc,department) VALUES ("' . $id . '","' . $location . '","' . $notice_period . '","' . $expected_ctc . '","' . $current_ctc . '","' . $department . '")';

  $pref_result = $conn->query($pref_sql);
  if ($pref_result == true) {
   echo "Preference Details Added.....";
   header('Location:view.php');
  } else {
    echo 'Error---->' . $pref_sql . '-------->' . $pref_result . '-------->' . $conn->error;
  }




}
?>

<!DOCTYPE html>
<html lang='en'>

<head>
  <meta charset='UTF-8'>
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <meta name='viewport' content='width=device-width, initial-scale=1.0'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <title>JobApp in PHP</title>
  <script>
    function add_row_work() {
      $work_row_no = $("#work_table tr").length;
      $work_row_no = $work_row_no + 1;
      $("#work_table tr:last").after("<tr id='work_id" + $work_row_no + "'><td><label for='companyname'>Company Name:</label><input type='text' name ='companyname[]'></td><td> <label for='designation'>Designation:</label><input type='text' name ='work_designation[]'></td><td> <label for='from_date1'>From:</label><input type='date' name ='from_date[]'></td><td> <label for='to_date1'>To:</label><input type='date' name ='to_date[]'></td><td><input type='button' value='DELETE' onclick=delete_work_row('work_id" + $work_row_no + "')></td></tr>");
    }

    function delete_work_row(work_row_no) {
      $('#' + work_row_no).remove();
    }

    function add_row_edu() {
      $edu_row_no = $("#edu_table tr").length;
      $edu_row_no = $edu_row_no + 1;
      $("#edu_table tr:last").after("<tr id='edu_id" + $edu_row_no + "'><td> <label>Caurse Name:</label><select name='coursename[]' id='coursename'><option value='SSC'>SSC</option><option value='HSC'>HSC</option><option value='Bechlor'>BE</option><option value='Master'>ME</option></select></td><td> <label>School/University:</label><input type='text' name='school_university[]' id='school_university' ></td><td> <label>Passiong Year:</label><input type='text' name='year[]' id='year' ></td><td> <label>Percentage/CGPA:</label><input type='text' name='cgpa_perc[]' id='cgpa_perc' ></td><td><input type='button' value='DELETE' onclick=delete_edu_row('edu_id" + $edu_row_no + "')></td></tr>");
    }

    function delete_edu_row(edu_row_no) {
      $('#' + edu_row_no).remove();
    }

    function add_row_ref() {
      $ref_row_no = $("#ref_table tr").length;
      $ref_row_no = $ref_row_no + 1;
      $("#ref_table tr:last").after("<tr id='ref_id" + $ref_row_no + "'><td> <label for='name1'>Name:</label><input type='text' name='name[]' id='name'></td><td> <label for='contact'>Contact Number:</label> <input type='text' name='contact_number[]' id='contact_number'></td><td> <label for='relation'>Relation</label><input type='text' name='relation[]' id='relation'></td><td><input type='button' value='DELETE' onclick=delete_edu_row('ref_id" + $ref_row_no + "')></td></tr>");
    }

    function delete_edu_row(ref_row_no) {
      $('#' + ref_row_no).remove();
    }

    function add_row_skill() {
      $skill_row_no = $("#skill_table tr").length;
      // $skill_row_no = $skill_row_no ;
      $("#skill_table tr:last").after("<tr id='skill_id" + $skill_row_no + "'><td> <label>Language:</label> <select name='language[]' id='language'><option value='hindi'>Hindi</option><option value='english'>English</option><option value='gujarati'>Gujarati</option></select></td><td> <input type='checkbox' name='skill[" + $skill_row_no + "][read]' id='read' value='read'><label for='read'>Read</label></td><td> <input type='checkbox' name='skill[" + $skill_row_no + "][write]' id='write' value='write'><label for='write'>Write</label></td><td> <input type='checkbox' name='skill[" + $skill_row_no + "][speak]' id='speak' value='speak'><label for='speak'>Speak</label></td><td><input type='button' value='DELETE' onclick=delete_edu_row('skill_id" + $skill_row_no + "')></td></tr>");
    }

    function delete_edu_row(skill_row_no) {
      $('#' + skill_row_no).remove();
    }
  </script>
</head>


<body>
  <form action='' method='POST'>

    <!-- basic Details  -->
    <fieldset>
      <legend>Basic Details</legend>
      <?php
      if (isset($_GET['id'])) {
        $id = $_GET['id'];
        $basic_sql1 = 'SELECT * FROM basic_info WHERE id="' . $id . '"';
        echo $basic_sql1;
        $basic_result1 = $conn->query($basic_sql1);
        // echo $basic_result1;
        while ($basic_rows = $basic_result1->fetch_assoc()) {
          $fname = $basic_rows['fname'];
          $lname = $basic_rows['lname'];
          $designation = $basic_rows['designation'];
          $email = $basic_rows['email'];
          $address1 = $basic_rows['address1'];
          $address2 = $basic_rows['address2'];
          $number = $basic_rows['number'];
          $city = $basic_rows['city'];
          $state = $basic_rows['state'];
          $gender = $basic_rows['gender'];
          $zipcode = $basic_rows['zipcode'];
          $rstatus = $basic_rows['rstatus'];
          $bdate = $basic_rows['bdate'];
      ?>

          <table class='basictable'>
            <tr>
              <td>
                <label for='firstname'>FirstName:</label>
                <input type='text' name='fname' id='fname' value="<?php echo $fname ?>">
              </td>
              <td>
                <label for='lastname'>LastName:</label>
                <input type='text' name='lname' id='lname' value="<?php echo $lname ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for='designation'>Designation:</label>
                <input type='text' name='designation' id='designation' value="<?php echo $designation ?>">

              </td>
              <td>
                <label for='email'>Email:</label>
                <input type='text' name='email' id='email' value="<?php echo $email ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for='address1'>Address1:</label>
                <textarea name='address1' id='address1' cols='30' rows='2' value="<?php echo $address1 ?>"><?php echo $address1 ?></textarea>
              </td>
              <td>
                <label for='address2'>Address2:</label>
                <textarea name='address2' id='address2' cols='30' rows='2' value="<?php echo $address2 ?>"><?php echo $address2 ?></textarea>
              </td>
            </tr>
            <tr>
              <td>
                <label for='number'>Number:</label>
                <input type='text' name='number' id='number' value="<?php echo $number ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for='city'>City:</label>
                <input type='text' name='city' id='city' value="<?php echo $city ?>">
              </td>
              <td>
                <label for='state'>State:</label>
                <select name='state' id='state'>
                  <option value='<?php echo $state ?>' name='gujarat'>Gujarat</option>
                  <option value='<?php echo $state ?>' name='MP'>MP</option>
                  <option value='<?php echo $state ?>' name='UP'>UP</option>
                  <option value='<?php echo $state ?>' name='Rajasthan'>Rajasthan</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <label for='gender'>Gender:</label>
                <input type='radio' name='gender' id='male' value='male' <?php if ($gender == 'male') {
                                                                            echo "checked";
                                                                          } ?>>male
                <input type='radio' name='gender' id='female' value='female' <?php if ($gender == 'female') {
                                                                                echo "checked";
                                                                              } ?>>female
              </td>
              <td>
                <label for='zipcode'>ZipCode:</label>
                <input type='text' name='zipcode' id='zipcode' value="<?php echo $zipcode ?>">
              </td>
            </tr>
            <tr>
              <td>
                <label for='rstatus'>Relation status</label>
                <select name='rstatus' id='rstatus'>
                  <option value='sinlge'>Single</option>
                  <option value='merried'>Merried</option>
                </select>
              </td>
              <td>
                <label for='date'>Date of Birth:</label>
                <input type='date' name='bdate' id='bdate' value="<?php echo $bdate ?>">
              </td>
            </tr>
          </table>
      <?php
        }
      }
      ?>
    </fieldset>

    <!-- Education Details  -->
    <fieldset>
      <legend>Education Details</legend>
      <table id='edu_table' class='edu_table'>
        <tr edu_id1>
          <td>
            <label>Caurse Name:</label>
            <select name="coursename[]" id="coursename">

              <option value="SSC">SSC</option>
              <option value="HSC">HSC</option>
              <option value="Bechlor">BE</option>
              <option value="Master">ME</option>
            </select>
          </td>
          <td>
            <label>School/University:</label>
            <input type="text" name="school_university[]" id="school_university">
          </td>
          <td>
            <label>Passiong Year:</label>
            <input type="text" name="year[]" id="year">
          </td>
          <td>
            <label>Percentage/CGPA:</label>
            <input type="text" name="cgpa_perc[]" id="cgpa_perc">
          </td>
        </tr>
      </table>
      <input type="button" onclick="add_row_edu();" value="ADD ROW">
    </fieldset>

    <!-- work experiance details  -->
    <fieldset>
      <legend>Work Experiance</legend>

      <table id='work_table' name='work_table'>
        <tr id="work_id1">
          <td>
            <label for='companyname'>Company Name:</label>
            <input type='text' name='companyname[]' id='companyname'>
          </td>
          <td>
            <label for='designation'>Designation:</label>
            <input type='text' name='work_designation[]' id='work_designation'>
          </td>
          <td>
            <label for='from_date1'>From:</label>
            <input type='date' name='from_date[]' id='from_date'>
          </td>
          <td>
            <label for='to_date1'>To:</label>
            <input type='date' name='to_date[]' id='to_date'>
          </td>
        </tr>


      </table>
      <input type="button" onclick="add_row_work();" value="ADD ROW">
    </fieldset>

    <!-- Skill table details  -->

    <fieldset>
      <legend>language known</legend>
      <?php echo $skill; ?>
      <table id="skill_table">
        <tr id="skill_id1">
          <td>
            <label>Language:</label>
            <select name="language[]" id="language">
              <option value="hindi">Hindi</option>
              <option value="english">English</option>
              <option value="gujarati">Gujarati</option>
            </select>
          </td>
          <td>
            <input type='checkbox' name='skill[0][read]' id='read' value='read'>
            <label for='read'>Read</label>
          </td>
          <td>
            <input type='checkbox' name='skill[0][write]' id='write' value='write'>
            <label for='write'>Write</label>
          </td>
          <td>
            <input type='checkbox' name='skill[0][speak]' id='speak' value='speak'>
            <label for='speak'>Speak</label>
          </td>
        </tr>
      </table>
      <input type="button" onclick="add_row_skill();" value="ADD ROW">

      <script>

      </script>
    </fieldset>

    <!-- Tech table Details  -->
    <fieldset>
      <legend>Technology Known</legend>
      <?php echo $tech; ?>

      <table>
        <tr>
          <td>
            <label for="php">PHP</label>
            <input type="radio" name="php" id="php" value="beginner">Beginner
            <input type="radio" name="php" id="php" value="mideator">Mideator
            <input type="radio" name="php" id="php" value="export">Export
          </td>
        </tr>
        <tr>

          <td>
            <label for="mysql">MySql</label>
            <input type="radio" name="mysql" id="php" value="beginner">Beginner
            <input type="radio" name="mysql" id="php" value="mideator">Mideator
            <input type="radio" name="mysql" id="php" value="export">Export
          </td>
        </tr>
        <tr>

          <td>
            <label for="laravel">Laravel</label>
            <input type="radio" name="laravel" id="laravel" value="beginner">Beginner
            <input type="radio" name="laravel" id="laravel" value="mideator">Mideator
            <input type="radio" name="laravel" id="laravel" value="export">Export
          </td>
        </tr>
        <tr>
          <td>
            <label for="oracle">oracle</label>
            <input type="radio" name="oracle" id="oracle" value="beginner">Beginner
            <input type="radio" name="oracle" id="oracle" value="mideator">Mideator
            <input type="radio" name="oracle" id="oracle" value="export">Export
          </td>
        </tr>
      </table>
    </fieldset>


    <!-- Referance table Details  -->
    <fieldset>
      <legend>Referance Details</legend>
      <?php echo $ref; ?>
      <table id="ref_table">
        <tr id="ref_id1">
          <td>
            <label for="name1">Name:</label>
            <input type="text" name="name[]" id="name">
          </td>
          <td>
            <label for="contact">Contact Number:</label>
            <input type="text" name="contact_number[]" id="contact_number">
          </td>
          <td>
            <label for="relation">Relation</label>
            <input type="text" name="relation[]" id="relation">
          </td>
        </tr>



      </table>
      <input type="button" onclick="add_row_ref();" value="ADD ROW">
    </fieldset>


    <!-- preferance table details  -->
    <!-- preferance table details  -->
    <fieldset>
      <legend>Preferance Details</legend>
      <table>
        <?php echo $pref; ?>
        <tr>
          <td rowspan="4">
            <label for="location">Preferd Location:</label>
            <select name="location[]" id="location" multiple>
              <option value="ahmedabad">Ahmedabad</option>
              <option value="surat">surat</option>
              <option value="gandhinagar">gandhinagar</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>
            <label for="notice_period">Notice Period:</label>
            <input type="text" name="notice_period" id="notice_period">
          <td>
            <label for="department">Department:</label>
            <select name="department" id="department">
              <option value="design">Design</option>
              <option value="hr">HR</option>
              <option value="networking">Networking</option>
              <option value="marketing">Marketing</option>
            </select>
          </td>
          </td>
        </tr>
        <tr>

          <td>
            <label for="expected_ctc">Expected CTC:</label>
            <input type="text" name="expected_ctc" id="expected_ctc">
          </td>
        </tr>
        <tr>
          <td>
            <label for="current_ctc">Current CTC:</label>
            <input type="text" name="current_ctc" id="current_ctc">
          </td>
        </tr>




      </table>
    </fieldset>

    <input type='submit' name='submit' value='Submit'>

  </form>

</body>

</html>