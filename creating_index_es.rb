require 'elasticsearch'
client = Elasticsearch::Client.new url: 'http://localhost:9200', log: true

# Create an index with non-default settings.
index_name = 'example-index'
index_body = {
  'settings': {
    'index': {
      'number_of_shards': 4
    }
  }
}

response = client.indices.create(
  index: index_name,
  body: index_body
)

puts 'Creating index:'
puts response
