json.id product.id
json.name product.name
json.price product.price
json.description product.description
json.created_at product.created_at
json.updated_at product.updated_at
json.supplier product.supplier.name
json.images product.images
json.current_user current_user

json.formatted do 
  json.is_discounted? product.is_discounted?
  json.tax product.tax
  json.total product.total
end