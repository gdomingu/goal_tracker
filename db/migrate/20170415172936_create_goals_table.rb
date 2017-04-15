class CreateGoalsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string   :title
      t.text     :subtitle
      t.text     :description
      t.datetime :deadline
      t.float    :current_amount
      t.float    :goal_amount
    end
  end
end
