<table>
  <tr><td><b>BOOK</b></td><td><b>AUTHOR</b></td><td><b>GENRE</b></td></tr>
  <%for i = 1, #books do%>
    <tr>
      <td><%=books[i].bookName%>&nbsp;</td>
      <td><%=books[i].author%>&nbsp;</td>
      <td><%=books[i].genre%></td>
    </tr>
  <%end%>
</table>
