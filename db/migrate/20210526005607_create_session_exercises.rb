class CreateSessionExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :session_exercises do |t|
      t.references :session, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.integer :reps
      t.datetime :stopped_at

      t.timestamps
    end
  end
end
