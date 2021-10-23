function openHMenu()
	
	local x, y = ScrW(), ScrH()

	surface.PlaySound('hmenu/open.wav')

	HMenuFrame = vgui.Create('DFrame')
	HMenuFrame:SetSize(x / 10, y / 3.25)
	HMenuFrame:SetPos(x + hmenuWide - 5, y / 2 - hmenuTall / 2)
	HMenuFrame:MakePopup()
	HMenuFrame:SetDraggable(false)
	HMenuFrame:ShowCloseButton(false)
	HMenuFrame:SetTitle('')

	HMenuFrame.Paint = function(self, w, h)
		draw.RoundedBox(0, 0, 0, w, h, ConfigHMenu.Colors['ColorBackground'])
	end

	local hmenuWide, hmenuTall = HMenuFrame:GetWide(), HMenuFrame:GetTall()

	HMenuFrame:MoveTo(x - hmenuWide - 5, y / 2 - hmenuTall / 2,  .2, 0, -1)

	HMenuPanel = vgui.Create('DPanel', HMenuFrame)
	HMenuPanel:SetSize(hmenuWide, hmenuTall / 4)
	HMenuPanel:SetPos(0, 0)

	HMenuPanel.Paint = function(self, w, h)
		draw.RoundedBox( 0, 0, 0, w, h, ConfigHMenu.Colors['ColorHeader'] )
	end

	HMenuImageMenu = vgui.Create('DImage', HMenuFrame)
	HMenuImageMenu:SetSize(hmenuWide, hmenuTall)
	HMenuImageMenu:SetPos(0, 0)
	HMenuImageMenu:SetImage('hmenu/hmenu_black.png')

	HMenuTextMenu = vgui.Create('DLabel', HMenuPanel)
	HMenuTextMenu:SetTextColor(Color(255, 255, 255))
	HMenuTextMenu:SetFont('hmnenu.fonts.bigFont')
	HMenuTextMenu:SetText(ConfigHMenu.Language[ConfigHMenu.Language.Settings]['Menu'])
	HMenuTextMenu:SizeToContents()
	HMenuTextMenu:SetPos(HMenuPanel:GetWide() / 2 - HMenuTextMenu:GetWide() / 2, HMenuPanel:GetTall() / 2 - HMenuTextMenu:GetTall() / 2)

	HMenuScrollButtons = vgui.Create('DScrollPanel', HMenuFrame)
	HMenuScrollButtons:SetSize(hmenuWide, hmenuTall - 115)
	HMenuScrollButtons:SetPos(0, hmenuTall - HMenuScrollButtons:GetTall() - 15)

	initializeHMenuModules()

end

concommand.Add('hmenu_cleargps', function()
	hook.Remove('HUDPaint', 'hmenu.gps')
end)