
for _, loco in pairs(data.raw["locomotive"]) do
	-- In vanilla, reduce locomotives from 259 km/h to 86 km/h (fuel bonuses
	-- still apply).
	loco.max_speed = 0.4 -- Base 1.2
	-- Reduce braking force (slow down more slowly).
	loco.braking_force = 0.5 -- Base 10
	-- Increase friction force (speed up more slowly).
	loco.friction_force = 5 -- Base 0.5
end

-- Adjust advanced fuel acceleration values, so they aren't as high as vanilla.
data.raw.item["solid-fuel"].fuel_acceleration_multiplier = 1.1 -- Base 1.2
data.raw.item["rocket-fuel"].fuel_acceleration_multiplier = 1.2 -- Base 1.8
data.raw.item["nuclear-fuel"].fuel_acceleration_multiplier = 1.3 -- Base 2.5
