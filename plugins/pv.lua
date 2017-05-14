function run(msg, matches)
if msg.to.type == 'user' and not is_sudo(msg) then
return [[
اینجا پیوی رباته لطفا اگه کاری دارید پیام خودتونو در @YGSBOT ارسال کنید
]]
end
end
return {
patterns = { 
"(.*)$",
},
run = run
}
