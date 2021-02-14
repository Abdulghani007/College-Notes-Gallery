<html>
<body>
<style>
table, th, td
{
border: 1px solid black;
background-color: lightgrey;
width: 33%;
text-align: center;
}
</style>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "weblab";
$a=[];
$conn = mysqli_connect($servername, $username, $password, $dbname); // making database connection
$sql = "SELECT * FROM student"; // storing the query to execute as string
$result = $conn->query($sql); // Executing the query in the database
echo "BEFORE SORTING";
echo "<table>";
echo "<tr>";
echo "<th>USN</th> <th>NAME</th> <th>Address</th> </tr>"; // naming table headers
if ($result->num_rows> 0) // if number of rows fetched after executing query is greater than 0
{
while($row = $result->fetch_assoc()) // fetching each row and storing in $row variable fetch->assoch() returns an associative array of strings
{
// output data of each row
echo "<tr>";
echo "<td>". $row["usn"]."</td>";
echo "<td>". $row["name"]."</td>";
echo "<td>". $row["addr"]."</td></tr>";
array_push($a,$row["usn"]); // pushing the usn in array
}
}
else
echo "Table is Empty";
echo "</table>";
$n=count($a); // finding the length of array $a
$b=$a;
// Selection sort is used to sort usn
for ( $i = 0 ; $i< ($n - 1) ; $i++ )
{
$pos= $i;
for ( $j = $i + 1 ; $j < $n ; $j++ ) 
{
if ( $a[$pos] > $a[$j] )
$pos= $j;
}
// Swapping 
if ( $pos!= $i ) {
$temp=$a[$i];
$a[$i] = $a[$pos];
$a[$pos] = $temp;
}
}
$c=[]; // array to store name
$d=[]; // array to store address
$result = $conn->query($sql);
if ($result->num_rows> 0)
{
// traversing each element to store all the details in the sorted order
while($row = $result->fetch_assoc()) {
for($i=0;$i<$n;$i++) {
if($row["usn"]== $a[$i]) {
$c[$i]=$row["name"]; // storing name in $c array
$d[$i]=$row["addr"]; // storing address in $d array
}
}
}
}
echo "<br>";
echo "AFTER SORTING";
echo "<table>";
echo "<tr>";
echo "<th>USN</th> <th>NAME</th> <th>Address</th> </tr>";
// displaying the sorted table
for($i=0;$i<$n;$i++) {
echo "<tr>";
echo "<td>". $a[$i]."</td>";
echo "<td>". $c[$i]."</td>";
echo "<td>". $d[$i]."</td></tr>";
}
echo "</table>";
$conn->close(); // closing the database connection
?>