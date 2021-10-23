if SERVER then
	local folderName = 'hmenu'
	local filesInFolder = file.Find(folderName .. '*', 'LUA')

	for k, v in pairs(filesInFolder) do
		include(folderName .. '/' .. v)
	end

	local folderName = 'hmenu/sh'

	for _, File in SortedPairs(file.Find(folderName .. '/sh_*.lua', 'LUA'), true) do
		AddCSLuaFile(folderName .. '/' .. File)
		include(folderName .. '/' .. File)
	end

	local folderName = 'hmenu/sv'

	for _, File in SortedPairs(file.Find(folderName .. '/sv_*.lua', 'LUA'), true) do
		include(folderName .. '/' .. File)
	end

	local Folder = 'hmenu/cl'

	for _, File in SortedPairs(file.Find(folderName .. '/cl_*.lua', 'LUA'), true) do
		AddCSLuaFile(folderName .. '/' .. File)
	end

	local folderName = 'hmenu/vgui'

	for _, File in SortedPairs(file.Find(folderName .. '/vgui_*.lua', 'LUA'), true) do
		AddCSLuaFile(folderName .. '/' .. File)
	end
end

if CLIENT then
	local folderName = 'hmenu/sh'

	for _, File in SortedPairs(file.Find(folderName .. '/sh_*.lua', 'LUA'), true) do
		include(folderName .. '/' .. File)
	end

	local folderName = 'hmenu/cl'

	for _, File in SortedPairs(file.Find(folderName .. '/cl_*.lua', 'LUA'), true) do
		include(folderName .. '/' .. File)
	end

	local folderName = 'hmenu/vgui'

	for _, File in SortedPairs(file.Find(folderName .. '/vgui_*.lua', 'LUA'), true) do
		include(folderName .. '/' .. File)
	end
end

print('hmenu initialized')