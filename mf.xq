let $c := (for $t in db:open("mdb")/mdb/performers/performer
order by $t/dob descending
 return
 <per>
 {
   $t/dob
}
</per>)[1]

return distinct-values(for $t in db:open("mdb")/mdb/performers/performer
where $t/dob = $c
 return
 <per>
 {
   $t/name,
  concat(", dob: ",$t/dob)
}
</per>)