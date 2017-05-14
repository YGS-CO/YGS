local database = 'http://umbrella.shayan-soft.ir/txt/'
local function run(msg)
  local res = http.request(database.."danestani.db")
  if string.match(res, '@YGSCO') then res = string.gsub(res, '@YGSCO', "")
 end
  local danestani = res:split(",")
  return danestani[math.random(#danestani)]
end

return {
  description = "500 Persian danestani",
  usage = "danestani : send random danestani",
  patterns = {
  "^(دانستنی ها)$",
  "^(دانستنی)$"
  },
  run = run
}
