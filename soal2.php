<?php
    // Example 1
    $input  = "Green Tea 12000, Thai Tea 8000, Taro 14000, Red Velvet 18000, air mineral 500";
    $product = explode(",", $input);
    $lowest_price=999999999999;
    for ($i=0; $i<count($product); $i++){
        $price[$i] = (int) filter_var($product[$i], FILTER_SANITIZE_NUMBER_INT);
        if ($lowest_price > $price[$i]){
            $lowest_price = $price[$i];
            $lowest_product = $product[$i];
        }
    }
    echo "Data yang diinput =  \n" . $input;
    echo "\n\nProduct Harga Terendah = \n" . preg_replace("/[^a-zA-Z]/", "", $lowest_product);
?>