do
local function run(msg, matches)
  if matches[1]:lower() == 'من' then
    if is_sudo(msg) then
      return reply_msg(msg.id,"شما |—>> 😏سودو😏 هستید!",ok_cb,false)
    elseif is_admin1(msg) then
      return "شما |—>> 🙃ادمین🙃 هستید!"
    elseif is_owner(msg) then
      return "شما |—>> 🤑آونر🤑 هستید!"
    elseif is_momod(msg) then
      return "شما |—>> 😎ارتقای رتبه😎 هستید!"
    else
      return "شما |—>> 🤓عضو🤓 هستید!"
    end
  end
end

return {
  patterns = {
"^من"
    },
  run = run
}
end
