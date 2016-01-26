do

function run(msg, matches)
  return " صاحب جمال , اعلی حضرت , سرور من آقای ارسلان معروف به Creed  با ایدی : @creed_is_dead"
  end
return {
  description = "Says about Creed ", 
  usage = "!Creed or Creed : Return Information about Creed hehehe",
  patterns = {
    "^[Aa](rsalan)$",
    "^[Cc](reed)$",
    "^[!/]([Cc]reed)$",
    "^[!/]([Aa]rsalan)$",
  },
  run = run
}
end
