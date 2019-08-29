
 <?php 
 $host = 'localhost';
 $user = 'root';
 $pass = '';
 $db = 'digisolution';

 $con=mysqli_connect($host,$user,$pass,$db);
 if($con){
 echo 'connected successfully to digisolution database';
}

 $sql ="INSERT INTO table1 (username,passwrd,email) VALUES ('masego', '2468', 'msg@gmail.com')";
 

 if(mysqli_query($con,$sql)) //NB!
 {
    echo 'data inserted successfully';
 }else {
     echo "error :" . $sql . "<br>". mysqli_error($con);
 }
 
 ?> 