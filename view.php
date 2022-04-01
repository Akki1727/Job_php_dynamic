<?php

include "config.php";

$veiw_sql = "SELECT * FROM basic_info";

$result = $conn->query($veiw_sql);


if (isset($_REQUEST['search'])) {
  $name_search = $_REQUEST['name_search'];
  $search_sql = 'SELECT * FROM  basic_info  WHERE fname LIKE "%' . $name_search . '%" GROUP BY id';
  echo $search_sql;
  $search_result = $conn->query($search_sql);
  if ($search_result == true) {
    echo "Searching Run";
  } else {
    echo "Error...." . $search_sql . "------------>" . $search_result . "-------->" . $conn->error;
  }
}



//display the retrieved result on the webpage  
// while ($row = mysqli_fetch_array($result_page)) {
//   echo $row['id'] . '' . $row['fname'];
// }



function sortorder($fieldname)
{

  if (!isset($_REQUEST['page'])) {
    $page_number = 1;
  } else {
    $page_number = $_REQUEST['page'];
  }
  $sorturl = "?order_by=" . $fieldname . "&page=" . $page_number . "&sort=";
  $sorttype = "asc";
  if (isset($_REQUEST['order_by']) && $_REQUEST['order_by'] == $fieldname) {
    if (isset($_REQUEST['sort']) && $_REQUEST['sort'] == "asc") {
      $sorttype = "desc";
    }
  }
  $sorturl .= $sorttype;
  return $sorturl;
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
  <style>
    body {
      color: #070707;
      background: #F5F7FA;
      font-family: 'Open Sans', sans-serif;
    }

    .block {
      background-color: rgb(116, 129, 131);
      font-size: 15px;

    }

    .a {
      margin-top: 10px;
    }

    tr:nth-child(even) {
      background-color: #a7a8a9;
    }

    .up {
      transform: rotate(-135deg);
      -webkit-transform: rotate(-135deg);
    }

    .down {
      transform: rotate(45deg);
      -webkit-transform: rotate(45deg);
    }

    .arrow {
      border: solid black;
      border-width: 0 3px 3px 0;
      display: inline-block;
      padding: 3px;
    }

    .link {
      color: #070707;
    }

    .container1 {
      float: right;
      margin-right: 75px;
    }

    .edit {
      color: #070707;
    }

    .delete {
      color: red;
    }

    #search {
      margin-top: 10px;
      border-radius: 10px;
    }

    #submit {
      border-radius: 10px;

    }

    .tabledata {
      /* border-radius: 200px; */
      text-align: center;
    }

    .thdata {
      text-align: center;
    }
  </style>
</head>

<body style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-image: url('download.jpeg'); height: 150%;  background-position: center;
background-repeat: no-repeat;
background-size: cover;" verflow-x:auto;>
  <form method="POST" action="search_result.php">

    <input type="text" name="name_search" id="search" placeholder="Student Name Search...." autocomplete="off">
    <input type="submit" value="Search" id="submit" name="search">

  </form>
  <h2>Student List</h2>
  <table border="2" style="width: 100%;" id="myTable" class="tabledata">
    <tr>
      <th><a href="<?php echo sortorder('id'); ?>" class="sort">ID</a></th>
      <th><a href="<?php echo sortorder('fname'); ?>" class="sort">Fname</a></th>
      <th><a href="<?php echo sortorder('lname'); ?>" class="sort">lname</a></th>
      <th><a href="<?php echo sortorder('designation'); ?>" class="sort">Designation</a></th>
      <th><a href="<?php echo sortorder('address1'); ?>" class="sort">Address1</a></th>
      <th><a href="<?php echo sortorder('address2'); ?>" class="sort">Address2</a></th>
      <th><a href="<?php echo sortorder('city'); ?>" class="sort">City</a></th>
      <th><a href="<?php echo sortorder('state'); ?>" class="sort">State</a></th>
      <th><a href="<?php echo sortorder('zipcode'); ?>" class="sort">Zipcode</a></th>
      <th><a href="<?php echo sortorder('email'); ?>" class="sort">Email</a></th>
      <th><a href="<?php echo sortorder('number'); ?>" class="sort">Number</a></th>
      <th><a href="<?php echo sortorder('bdate'); ?>" class="sort">Bdate</a></th>
      <th><a href="<?php echo sortorder('gender'); ?>" class="sort">Gender</a></th>
      <th><a href="<?php echo sortorder('rstatus'); ?>" class="sort">Relation_statue</a></th>
      <th>Action</th>
    </tr>
    <tr>
      <tbody>
        <?php
        // global $_REQUEST['order_by'];
        // variable to store number of rows per page
        $limit = 10;
        $total_number_row = mysqli_num_rows($result);

        // get the required number of pages

        $total_pages = ceil($total_number_row / $limit);

        // update the active page number
        if (!isset($_REQUEST['page'])) {
          $page_number = 1;
        } else {
          $page_number = $_REQUEST['page'];
        }

        // get the initial page number
        $initial_page = ($page_number - 1) * $limit;

        // get data of selected rows per page 


        $orderby = " ORDER BY id ";
        if (isset($_REQUEST['order_by']) && isset($_REQUEST['sort'])) {
          $orderby = ' order by ' . $_REQUEST['order_by'] . ' ' . $_REQUEST['sort'];
        }
        $getQuery = "SELECT * FROM basic_info " . $orderby . " LIMIT " . $initial_page . ',' . $limit;
        // $result_page = $conn->query($getQuery);
        // global $result_page;
        $result_page = $conn->query($getQuery);
        if ($result_page->num_rows > 0) {
          // while ($row = mysqli_fetch_array($result_page)) {
          while ($row = mysqli_fetch_array($result_page)) {


        ?>
            <tr>
              <td><?php echo $row['id']; ?></td>
              <td><?php echo $row['fname']; ?></td>
              <td><?php echo $row['lname']; ?></td>
              <td><?php echo $row['designation']; ?></td>
              <td><?php echo $row['address1']; ?></td>
              <td><?php echo $row['address2']; ?></td>
              <td><?php echo $row['city']; ?></td>
              <td><?php echo $row['state']; ?></td>
              <td><?php echo $row['zipcode']; ?></td>
              <td><?php echo $row['email']; ?></td>
              <td><?php echo $row['number']; ?></td>
              <td><?php echo $row['bdate']; ?></td>
              <td><?php echo $row['gender']; ?></td>
              <td><?php echo $row['rstatus']; ?></td>
              <td>
                <a class="view" href="userview.php?id=<?php echo $row['id']; ?>" class="btn btn-info"><i class='fas fa-eye'></i></a>
                <a class="update" href="update.php?id=<?php echo $row['id']; ?>" class="btn btn-info"><i class='fas fa-edit'></i></a>
                <a class="delete" href="delete.php?id=<?php echo $row['id']; ?>" class="btn btn-danger"><i class='fas fa-trash-alt' style="color: red;"></i></i></a>
              </td>
            </tr>
            <div class="container">

          <?php
          }
          // show page number with link   
          for ($page_number = 1; $page_number <= $total_pages; $page_number++) {
            echo '<a  class="container" href = "view.php?page=' . $page_number . '&order_by=' . $_REQUEST['order_by'] . '&sort=' . $_REQUEST['sort']. ucwords($_REQUEST['order_by']).(($_REQUEST['set']=='asc')?'^':'v').'">' . $page_number . ' </a>';
          }
        }
          ?>
            </div>
      </tbody>
    </tr>
  </table>
</body>

</html>