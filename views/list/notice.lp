This is what is recovered from the POST parameters!<br />
<?lua
function tprint (tbl, indent)
  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
      page:print(k)
      page:print(v)      
  end
end

tprint(post_params)
?>
