<?php
// Check if form is submitted
if(isset($_POST['btn_next'])) {
 //Get Data from the html form
 $car_Id =  $_POST["Car_ID"];
 $car_Type = $_POST["Car_Type"];
 $car_Owner = $_POST["Car_Owner"];
 $car_Category = $_POST["Car_Category"];


// Connection to db from external file
require_once "connection.php";

// Check if the Car_ID exists in the parking_table
$sql = "SELECT * FROM `vehicle_table` WHERE Car_ID = '$car_Id' ";
$sqlRes = mysqli_query($conn, $sql);
$row_count = mysqli_num_rows($sqlRes);

 // If the Car_ID does not exist in the parking_table, insert data into vehicle_table
if ($row_count == 0) {
  // Querying the database
  $query = "INSERT INTO `vehicle_table`(`Car_ID`, `Car_Type`, `Car_Owner`, `Car_Category`) VALUES (null,'$car_Type','$car_Owner','$car_Category')";
  $insert = mysqli_query($conn, $query);

  // if data is saved head to the next page else throw error
  if(isset($insert)){
    header(header:"location:parking.html");
  }else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }

} else {
  echo "Error: The value of Car_ID already exists in the parking_table table";
}
}
?>

