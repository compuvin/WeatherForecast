$wxnow = (get-content J:\WeatherForecast\WXNOW.TXT)[1]

$wdir = $wxnow.Substring(0,$wxnow.IndexOf("/"))
$pos = $wdir.length+1

$wspeed = $wxnow.Substring($pos,$wxnow.IndexOf("g")-$pos)
$pos = $pos + $wspeed.length+1

$wgust = $wxnow.Substring($pos,$wxnow.IndexOf("t")-$pos)
$pos = $pos + $wgust.length+1

$ctemp = $wxnow.Substring($pos,$wxnow.IndexOf("r")-$pos)
$pos = $pos + $ctemp.length+1

$rainlh = $wxnow.Substring($pos,$wxnow.IndexOf("p")-$pos)
$pos = $pos + $rainlh.length+1

$raintd = $wxnow.Substring($pos,$wxnow.IndexOf("P")-$pos)
$pos = $pos + $raintd.length+1

$raintf = $wxnow.Substring($pos,$wxnow.IndexOf("h")-$pos)
$pos = $pos + $raintf.length+1

$humid = $wxnow.Substring($pos,$wxnow.IndexOf("b")-$pos)
$pos = $pos + $humid.length+1

$baro = $wxnow.Substring($pos,$wxnow.length-1-$pos)
$baro = $baro/338.64

$barotrend = $wxnow.Substring($wxnow.length-1,1)

if (($baro -ge 30.10) -and ($baro -lt 30.20)) {
	if ($barotrend -eq "-") {

	}
	write-host "We cool"
} else if ($baro -ge 30.20) {

} else if ($baro -ge 30.10) {

} else if ($baro -lt 29.80) {

} else if ($baro -lt 30.10) {

} else {
	write-host "Something didn't match"
}



if (($wdir -ge 0) -and ($wdir -le 90)) {

} else if (($wdir -ge 45) -and ($wdir -le 90)) {

} else if (($wdir -ge 45) -and ($wdir -le 135)) {

} else if (($wdir -ge 135) -and ($wdir -le 180)) {

} else if (($wdir -ge 180) -and ($wdir -le 225)) {

} else if (($wdir -ge 90) -and ($wdir -le 180)) {

} else if (($wdir -ge 255) -and ($wdir -le 285)) {

} else if (($wdir -ge 225) -and ($wdir -le 315)) { #SW - NW
	
}