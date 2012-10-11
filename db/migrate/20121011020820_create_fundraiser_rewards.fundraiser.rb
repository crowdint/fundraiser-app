# This migration comes from fundraiser (originally 20121009000016)
class CreateFundraiserRewards < ActiveRecord::Migration
  def change
    create_table :fundraiser_rewards do |t|
      t.string :title
      t.text :description
      t.integer :minimum_pledge

      t.timestamps
    end
  end
end
