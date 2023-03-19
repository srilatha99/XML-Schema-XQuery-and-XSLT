for $t in db:open("mdb")/mdb/movies/movie
where $t/directors/director/@idref= $t/cast/performer/actor/@idref

let $x := $t/directors/director/@idref
group by $x

 return 
 <movie>
 { 
  $x
 
  } 
 </movie>