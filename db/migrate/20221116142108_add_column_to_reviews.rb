class AddColumnToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :phone_number, :string
    add_column :reviews, :rating, :integer

  end
end
