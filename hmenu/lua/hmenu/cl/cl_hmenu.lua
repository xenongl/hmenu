function openHMenu()
	
	local x, y = ScrW(), ScrH()

	surface.PlaySound('hmenu/open.wav')

	menuFrame = vgui.Create('DFrame')
	menuFrame:SetSize(x / 10, y / 3.25)
	menuFrame:SetPos(x + menuFrame:GetWide() - 5, y / 2 - menuFrame:GetTall() / 2)
	menuFrame:MakePopup()
	menuFrame:SetDraggable(false)
	menuFrame:ShowCloseButton(false)
	menuFrame:SetTitle('')

	menuFrame.Paint = function(self, w, h)
		draw.RoundedBox(0, 0, 0, w, h, configHMenu.colors['colorBackground'])
	end

	local hmenuWide, hmenuTall = menuFrame:GetWide(), menuFrame:GetTall()

	menuFrame:MoveTo(x - hmenuWide - 5, y / 2 - hmenuTall / 2,  .2, 0, -1)

	menuPanel = vgui.Create('DPanel', menuFrame)
	menuPanel:SetSize(hmenuWide, hmenuTall / 4)
	menuPanel:SetPos(0, 0)

	menuPanel.Paint = function(self, w, h)
		draw.RoundedBox( 0, 0, 0, w, h, configHMenu.colors['colorHeader'] )
	end

	menuImage = vgui.Create('DImage', menuFrame)
	menuImage:SetSize(hmenuWide, hmenuTall)
	menuImage:SetPos(0, 0)
	menuImage:SetImage('hmenu/hmenu_black.png')

	menuText = vgui.Create('DLabel', menuPanel)
	menuText:SetTextColor(Color(255, 255, 255))
	menuText:SetFont('hmenu.fonts.bigFont')
	menuText:SetText(configHMenu.language[configHMenu.language.settings]['Menu'])
	menuText:SizeToContents()
	menuText:SetPos(menuPanel:GetWide() / 2 - menuText:GetWide() / 2, menuPanel:GetTall() / 2 - menuText:GetTall() / 2)

	menuScrollButtons = vgui.Create('DScrollPanel', menuFrame)
	menuScrollButtons:SetSize(hmenuWide, hmenuTall - 115)
	menuScrollButtons:SetPos(0, hmenuTall - menuScrollButtons:GetTall() - 15)

	initializeHMenuModules()

end

concommand.Add('hmenu_cleargps', function()
	hook.Remove('HUDPaint', 'hmenu.gps')
end)

print('hmenu main initialized')