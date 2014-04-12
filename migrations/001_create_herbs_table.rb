Sequel.migration do
  up do
    create_table(:herbs) do
      primary_key :id
      String :name, :null=>false
    end
  end

  down do
    drop_table(:herbs)
  end
end