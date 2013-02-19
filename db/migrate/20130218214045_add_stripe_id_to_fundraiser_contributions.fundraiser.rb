# This migration comes from fundraiser (originally 20130218214022)
class AddStripeIdToFundraiserContributions < ActiveRecord::Migration
  def change
    add_column :fundraiser_contributions, :stripe_id, :string
  end
end
