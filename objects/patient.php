<?php
class Patient
{

    // database connection and table name
    private $conn;
    private $table_name = "patients";

    // object properties
    public $id;
    public $first_name;
    public $last_name;
    public $age;
    public $weight;
    public $height;
    public $gender;
    public $address;
    public $bloodgroup;
    public $genotype;
    public $temperature;
    public $heartrate;
    public $bloodpressure;
    public $username;
    public $password;

    // constructor with $db as database connection
    public function __construct($db)
    {
        $this->conn = $db;
    }
    // read products
    function read()
    {

        // select all query
        $query = "SELECT
                c.name as category_name, p.id, p.name, p.description, p.price, p.category_id, p.created
            FROM
                " . $this->table_name . " p
                LEFT JOIN
                    categories c
                        ON p.category_id = c.id
            ORDER BY
                p.created DESC";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }
    // create patients
    function register()
    {
// check if username already exists
        $check = "SELECT
        p.username
    FROM
        " . $this->table_name . " p
    WHERE
        p.username = :c_user
    LIMIT
        0,1";
            
        $this->username = htmlspecialchars(strip_tags($this->username));
        $c_stmt = $this->conn->prepare($check);
        $c_stmt->bindParam(":c_user", $this->username);

        if($c_stmt->execute()){
            $exists = $c_stmt->rowCount();
            if ($exists > 0) {
                return false;
            }
        };


        // query to insert record
        $query = "INSERT INTO
                " . $this->table_name . "
            SET
                first_name=:first_name, last_name=:last_name, age=:age, weight=:weight, height=:height, gender=:gender, address=:address, bloodgroup=:bloodgroup, genotype=:genotype, temperature=:temperature, heartrate=:heartrate, bloodpressure=:bloodpressure, username=:username, password=:password";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->first_name = htmlspecialchars(strip_tags($this->first_name));
        $this->last_name = htmlspecialchars(strip_tags($this->last_name));
        $this->age = htmlspecialchars(strip_tags($this->age));
        $this->weight = htmlspecialchars(strip_tags($this->weight));
        $this->height = htmlspecialchars(strip_tags($this->height));
        $this->gender = htmlspecialchars(strip_tags($this->gender));
        $this->address = htmlspecialchars(strip_tags($this->address));
        $this->bloodgroup = htmlspecialchars(strip_tags($this->bloodgroup));
        $this->genotype = htmlspecialchars(strip_tags($this->genotype));
        $this->temperature = htmlspecialchars(strip_tags($this->temperature));
        $this->heartrate = htmlspecialchars(strip_tags($this->heartrate));
        $this->bloodpressure = htmlspecialchars(strip_tags($this->bloodpressure));
        $this->username = htmlspecialchars(strip_tags($this->username));
        $this->password = md5(htmlspecialchars(strip_tags($this->password)));



        // bind values
        $stmt->bindParam(":first_name", $this->first_name);
        $stmt->bindParam(":last_name", $this->last_name);
        $stmt->bindParam(":age", $this->age);
        $stmt->bindParam(":weight", $this->weight);
        $stmt->bindParam(":height", $this->height);
        $stmt->bindParam(":gender", $this->gender);
        $stmt->bindParam(":address", $this->address);
        $stmt->bindParam(":bloodgroup", $this->bloodgroup);
        $stmt->bindParam(":genotype", $this->genotype);
        $stmt->bindParam(":temperature", $this->temperature);
        $stmt->bindParam(":heartrate", $this->heartrate);
        $stmt->bindParam(":bloodpressure", $this->bloodpressure);
        $stmt->bindParam(":username", $this->username);
        $stmt->bindParam(":password", $this->password);



        // execute query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }
    // used when filling up the update product form
    function readOne()
    {

        // query to read single record
        $query = "SELECT
                c.name as category_name, p.id, p.name, p.description, p.price, p.category_id, p.created
            FROM
                " . $this->table_name . " p
                LEFT JOIN
                    categories c
                        ON p.category_id = c.id
            WHERE
                p.id = ?
            LIMIT
                0,1";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // bind id of product to be updated
        $stmt->bindParam(1, $this->id);

        // execute query
        $stmt->execute();

        // get retrieved row
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row) {
            $this->name = $row['name'];
            $this->price = $row['price'];
            $this->description = $row['description'];
            $this->category_id = $row['category_id'];
            $this->category_name = $row['category_name'];
        }
    }
    // update the product
    function update()
    {

        // update query
        $query = "UPDATE
                " . $this->table_name . "
            SET
                name = :name,
                price = :price,
                description = :description,
                category_id = :category_id
            WHERE
                id = :id";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->name = htmlspecialchars(strip_tags($this->name));
        $this->price = htmlspecialchars(strip_tags($this->price));
        $this->description = htmlspecialchars(strip_tags($this->description));
        $this->category_id = htmlspecialchars(strip_tags($this->category_id));
        $this->id = htmlspecialchars(strip_tags($this->id));

        // bind new values
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':category_id', $this->category_id);
        $stmt->bindParam(':id', $this->id);

        // execute the query
        if ($stmt->execute()) {
            $exists = $stmt->rowCount();
            if ($exists > 0) {
                return true;
            } else {
                return false;
            }
        }

        return false;
    }
    // delete the product
    function delete()
    {

        // delete query
        $query = "DELETE FROM " . $this->table_name . " WHERE id = ?";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->id = htmlspecialchars(strip_tags($this->id));

        // bind id of record to delete
        $stmt->bindParam(1, $this->id);

        // execute query
        if ($stmt->execute()) {
            $exists = $stmt->rowCount();
            if ($exists > 0) {
                return true;
            } else {
                return false;
            }
        }

        return false;
    }
    // search products
    function search($keywords)
    {

        // select all query
        $query = "SELECT
                c.name as category_name, p.id, p.name, p.description, p.price, p.category_id, p.created
            FROM
                " . $this->table_name . " p
                LEFT JOIN
                    categories c
                        ON p.category_id = c.id
            WHERE
                p.name LIKE ? OR p.description LIKE ? OR c.name LIKE ?
            ORDER BY
                p.created DESC";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // sanitize
        $keywords = htmlspecialchars(strip_tags($keywords));
        $keywords = "%{$keywords}%";

        // bind
        $stmt->bindParam(1, $keywords);
        $stmt->bindParam(2, $keywords);
        $stmt->bindParam(3, $keywords);

        // execute query
        $stmt->execute();

        return $stmt;
    }
    // read products with pagination
    public function readPaging($from_record_num, $records_per_page)
    {

        // select query
        $query = "SELECT
                c.name as category_name, p.id, p.name, p.description, p.price, p.category_id, p.created
            FROM
                " . $this->table_name . " p
                LEFT JOIN
                    categories c
                        ON p.category_id = c.id
            ORDER BY p.created DESC
            LIMIT ?, ?";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // bind variable values
        $stmt->bindParam(1, $from_record_num, PDO::PARAM_INT);
        $stmt->bindParam(2, $records_per_page, PDO::PARAM_INT);

        // execute query
        $stmt->execute();

        // return values from database
        return $stmt;
    }
    // used for paging products
    public function count()
    {
        $query = "SELECT COUNT(*) as total_rows FROM " . $this->table_name . "";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        return $row['total_rows'];
    }
}