let $doc := doc("resume.xml")
for $res in $doc//resume 
where count($res//skill) > 3
return <rID>{$res//@rID}</rID>
	<forename>{$res//forename}</forename>
	<count>{count($res//skill)}</count>

