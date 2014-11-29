let $res := doc("resume.xml")
let $pos := doc("posting.xml")

for $p in $pos//posting
for $r in $res//resume

return {
if (empty($p//@what intersect $r//@what)) then
	return $p//@pID

else ()
	if ($p//@what == $r//@what) then
		if ($p//@level > $r//@level) then 
			return $p//@pID


}
