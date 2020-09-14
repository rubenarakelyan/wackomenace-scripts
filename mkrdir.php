<?php

function mkrdir($dirname) {
  $dir = split("/", $dirname);
  for ($i = 0; $i < count ($dir); $i++) {
    $path .= $dir[$i] . "/";
    if (!is_dir($path)) {
      @mkdir($path, 0777);
      @chmod($path, 0777);
    }
  }
  if (is_dir($dirname)) {
    return 1;
  }
}

?>
