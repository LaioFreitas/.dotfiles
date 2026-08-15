hl.curve("overshoot", { type = "bezier", points = { { 0.5, 0.9 }, { 0.1, 1.1 } } })
hl.curve("rubber", { type = "spring", mass = 1, stiffness = 70, dampening = 10 })

-- bezier = {
-- 	overshoot = { 0.05, 0.9, 0.1, 1.1 },
-- }
--
-- animation = {
-- 	{ "workspaces", 1, 8, "default" },
-- 	{ "workspaces", 1, 8, "default", "slidefade 20%" },
-- 	{ "fade", 0 },
--
-- 	-- Desativadas:
-- 	-- { "windows", 1, 10, "default", "slide" },
-- 	-- { "windows", 1, 8, "default", "popin 50%" },
-- }
hl.animation({ leaf = "workspaces", enabled = true, speed = 8, bezier = "overshoot", style = "slidefade 20%" })
-- hl.animation({ leaf = "workspaces", enabled = true, speed = 8, bezier = "my_epic_bezier" })
-- hl.animation({ leaf = "windows", enabled = true, speed = 10, spring = "my_epic_spring", style = "slide" })
-- hl.animation({ leaf = "fade", enabled = 0 })
