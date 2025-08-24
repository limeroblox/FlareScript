-- R6 FULL FX (client-sided, no claws, only particles via attachment)
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local torso = char:WaitForChild("Torso")

-- Create attachment on torso
local attachment = Instance.new("Attachment")
attachment.Name = "TorsoFXAttachment"
attachment.Parent = torso

-- Helper for NumberSequence from numbers
local function nsKeys(list)
	local keys = {}
	local n = #list
	if n == 1 then return NumberSequence.new(list[1]) end
	for i, v in ipairs(list) do
		local t = (i-1)/(n-1)
		keys[i] = NumberSequenceKeypoint.new(t, v)
	end
	return NumberSequence.new(keys)
end

-- ParticleEmitter 0
local p0 = Instance.new("ParticleEmitter")
p0.Parent = attachment
p0.Speed = NumberRange.new(0.001, 0.001)
p0.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
p0.Rotation = NumberRange.new(-360, 360)
p0.LightEmission = 1
p0.Texture = "rbxassetid://14255829980"
p0.Transparency = nsKeys({1,0.4378,0,0.4595,1})
p0.Brightness = 10
p0.Lifetime = NumberRange.new(0.2,1)
p0.LockedToPart = true
p0.Rate = 4
p0.SpreadAngle = Vector2.new(360,360)
p0.VelocitySpread = 360

-- ParticleEmitter 1
local p1 = Instance.new("ParticleEmitter")
p1.Parent = attachment
p1.Speed = NumberRange.new(0.05,0.05)
p1.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
p1.Rotation = NumberRange.new(0,360)
p1.LightEmission = 1
p1.Texture = "rbxassetid://139759126655001"
p1.Transparency = nsKeys({1,0,0,1})
p1.Size = nsKeys({1,2})
p1.Brightness = 3
p1.Lifetime = NumberRange.new(0.2,0.2)
p1.LockedToPart = true
p1.SpreadAngle = Vector2.new(360,360)
p1.VelocitySpread = 360

-- ParticleEmitter 2
local p2 = Instance.new("ParticleEmitter")
p2.Parent = attachment
p2.Speed = NumberRange.new(0.05,0.05)
p2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
p2.Rotation = NumberRange.new(0,360)
p2.LightEmission = 1
p2.Texture = "rbxassetid://14197083420"
p2.Transparency = nsKeys({1,0.7,0.7,1})
p2.Size = nsKeys({1,2})
p2.Brightness = 3
p2.Lifetime = NumberRange.new(1,1)
p2.LockedToPart = true
p2.SpreadAngle = Vector2.new(360,360)
p2.VelocitySpread = 360

-- ParticleEmitter 3
local p3 = Instance.new("ParticleEmitter")
p3.Parent = attachment
p3.Speed = NumberRange.new(0.05,0.05)
p3.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
p3.Rotation = NumberRange.new(0,360)
p3.LightEmission = 1
p3.Texture = "rbxassetid://16504113471"
p3.Transparency = nsKeys({1,0.7,0.7,1})
p3.Size = nsKeys({1,2})
p3.Brightness = 3
p3.Lifetime = NumberRange.new(1,1)
p3.LockedToPart = true
p3.SpreadAngle = Vector2.new(360,360)
p3.VelocitySpread = 360

-- ParticleEmitter 4
local p4 = Instance.new("ParticleEmitter")
p4.Parent = attachment
p4.Speed = NumberRange.new(0.05,0.05)
p4.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
p4.Rotation = NumberRange.new(0,360)
p4.LightEmission = 1
p4.Texture = "rbxassetid://14068947349"
p4.Transparency = nsKeys({1,0,0,1})
p4.Size = nsKeys({1,2})
p4.Brightness = 3
p4.Lifetime = NumberRange.new(1,1)
p4.LockedToPart = true
p4.Rate = 5
p4.RotSpeed = NumberRange.new(10,10)
p4.SpreadAngle = Vector2.new(360,360)
p4.VelocitySpread = 360
