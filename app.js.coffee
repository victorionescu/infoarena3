express = require('express')

app = express()

app.get '/', (req, res) ->
  res.send 'Hello World'
  res.end()

app.listen 3000

console.log 'listening on port 3000'