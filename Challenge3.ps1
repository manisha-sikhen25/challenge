function getNestedValue {
   param(
        [hashtable] $dict,
         $str
    )

for ($obj.values.GetType()){
    $obj = $obj.values
    
     if (($obj.GetType().Name -like 'Hashtable') -or ($obj.GetType().Name -like 'ValueCollection'))
     {
     continue
     }

    }
    else {
    return $obj
    
}
}

$obj =@{'a1'= @{
                  'b1'= @{
                  'c1'='d1'
                       }
                     }
                              
         }




 $value = getNestedValue -dict $obj -str 'c1'
 write-host $value
   
