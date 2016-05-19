class CreateCoachings < ActiveRecord::Migration
  def change
    create_table :coachings do |t|
      t.references :pupil, index: true, foreign_key: true
      t.references :mentor, index: true, foreign_key: true
      t.references :language, index: true, foreign_key: true
      t.boolean :accepted, default: false, index: true
      
      t.timestamps null: false
    end
  end
end
