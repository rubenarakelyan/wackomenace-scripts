<?php

function parseDir($dir) {
  if ($dh = opendir($dir)) {
    while ($file = readdir($dh)) {
      if (is_file("$dir/$file")) {
        echo "FILE: " . $file . "<br>";
      } else {
        echo "DIR: " . $file . "<br>";
      }
    }
  }
}

?>
