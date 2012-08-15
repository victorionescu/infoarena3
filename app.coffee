express = require 'express'
cons = require 'consolidate'

app = express()

app.configure ->
  app.set 'title', 'infoarena3'
  
app.configure 'development', ->
  console.log 'development environment'
  
app.configure 'production', ->
  console.log 'production environment'

app.engine '.jade', cons['jade']

app.get '/', (req, res) ->
  res.render 'index.jade'

app.listen 3000

console.log 'listening on port 3000'