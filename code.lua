-- just put whatever into the module
-- module func always gets ran with plr as the parameter

local mod = {}

function mod.SELite(player)
  require(128810736268190)(player)
end

function mod.Sensation(player)
  require(100263845596551)(player.Name, ColorSequence.new(Color3.fromRGB(255, 64, 64), Color3.fromRGB(71, 253, 160)), "Standard")
end

function mod.Guns(player)
  require(110329029614063)(player.Name)
end

return mod
