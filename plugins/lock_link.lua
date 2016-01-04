local function run(msg)
    if not is_momod(msg) and msg.type = 'chat' then
        --chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        return 
    end
end

return {patterns = {
    ".com",
    "http://",
    "https://",
    "telegram.me/joinchat/"
    }, run = run}
    --https://github.com/ThisIsArman
    --Telegram.me/ThisIsArman
