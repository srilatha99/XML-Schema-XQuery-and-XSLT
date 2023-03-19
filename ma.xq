distinct-values(for $t in db:open("mdb")/mdb/movies/movie
where $t/genres/genre="Crime"
 return concat($t/title," ",$t/year))
  