require 'elasticsearch'

client = Elasticsearch::Client.new url: 'http://localhost:9200', log: true
index_name = 'example-index'

# Delete the index.
response = client.indices.delete(
  index: index_name
)

puts 'Deleting index:'
puts response
