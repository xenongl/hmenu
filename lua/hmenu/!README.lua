/*

$$$$$$$$\                                        $$\     $$\       $$\                        
$$  _____|                                       $$ |    $$ |      \__|                       
$$ |  $$\    $$\  $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$\   $$$$$$$\  $$\ $$$$$$$\   $$$$$$\     
$$$$$\\$$\  $$  |$$  __$$\ $$  __$$\ $$ |  $$ |\_$$  _|  $$  __$$\ $$ |$$  __$$\ $$  __$$\    
$$  __|\$$\$$  / $$$$$$$$ |$$ |  \__|$$ |  $$ |  $$ |    $$ |  $$ |$$ |$$ |  $$ |$$ /  $$ |   
$$ |    \$$$  /  $$   ____|$$ |      $$ |  $$ |  $$ |$$\ $$ |  $$ |$$ |$$ |  $$ |$$ |  $$ |   
$$$$$$$$\\$  /   \$$$$$$$\ $$ |      \$$$$$$$ |  \$$$$  |$$ |  $$ |$$ |$$ |  $$ |\$$$$$$$ |   
\________|\_/     \_______|\__|       \____$$ |   \____/ \__|  \__|\__|\__|  \__| \____$$ |   
                                     $$\   $$ |                                  $$\   $$ |   
                                     \$$$$$$  |                                  \$$$$$$  |   
                                      \______/                                    \______/    
$$\                 $$\                               $$\                                     
$$ |                $$ |                              \__|                                    
$$$$$$$\   $$$$$$\  $$ | $$$$$$\  $$\  $$\  $$\       $$\  $$$$$$$\        $$$$$$\            
$$  __$$\ $$  __$$\ $$ |$$  __$$\ $$ | $$ | $$ |      $$ |$$  _____|       \____$$\           
$$ |  $$ |$$$$$$$$ |$$ |$$ /  $$ |$$ | $$ | $$ |      $$ |\$$$$$$\         $$$$$$$ |          
$$ |  $$ |$$   ____|$$ |$$ |  $$ |$$ | $$ | $$ |      $$ | \____$$\       $$  __$$ |          
$$$$$$$  |\$$$$$$$\ $$ |\$$$$$$  |\$$$$$\$$$$  |      $$ |$$$$$$$  |      \$$$$$$$ |          
\_______/  \_______|\__| \______/  \_____\____/       \__|\_______/        \_______|          
                                                                                              
                                    $$\                                               $$\ $$\ 
                                    $$ |                                              $$ |$$ |
$$$$$$\$$$$\  $$\   $$\  $$$$$$$\ $$$$$$\          $$$$$$\   $$$$$$\   $$$$$$\   $$$$$$$ |$$ |
$$  _$$  _$$\ $$ |  $$ |$$  _____|\_$$  _|$$$$$$\ $$  __$$\ $$  __$$\  \____$$\ $$  __$$ |$$ |
$$ / $$ / $$ |$$ |  $$ |\$$$$$$\    $$ |  \______|$$ |  \__|$$$$$$$$ | $$$$$$$ |$$ /  $$ |\__|
$$ | $$ | $$ |$$ |  $$ | \____$$\   $$ |$$\       $$ |      $$   ____|$$  __$$ |$$ |  $$ |    
$$ | $$ | $$ |\$$$$$$  |$$$$$$$  |  \$$$$  |      $$ |      \$$$$$$$\ \$$$$$$$ |\$$$$$$$ |$$\ 
\__| \__| \__| \______/ \_______/    \____/       \__|       \_______| \_______| \_______|\__|
                                                                                              
*/

/*

==============================
       My advice to you
==============================

Please don’t touch what you don’t know and after that don’t come to me with questions like
“Did I delete this and everything’s broken, what’s the problem?”,
If you’re not a coder, I advise you to ask such a person to help you, accordingly,
if you trust him. But, if you decide to do everything yourself,
then we strongly recommend that you read the Question / Answer section and do everything as it is written there.

To customize everything to your taste, go to the appropriate file, and specifically hmenu/lua/hmenu/sh/sh_config_settings.lua
A description of all the settings is written there.

If you want to remove any of the standard modules, then please do it in the config above, do not be silly.

==============================
   Question / Answer Section
==============================

Q: I want to add my category. How can I do it?

A: Just go to file hmenu/lua/hmenu/sh/sh_config_modules.lua and find there the inscription "Polygon".
There you can practice adding modules(category)

Example:

addNewHMenuModule( "Write a name settings here", "Write a name here", function()

    -- Here write the function that is executed when pressed. If you do not know how to do this,
    -- then ask your technical administrator about it (I hope you have one)

end )

------------------------------------------------------------------------------------------------------------------------

Q: I did everything as an example, but the module does not work for me, or there is an error. What have I done wrong?

A: Most likely you did not add settings for your module. To do this, go to file hmenu/lua/hmenu/sh/sh_config_settings.lua
and find there the inscription "Modules Settings". Add the following row to the table.

Example:

configHMenu.modules = {

    ["Your module settings name"] = {

        textFont = "HMenuStandartFont", -- Here you can change the font. For you, it's best to choose a font from standard Windows fonts.
        colorBackground = Color( 0, 0, 0, 0 ), -- Here you can change the background of the button.
        colorText = Color( 255, 255, 255 ), -- Here you can change the color of the button text.
        isCategory = true, -- Set to true if the module is a category. Accordingly, if this is not a category - enter false.
        IsAdminOnly = false, -- Set to true if the module can only use SuperAdmin.
        enabled = true -- If you want the module to be enabled, write true. Accordingly, if you want to turn off, enter false.

    }, -- Do not forget about this comma!

}

------------------------------------------------------------------------------------------------------------------------

Q: I created a module and made it a category, how do I add buttons to it?

A: Everything is very simple! Return again to the file from the first question to the
place where you added the module and add the following lines where the function should be.

Example:

addNewHMenuModule( "Settings name here", "Name module here", function()

    -- Add the following lines to your module.

    addNewHMenuModuleButton( "Write a name here", "Write a description here, but if you want to create a button without a description, just write nil", function()

        -- Write a function here at the click of a button.
        -- I repeat, if you do not know how to do this, leave this business to those who can.

    end, "HMenuStandartFont", Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) ) -- The first setting is the desired font, the second is the text color, the third is the background color of the button.

end )

------------------------------------------------------------------------------------------------------------------------

Q: I want to add my own music / tune standard music. How can I do it?

A: We return to the sh_config_settings.lua file again and find there the inscription "Sounds Settings". Add the following row to the table.

Example:

configHMenu.music = {

    ["Write a name here"] = {

        musicUrl = "http://d.zaix.ru/h7kG.mp3", -- Insert a direct link to the music.
        enabled = true -- If you want the music to be enabled, write true. Accordingly, if you want to turn off, enter false.

    }, -- Do not forget about this comma!

}

------------------------------------------------------------------------------------------------------------------------

Q: I want to add my position for GPS. How can I do it?

A: And again, our favorite sh_config_settings.lua file. Find there the inscription "GPS Settings". Add the following row to the tables.

Example:

configHMenu.GPS.category = { -- Here you can add a category.

    ["Write a name category here"] = {

        enabled = true -- If you want the category to be enabled, write true. Accordingly, if you want to turn off, enter false.

    }, -- Do not forget about this comma!

}

configHMenu.GPS.positions = { -- Here you can add a GPS Position.

    ["Write a name here"] = {

        Command = "testcommand" -- Write a command to enter the console
        Category = "Main places", -- Here write the name of the category created earlier.
        Position = Vector(-2180.550781, -9207.457031, 67.031250), -- Write a position here.
        enabled = true -- If you want the GPS Position to be enabled, write true. Accordingly, if you want to turn off, enter false.

    }, -- Do not forget about this comma!

}

Attention! You may need to restart.

------------------------------------------------------------------------------------------------------------------------

Q: Where can I get a position for GPS?

A: Go into the game and go to the point where you want to set the position for GPS.
After that write to the console "getpos", you will have something like this:

setpos -2183.989746 -5813.827148 67.031250;setang 19.149813 83.334602 0.000000

You only need setpos, i.e. numbers -2183.989746 -5813.827148 67.031250
Now write in the field for the Vector position (write these numbers here). Get something like this: Vector( -2183.989746 -5813.827148 67.031250 )
It remains only to add commas between the numbers, thereby you get the position you need:

Vector( -2183.989746, -5813.827148, 67.031250 )

------------------------------------------------------------------------------------------------------------------------

Q: I want to add a subcategory. How can I do it?

A: Guess what file we are going to? Of course sh_config_modules.lua to the
place where you added the module and add the following lines where the function should be.

Example:

addNewHMenuModule( "Settings name here", "Name module here", function()

    -- Add the following lines to your module.

    addNewHMenuModuleSubCategory( "Write a name here", function()
    
        -- Write a function here at the click of a button. For example, other buttons.
        -- I repeat, if you do not know how to do this, leave this business to those who can.

    end, "HMenuStandartFont", Color( 255, 255, 255 ), Color( 0, 0, 0, 0 ) ) -- The first setting is the desired font, the second is the text color, the third is the background color of the button.

end )

==============================
        Additionally
==============================

I can’t write everything down here, so you can find out the rest either from me personally or from the comments in the code.

==============================
         My Support
==============================

If after reading this file you still have questions for me, you can write to me at the following contacts:

• Discord - Hank J. Wimbleton#7177
• Steam - https://steamcommunity.com/id/hankjwimbletons/

Good Luck!

*/