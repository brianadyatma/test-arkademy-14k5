<?php

function profile($name, $age){
    $profiles = array(
        'name' => $name, 
        'age' => $age, 
        'address' => "Bekasi", 
        'hobbies' => array("Membaca","Bersepeda"),
        'is_married'=>false,
        'list_school'=>
            array(
                'name'=>"Universitas Darma Persada",
                'year_in'=>"2015",
                'year_out'=>"2019",
                'major'=>"S1"
            ),
        'skills'=>
            array(
                'php'=>
                    array(
                        'skill_name' => "php",
                        'level' => 'beginner'
                    ),
                'networking'=>
                    array(
                        'skill_name' => "networking",
                        'level' => 'beginner'
                    )
            ),
        'interest_in_coding' => true);
    return json_encode($profiles);
};

echo profile("brian", 22);


?>