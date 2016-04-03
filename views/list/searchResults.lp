<%page:include("views/list/displayByGenre")%>
<%if #books == 0 then%>
  <h1>Oops! No search results found.</h1>
<%else%>
  <h1>Search Results</h1>
  <table>
    <tr><td><b>BOOK</b></td><td><b>AUTHOR</b></td></tr>
    <%for i = 1, #books do%>
    <tr>
      <td><%=books[i].bookName%>&nbsp;</td>
      <td><%=books[i].author%>&nbsp;</td>
    </tr>
    <%end%>
  </table>
<%end%>
