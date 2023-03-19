distinct-values(for $t in db:open("mdb")/mdb/performers/performer
 return
concat($t/name,"  , count: ", $t/count(actedin/movie)))
