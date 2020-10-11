module("luci.controller.AutoConnect", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/AutoConnect") then
        return
    end

    local page
    page = entry({"admin", "services", "AutoConnect"}, cbi("AutoConnect"), _("自动连接校园网(桂林理工大学)"), 100)
    page.dependent = true
    entry({"admin", "services", "AutoConnect", "status"},call("network_status")).leaf=true
end

function network_status()
    local e = {}
    e.status = string.find(luci.sys.exec("/etc/init.d/AutoConnect check"), "false") == nil
    luci.http.prepare_content("application/json")
    luci.http.write_json(e)
end
