m = Map("AutoConnect", translate("校园网自动连接(桂林理工大学)"))
m.description = translate("Source: https://github.com/flylai/Glut-network-AutoConnect")

m:section(SimpleSection).template = "AutoConnect/AutoConnect"

s = m:section(TypedSection, "AutoConnect")
s.anonymous=true
s.addremove=false

enable = s:option(Flag, "enable", translate("启用插件"))
enable.description = translate("启用插件即可自动登录校园网")
enable.default = 0
enable.rmempty = false

username = s:option(Value, "sid", translate("学号"))
password = s:option(Value, "password", translate("密码"))
password.password = true

return m
