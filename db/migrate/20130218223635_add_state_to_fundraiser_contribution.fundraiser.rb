# This migration comes from fundraiser (originally 20130218223605)
class AddStateToFundraiserContribution < ActiveRecord::Migration
  def change
    add_column :fundraiser_contributions, :state, :string
  end
end
