local val = require "valua"
local book = {}

book.attributes = {
  { id = "safe" },
  { bookName = val:new().not_empty().len(1, 50) },
  { author = val:new().not_empty().len(1, 30) },
  { genre = val:new().not_empty().len(1, 30) }
}

book.db = {
  key = "bookID",
  table = "books"
}

return book
