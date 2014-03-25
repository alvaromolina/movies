json.array!(@libros) do |libro|
  json.extract! libro, :id, :name
  json.url libro_url(libro, format: :json)
end
