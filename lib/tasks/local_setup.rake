task :db_run do
  system('docker run -e POSTGRES_PASSWORD=mysecretpassword -p 54320:5432 -d postgres:12.1')
end

task :db_create do
  system('echo "create database ror_edge_dev; create database ror_edge_test;" | psql -h localhost -p 54320 -U postgres -d postgres')
end
