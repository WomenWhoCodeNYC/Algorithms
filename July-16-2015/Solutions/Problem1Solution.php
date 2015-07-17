<?php

function devowelize($string) {
    // Set up the new string that we will return minus the vowels
    $devowelized_string = "";

    // Dealing with edge cases
    if (!$string || !is_string($string)) {
        return null;
    }

    if ($string === "") {
        return $string;
    }

    // Create an array of the letters in our string to loop through
    $letters = str_split($string);

    // This was our original solution. We decided it wasn't optimal because
    // on every round of the loop, we'd have to traverse the entire $vowels
    // array which would be slow.

    // $vowels = ("a", "e", "i", "o", "u");

    // foreach ($letters as $letter) {
    //     if (!in_array($vowels)) {
    //         $devowelized_string .= $letter;
    //     }
    // }

    // When we rethought the problem, we decided to use a key/value array,
    // since isset() is a faster operation.
    // We first considered using array_key_exists(), but isset() is faster.

    $vowels = array("a" => "a", "e" => "e", "i" => "i", "o" => "o", "u" => "u");

    // For each letter in our array, check if it's in our array of vowels.
    // If it's not a vowel, concat it onto our new string.
    foreach ($letters as $letter) {
        if (!isset($vowels[$letter])) {
            $devowelized_string .= $letter;
        }
    }

    return $devowelized_string;
}

// Call our function with "algorithms". Returns "grthms".
echo devowelize("algorithms");
