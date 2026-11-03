-- Workspace rules wiki https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- Add your workspace rules here. Increment the workspace number as you go. Do not have duplicate workspaces.
hl.workspace_rule({
	workspace = "name:gaming",
	monitor = PRIMARY_MONITOR, --[[default = true]]
})
hl.workspace_rule({ workspace = "1", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "3", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "4", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "5", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "6", monitor = MONITOR2, default = true, persistent = true })
-- hl.workspace_rule({ workspace = "5", monitor = MONITOR2, default = true, persistent = true })
-- hl.workspace_rule({ workspace = "6", monitor = MONITOR2, default = true, persistent = true })

-- For other layouts such as scrolling, see example below
-- hl.workspace_rule({ workspace = "1", monitor = MONITOR1, default = true, persistent = true, layout = scroling })
-- for i = 1, 10 do
-- 	local key = tostring(i % 10)
--
-- 	hl.bind("SUPER +" .. key, hl.dsp.focus({ workspace = tostring(i) }))
-- 	hl.bind("SUPER + SHIFT +" .. key, hl.dsp.window.move({ workspace = tostring(i) }))
-- end
