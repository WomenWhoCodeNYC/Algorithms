<?php
//submitted by https://github.com/swhinnem

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

// Test this out with a few strings

$algorithms = devowelize("algorithms");
if ($algorithms === "lgrthms") {
    echo $algorithms . ": Successfully devowelized \"algorithms\"\n";
} else {
    echo $algorithms . ": Failed to devowelize \"algorithms\"\n";
}

$hello_world = devowelize("Hello world");
if ($hello_world === "Hll wrld") {
    echo $hello_world . ": Successfully devowelized \"Hello world\"\n";
} else {
    echo $hello_world . ": Failed to devowelize \"Hello world\"\n";
}

$betterment = devowelize("Betterment");
if ($betterment === "Bttrmnt") {
    echo $betterment . ": Successfully devowelized \"Betterment\"\n";
} else {
    echo $betterment . ": Failed to devowelize \"Betterment\"\n";
}

// In hindsight, we realized we haven't taken into account capital letters
// at all. This test will fail:

$independence = devowelize("Independence");
if ($independence === "ndpndnc") {
    echo $independence . ": Successfully devowelized \"Independence\"\n";
} else {
    echo $independence . ": Failed to devowelize \"Independence\"\n";
}

// We could do one of two things- modify our vowel map to include uppercase
// versions of vowels, or lowercase our letter before we compare it to the map.
