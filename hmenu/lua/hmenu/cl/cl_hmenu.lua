/*

 $$$$$$\    $$\                          $$\           $$\      $$\                               
$$  __$$\   $$ |                         $$ |          $$$\    $$$ |                              
$$ /  \__|$$$$$$\    $$$$$$\   $$$$$$\ $$$$$$\         $$$$\  $$$$ | $$$$$$\  $$$$$$$\  $$\   $$\ 
\$$$$$$\  \_$$  _|   \____$$\ $$  __$$\\_$$  _|        $$\$$\$$ $$ |$$  __$$\ $$  __$$\ $$ |  $$ |
 \____$$\   $$ |     $$$$$$$ |$$ |  \__| $$ |          $$ \$$$  $$ |$$$$$$$$ |$$ |  $$ |$$ |  $$ |
$$\   $$ |  $$ |$$\ $$  __$$ |$$ |       $$ |$$\       $$ |\$  /$$ |$$   ____|$$ |  $$ |$$ |  $$ |
\$$$$$$  |  \$$$$  |\$$$$$$$ |$$ |       \$$$$  |      $$ | \_/ $$ |\$$$$$$$\ $$ |  $$ |\$$$$$$  |
 \______/    \____/  \_______|\__|        \____/       \__|     \__| \_______|\__|  \__| \______/ 
                                                                                                                                                                                                                                                                                                
*/

function OpenHMenu()
	
	surface.PlaySound( "hmenu/open.wav" )

	HMenuFrame = vgui.Create( "DFrame" )
	HMenuFrame:SetSize( ScrW() / 10, ScrH() / 3.25 )
	HMenuFrame:SetPos( ScrW() + HMenuFrame:GetWide() - 5, ScrH() / 2 - HMenuFrame:GetTall() / 2 )
	HMenuFrame:MakePopup()
	HMenuFrame:SetDraggable( false )
	HMenuFrame:ShowCloseButton( false )
	HMenuFrame:SetTitle( "" )

	HMenuFrame.Paint = function( self, w, h )

		draw.RoundedBox( 0, 0, 0, w, h, ConfigHMenu.Colors["ColorBackground"] )

	end

	HMenuFrame:MoveTo( ScrW() - HMenuFrame:GetWide() - 5, ScrH() / 2 - HMenuFrame:GetTall() / 2,  .2, 0, -1 )

	HMenuPanel = vgui.Create( "DPanel", HMenuFrame )
	HMenuPanel:SetSize( HMenuFrame:GetWide(), HMenuFrame:GetTall() / 4 )
	HMenuPanel:SetPos( 0, 0 )

	HMenuPanel.Paint = function( self, w, h )

		draw.RoundedBox( 0, 0, 0, w, h, ConfigHMenu.Colors["ColorHeader"] )

	end

	HMenuImageMenu = vgui.Create( "DImage", HMenuFrame )
	HMenuImageMenu:SetSize( HMenuFrame:GetWide(), HMenuFrame:GetTall() )
	HMenuImageMenu:SetPos( 0, 0 )
	HMenuImageMenu:SetImage( "hmenu/hmenu_black.png" )

	HMenuTextMenu = vgui.Create( "DLabel", HMenuPanel )
	HMenuTextMenu:SetTextColor( Color( 255, 255, 255 ) )
	HMenuTextMenu:SetFont( "HMenuBigFont" )
	HMenuTextMenu:SetText( ConfigHMenu.Language[ConfigHMenu.Language.Settings]["Menu"] )
	HMenuTextMenu:SizeToContents()
	HMenuTextMenu:SetPos( HMenuPanel:GetWide() / 2 - HMenuTextMenu:GetWide() / 2, HMenuPanel:GetTall() / 2 - HMenuTextMenu:GetTall() / 2 )

	HMenuScrollButtons = vgui.Create( "DScrollPanel", HMenuFrame )
	HMenuScrollButtons:SetSize( HMenuFrame:GetWide(), HMenuFrame:GetTall() - 115 )
	HMenuScrollButtons:SetPos( 0, HMenuFrame:GetTall() - HMenuScrollButtons:GetTall() - 15 )

	InitializeHMenuModules()

end

concommand.Add( "hmenu_cleargps", function()

	hook.Remove( "HUDPaint", "HMenuGPSHook" )

end )