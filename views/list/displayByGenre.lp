<%
local form = require "sailor.form"
%>
<form action="/?r=list/searchResults" method="post">
  <%=form.text(Book, 'genre')%>
  <input type="submit" value="Search">
</form>
