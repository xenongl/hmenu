if SERVER then

	local Folder = "hmenu"
	local Files = file.Find( Folder .. "*", "LUA" )

	for k, v in pairs( Files ) do

		include( Folder .. "/" .. v )

	end

	local Folder = "hmenu/sh"

	for _, File in SortedPairs( file.Find( Folder .. "/sh_*.lua", "LUA" ), true ) do

		AddCSLuaFile( Folder .. "/" .. File )
		include( Folder .. "/" .. File )

	end

	local Folder = "hmenu/sv"

	for _, File in SortedPairs( file.Find( Folder .. "/sv_*.lua", "LUA" ), true ) do

		include( Folder .. "/" .. File )

	end

	local Folder = "hmenu/cl"

	for _, File in SortedPairs( file.Find( Folder .. "/cl_*.lua", "LUA" ), true ) do

		AddCSLuaFile( Folder .. "/" .. File )

	end

	local Folder = "hmenu/vgui"

	for _, File in SortedPairs( file.Find( Folder .. "/vgui_*.lua", "LUA" ), true ) do

		AddCSLuaFile( Folder .. "/" .. File )

	end

end

if CLIENT then

	local Folder = "hmenu/sh"

	for _, File in SortedPairs( file.Find( Folder .. "/sh_*.lua", "LUA" ), true ) do

		include( Folder .. "/" .. File )

	end

	local Folder = "hmenu/cl"

	for _, File in SortedPairs( file.Find( Folder .. "/cl_*.lua", "LUA" ), true ) do

		include( Folder .. "/" .. File )

	end

	local Folder = "hmenu/vgui"

	for _, File in SortedPairs( file.Find( Folder .. "/vgui_*.lua", "LUA" ), true ) do

		include( Folder .. "/" .. File )

	end

end