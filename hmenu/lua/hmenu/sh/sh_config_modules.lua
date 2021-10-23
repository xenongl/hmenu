function initializeHMenuModules()

	function AddNewHMenuModule( settings_name, name, func_click )

		if ConfigHMenu.Modules[settings_name].Enabled then

			HMenuModuleButtonCategory = HMenuScrollButtons:Add( 'DButton' )
			HMenuModuleButtonCategory:SetText( name )
			HMenuModuleButtonCategory:SetTextColor( ConfigHMenu.Modules[settings_name].ColorText )
			HMenuModuleButtonCategory:SetFont( ConfigHMenu.Modules[settings_name].TextFont )
			HMenuModuleButtonCategory:Dock( TOP )
			HMenuModuleButtonCategory:DockMargin( 15, 0, 0, 5 )
			HMenuModuleButtonCategory:SetContentAlignment( 4 )

			if ConfigHMenu.Modules[settings_name].IsCategory then

				HMenuModuleButtonCategory.DoClick = function()

					HMenuFrame:MoveTo( ScrW() + HMenuFrame:GetWide() - 5, ScrH() / 2 - HMenuFrame:GetTall() / 2,  .2, 0, -1, function()
						
						surface.PlaySound( 'hmenu/open.wav' )

						HMenuFrame:Close()

						HMenuFrameCategory = vgui.Create( 'DFrame' )
						HMenuFrameCategory:SetSize( ScrW() / 10, ScrH() / 3.25 )
						HMenuFrameCategory:SetPos( ScrW() + HMenuFrameCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameCategory:GetTall() / 2 )
						HMenuFrameCategory:MakePopup()
						HMenuFrameCategory:SetDraggable( false )
						HMenuFrameCategory:ShowCloseButton( true )
						HMenuFrameCategory:SetTitle( '' )

						HMenuFrameCategory.Paint = function( self, w, h )

							draw.RoundedBox( 0, 0, 0, w, h, ConfigHMenu.Colors['ColorBackground'] )

						end

						HMenuFrameCategory:MoveTo( ScrW() - HMenuFrameCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameCategory:GetTall() / 2,  .2, 0, -1 )

						HMenuPanelCategory = vgui.Create( 'DPanel', HMenuFrameCategory )
						HMenuPanelCategory:SetSize( HMenuFrameCategory:GetWide(), HMenuFrameCategory:GetTall() / 4 )
						HMenuPanelCategory:SetPos( 0, 0 )

						HMenuPanelCategory.Paint = function( self, w, h )

							draw.RoundedBox( 0, 0, 0, w, h, ConfigHMenu.Colors['ColorHeader'] )

						end

						HMenuImageMenuCategory = vgui.Create( 'DImage', HMenuFrameCategory )
						HMenuImageMenuCategory:SetSize( HMenuFrameCategory:GetWide(), HMenuFrameCategory:GetTall() )
						HMenuImageMenuCategory:SetPos( 0, 0 )
						HMenuImageMenuCategory:SetImage( 'hmenu/hmenu_black.png' )

						HMenuTextMenuCategory = vgui.Create( 'DLabel', HMenuPanelCategory )
						HMenuTextMenuCategory:SetTextColor( Color( 255, 255, 255 ) )
						HMenuTextMenuCategory:SetFont( 'hmnenu.fonts.bigFont' )
						HMenuTextMenuCategory:SetText( name )
						HMenuTextMenuCategory:SizeToContents()
						HMenuTextMenuCategory:SetPos( HMenuPanelCategory:GetWide() / 2 - HMenuTextMenuCategory:GetWide() / 2, HMenuPanelCategory:GetTall() / 2 - HMenuTextMenuCategory:GetTall() / 2 )

						HMenuScrollButtonsCategory = vgui.Create( 'DScrollPanel', HMenuFrameCategory )
						HMenuScrollButtonsCategory:SetSize( HMenuFrameCategory:GetWide(), HMenuFrameCategory:GetTall() - 115 )
						HMenuScrollButtonsCategory:SetPos( 0, HMenuFrameCategory:GetTall() - HMenuScrollButtonsCategory:GetTall() - 15 )

						timer.Simple( .1, func_click )

						timer.Simple( .105, function()

							HMenuModuleButtonCategory = HMenuScrollButtonsCategory:Add( 'DButton' )
							HMenuModuleButtonCategory:SetText( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Close'] )
							HMenuModuleButtonCategory:SetTextColor( Color( 255, 76, 91 ) )
							HMenuModuleButtonCategory:SetFont( 'hmenu.fonts.standartFont' )
							HMenuModuleButtonCategory:Dock( TOP )
							HMenuModuleButtonCategory:DockMargin( 15, 0, 0, 5 )
							HMenuModuleButtonCategory:SetContentAlignment( 4 )
							HMenuModuleButtonCategory.DoClick = function()

								HMenuFrameCategory:MoveTo( ScrW() + HMenuFrameCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameCategory:GetTall() / 2,  .2, 0, -1, function()
				
									surface.PlaySound( 'hmenu/open.wav' )

									HMenuFrameCategory:Close()

								end )

							end
							
							HMenuModuleButtonCategory.Paint = function( self, w, h )

								draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )

							end

						end )

					end )
					
				end

			else
			
				HMenuModuleButtonCategory.DoClick = function()
				
					HMenuFrame:MoveTo( ScrW() + HMenuFrame:GetWide() - 5, ScrH() / 2 - HMenuFrame:GetTall() / 2,  .2, 0, -1, function()
								
						surface.PlaySound( 'hmenu/open.wav' )

						HMenuFrame:Close()

						timer.Simple( .1, func_click )

					end )

				end

			end
			
			HMenuModuleButtonCategory.Paint = function( self, w, h )

				draw.RoundedBox( 0, 0, 0, w, h, ConfigHMenu.Modules[settings_name].ColorBackground )

			end

		end

	end

	function AddNewHMenuModuleSubCategory( name, func_click, font, color_text, color_background )

		HMenuModuleButtonSubCategory = HMenuScrollButtonsCategory:Add( 'DButton' )
		HMenuModuleButtonSubCategory:SetText( name )
		HMenuModuleButtonSubCategory:SetTextColor( color_text )
		HMenuModuleButtonSubCategory:SetFont( font )
		HMenuModuleButtonSubCategory:Dock( TOP )
		HMenuModuleButtonSubCategory:DockMargin( 15, 0, 0, 5 )
		HMenuModuleButtonSubCategory:SetContentAlignment( 4 )

		HMenuModuleButtonSubCategory.DoClick = function()

			HMenuFrameCategory:MoveTo( ScrW() + HMenuFrameCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameCategory:GetTall() / 2,  .2, 0, -1, function()
				
				surface.PlaySound( 'hmenu/open.wav' )

				HMenuFrameCategory:Close()

				HMenuFrameSubCategory = vgui.Create( 'DFrame' )
				HMenuFrameSubCategory:SetSize( ScrW() / 10, ScrH() / 3.25 )
				HMenuFrameSubCategory:SetPos( ScrW() + HMenuFrameSubCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameSubCategory:GetTall() / 2 )
				HMenuFrameSubCategory:MakePopup()
				HMenuFrameSubCategory:SetDraggable( false )
				HMenuFrameSubCategory:ShowCloseButton( true )
				HMenuFrameSubCategory:SetTitle( '' )

				HMenuFrameSubCategory.Paint = function( self, w, h )

					draw.RoundedBox( 0, 0, 0, w, h, ConfigHMenu.Colors['ColorBackground'] )

				end

				HMenuFrameSubCategory:MoveTo( ScrW() - HMenuFrameSubCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameSubCategory:GetTall() / 2,  .2, 0, -1 )

				HMenuPanelSubCategory = vgui.Create( 'DPanel', HMenuFrameSubCategory )
				HMenuPanelSubCategory:SetSize( HMenuFrameSubCategory:GetWide(), HMenuFrameSubCategory:GetTall() / 4 )
				HMenuPanelSubCategory:SetPos( 0, 0 )

				HMenuPanelSubCategory.Paint = function( self, w, h )

					draw.RoundedBox( 0, 0, 0, w, h, ConfigHMenu.Colors['ColorHeader'] )

				end

				HMenuImageMenuSubCategory = vgui.Create( 'DImage', HMenuFrameSubCategory )
				HMenuImageMenuSubCategory:SetSize( HMenuFrameSubCategory:GetWide(), HMenuFrameSubCategory:GetTall() )
				HMenuImageMenuSubCategory:SetPos( 0, 0 )
				HMenuImageMenuSubCategory:SetImage( 'hmenu/hmenu_black.png' )

				HMenuTextMenuSubCategory = vgui.Create( 'DLabel', HMenuPanelSubCategory )
				HMenuTextMenuSubCategory:SetTextColor( Color( 255, 255, 255 ) )
				HMenuTextMenuSubCategory:SetFont( 'hmnenu.fonts.bigFont' )
				HMenuTextMenuSubCategory:SetText( name )
				HMenuTextMenuSubCategory:SizeToContents()
				HMenuTextMenuSubCategory:SetPos( HMenuPanelSubCategory:GetWide() / 2 - HMenuTextMenuSubCategory:GetWide() / 2, HMenuPanelSubCategory:GetTall() / 2 - HMenuTextMenuSubCategory:GetTall() / 2 )

				HMenuScrollButtonsSubCategory = vgui.Create( 'DScrollPanel', HMenuFrameSubCategory )
				HMenuScrollButtonsSubCategory:SetSize( HMenuFrameSubCategory:GetWide(), HMenuFrameSubCategory:GetTall() - 115 )
				HMenuScrollButtonsSubCategory:SetPos( 0, HMenuFrameSubCategory:GetTall() - HMenuScrollButtonsSubCategory:GetTall() - 15 )

				timer.Simple( .1, func_click )

				timer.Simple( .105, function()

					HMenuModuleButtonSubCategory = HMenuScrollButtonsSubCategory:Add( 'DButton' )
					HMenuModuleButtonSubCategory:SetText( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Close'] )
					HMenuModuleButtonSubCategory:SetTextColor( Color( 255, 76, 91 ) )
					HMenuModuleButtonSubCategory:SetFont( 'hmenu.fonts.standartFont' )
					HMenuModuleButtonSubCategory:Dock( TOP )
					HMenuModuleButtonSubCategory:DockMargin( 15, 0, 0, 5 )
					HMenuModuleButtonSubCategory:SetContentAlignment( 4 )
					HMenuModuleButtonSubCategory.DoClick = function()

						HMenuFrameSubCategory:MoveTo( ScrW() + HMenuFrameSubCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameSubCategory:GetTall() / 2,  .2, 0, -1, function()
		
							surface.PlaySound( 'hmenu/open.wav' )

							HMenuFrameSubCategory:Close()

						end )

					end
					
					HMenuModuleButtonSubCategory.Paint = function( self, w, h )

						draw.RoundedBox( 0, 0, 0, w, h, color_background )

					end

				end )

			end )
			
		end
		
		HMenuModuleButtonSubCategory.Paint = function( self, w, h )

			draw.RoundedBox( 0, 0, 0, w, h, color_background )

		end

	end

	function AddNewHMenuModuleButton( name, desc, func_click, font, color_text, color_background )

		if IsValid( HMenuScrollButtonsCategory ) then

			HMenuModuleButtonCategory = HMenuScrollButtonsCategory:Add( 'DButton' )
			HMenuModuleButtonCategory:SetText( name )
			HMenuModuleButtonCategory:SetTextColor( color_text )
			HMenuModuleButtonCategory:SetFont( font )
			HMenuModuleButtonCategory:Dock( TOP )
			HMenuModuleButtonCategory:DockMargin( 15, 0, 0, 5 )
			HMenuModuleButtonCategory:SetContentAlignment( 4 )
			HMenuModuleButtonCategory.DoClick = function()

				HMenuFrameCategory:MoveTo( ScrW() + HMenuFrameCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameCategory:GetTall() / 2,  .2, 0, -1, function()
							
					surface.PlaySound( 'hmenu/open.wav' )

					HMenuFrameCategory:Close()

					timer.Simple( .1, func_click )

				end )

			end

			if desc then

				HMenuModuleButtonCategory:SetToolTip( desc )

			end

			HMenuModuleButtonCategory.Paint = function( self, w, h )

				draw.RoundedBox( 0, 0, 0, w, h, color_background )

			end

		elseif IsValid( HMenuScrollButtonsSubCategory ) then

			HMenuModuleButtonSubCategory = HMenuScrollButtonsSubCategory:Add( 'DButton' )
			HMenuModuleButtonSubCategory:SetText( name )
			HMenuModuleButtonSubCategory:SetTextColor( color_text )
			HMenuModuleButtonSubCategory:SetFont( font )
			HMenuModuleButtonSubCategory:Dock( TOP )
			HMenuModuleButtonSubCategory:DockMargin( 15, 0, 0, 5 )
			HMenuModuleButtonSubCategory:SetContentAlignment( 4 )
			HMenuModuleButtonSubCategory.DoClick = function()
			
			HMenuFrameSubCategory:MoveTo( ScrW() + HMenuFrameSubCategory:GetWide() - 5, ScrH() / 2 - HMenuFrameSubCategory:GetTall() / 2,  .2, 0, -1, function()
						
				surface.PlaySound( 'hmenu/open.wav' )

				HMenuFrameSubCategory:Close()

				timer.Simple( .1, func_click )

			end )

			end

			if desc then

				HMenuModuleButtonSubCategory:SetToolTip( desc )

			end

			HMenuModuleButtonSubCategory.Paint = function( self, w, h )

				draw.RoundedBox( 0, 0, 0, w, h, color_background )

			end

		end

	end

/*

$$$$$$$\            $$\                                         
$$  __$$\           $$ |                                        
$$ |  $$ | $$$$$$\  $$ |$$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$\  
$$$$$$$  |$$  __$$\ $$ |$$ |  $$ |$$  __$$\ $$  __$$\ $$  __$$\ 
$$  ____/ $$ /  $$ |$$ |$$ |  $$ |$$ /  $$ |$$ /  $$ |$$ |  $$ |
$$ |      $$ |  $$ |$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |
$$ |      \$$$$$$  |$$ |\$$$$$$$ |\$$$$$$$ |\$$$$$$  |$$ |  $$ |
\__|       \______/ \__| \____$$ | \____$$ | \______/ \__|  \__|
                        $$\   $$ |$$\   $$ |                    
                        \$$$$$$  |\$$$$$$  |                    
                         \______/  \______/                     

If you want to try adding your own module :P

*/

/*=======================================================================*/
/*=======================================================================*/



/*=======================================================================*/
/*=======================================================================*/

/*

 $$$$$$\    $$\                               $$\                      $$\           $$\      $$\                 $$\           $$\                     
$$  __$$\   $$ |                              $$ |                     $$ |          $$$\    $$$ |                $$ |          $$ |                    
$$ /  \__|$$$$$$\    $$$$$$\  $$$$$$$\   $$$$$$$ | $$$$$$\   $$$$$$\ $$$$$$\         $$$$\  $$$$ | $$$$$$\   $$$$$$$ |$$\   $$\ $$ | $$$$$$\   $$$$$$$\ 
\$$$$$$\  \_$$  _|   \____$$\ $$  __$$\ $$  __$$ | \____$$\ $$  __$$\\_$$  _|        $$\$$\$$ $$ |$$  __$$\ $$  __$$ |$$ |  $$ |$$ |$$  __$$\ $$  _____|
 \____$$\   $$ |     $$$$$$$ |$$ |  $$ |$$ /  $$ | $$$$$$$ |$$ |  \__| $$ |          $$ \$$$  $$ |$$ /  $$ |$$ /  $$ |$$ |  $$ |$$ |$$$$$$$$ |\$$$$$$\  
$$\   $$ |  $$ |$$\ $$  __$$ |$$ |  $$ |$$ |  $$ |$$  __$$ |$$ |       $$ |$$\       $$ |\$  /$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |$$   ____| \____$$\ 
\$$$$$$  |  \$$$$  |\$$$$$$$ |$$ |  $$ |\$$$$$$$ |\$$$$$$$ |$$ |       \$$$$  |      $$ | \_/ $$ |\$$$$$$  |\$$$$$$$ |\$$$$$$  |$$ |\$$$$$$$\ $$$$$$$  |
 \______/    \____/  \_______|\__|  \__| \_______| \_______|\__|        \____/       \__|     \__| \______/  \_______| \______/ \__| \_______|\_______/                                                                                                     
                                                                                                                                                                                                                                                                                               
*/

	AddNewHMenuModule( 'F4 Menu', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['F4 Menu'], function()

		AddNewHMenuModuleSubCategory( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Contacts'], function()
		
			for k, v in pairs( ConfigHMenu.F4Menu.Sites ) do

				if v.Enabled then

					AddNewHMenuModuleButton( k, nil, function()
							
						gui.OpenURL( v.SiteUrl )

					end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

				end

			end

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleSubCategory( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Jobs'], function()

			for k, v in pairs( RPExtraTeams ) do
			
				AddNewHMenuModuleButton( v.name, v.description, function()
						
					RunConsoleCommand( 'say', '/' .. v.command )

				end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

			end

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleSubCategory( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Entities'], function()

			for k, v in pairs( DarkRPEntities ) do

				HMenuDisplayEntity = true

				if istable( v.allowed ) and not table.HasValue( v.allowed, LocalPlayer():Team() ) then

					HMenuDisplayEntity = false

				end

				if v.customCheck and not v.customCheck( LocalPlayer() ) then

					HMenuDisplayEntity = false

				end

				if v.canSee and not v.canSee( LocalPlayer() ) then

					HMenuDisplayEntity = false

				end

				if HMenuDisplayEntity then

					AddNewHMenuModuleButton( v.name .. ' ' .. v.price .. '$', nil, function()

						RunConsoleCommand('darkrp', v.cmd )

					end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

				end

			end

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleSubCategory( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Ammo'], function()

			for k, v in pairs( GAMEMODE.AmmoTypes ) do
			
				HMenuDisplayAmmo = true

				if istable( v.allowed ) and not table.HasValue( v.allowed, LocalPlayer():Team() ) then

					HMenuDisplayAmmo = false

				end

				if v.customCheck and not v.customCheck( LocalPlayer() ) then

					HMenuDisplayAmmo = false

				end

				if v.canSee and not v.canSee( LocalPlayer() ) then

					HMenuDisplayAmmo = false

				end

				if HMenuDisplayAmmo then

					AddNewHMenuModuleButton( v.name .. ' ' .. v.price .. '$', nil, function()
							
						RunConsoleCommand( 'darkrp', 'buyammo', v.ammoType )

					end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

				end

			end

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleSubCategory( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Weapons'], function()

			for k, v in pairs( CustomShipments ) do
			
				HMenuDisplayWeapons = true

				if istable( v.allowed ) and not table.HasValue( v.allowed, LocalPlayer():Team() ) then

					HMenuDisplayWeapons = false

				end

				if v.customCheck and not v.customCheck( LocalPlayer() ) then

					HMenuDisplayWeapons = false

				end

				if v.canSee and not v.canSee( LocalPlayer() ) then

					HMenuDisplayWeapons = false

				end

				if HMenuDisplayWeapons then

					AddNewHMenuModuleButton( v.name .. ' ' .. v.price .. '$', nil, function()
							
						RunConsoleCommand( 'darkrp', 'buy', v.name )

					end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

				end

			end

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleSubCategory( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Shipments'], function()

			for k, v in pairs( CustomShipments ) do
			
				HMenuDisplayShipments = true

				if istable( v.allowed ) and not table.HasValue( v.allowed, LocalPlayer():Team() ) then

					HMenuDisplayShipments = false

				end

				if v.customCheck and not v.customCheck( LocalPlayer() ) then

					HMenuDisplayShipments = false

				end

				if v.canSee and not v.canSee( LocalPlayer() ) then

					HMenuDisplayShipments = false

				end

				if HMenuDisplayShipments then

					AddNewHMenuModuleButton( v.name .. ' ' .. v.price .. '$', nil, function()
							
						RunConsoleCommand( 'darkrp', 'buyshipment', v.name )

					end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

				end

			end

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		if ConfigHMenu.ModulesSettings['EnableFood'] then

			AddNewHMenuModuleSubCategory( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Food'], function()

				for k, v in pairs( FoodItems ) do
				
					HMenuDisplayFood = true

					if istable( v.allowed ) and not table.HasValue( v.allowed, LocalPlayer():Team() ) then

						HMenuDisplayFood = false

					end

					if v.customCheck and not v.customCheck( LocalPlayer() ) then

						HMenuDisplayFood = false

					end

					if v.canSee and not v.canSee( LocalPlayer() ) then

						HMenuDisplayFood = false

					end

					if HMenuDisplayFood then

						AddNewHMenuModuleButton( v.name .. ' ' .. v.price .. '$', nil, function()
								
							RunConsoleCommand( 'darkrp', 'buyfood', v.name )

						end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

					end

				end

			end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		end

	end )

	AddNewHMenuModule( 'Scoreboard', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Scoreboard'], function()

		for k, v in pairs( player.GetAll() ) do
		
			AddNewHMenuModuleButton( v:Name(), ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Job'] .. ': ' .. v:getDarkRPVar( 'job' ) .. ' | ' .. ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Rank'] .. ': ' .. v:GetUserGroup() .. ' | ' .. ConfigHMenu.Language[ConfigHMenu.Language.Settings]['CopySteamID'], function()
					
				SetClipboardText( v:SteamID() )
				chat.AddText( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['SuccessfullyCopied'] .. ' ' .. v:Name() .. ' ( ' .. v:SteamID() .. ' )' )

			end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		end

	end )

	AddNewHMenuModule( 'Character', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Character'], function()

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['PlayerInfo'], ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Job'] .. ': ' .. LocalPlayer():getDarkRPVar( 'job' ) .. ' | ' .. ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Rank'] .. ': ' .. LocalPlayer():GetUserGroup() .. ' | ' .. ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Money'] .. ': ' .. LocalPlayer():getDarkRPVar( 'money' ) .. '$ | ' .. ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Health'] .. ': ' .. LocalPlayer():Health() .. ' | ' .. ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Armor'] .. ': ' .. LocalPlayer():Armor() .. ' | ' .. ConfigHMenu.Language[ConfigHMenu.Language.Settings]['CopySteamID'], function()
				
			SetClipboardText( LocalPlayer():SteamID() )
			chat.AddText( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['SuccessfullyCopied'] .. ' ' .. LocalPlayer():Name() .. ' ( ' .. LocalPlayer():SteamID() .. ' )' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Random Number'], nil, function()
				
			RunConsoleCommand( 'darkrp', 'roll', '100' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Advert'], nil, function()
				
			Derma_StringRequest( '', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['What do we advertise'], nil, function( s )

				RunConsoleCommand( 'say', '/advert ' .. s )

			end )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Give Money'], nil, function()
				
			Derma_StringRequest( '', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['How much money'], nil, function( s )

				RunConsoleCommand( 'darkrp', 'give', s )

			end )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Drop Money'], nil, function()
				
			Derma_StringRequest( '', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['How much money'], nil, function( s )

				RunConsoleCommand( 'darkrp', 'dropmoney', s )

			end )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

	end )

	AddNewHMenuModule( 'GPS', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['GPS'], function()

		for k, v in pairs( ConfigHMenu.GPS.Category ) do
			
			if v.Enabled then

				local HMenuGPSCategory = k

				AddNewHMenuModuleSubCategory( k, function()
				
					for k, v in pairs( ConfigHMenu.GPS.Positions ) do

						if v.Enabled and v.Category == HMenuGPSCategory then

							AddNewHMenuModuleButton( k, nil, function()
									
								RunConsoleCommand( v.Command )

							end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

						end

					end

				end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

			end

		end

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Clear GPS'], nil, function()

			RunConsoleCommand( 'hmenu_cleargps' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

	end )

	AddNewHMenuModule( 'Settings', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Settings'], function()

		AddNewHMenuModuleSubCategory( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Music'], function()

			for k, v in pairs( ConfigHMenu.Music ) do

				if v.Enabled then

					AddNewHMenuModuleButton( k, nil, function()

						sound.PlayURL( v.MusicUrl, '', function() end )

					end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

				end

			end

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Clear Sounds'], nil, function()

			RunConsoleCommand( 'stopsound' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['OnShadows'], nil, function()

			RunConsoleCommand( 'r_shadows', '1' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['OffShadows'], nil, function()

			RunConsoleCommand( 'r_shadows', '0' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['OnEyes'], nil, function()

			RunConsoleCommand( 'r_eyes', '1' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['OffEyes'], nil, function()

			RunConsoleCommand( 'r_eyes', '0' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['OnM9KGasEffect'], nil, function()

			RunConsoleCommand( 'M9K_GasEffect', '1' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['OffM9KGasEffect'], nil, function()

			RunConsoleCommand( 'M9K_GasEffect', '0' )

		end, 'hmenu.fonts.standartFont', Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) )

		AddNewHMenuModuleButton( ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Disconnect'], nil, function()

			RunConsoleCommand( 'disconnect' )

		end, 'hmenu.fonts.standartFont', Color( 255, 76, 91 ), Color( 0, 0, 0, 0 ) )

	end )

	AddNewHMenuModule( 'Ask a Question', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Ask a Question'], function()

		Derma_StringRequest( '', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Write your question'], nil, function( s )

			RunConsoleCommand( 'say', ConfigHMenu.ModulesSettings['CommandForQuestion'] .. ' ' .. s )

		end )

	end )

	AddNewHMenuModule( 'Report', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Report'], function()
	
		RunConsoleCommand( 'say', ConfigHMenu.ModulesSettings['CommandForReport'] )

	end )

	AddNewHMenuModule( 'Close', ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Close'], function() end )

end