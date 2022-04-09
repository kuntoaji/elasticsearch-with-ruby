require 'elasticsearch'

client = Elasticsearch::Client.new url: 'http://localhost:9200', log: true
index_name = 'example-index'

# Search for the document.
q = 'miller'
query = {
  'size': 5,
  'query': {
    'multi_match': {
      'query': q,
      'fields': ['title^2', 'director']
    }
  }
}

response = client.search(
  body: query,
  index: index_name
)
puts 'Search results:'
puts response
