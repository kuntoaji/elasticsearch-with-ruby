# elasticsearch-with-ruby

Ruby scripts to CRUD index and document with [Elastic Search][elastic].

All scripts in this repository use `example-index` as an index name. After installing Elastic Search, run in this order:

### 1. Create Elastic Search Index

Create `example-index` ES index:
```
ruby creating_index_es.rb
```

### 2. Add a Document to an Index

Add a document to `example-index`:
```
ruby adding_document_es.rb
```

### 3. Search a Document

Search a document in `example-index`:
```
ruby search_document_es.rb
```

### 4. Delete a Document from an Index

Delete a document from `example-index`:
```
ruby deleting_document_es.rb
```

### 5. Remove an Index from Elastic Search

Remove `example-index`:
```
ruby removing_index_es.rb
```

[elastic]: https://www.elastic.co
