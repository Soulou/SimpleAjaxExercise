class Composer
  constructor: (@id, @firstName, @lastName, @style) ->

  contains: (str) ->
      return @firstName.toLowerCase().indexOf(str.toLowerCase()) == 0 ||
        @lastName.toLowerCase().indexOf(str.toLowerCase()) == 0 ||
        (@firstName.toLowerCase() + @lastName.toLowerCase()).indexOf(str.toLowerCase()) == 0

module.exports = Composer
