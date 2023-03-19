distinct-values(let $a1:=  array:append([],distinct-values(for $t in db:open("dbw")/pubsData/frequents/freq 
where $t/@dname="Donald"
return $t/bname))
for $f in db:open("dbw")/pubsData/frequents/freq 
where every $s in $f satisfies $s/bname= $a1(1) and $f/@dname != "Donald"
return $f/@dname)