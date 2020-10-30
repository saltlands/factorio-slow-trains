
for _, loco in pairs(data.raw["locomotive"]) do
	-- In vanilla, reduce locomotives from 259 km/h to 86 km/h (fuel bonuses
	-- still apply).
	loco.max_speed = 0.4 -- Base 1.2
	-- Increase weight (speed up more slowly, slow down a little more slowly).
	loco.weight = 20000 -- Base 2000
	-- Reduce braking force (slow down more slowly, more effective than weight).
	loco.braking_force = 0.1 -- Base 10
end

-- Adjust advanced fuel acceleration values, so they aren't as high as vanilla.
data.raw.item["solid-fuel"].fuel_acceleration_multiplier = 1.1 -- Base 1.2
data.raw.item["rocket-fuel"].fuel_acceleration_multiplier = 1.2 -- Base 1.8
data.raw.item["nuclear-fuel"].fuel_acceleration_multiplier = 1.3 -- Base 2.5
