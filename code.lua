-- just put whatever into the module
-- module func always gets ran with plr as the parameter

local mod = {}

function mod.SELite(player)
  require(128810736268190)(player)
end

function mod.Sensation(player)
  require(100263845596551)(player.Name, ColorSequence.new(Color3.fromRGB(71, 148, 253), Color3.fromRGB(71, 253, 160)), "Standard")
end

return mod
