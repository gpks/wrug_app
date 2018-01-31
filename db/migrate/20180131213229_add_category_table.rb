class AddCategoryTable < ActiveRecord::Migration[5.1]
  def change
    ActiveRecord::Base.connection.execute("
      CREATE FOREIGN TABLE categories (
        id serial NOT NULL,
        name text
      )
        SERVER wrug_additional"
    )
  end
end
