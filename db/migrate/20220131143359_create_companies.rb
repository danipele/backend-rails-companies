class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.float :total_revenue
      t.float :market_cap
      t.integer :woman_managers
      t.integer :woman_employees
      t.float :esg_score
      t.float :co2_scope_1_2_adjusted
      t.float :co2_scope_1_2_revenue_adjusted
      t.float :co2_scope_3_adjusted
      t.float :co2_scope_3_revenue_adjusted

      t.timestamps
    end
  end
end
