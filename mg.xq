distinct-values(for $s in db:open("mdb")/mdb/performers/performer
for $t in  db:open("mdb")/mdb/performers/performer
where $t/directed/movie = $s/actedin/movie and $t/dob>$s/dob
 return $t/name)
