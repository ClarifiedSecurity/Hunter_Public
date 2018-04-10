$object = "" | Select-Object user
if ($env:computername.endsWith("10")) {
	$object.user = "chuck_norris"
}
else {
	$object.user = $(whoami)
}
$object