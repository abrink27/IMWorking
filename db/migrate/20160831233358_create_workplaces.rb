class CreateWorkplaces < ActiveRecord::Migration
  def change
    create_table :workplaces do |t|
      t.string :title
      t.string :zipcode
      t.timestamps

    end
  end
end
