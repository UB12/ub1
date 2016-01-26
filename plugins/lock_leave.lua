if msg.action and msg.action.type then
    local action = msg.action.type
    if action == 'chat_del_user' then
      local user_id = msg.from.id
    if data[tostring(msg.to.id)]['settings']['lock_leave'] == 'yes' then
  if not is_momod(msg) then
  chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msg = 'Join link is Locked !'
   local receiver = msg.to.id
    send_large_msg('chat#id'..receiver, msg.."\n", ok_cb, false)
  
      end
   end
end
return {
   description = "to ban the leaver",
   usage = "!lock leave : no one can come back to group who left once",
   patterns = {
      "^!!tgservice (chat_del_user)$"
},
   run = run
}
