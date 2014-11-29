let $doc = doc("interview.xml")
for $inter in $doc//interview
for $sID in distinct-values($inter//@sID)
where (not(exists($inter//assessment)))
return 
	if ($sID == $inter//@sID) then 
	   <sID>data($sID)<sID>	
	else 
           ()

