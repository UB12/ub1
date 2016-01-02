local function run(msg, matches)
    if is_mod (msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_link'] then
                lock_link = data[tostring(msg.to.id)]['settings']['lock_link']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_adds == "yes" then
        send_large_msg(chat, 'no link!')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "telegram.me/joinchat/",
  },
  run = run
}
