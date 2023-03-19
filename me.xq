distinct-values(
for $t in db:open("mdb")/mdb/performers/performer
 where  $t/count(actedin/movie)>=10 and $t/count(directed/movie)>=2
 return
 <per>
 {
   $t/name
   
}
</per>
)