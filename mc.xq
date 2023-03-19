distinct-values(
for $t in db:open("mdb")/mdb/movies/movie
 where $t/cast/performer/actor/@idref="jamescaan"
 return
 <movie>
 {
   $t/title, $t/year
 }
 </movie>
) 