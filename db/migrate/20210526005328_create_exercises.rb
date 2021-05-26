class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.integer :min_reps
      t.integer :max_reps
      t.string :video_url
      t.string :image_url
      t.string :body_part
      t.string :[
      t.upper :
      t.lower :
      t.arms :
      t.legs :
      t.glutes :
      t.core :
      t.back :
      t.shoulders :
      t.biceps :
      t.triceps :
      t.hamstrings :
      t.quads :
      t.calves :
      t.lower_back :
      t.upper_back :
      t.chest] :

      t.timestamps
    end
  end
end
