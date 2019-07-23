class RenameSkillsWorkersToAbilities < ActiveRecord::Migration[5.2]
  def change
    rename_table :skills_workers, :abilities
  end
end
