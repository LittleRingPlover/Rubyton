class CreateHackathonNames < ActiveRecord::Migration[7.0]
  def change
    create_table :hackathon_names do |t|
      t.text :name

      t.timestamps
    end
  end
end
