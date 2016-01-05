do
local function callbackres(extra, success, result) 
  local user = 'user#id'..result.id
  local chat = 'chat#id'..extra.chatid
  if is_banned(result.id, extra.chatid) then 
            send_large_msg(chat, 'User is banned.')
  elseif is_gbanned(result.id) then 
      send_large_msg(chat, 'User is globaly banned.')
  else    
      chat_add_user(chat, user, ok_cb, false) 
  end
end
function run(msg, matches)
  local data = load_data(_config.moderation.data)
  if not is_realm(msg) then
    if data[tostring(msg.to.id)]['settings']['lock_member'] == 'yes' and not is_admin(msg) then
      return 'Group is private.'
    end
  end
  if msg.to.type ~= 'chat' then 
    return
  end
  if not is_momod(msg) then
    return
  end
  if not is_admin(msg) then 
    return 'Only admins can invite.'
  end
  local cbres_extra = {chatid = msg.to.id}
  local username = matches[1]
  local username = username:gsub("@","")
  res_user(username,  callbackres, cbres_extra)
end
return {
    patterns = {
      "^[!/$&#@]invite (.*)$",
      "^([Ii]nvite (.*)$"
    },
    run = run
}

end
