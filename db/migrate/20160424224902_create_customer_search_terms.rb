class CreateCustomerSearchTerms < ActiveRecord::Migration
  def change
    create_table :customer_search_terms do |t|

      t.timestamps null: false
    end
  end
end
