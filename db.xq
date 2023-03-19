distinct-values(for $p in db:open("dbw")/pubsData/serves/serve
for $t in db:open("dbw")/pubsData/likes/like
for $f in db:open("dbw")/pubsData/frequents/freq 
where $t/rname = $p/rname and $t/@dname = $f/@dname and $p/@bname=$f/bname
return  $t/@dname)