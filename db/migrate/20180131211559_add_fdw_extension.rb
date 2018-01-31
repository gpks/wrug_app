class AddFdwExtension < ActiveRecord::Migration[5.1]
  def change
    ActiveRecord::Base.connection.execute("
    CREATE EXTENSION postgres_fdw;
    CREATE SERVER wrug_additional
        FOREIGN DATA WRAPPER postgres_fdw
        OPTIONS (host 'localhost',
                 port '5432',
                 dbname 'wrug_fdw')")
  end
end
