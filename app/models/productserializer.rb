class ProductSerializer
  def initialize()
  end
  def self.serialize(product)
    json = "{"
    json += "'name': '#{product.name}', "
    json += "'price': '#{product.price}', "
    json += "'inventory': '#{product.description}', "
    json += "'description': '#{product.description}',"
    json += "'productId': '#{product.Id}'"
    json += " }"
    return json
  end
end
