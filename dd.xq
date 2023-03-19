let $a2:=array:append([],for $t in db:open("dbw")/pubsData/likes/like
for $f in db:open("dbw")/pubsData/serves/serve
where  every $t1 in $t satisfies $t1/rname=$f/rname
return [$t/@dname,$f/@bname])


let $a3:=array:append([],distinct-values(for $i in $a2(1)
return $i(1)))


let $a4:=array:append([],distinct-values(for $k in $a2(1)

for $fb in db:open("dbw")/pubsData/frequents/freq
where every $fb1 in $fb satisfies $fb1/@dname = $k[1](1) and  $fb1/bname = $k[1](2)
return $k[1](1)))

for $i1 in $a3(1)
where not($i1 = $a4(1))
return $i1
