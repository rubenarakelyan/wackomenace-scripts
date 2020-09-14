<?php

function LIST_CONTENTS($arrayname, $tab="&nbsp;&nbsp;&nbsp;&nbsp;", $indent = 0) {
  // Recursively displays contents of the array and sub-arrays:
  // This function (c) Peter Kionga-Kamau (http://www.pmkmedia.com)
  // Free for unrestricted use, except sale - do not resell.
  // use: echo LIST_CONTENTS(array $arrayname, string $tab, int $indent);
  // $tab = string to use as a tab, $indent = number of tabs to indent result
  while(list($key, $value) = each($arrayname)) {
    for($i = 0; $i < $indent; $i++) {
      $currenttab .= $tab;
    }

    if (is_array($value)) {
      $retval .= "$currenttab$key : Array: <br>$currenttab{<br>";
      $retval .= LIST_CONTENTS($value, $tab, $indent + 1) . "$currenttab}<br>";
    } else {
      $retval .= "$currenttab$key => $value<br />";
    }

    $currenttab = NULL;
  }

  return $retval;
}

echo LIST_CONTENTS();

?>
