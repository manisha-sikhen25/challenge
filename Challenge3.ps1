function getKey($dict)
{
    $keys = list($dict)
    if (len($keys) -ne 1){
        raise Exception('either multiple keys or empty dict found')}
    else{
        return keys[0]
        }
}

function getNestedValue($dict, $str)
{
    # print(obj, key, isFound)
    if ($dic.gettype().Name -ne 'Dictionary'){
        return None
        }
    if ($str -in $dict.keys())    { 
         if ($dic.gettype().Name -ne 'Dictionary'){
            return getNestedValue($dict.keys, getKey($dict.keys)) }
           
        else
            
           { return getKey($dict) }
       }
    else{
        $nestedKey = getKey($dict)
        
        return getNestedValue($nestedKey, $str)
        }
    
}

#if __name__ == '__main__':
 $obj = @{a= {b={ c = 'd'}}}
 #$obj.gettype()
 value = getNestedValue($obj, 'c')
    print(value)