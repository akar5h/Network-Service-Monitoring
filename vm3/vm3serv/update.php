<?php
if(isset($_POST['time'])){
    $time = $_POST['time'];
    $data = array('time'=>$time);
    $string = http_build_query($data);
    
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL,"http://10.0.0.3/index.php");
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $string);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

    $headers = array();
    $headers[] = 'Content-Type: application/x-www-form-urlencoded';
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    
    $info = curl_getinfo($ch);
    print_r($info);
    $in = curl_errno($ch);
    print $in;
    $result = curl_exec($ch);
    if(curl_errno($ch)){
	echo 'Error:'. curl_error($ch);
    }
   
    curl_close($ch);
   
}

ini_set('display_errors',1);

?>
