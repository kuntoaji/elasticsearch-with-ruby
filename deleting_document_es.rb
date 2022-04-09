require 'elasticsearch'

client = Elasticsearch::Client.new url: 'http://localhost:9200', log: true
index_name = 'example-index'
id = '1'
type = 'exampletype'

# Delete the document.
response = client.delete(
  index: index_name,
  type: type,
  id: id
)

puts 'Deleting document:'
puts response
