class AddReferencesSymtomSyndromePercentage < ActiveRecord::Migration[5.2]
  add_reference :syndrome_symptom_percentages, :symptom, foreign_key: true
  add_reference :syndrome_symptom_percentages, :syndrome, foreign_key: true
end
  