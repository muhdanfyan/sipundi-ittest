<?php
        //Input manual?
        $A = [21, 13, 27, 39, 47, 42, 52, 17];
        $B = [7, 13, 21, 31, 47, 17];
        
        print_r(match_sortasc($A, $B));
        
        function match_sortasc($a, $b){
            $C = [];
            for ($i=0; $i<count($a); $i++){
                for ($j=0; $j<count($b); $j++){
                  if ($a[$i] == $b[$j]){
                      array_push($C, $b[$j]);
                  }  
                }
            }
            sort($C);
            
            return $C;
        }
        
?>