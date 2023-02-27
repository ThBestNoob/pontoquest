class AddPinToAgents < ActiveRecord::Migration[7.0]
  def change
    add_column :agents, :pin, :string, null: false
  end
end
