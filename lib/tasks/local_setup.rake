task :run_db do
  system('docker run -e POSTGRES_PASSWORD=mysecretpassword -p 54320:5432 -d postgres:12.1')
end

task :create_db do
  system('psql -h localhost -p 54320 -U postgres -d postgres -c "create database ror_edge_dev; create database ror_edge_test;"')
end
