let $a3:=array:append([],for $t in db:open("dbw")/pubsData/frequents/freq
for $f in db:open("dbw")/pubsData/frequents/freq
where $t/@dname = $f/@dname and $t/bname = $f/bname
return [$t/@dname,distinct-values($t/bname)])


let $a5:= array:append([],for $t in db:open("dbw")/pubsData/likes/like
for $f in db:open("dbw")/pubsData/serves/serve

where $t/rname=$f/rname
return concat(distinct-values($t/@dname)," ",distinct-values($f/@bname)))


let $a6:=array:append([], for $i in $a3(1)

for $k in $i(2)
return concat(distinct-values($i(1))," ",$k))

let $a4:=array:append([],distinct-values(for $i in $a3(1)
return $i(1)))

let $a7:=array:append([],let $star := " "
for $i in $a6(1)
where not($i= $a5(1))
return tokenize($i,$star))


for $m in $a4(1)
where not($m=$a7(1))
return $m
