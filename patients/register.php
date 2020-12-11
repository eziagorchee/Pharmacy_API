<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
// get database connection
include_once '../config/database.php';
  
// instantiate patient object
include_once '../objects/patient.php';
  
$database = new Database();
$db = $database->getConnection();
  
$patient = new Patient($db);
  
// get posted data
$data = json_decode(file_get_contents("php://input"));
  
// make sure data is not empty
if(
    !empty($data->first_name) &&
    !empty($data->last_name) &&
    !empty($data->age) &&
    !empty($data->gender) &&
    !empty($data->weight) &&
    !empty($data->height) &&
    !empty($data->address) &&
    !empty($data->bloodgroup) &&
    !empty($data->genotype) &&
    !empty($data->temperature) &&
    !empty($data->heartrate) &&
    !empty($data->bloodpressure) &&
    !empty($data->username) &&
    !empty($data->password)
){
  
    // set patient property values
    $patient->first_name = $data->first_name;
    $patient->last_name = $data->last_name;
    $patient->age = $data->age;
    $patient->gender = $data->gender;
    $patient->weight = $data->weight;
    $patient->height = $data->height;
    $patient->address = $data->address;
    $patient->bloodgroup = $data->bloodgroup;
    $patient->genotype = $data->genotype;
    $patient->temperature = $data->temperature;
    $patient->heartrate = $data->heartrate;
    $patient->bloodpressure = $data->bloodpressure;
    $patient->username = $data->username;
    $patient->password = $data->password;
  
    // register the patient
    if($patient->register()){
  
        // set response code - 201 created
        http_response_code(201);
  
        // tell the user
        echo json_encode(array("message" => "patient was registered."));
    }
  
    // if unable to create the patient, tell the user
    else{
  
        // set response code - 503 service unavailable
        http_response_code(503);
  
        // tell the user
        echo json_encode(array("message" => "Unable to register patient."));
    }
}
  
// tell the user data is incomplete
else{
  
    // set response code - 400 bad request
    http_response_code(400);
  
    // tell the user
    echo json_encode(array("message" => "Unable to register patient. Data is incomplete."));
}
?>