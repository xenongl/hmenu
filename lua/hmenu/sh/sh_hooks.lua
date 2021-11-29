if CLIENT then
	hook.Add('PlayerButtonUp', 'hmenu.binds.openHMenu', function(ply, buttonId)

		if not IsFirstTimePredicted() then return end
		if ply ~= LocalPlayer() then return end
		if buttonId ~= configHMenu.buttonOpenMenu then return end
		if gui.IsGameUIVisible() then return end
		if ply:IsTyping() then return end

		openHMenu()

	end)

	timer.Simple(15, function()

		for k, v in pairs(configHMenu.GPS.positions) do
			concommand.Add(v.command, function()

				hook.Add('HUDPaint', 'hmenu.gps', function()
				
					local pos = (v.position + Vector(0, 0, 95)):ToScreen() 

					local firstDistance = v.position:Distance(LocalPlayer():GetPos())
					local secondDistance = math.Round(firstDistance)..' m'

					draw.SimpleTextOutlined(k, 'hmenu.fonts.standartFont', pos.x, pos.y + 50, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(49, 49, 49))
					draw.SimpleTextOutlined(secondDistance, 'hmenu.fonts.standartFont', pos.x, pos.y + 73, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(49, 49, 49))

				end)

			end)	
		end

	end)

	print('hmenu hooks initialized')
end