/*

$$\   $$\                     $$\                 
$$ |  $$ |                    $$ |                
$$ |  $$ | $$$$$$\   $$$$$$\  $$ |  $$\  $$$$$$$\ 
$$$$$$$$ |$$  __$$\ $$  __$$\ $$ | $$  |$$  _____|
$$  __$$ |$$ /  $$ |$$ /  $$ |$$$$$$  / \$$$$$$\  
$$ |  $$ |$$ |  $$ |$$ |  $$ |$$  _$$<   \____$$\ 
$$ |  $$ |\$$$$$$  |\$$$$$$  |$$ | \$$\ $$$$$$$  |
\__|  \__| \______/  \______/ \__|  \__|\_______/ 

*/

if CLIENT then

	hook.Add( "PlayerButtonUp", "KeyBindHMenu", function( ply, buttonId )

		if not IsFirstTimePredicted() then return end
		if ply ~= LocalPlayer() then return end
		if buttonId ~= ConfigHMenu.ButtonOpenMenu then return end
		if gui.IsGameUIVisible() then return end
		if ply:IsTyping() then return end

		OpenHMenu()

	end )

	timer.Simple( 15, function()

		for k, v in pairs( ConfigHMenu.GPS.Positions ) do

			concommand.Add( v.Command, function()

				hook.Add( "HUDPaint", "HMenuGPSHook", function()
				
					Position = ( v.Position + Vector(0, 0, 95) ):ToScreen() 

					DistanceOne = v.Position:Distance( LocalPlayer():GetPos() )
					DistanceTwo = math.Round( DistanceOne ).." m"

					draw.SimpleTextOutlined( k, "HMenuStandartFont", Position.x, Position.y + 50, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color( 49, 49, 49 ) )
					draw.SimpleTextOutlined( DistanceTwo, "HMenuStandartFont", Position.x, Position.y + 73, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color( 49, 49, 49 ) )

				end )

			end )
				
		end

	end )

end