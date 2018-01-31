class AddUserMapping < ActiveRecord::Migration[5.1]
  def change
    current_user = execute("SELECT CURRENT_USER").first['current_user']
    ActiveRecord::Base.connection.execute("
      CREATE USER MAPPING FOR #{current_user}
        SERVER wrug_additional
        OPTIONS (user '',
                 password '')
      ")
  end
end
