Sequel.migration do
  up do
    add_column(:herbs, :part, String)
  end

  down do
    drop_column(:herbs, :parts)
  end
end