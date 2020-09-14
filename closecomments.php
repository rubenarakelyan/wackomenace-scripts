<?php

///////////////////////////////////////////////////////
// Close Comments 1.1                                //
///////////////////////////////////////////////////////
// A script to close comments older than a           //
// specified number of days. Written for             //
// Movable Type.                                     //
///////////////////////////////////////////////////////
// Tested with Movable Type 3.x but should work with //
// any version.                                      //
///////////////////////////////////////////////////////
// Requirements                                      //
// ============                                      //
// Movable Type                                      //
// PHP                                               //
///////////////////////////////////////////////////////
// By Ruben Arakelyan - www.wackomenace.co.uk        //
// This work is dedicated to the Public Domain.      //
// http://creativecommons.org/licenses/publicdomain/ //
///////////////////////////////////////////////////////

// START EDITING HERE
$numberOfDays = '30';                   // Number of days to leave comments open
$username = 'username';                 // MySQL username
$password = 'password';                 // MySQL password
$hostname = 'localhost';                // MySQL hostname (localhost should be OK)
$database = 'database';                 // Name of Movable Type database
// END EDITING HERE

$query = "UPDATE `mt_entry` SET entry_allow_comments='0' WHERE TO_DAYS(NOW()) - TO_DAYS(entry_created_on) > ".$numberOfDays." AND entry_allow_comments='1'";
$dbh = mysql_connect($hostname, $username, $password)
    or die("ERROR: Unable to connect to MySQL.");
$selected = mysql_select_db($database,$dbh)
    or die("ERROR: Unable to select specified database.");
if (mysql_query($query)) {
    $rows_affected = mysql_affected_rows($dbh);
    echo '<p>NOTICE: Successfully closed comments for '.$rows_affected.' posts.</p>';
} else {
    echo '<p>ERROR: Failed to close comments.</p>';
}
mysql_close($dbh);

?>
