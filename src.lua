local Players = game:GetService("Players")

if napoleonLoaded then return end
getgenv().napoleonLoaded = true

local api = loadstring(game:HttpGet('https://sdkapi-public.luarmor.net/library.lua'))()

local TeleportService: TeleportService = cloneref(game:GetService("TeleportService"))
local repo = 'https://raw.githubusercontent.com/raydjs/Obsidian/main/'
local discord_link = 'discord.gg/bWzCFPk83g'
local Library = nil

while true do task.wait()
	local success, data = pcall(function()
		return loadstring(game:HttpGet(repo .. 'Library.lua'))()
	end)

	if success then
		Library = data
		break
	end
end

local ID = game.GameId
local games = if ID == 6931042565 then
   	if old then '5138fff8319f430c56ea6057569cb188' else '10231c45388ada5c77add5a7583a2b19'
elseif ID == 7018190066 then
	'6cb8843504e7bbaf2c12ad7fe51d8e60'
elseif ID == 6945584306 then
	'd48f6f73e12d8c126f3075f73224ea83'
elseif ID == 1054526971 then
	'2e637d8f45504b786dccd6c6478e468f'
elseif ID == 7028566528 then
	'1a62600f4eb00c2c17432239329aafde'
elseif ID == 7436755782 then
	'5c69b7f5635528c1340e14f2d413b1b7'
elseif ID == 3808081382 then
	'05d562929f3d52b114f10e5bc3802f40'
elseif ID == 6770632849 then
	'37f3259776b4c4be8de391ad3837246a'
elseif ID == 6925303818 then
	'477873fe2ae1822f60b28042e95c81b1'
elseif ID == 7008097940 then
	'ac8df4db983c4c2b9169f993c89f294f'
elseif ID == 847722000 then
	'bebee6367bd678c0c955c20cbae5f75d'
elseif ID == 7744159391 then
	'6a69cfade8203344c5ebb69f775b7648'
else nil

if games == nil then return end

api.script_id = games

-- Anti-AFK
local gcn = getconnections or get_signal_cons
if gcn then
    for _, v in gcn(Players.LocalPlayer.Idled) do
        if v.Disable then
            v:Disable()
        elseif v.Disconnect then
            v:Disconnect()
        end
    end
else
    local VirtualUser = cloneref(game:GetService("VirtualUser"))
    Players.LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end

-- Carregar script direto (sem key)
Library:Unload()
Library:Notify("Welcome to Napoleon Hub (keyless)", 4)
api.load_script()
