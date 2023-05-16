class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|

      t.timestamps
    end
  end
end
