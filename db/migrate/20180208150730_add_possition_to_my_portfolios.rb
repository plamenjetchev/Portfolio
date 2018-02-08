class AddPossitionToMyPortfolios < ActiveRecord::Migration[5.1]
  def change
    add_column :my_portfolios, :position, :integer
  end
end
