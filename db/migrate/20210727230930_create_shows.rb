class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end


#   bundle exec rake db:create_migration NAME=shows
#   bundle exec rake db:migrate
#   bundle exec rake db:migrate:status