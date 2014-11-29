let $doc = doc("posting.xml")
for $posting in $doc//posting
for $max in max($posting//@importance)
where ($postings//@importance eq $max)
return $posting//@what, $max
