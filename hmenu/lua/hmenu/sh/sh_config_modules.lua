function initializeHMenuModules()

	local x, y = ScrW(), ScrH()
	local varLocalPlayer = LocalPlayer()

	function addNewHMenuModule(settingsName, name, funcOnClick)

		if configHMenu.modules[settingsName].enabled then
			menuButtonCategory = menuScrollButtons:Add('DButton')
			menuButtonCategory:SetText(name)
			menuButtonCategory:SetTextColor(configHMenu.modules[settingsName].colorText)
			menuButtonCategory:SetFont(configHMenu.modules[settingsName].textFont)
			menuButtonCategory:Dock(TOP)
			menuButtonCategory:DockMargin(15, 0, 0, 5)
			menuButtonCategory:SetContentAlignment(4)

			if configHMenu.modules[settingsName].isCategory then
				menuButtonCategory.DoClick = function()

					menuFrame:MoveTo(x + menuFrame:GetWide() - 5, y / 2 - menuFrame:GetTall() / 2,  .2, 0, -1, function()
						
						surface.PlaySound('hmenu/open.wav')

						menuFrame:Close()

						menuFrameCategory = vgui.Create('DFrame')
						menuFrameCategory:SetSize(x / 10, y / 3.25)
						menuFrameCategory:SetPos(x + menuFrameCategory:GetWide() - 5, y / 2 - menuFrameCategory:GetTall() / 2)
						menuFrameCategory:MakePopup()
						menuFrameCategory:SetDraggable(false)
						menuFrameCategory:ShowCloseButton(true)
						menuFrameCategory:SetTitle('')

						menuFrameCategory.Paint = function(self, w, h)
							draw.RoundedBox(0, 0, 0, w, h, configHMenu.colors['colorBackground'])
						end

						menuFrameCategory:MoveTo(x - menuFrameCategory:GetWide() - 5, y / 2 - menuFrameCategory:GetTall() / 2,  .2, 0, -1)

						menuPanelCategory = vgui.Create('DPanel', menuFrameCategory)
						menuPanelCategory:SetSize(menuFrameCategory:GetWide(), menuFrameCategory:GetTall() / 4)
						menuPanelCategory:SetPos(0, 0)

						menuPanelCategory.Paint = function(self, w, h)
							draw.RoundedBox(0, 0, 0, w, h, configHMenu.colors['colorHeader'])
						end

						menuImageCategory = vgui.Create('DImage', menuFrameCategory)
						menuImageCategory:SetSize(menuFrameCategory:GetWide(), menuFrameCategory:GetTall())
						menuImageCategory:SetPos(0, 0)
						menuImageCategory:SetImage('hmenu/hmenu_black.png')

						menuTextCategory = vgui.Create('DLabel', menuPanelCategory)
						menuTextCategory:SetTextColor(Color(255, 255, 255))
						menuTextCategory:SetFont('hmenu.fonts.bigFont')
						menuTextCategory:SetText(name)
						menuTextCategory:SizeToContents()
						menuTextCategory:SetPos(menuPanelCategory:GetWide() / 2 - menuTextCategory:GetWide() / 2, menuPanelCategory:GetTall() / 2 - menuTextCategory:GetTall() / 2)

						menuScrollButtonsCategory = vgui.Create('DScrollPanel', menuFrameCategory)
						menuScrollButtonsCategory:SetSize(menuFrameCategory:GetWide(), menuFrameCategory:GetTall() - 115)
						menuScrollButtonsCategory:SetPos(0, menuFrameCategory:GetTall() - menuScrollButtonsCategory:GetTall() - 15)

						timer.Simple(.1, funcOnClick)

						timer.Simple(.105, function()

							menuButtonCategory = menuScrollButtonsCategory:Add('DButton')
							menuButtonCategory:SetText(configHMenu.language[configHMenu.language.settings]['Close'])
							menuButtonCategory:SetTextColor(Color(255, 76, 91))
							menuButtonCategory:SetFont('hmenu.fonts.standartFont')
							menuButtonCategory:Dock(TOP)
							menuButtonCategory:DockMargin(15, 0, 0, 5)
							menuButtonCategory:SetContentAlignment(4)
							
							menuButtonCategory.DoClick = function()

								menuFrameCategory:MoveTo(x + menuFrameCategory:GetWide() - 5, y / 2 - menuFrameCategory:GetTall() / 2,  .2, 0, -1, function()
				
									surface.PlaySound('hmenu/open.wav')

									menuFrameCategory:Close()

								end)

							end
							
							menuButtonCategory.Paint = function(self, w, h)
								draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 0))
							end

						end)

					end)

				end
			else
				menuButtonCategory.DoClick = function()
				
					menuFrame:MoveTo(x + menuFrame:GetWide() - 5, y / 2 - menuFrame:GetTall() / 2,  .2, 0, -1, function()
								
						surface.PlaySound('hmenu/open.wav')

						menuFrame:Close()

						timer.Simple(.1, funcOnClick)

					end)

				end
			end
			
			menuButtonCategory.Paint = function(self, w, h)
				draw.RoundedBox(0, 0, 0, w, h, configHMenu.modules[settingsName].colorBackground)
			end
		end

	end

	function addNewHMenuModuleSubCategory(name, funcOnClick, font, colorText, colorBackground)

		menuButtonSubCategory = menuScrollButtonsCategory:Add('DButton')
		menuButtonSubCategory:SetText(name)
		menuButtonSubCategory:SetTextColor(colorText)
		menuButtonSubCategory:SetFont(font)
		menuButtonSubCategory:Dock(TOP)
		menuButtonSubCategory:DockMargin(15, 0, 0, 5)
		menuButtonSubCategory:SetContentAlignment(4)

		menuButtonSubCategory.DoClick = function()

			menuFrameCategory:MoveTo(x + menuFrameCategory:GetWide() - 5, y / 2 - menuFrameCategory:GetTall() / 2, .2, 0, -1, function()
				
				surface.PlaySound('hmenu/open.wav')

				menuFrameCategory:Close()

				menuFrameSubCategory = vgui.Create('DFrame')
				menuFrameSubCategory:SetSize(x / 10, y / 3.25)
				menuFrameSubCategory:SetPos(x + menuFrameSubCategory:GetWide() - 5, y / 2 - menuFrameSubCategory:GetTall() / 2)
				menuFrameSubCategory:MakePopup()
				menuFrameSubCategory:SetDraggable(false)
				menuFrameSubCategory:ShowCloseButton(true)
				menuFrameSubCategory:SetTitle('')

				menuFrameSubCategory.Paint = function(self, w, h)
					draw.RoundedBox(0, 0, 0, w, h, configHMenu.colors['colorBackground'])
				end

				menuFrameSubCategory:MoveTo(x - menuFrameSubCategory:GetWide() - 5, y / 2 - menuFrameSubCategory:GetTall() / 2,  .2, 0, -1)

				menuPanelSubCategory = vgui.Create('DPanel', menuFrameSubCategory)
				menuPanelSubCategory:SetSize(menuFrameSubCategory:GetWide(), menuFrameSubCategory:GetTall() / 4)
				menuPanelSubCategory:SetPos(0, 0)

				menuPanelSubCategory.Paint = function(self, w, h)
					draw.RoundedBox(0, 0, 0, w, h, configHMenu.colors['colorHeader'])
				end

				menuImageSubCategory = vgui.Create('DImage', menuFrameSubCategory)
				menuImageSubCategory:SetSize(menuFrameSubCategory:GetWide(), menuFrameSubCategory:GetTall())
				menuImageSubCategory:SetPos(0, 0)
				menuImageSubCategory:SetImage('hmenu/hmenu_black.png')

				menuTextSubCategory = vgui.Create('DLabel', menuPanelSubCategory)
				menuTextSubCategory:SetTextColor(Color(255, 255, 255))
				menuTextSubCategory:SetFont('hmenu.fonts.bigFont')
				menuTextSubCategory:SetText(name)
				menuTextSubCategory:SizeToContents()
				menuTextSubCategory:SetPos(menuPanelSubCategory:GetWide() / 2 - menuTextSubCategory:GetWide() / 2, menuPanelSubCategory:GetTall() / 2 - menuTextSubCategory:GetTall() / 2)

				menuScrollButtonsSubCategory = vgui.Create('DScrollPanel', menuFrameSubCategory)
				menuScrollButtonsSubCategory:SetSize(menuFrameSubCategory:GetWide(), menuFrameSubCategory:GetTall() - 115)
				menuScrollButtonsSubCategory:SetPos(0, menuFrameSubCategory:GetTall() - menuScrollButtonsSubCategory:GetTall() - 15)

				timer.Simple(.1, funcOnClick)

				timer.Simple(.105, function()

					menuButtonSubCategory = menuScrollButtonsSubCategory:Add('DButton')
					menuButtonSubCategory:SetText(configHMenu.language[configHMenu.language.settings]['Close'])
					menuButtonSubCategory:SetTextColor(Color(255, 76, 91))
					menuButtonSubCategory:SetFont('hmenu.fonts.standartFont')
					menuButtonSubCategory:Dock(TOP)
					menuButtonSubCategory:DockMargin(15, 0, 0, 5)
					menuButtonSubCategory:SetContentAlignment(4)

					menuButtonSubCategory.DoClick = function()

						menuFrameSubCategory:MoveTo(x + menuFrameSubCategory:GetWide() - 5, y / 2 - menuFrameSubCategory:GetTall() / 2,  .2, 0, -1, function()
		
							surface.PlaySound('hmenu/open.wav')

							menuFrameSubCategory:Close()

						end)

					end
					
					menuButtonSubCategory.Paint = function(self, w, h)
						draw.RoundedBox(0, 0, 0, w, h, colorBackground)
					end

				end)

			end)
			
		end
		
		menuButtonSubCategory.Paint = function(self, w, h)
			draw.RoundedBox(0, 0, 0, w, h, colorBackground)
		end

	end

	function addNewHMenuModuleButton(name, desc, funcOnClick, font, colorText, colorBackground)

		if IsValid(menuScrollButtonsCategory) then
			menuButtonCategory = menuScrollButtonsCategory:Add('DButton')
			menuButtonCategory:SetText(name)
			menuButtonCategory:SetTextColor(colorText)
			menuButtonCategory:SetFont(font)
			menuButtonCategory:Dock(TOP)
			menuButtonCategory:DockMargin(15, 0, 0, 5)
			menuButtonCategory:SetContentAlignment(4)

			menuButtonCategory.DoClick = function()

				menuFrameCategory:MoveTo(x + menuFrameCategory:GetWide() - 5, y / 2 - menuFrameCategory:GetTall() / 2,  .2, 0, -1, function()
							
					surface.PlaySound('hmenu/open.wav')

					menuFrameCategory:Close()

					timer.Simple(.1, funcOnClick)

				end)

			end

			if desc then

				menuButtonCategory:SetToolTip(desc)

			end

			menuButtonCategory.Paint = function(self, w, h)

				draw.RoundedBox(0, 0, 0, w, h, colorBackground)

			end
		elseif IsValid(menuScrollButtonsSubCategory)then

			menuButtonSubCategory = menuScrollButtonsSubCategory:Add('DButton')
			menuButtonSubCategory:SetText(name)
			menuButtonSubCategory:SetTextColor(colorText)
			menuButtonSubCategory:SetFont(font)
			menuButtonSubCategory:Dock(TOP)
			menuButtonSubCategory:DockMargin(15, 0, 0, 5)
			menuButtonSubCategory:SetContentAlignment(4)

			menuButtonSubCategory.DoClick = function()
			
				menuFrameSubCategory:MoveTo(x + menuFrameSubCategory:GetWide() - 5, y / 2 - menuFrameSubCategory:GetTall() / 2,  .2, 0, -1, function()
							
					surface.PlaySound('hmenu/open.wav')

					menuFrameSubCategory:Close()

					timer.Simple(.1, funcOnClick)

				end)

			end

			if desc then
				menuButtonSubCategory:SetToolTip(desc)
			end

			menuButtonSubCategory.Paint = function(self, w, h)
				draw.RoundedBox(0, 0, 0, w, h, colorBackground)
			end
		end

	end

	// standart modules

	addNewHMenuModule('F4 Menu', configHMenu.language[configHMenu.language.settings]['F4 Menu'], function()

		addNewHMenuModuleSubCategory(configHMenu.language[configHMenu.language.settings]['Contacts'], function()
		
			for k, v in pairs(configHMenu.f4Menu.sites) do
				if v.enabled then
					addNewHMenuModuleButton(k, nil, function()
						gui.OpenURL(v.siteUrl)
					end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
				end
			end

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleSubCategory(configHMenu.language[configHMenu.language.settings]['Jobs'], function()

			for k, v in pairs(RPExtraTeams) do
				addNewHMenuModuleButton(v.name, v.description, function()
					RunConsoleCommand('say', '/' .. v.command)
				end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
			end

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleSubCategory(configHMenu.language[configHMenu.language.settings]['Entities'], function()

			for k, v in pairs(DarkRPEntities) do
				menuDisplayEntity = true

				if istable(v.allowed) and not table.HasValue(v.allowed, varLocalPlayer:Team())then
					menuDisplayEntity = false
				end

				if v.customCheck and not v.customCheck(varLocalPlayer)then
					menuDisplayEntity = false
				end

				if v.canSee and not v.canSee(varLocalPlayer)then
					menuDisplayEntity = false
				end

				if menuDisplayEntity then
					addNewHMenuModuleButton(v.name .. ' ' .. v.price .. '$', nil, function()
						RunConsoleCommand('darkrp', v.cmd)
					end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
				end
			end

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleSubCategory(configHMenu.language[configHMenu.language.settings]['Ammo'], function()

			for k, v in pairs(GAMEMODE.AmmoTypes) do
				menuDisplayAmmo = true

				if istable(v.allowed) and not table.HasValue(v.allowed, varLocalPlayer:Team())then
					menuDisplayAmmo = false
				end

				if v.customCheck and not v.customCheck(varLocalPlayer)then
					menuDisplayAmmo = false
				end

				if v.canSee and not v.canSee(varLocalPlayer)then
					menuDisplayAmmo = false
				end

				if menuDisplayAmmo then
					addNewHMenuModuleButton(v.name .. ' ' .. v.price .. '$', nil, function()
						RunConsoleCommand('darkrp', 'buyammo', v.ammoType)
					end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
				end
			end

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleSubCategory(configHMenu.language[configHMenu.language.settings]['Weapons'], function()

			for k, v in pairs(CustomShipments) do
				menuDisplayWeapons = true

				if istable(v.allowed) and not table.HasValue(v.allowed, varLocalPlayer:Team())then
					menuDisplayWeapons = false
				end

				if v.customCheck and not v.customCheck(varLocalPlayer)then
					menuDisplayWeapons = false
				end

				if v.canSee and not v.canSee(varLocalPlayer)then
					menuDisplayWeapons = false
				end

				if menuDisplayWeapons then
					addNewHMenuModuleButton(v.name .. ' ' .. v.price .. '$', nil, function()
						RunConsoleCommand('darkrp', 'buy', v.name)
					end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
				end
			end

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleSubCategory(configHMenu.language[configHMenu.language.settings]['Shipments'], function()

			for k, v in pairs(CustomShipments) do
				menuDisplayShipments = true

				if istable(v.allowed) and not table.HasValue(v.allowed, varLocalPlayer:Team())then
					menuDisplayShipments = false
				end

				if v.customCheck and not v.customCheck(varLocalPlayer)then
					menuDisplayShipments = false
				end

				if v.canSee and not v.canSee(varLocalPlayer)then
					menuDisplayShipments = false
				end

				if menuDisplayShipments then
					addNewHMenuModuleButton(v.name .. ' ' .. v.price .. '$', nil, function()
						RunConsoleCommand('darkrp', 'buyshipment', v.name)
					end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
				end
			end

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		if configHMenu.modulesSettings['enableFood'] then
			addNewHMenuModuleSubCategory(configHMenu.language[configHMenu.language.settings]['Food'], function()

				for k, v in pairs(FoodItems) do
					menuDisplayFood = true

					if istable(v.allowed) and not table.HasValue(v.allowed, varLocalPlayer:Team())then
						menuDisplayFood = false
					end

					if v.customCheck and not v.customCheck(varLocalPlayer)then
						menuDisplayFood = false
					end

					if v.canSee and not v.canSee(varLocalPlayer)then
						menuDisplayFood = false
					end

					if menuDisplayFood then
						addNewHMenuModuleButton(v.name .. ' ' .. v.price .. '$', nil, function()
							RunConsoleCommand('darkrp', 'buyfood', v.name)
						end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
					end
				end

			end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
		end

	end)

	addNewHMenuModule('Scoreboard', configHMenu.language[configHMenu.language.settings]['Scoreboard'], function()

		for k, v in pairs(player.GetAll()) do
			addNewHMenuModuleButton(v:Name(), configHMenu.language[configHMenu.language.settings]['Job'] .. ': ' .. v:getDarkRPVar('job').. ' | ' .. configHMenu.language[configHMenu.language.settings]['Rank'] .. ': ' .. v:GetUserGroup().. ' | ' .. configHMenu.language[configHMenu.language.settings]['CopySteamID'], function()
					
				SetClipboardText(v:SteamID())
				chat.AddText(configHMenu.language[configHMenu.language.settings]['SuccessfullyCopied'] .. ' ' .. v:Name().. ' (' .. v:SteamID().. ')')

			end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
		end

	end)

	addNewHMenuModule('Character', configHMenu.language[configHMenu.language.settings]['Character'], function()

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['PlayerInfo'], configHMenu.language[configHMenu.language.settings]['Job'] .. ': ' .. varLocalPlayer:getDarkRPVar('job').. ' | ' .. configHMenu.language[configHMenu.language.settings]['Rank'] .. ': ' .. varLocalPlayer:GetUserGroup().. ' | ' .. configHMenu.language[configHMenu.language.settings]['Money'] .. ': ' .. varLocalPlayer:getDarkRPVar('money').. '$ | ' .. configHMenu.language[configHMenu.language.settings]['Health'] .. ': ' .. varLocalPlayer:Health().. ' | ' .. configHMenu.language[configHMenu.language.settings]['Armor'] .. ': ' .. varLocalPlayer:Armor().. ' | ' .. configHMenu.language[configHMenu.language.settings]['CopySteamID'], function()
				
			SetClipboardText(varLocalPlayer:SteamID())
			chat.AddText(configHMenu.language[configHMenu.language.settings]['SuccessfullyCopied'] .. ' ' .. varLocalPlayer:Name().. ' (' .. varLocalPlayer:SteamID().. ')')

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['Random Number'], nil, function()
			RunConsoleCommand('darkrp', 'roll', '100')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['Advert'], nil, function()
				
			Derma_StringRequest('', configHMenu.language[configHMenu.language.settings]['What do we advertise'], nil, function(s)
				RunConsoleCommand('say', '/advert ' .. s)
			end)

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['Give Money'], nil, function()

			Derma_StringRequest('', configHMenu.language[configHMenu.language.settings]['How much money'], nil, function(s)
				RunConsoleCommand('darkrp', 'give', s)
			end)

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['Drop Money'], nil, function()

			Derma_StringRequest('', configHMenu.language[configHMenu.language.settings]['How much money'], nil, function(s)
				RunConsoleCommand('darkrp', 'dropmoney', s)
			end)

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

	end)

	addNewHMenuModule('GPS', configHMenu.language[configHMenu.language.settings]['GPS'], function()

		for k, v in pairs(configHMenu.GPS.category) do
			if v.enabled then
				local menuGpsCategory = k

				addNewHMenuModuleSubCategory(k, function()
				
					for k, v in pairs(configHMenu.GPS.positions) do
						if v.enabled and v.category == menuGpsCategory then
							addNewHMenuModuleButton(k, nil, function()
								RunConsoleCommand(v.command)
							end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
						end
					end

				end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
			end
		end

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['Clear GPS'], nil, function()
			RunConsoleCommand('hmenu_cleargps')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

	end)

	addNewHMenuModule('Settings', configHMenu.language[configHMenu.language.settings]['Settings'], function()

		addNewHMenuModuleSubCategory(configHMenu.language[configHMenu.language.settings]['Music'], function()

			for k, v in pairs(configHMenu.music) do
				if v.enabled then
					addNewHMenuModuleButton(k, nil, function()
						sound.PlayURL(v.musicUrl, '', function() end)
					end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))
				end
			end

		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['Clear Sounds'], nil, function()
			RunConsoleCommand('stopsound')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['OnShadows'], nil, function()
			RunConsoleCommand('r_shadows', '1')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['OffShadows'], nil, function()
			RunConsoleCommand('r_shadows', '0')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['OnEyes'], nil, function()
			RunConsoleCommand('r_eyes', '1')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['OffEyes'], nil, function()
			RunConsoleCommand('r_eyes', '0')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['OnM9KGasEffect'], nil, function()
			RunConsoleCommand('M9K_GasEffect', '1')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['OffM9KGasEffect'], nil, function()
			RunConsoleCommand('M9K_GasEffect', '0')
		end, 'hmenu.fonts.standartFont', Color(255, 255, 255), Color(0, 0, 0, 0))

		addNewHMenuModuleButton(configHMenu.language[configHMenu.language.settings]['Disconnect'], nil, function()
			RunConsoleCommand('disconnect')
		end, 'hmenu.fonts.standartFont', Color(255, 76, 91), Color(0, 0, 0, 0))

	end)

	addNewHMenuModule('Ask a Question', configHMenu.language[configHMenu.language.settings]['Ask a Question'], function()

		Derma_StringRequest('', configHMenu.language[configHMenu.language.settings]['Write your question'], nil, function(s)
			RunConsoleCommand('say', configHMenu.modulesSettings['commandForQuestion'] .. ' ' .. s)
		end)

	end)

	addNewHMenuModule('Report', configHMenu.language[configHMenu.language.settings]['Report'], function()
		RunConsoleCommand('say', configHMenu.modulesSettings['commandForReport'])
	end)

	addNewHMenuModule('Close', configHMenu.language[configHMenu.language.settings]['Close'], function() end)

end

print('hmenu modules initialized')