def create_collection(username)
  run_sql("CREATE TABLE $1(fish TEXT, villagers TEXT, bugs TEXT)", [username])
end
