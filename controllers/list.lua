local sailor = require "sailor"

local list = {}

function list.index(page)
  page:render('index')
end

function list.displayBooks(page)
  local Book = sailor.model("book")
  local books = Book:find_all()
  page:render('displayBooks', { books = books })
end

function list.displayByGenre(page)
  local Book = sailor.model("book")
  page:render('displayByGenre',{Book = Book})
end

function list.searchResults(page)
  local genre = ''
  local post_params = page.POST
  for k, v in pairs(post_params) do
    if type(v) == "table" then
    elseif type(v) == 'boolean' then
    else
      genre = v
    end
  end
  where_string = 'genre="'..genre..'"'
  local Book = sailor.model("book")
  local books = Book:find_all(where_string)
  params = {books = books, Book=Book,ws = where_string}
  page:render('searchResults', {books = books,Book=Book})
end

return list
