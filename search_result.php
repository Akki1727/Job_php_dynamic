<?php

include "config.php";

$veiw_sql = "SELECT * FROM basic_info";

$result = $conn->query($veiw_sql);


if (isset($_GET['search'])) {
  $name_search = $_GET['name_search'];
  $search_sql = 'SELECT *, CONCAT(fname," ", lname) AS full_name  FROM  basic_info GROUP BY id HAVING full_name LIKE "%'.$name_search.'%"';
  echo $search_sql;
  $search_result = $conn->query($search_sql);
  if ($search_result == true) {
    echo "Searching Run";
  } else {
    echo "Error...." . $search_sql . "------------>" . $search_result . "-------->" . $conn->error;
  }
}





?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <title>JobApp View Page</title>
</head>

<body>
  <form method="get" action="search_result.php">

    <input type="text" name="name_search" id="name_search" placeholder="Student Name Search...." autocomplete="off">
    <input type="submit" value="Search" id="submit" name="search">
    <input type="reset" value="Reset" id="reset" name="reset">
  </form>
  <h2>Student List</h2>
  <table border="1">
    <tr>
      <th>id</th>
      <th>Fname</th>
      <th>Lname</th>
      <th>Designation</th>
      <th>Address1</th>
      <th>Address2</th>
      <th>City</th>
      <th>State</th>
      <th>Zipcode</th>
      <th>Email</th>
      <th>Number</th>
      <th>Bdate</th>
      <th>Gender</th>
      <th>Relation_statue</th>
      <th>Action</th>
    </tr>
    <tr>
      <tbody>
        <?php
        if ($search_result->num_rows > 0) {
          while ($rows = $search_result->fetch_assoc()) {
        ?>
            <tr>
              <td><?php echo $rows['id']; ?></td>
              <td><?php echo $rows['fname']; ?></td>
              <td><?php echo $rows['lname']; ?></td>
              <td><?php echo $rows['designation']; ?></td>
              <td><?php echo $rows['address1']; ?></td>
              <td><?php echo $rows['address2']; ?></td>
              <td><?php echo $rows['city']; ?></td>
              <td><?php echo $rows['state']; ?></td>
              <td><?php echo $rows['zipcode']; ?></td>
              <td><?php echo $rows['email']; ?></td>
              <td><?php echo $rows['number']; ?></td>
              <td><?php echo $rows['bdate']; ?></td>
              <td><?php echo $rows['gender']; ?></td>
              <td><?php echo $rows['rstatus']; ?></td>
              <td>
                <a class="view" href="userview.php?id=<?php echo $rows['id']; ?>" class="btn btn-info"><i class='fas fa-eye'></i></a>
                <a class="update" href="update.php?id=<?php echo $rows['id']; ?>" class="btn btn-info"><i class='fas fa-edit'></i></a>
                <a class="delete" href="delete.php?id=<?php echo $rows['id']; ?>" class="btn btn-danger"><i class='fas fa-trash-alt' style="color: red;"></i></i></a>
              </td>
            </tr>
        <?php }
        }
        ?>
      </tbody>
    </tr>
  </table>
</body>

</html>