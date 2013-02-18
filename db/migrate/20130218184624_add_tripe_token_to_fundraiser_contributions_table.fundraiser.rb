# This migration comes from fundraiser (originally 20130215233608)
class AddTripeTokenToFundraiserContributionsTable < ActiveRecord::Migration
  def change
    add_column :fundraiser_contributions, :stripeToken, :string
  end
end
