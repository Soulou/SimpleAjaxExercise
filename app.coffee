express = require "express"
_ = require "underscore"
app = express()
app.use express.bodyParser()
app.use require('connect-assets')()

data = require "./data"

app.get "/", (req, res) ->
  res.render "index.jade"

app.get "/autocomplete", (req, res) ->
  if req.query.action == "complete" && req.query.id != ""
    id = req.query.id
    composers = _.filter data, (composer) ->
      return composer.contains(id.toLowerCase())
  res.send composers

app.get "/test", (req, res) ->
  res.write "something"
  res.end

app.listen(process.env.PORT || 3000)
