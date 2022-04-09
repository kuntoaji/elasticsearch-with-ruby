require 'elasticsearch'

client = Elasticsearch::Client.new url: 'http://localhost:9200', log: true
index_name = 'example-index'
id = '1'
type = 'exampletype'

# Add a document to the index.
document = {
  'title': 'Moneyball',
  'director': 'Bennett Miller',
  'year': '2011'
}

response = client.index(
  index: index_name,
  type: type, # ES requires type
  body: document,
  id: id,
  refresh: true
)

puts 'Adding document:'
puts response
