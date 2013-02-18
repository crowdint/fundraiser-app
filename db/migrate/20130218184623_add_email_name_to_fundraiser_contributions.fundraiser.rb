# This migration comes from fundraiser (originally 20130215231520)
class AddEmailNameToFundraiserContributions < ActiveRecord::Migration
  def change
    add_column :fundraiser_contributions, :name, :string
  end
end
