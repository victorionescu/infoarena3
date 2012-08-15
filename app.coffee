express = require 'express'
cons = require 'consolidate'

app = express()

app.configure ->
  app.set 'title', 'infoarena3'
  
app.configure 'development', ->
  console.log 'development environment'
  
app.configure 'production', ->
  console.log 'production environment'

app.engine '.hamlc', cons['haml-coffee']

app.get '/', (req, res) ->
  res.render 'index.hamlc', {name: "Victor"}

app.listen 3000

console.log 'listening on port 3000'