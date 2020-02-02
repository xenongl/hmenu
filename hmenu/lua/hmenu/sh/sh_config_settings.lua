/*

 $$$$$$\                       $$$$$$\  $$\           
$$  __$$\                     $$  __$$\ \__|          
$$ /  \__| $$$$$$\  $$$$$$$\  $$ /  \__|$$\  $$$$$$\  
$$ |      $$  __$$\ $$  __$$\ $$$$\     $$ |$$  __$$\ 
$$ |      $$ /  $$ |$$ |  $$ |$$  _|    $$ |$$ /  $$ |
$$ |  $$\ $$ |  $$ |$$ |  $$ |$$ |      $$ |$$ |  $$ |
\$$$$$$  |\$$$$$$  |$$ |  $$ |$$ |      $$ |\$$$$$$$ |
 \______/  \______/ \__|  \__|\__|      \__| \____$$ |
                                            $$\   $$ |
                                            \$$$$$$  |
                                             \______/ 

*/

ConfigHMenu = ConfigHMenu or {} -- Do not touch it.

/*

Here you can change the button on which the menu will open.
You can see the possible buttons here: https://wiki.facepunch.com/gmod/Enums/KEY

*/

ConfigHMenu.ButtonOpenMenu = KEY_T

/*

 $$$$$$\            $$\                                      $$$$$$\             $$\     $$\     $$\                               
$$  __$$\           $$ |                                    $$  __$$\            $$ |    $$ |    \__|                              
$$ /  \__| $$$$$$\  $$ | $$$$$$\   $$$$$$\   $$$$$$$\       $$ /  \__| $$$$$$\ $$$$$$\ $$$$$$\   $$\ $$$$$$$\   $$$$$$\   $$$$$$$\ 
$$ |      $$  __$$\ $$ |$$  __$$\ $$  __$$\ $$  _____|      \$$$$$$\  $$  __$$\\_$$  _|\_$$  _|  $$ |$$  __$$\ $$  __$$\ $$  _____|
$$ |      $$ /  $$ |$$ |$$ /  $$ |$$ |  \__|\$$$$$$\         \____$$\ $$$$$$$$ | $$ |    $$ |    $$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  
$$ |  $$\ $$ |  $$ |$$ |$$ |  $$ |$$ |       \____$$\       $$\   $$ |$$   ____| $$ |$$\ $$ |$$\ $$ |$$ |  $$ |$$ |  $$ | \____$$\ 
\$$$$$$  |\$$$$$$  |$$ |\$$$$$$  |$$ |      $$$$$$$  |      \$$$$$$  |\$$$$$$$\  \$$$$  |\$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
 \______/  \______/ \__| \______/ \__|      \_______/        \______/  \_______|  \____/  \____/ \__|\__|  \__| \____$$ |\_______/ 
                                                                                                               $$\   $$ |          
                                                                                                               \$$$$$$  |          
                                                                                                                \______/           

*/

ConfigHMenu.Colors = {

    ["ColorHeader"] = Color( 65, 105, 225 ), -- Color of Menu Header ( https://imgur.com/a/ULY1Rln )
    ["ColorBackground"] = Color( 0, 0, 0, 100 ) -- Color of Menu Background ( https://imgur.com/a/MWlvuEH )

}

/*

$$\      $$\                 $$\           $$\                            $$$$$$\             $$\     $$\     $$\                               
$$$\    $$$ |                $$ |          $$ |                          $$  __$$\            $$ |    $$ |    \__|                              
$$$$\  $$$$ | $$$$$$\   $$$$$$$ |$$\   $$\ $$ | $$$$$$\   $$$$$$$\       $$ /  \__| $$$$$$\ $$$$$$\ $$$$$$\   $$\ $$$$$$$\   $$$$$$\   $$$$$$$\ 
$$\$$\$$ $$ |$$  __$$\ $$  __$$ |$$ |  $$ |$$ |$$  __$$\ $$  _____|      \$$$$$$\  $$  __$$\\_$$  _|\_$$  _|  $$ |$$  __$$\ $$  __$$\ $$  _____|
$$ \$$$  $$ |$$ /  $$ |$$ /  $$ |$$ |  $$ |$$ |$$$$$$$$ |\$$$$$$\         \____$$\ $$$$$$$$ | $$ |    $$ |    $$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  
$$ |\$  /$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |$$   ____| \____$$\       $$\   $$ |$$   ____| $$ |$$\ $$ |$$\ $$ |$$ |  $$ |$$ |  $$ | \____$$\ 
$$ | \_/ $$ |\$$$$$$  |\$$$$$$$ |\$$$$$$  |$$ |\$$$$$$$\ $$$$$$$  |      \$$$$$$  |\$$$$$$$\  \$$$$  |\$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
\__|     \__| \______/  \_______| \______/ \__| \_______|\_______/        \______/  \_______|  \____/  \____/ \__|\__|  \__| \____$$ |\_______/ 
                                                                                                                            $$\   $$ |          
                                                                                                                            \$$$$$$  |          
                                                                                                                             \______/                                                                                                         

*/

ConfigHMenu.Modules = {

    ["F4 Menu"] = {

        TextFont = "HMenuStandartFont",
        ColorBackground = Color( 0, 0, 0, 0 ),
        ColorText = Color( 255, 255, 255 ),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true

    },

    ["Scoreboard"] = {

        TextFont = "HMenuStandartFont",
        ColorBackground = Color( 0, 0, 0, 0 ),
        ColorText = Color( 255, 255, 255 ),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true

    },

    ["Character"] = {

        TextFont = "HMenuStandartFont",
        ColorBackground = Color( 0, 0, 0, 0 ),
        ColorText = Color( 255, 255, 255 ),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true

    },
    
    ["GPS"] = {

        TextFont = "HMenuStandartFont",
        ColorBackground = Color( 0, 0, 0, 0 ),
        ColorText = Color( 255, 255, 255 ),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true

    },

    ["Settings"] = {

        TextFont = "HMenuStandartFont",
        ColorBackground = Color( 0, 0, 0, 0 ),
        ColorText = Color( 255, 255, 255 ),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true

    },

    ["Ask a Question"] = {

        TextFont = "HMenuStandartFont",
        ColorBackground = Color( 0, 0, 0, 0 ),
        ColorText = Color( 255, 255, 25 ),
        IsCategory = false,
        IsAdminOnly = false,
        Enabled = true

    },

    ["Report"] = {

        TextFont = "HMenuStandartFont",
        ColorBackground = Color( 0, 0, 0, 0 ),
        ColorText = Color( 255, 76, 91 ),
        IsCategory = false,
        IsAdminOnly = false,
        Enabled = true

    },

    ["Close"] = {

        TextFont = "HMenuStandartFont",
        ColorBackground = Color( 0, 0, 0, 0 ),
        ColorText = Color( 255, 76, 91 ),
        IsCategory = false,
        IsAdminOnly = false,
        Enabled = true

    },

}

/*

 $$$$$$\    $$\     $$\                                 $$\      $$\                 $$\           $$\                  $$$$$$\             $$\     $$\     $$\                               
$$  __$$\   $$ |    $$ |                                $$$\    $$$ |                $$ |          $$ |                $$  __$$\            $$ |    $$ |    \__|                              
$$ /  $$ |$$$$$$\   $$$$$$$\   $$$$$$\   $$$$$$\        $$$$\  $$$$ | $$$$$$\   $$$$$$$ |$$\   $$\ $$ | $$$$$$\        $$ /  \__| $$$$$$\ $$$$$$\ $$$$$$\   $$\ $$$$$$$\   $$$$$$\   $$$$$$$\ 
$$ |  $$ |\_$$  _|  $$  __$$\ $$  __$$\ $$  __$$\       $$\$$\$$ $$ |$$  __$$\ $$  __$$ |$$ |  $$ |$$ |$$  __$$\       \$$$$$$\  $$  __$$\\_$$  _|\_$$  _|  $$ |$$  __$$\ $$  __$$\ $$  _____|
$$ |  $$ |  $$ |    $$ |  $$ |$$$$$$$$ |$$ |  \__|      $$ \$$$  $$ |$$ /  $$ |$$ /  $$ |$$ |  $$ |$$ |$$$$$$$$ |       \____$$\ $$$$$$$$ | $$ |    $$ |    $$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  
$$ |  $$ |  $$ |$$\ $$ |  $$ |$$   ____|$$ |            $$ |\$  /$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |$$   ____|      $$\   $$ |$$   ____| $$ |$$\ $$ |$$\ $$ |$$ |  $$ |$$ |  $$ | \____$$\ 
 $$$$$$  |  \$$$$  |$$ |  $$ |\$$$$$$$\ $$ |            $$ | \_/ $$ |\$$$$$$  |\$$$$$$$ |\$$$$$$  |$$ |\$$$$$$$\       \$$$$$$  |\$$$$$$$\  \$$$$  |\$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
 \______/    \____/ \__|  \__| \_______|\__|            \__|     \__| \______/  \_______| \______/ \__| \_______|       \______/  \_______|  \____/  \____/ \__|\__|  \__| \____$$ |\_______/ 
                                                                                                                                                                          $$\   $$ |          
                                                                                                                                                                          \$$$$$$  |          
                                                                                                                                                                           \______/           

*/

ConfigHMenu.ModulesSettings = {

    ["CommandForReport"] = "!report", -- Chat input command for Report button.
    ["CommandForQuestion"] = "@", -- Chat input command for Ask a Question button. Example: @ How can you make money here?
    ["EnableFood"] = true -- If you want the food menu to be enabled, write true. Accordingly, if you want to turn off, enter false.

}

/*

$$$$$$$$\ $$\   $$\       $$\      $$\                                      $$$$$$\             $$\     $$\     $$\                               
$$  _____|$$ |  $$ |      $$$\    $$$ |                                    $$  __$$\            $$ |    $$ |    \__|                              
$$ |      $$ |  $$ |      $$$$\  $$$$ | $$$$$$\  $$$$$$$\  $$\   $$\       $$ /  \__| $$$$$$\ $$$$$$\ $$$$$$\   $$\ $$$$$$$\   $$$$$$\   $$$$$$$\ 
$$$$$\    $$$$$$$$ |      $$\$$\$$ $$ |$$  __$$\ $$  __$$\ $$ |  $$ |      \$$$$$$\  $$  __$$\\_$$  _|\_$$  _|  $$ |$$  __$$\ $$  __$$\ $$  _____|
$$  __|   \_____$$ |      $$ \$$$  $$ |$$$$$$$$ |$$ |  $$ |$$ |  $$ |       \____$$\ $$$$$$$$ | $$ |    $$ |    $$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  
$$ |            $$ |      $$ |\$  /$$ |$$   ____|$$ |  $$ |$$ |  $$ |      $$\   $$ |$$   ____| $$ |$$\ $$ |$$\ $$ |$$ |  $$ |$$ |  $$ | \____$$\ 
$$ |            $$ |      $$ | \_/ $$ |\$$$$$$$\ $$ |  $$ |\$$$$$$  |      \$$$$$$  |\$$$$$$$\  \$$$$  |\$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
\__|            \__|      \__|     \__| \_______|\__|  \__| \______/        \______/  \_______|  \____/  \____/ \__|\__|  \__| \____$$ |\_______/ 
                                                                                                                              $$\   $$ |          
                                                                                                                              \$$$$$$  |          
                                                                                                                               \______/           

*/

ConfigHMenu.F4Menu = ConfigHMenu.F4Menu or {} -- Do not touch it.

ConfigHMenu.F4Menu.Sites = {

    ["Steam"] = { -- Write the desired site name here.

        SiteUrl = "https://steamcommunity.com/", -- Write the website address here.
        Enabled = true -- If you want the site to be enabled, write true. Accordingly, if you want to turn off, enter false.

    }, 

    ["Forum"] = {

        SiteUrl = "https://www.google.com/",
        Enabled = true

    }, -- Do not forget about this comma!

}

/*

 $$$$$$\  $$$$$$$\   $$$$$$\         $$$$$$\             $$\     $$\     $$\                               
$$  __$$\ $$  __$$\ $$  __$$\       $$  __$$\            $$ |    $$ |    \__|                              
$$ /  \__|$$ |  $$ |$$ /  \__|      $$ /  \__| $$$$$$\ $$$$$$\ $$$$$$\   $$\ $$$$$$$\   $$$$$$\   $$$$$$$\ 
$$ |$$$$\ $$$$$$$  |\$$$$$$\        \$$$$$$\  $$  __$$\\_$$  _|\_$$  _|  $$ |$$  __$$\ $$  __$$\ $$  _____|
$$ |\_$$ |$$  ____/  \____$$\        \____$$\ $$$$$$$$ | $$ |    $$ |    $$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  
$$ |  $$ |$$ |      $$\   $$ |      $$\   $$ |$$   ____| $$ |$$\ $$ |$$\ $$ |$$ |  $$ |$$ |  $$ | \____$$\ 
\$$$$$$  |$$ |      \$$$$$$  |      \$$$$$$  |\$$$$$$$\  \$$$$  |\$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
 \______/ \__|       \______/        \______/  \_______|  \____/  \____/ \__|\__|  \__| \____$$ |\_______/ 
                                                                                       $$\   $$ |          
                                                                                       \$$$$$$  |          
                                                                                        \______/           

*/

ConfigHMenu.GPS = ConfigHMenu.GPS or {} -- Do not touch it.

ConfigHMenu.GPS.Category = {

    ["Main places"] = {

        Enabled = true

    },

}

ConfigHMenu.GPS.Positions = {

    ["Test Position"] = {

        Command = "testposition",
        Category = "Main places",
        Position = Vector( -1447.090210, -426.852753, -83.985886 ),
        Enabled = true

    },

}

/*

 $$$$$$\                                      $$\        $$$$$$\             $$\     $$\     $$\                               
$$  __$$\                                     $$ |      $$  __$$\            $$ |    $$ |    \__|                              
$$ /  \__| $$$$$$\  $$\   $$\ $$$$$$$\   $$$$$$$ |      $$ /  \__| $$$$$$\ $$$$$$\ $$$$$$\   $$\ $$$$$$$\   $$$$$$\   $$$$$$$\ 
\$$$$$$\  $$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$ |      \$$$$$$\  $$  __$$\\_$$  _|\_$$  _|  $$ |$$  __$$\ $$  __$$\ $$  _____|
 \____$$\ $$ /  $$ |$$ |  $$ |$$ |  $$ |$$ /  $$ |       \____$$\ $$$$$$$$ | $$ |    $$ |    $$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  
$$\   $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |      $$\   $$ |$$   ____| $$ |$$\ $$ |$$\ $$ |$$ |  $$ |$$ |  $$ | \____$$\ 
\$$$$$$  |\$$$$$$  |\$$$$$$  |$$ |  $$ |\$$$$$$$ |      \$$$$$$  |\$$$$$$$\  \$$$$  |\$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
 \______/  \______/  \______/ \__|  \__| \_______|       \______/  \_______|  \____/  \____/ \__|\__|  \__| \____$$ |\_______/ 
                                                                                                           $$\   $$ |          
                                                                                                           \$$$$$$  |          
                                                                                                            \______/           

*/

ConfigHMenu.Music = {

    ["Test Music"] = {

        MusicUrl = "http://d.zaix.ru/h7kG.mp3",
        Enabled = true

    },

}

/*

$$\                                                                                   $$$$$$\             $$\     $$\     $$\                               
$$ |                                                                                 $$  __$$\            $$ |    $$ |    \__|                              
$$ |      $$$$$$\  $$$$$$$\   $$$$$$\  $$\   $$\  $$$$$$\   $$$$$$\   $$$$$$\        $$ /  \__| $$$$$$\ $$$$$$\ $$$$$$\   $$\ $$$$$$$\   $$$$$$\   $$$$$$$\ 
$$ |      \____$$\ $$  __$$\ $$  __$$\ $$ |  $$ | \____$$\ $$  __$$\ $$  __$$\       \$$$$$$\  $$  __$$\\_$$  _|\_$$  _|  $$ |$$  __$$\ $$  __$$\ $$  _____|
$$ |      $$$$$$$ |$$ |  $$ |$$ /  $$ |$$ |  $$ | $$$$$$$ |$$ /  $$ |$$$$$$$$ |       \____$$\ $$$$$$$$ | $$ |    $$ |    $$ |$$ |  $$ |$$ /  $$ |\$$$$$$\  
$$ |     $$  __$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$  __$$ |$$ |  $$ |$$   ____|      $$\   $$ |$$   ____| $$ |$$\ $$ |$$\ $$ |$$ |  $$ |$$ |  $$ | \____$$\ 
$$$$$$$$\\$$$$$$$ |$$ |  $$ |\$$$$$$$ |\$$$$$$  |\$$$$$$$ |\$$$$$$$ |\$$$$$$$\       \$$$$$$  |\$$$$$$$\  \$$$$  |\$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
\________|\_______|\__|  \__| \____$$ | \______/  \_______| \____$$ | \_______|       \______/  \_______|  \____/  \____/ \__|\__|  \__| \____$$ |\_______/ 
                             $$\   $$ |                    $$\   $$ |                                                                   $$\   $$ |          
                             \$$$$$$  |                    \$$$$$$  |                                                                   \$$$$$$  |          
                              \______/                      \______/                                                                     \______/           

*/

ConfigHMenu.Language = ConfigHMenu.Language or {} -- Do not touch it.

/*

Here you can write the language in which the entire script will be displayed (Available: English, Russian, French)
Just write in quotation marks the language you need.

*/

ConfigHMenu.Language.Settings = "English"

ConfigHMenu.Language["English"] = {

    ["Menu"] = "Menu",
    ["F4 Menu"] = "F4 Menu",
    ["Contacts"] = "Contacts",
    ["Jobs"] = "Jobs",
    ["Entities"] = "Entities",
    ["Ammo"] = "Ammo",
    ["Weapons"] = "Weapons",
    ["Shipments"] = "Shipments",
    ["Food"] = "Food",
    ["Scoreboard"] = "Scoreboard",
    ["Job"] = "Job",
    ["Rank"] = "Rank",
    ["CopySteamID"] = "Click to copy SteamID",
    ["SuccessfullyCopied"] = "You have successfully copied the SteamID of the player",
    ["Character"] = "Character",
    ["PlayerInfo"] = "Player Info",
    ["Random Number"] = "Random Number",
    ["Drop Money"] = "Drop Money",
    ["Give Money"] = "Give Money",
    ["How much money"] = "How much money?",
    ["Drop Weapon"] = "Drop Weapon",
    ["Advert"] = "Advert",
    ["What do we advertise"] = "What do we advertise?",
    ["Money"] = "Money",
    ["Health"] = "Health",
    ["Armor"] = "Armor",
    ["Help"] = "Help",
    ["GPS"] = "GPS",
    ["Clear GPS"] = "Clear GPS",
    ["Settings"] = "Settings",
    ["Music"] = "Music",
    ["OnShadows"] = "Enable Shadows",
    ["OnEyes"] = "Enable Eyes",
    ["OnM9KGasEffect"] = "Enable M9K Gas Effect",
    ["OffShadows"] = "Disable Shadows",
    ["OffEyes"] = "Disable Eyes",
    ["OffM9KGasEffect"] = "Disable M9K Gas Effect",
    ["Clear Sounds"] = "Clear Sounds",
    ["Ask a Question"] = "Ask a Question",
    ["Report"] = "Report",
    ["Close"] = "Close",
    ["Write your question"] = "Write your question",
    ["Disconnect"] = "Disconnect"

}

ConfigHMenu.Language["Russian"] = {

    ["Menu"] = "Меню",
    ["F4 Menu"] = "F4 Меню",
    ["Contacts"] = "Контакты",
    ["Jobs"] = "Профессии",
    ["Entities"] = "Предметы",
    ["Ammo"] = "Патроны",
    ["Weapons"] = "Оружие",
    ["Shipments"] = "Коробки",
    ["Food"] = "Еда",
    ["Scoreboard"] = "Список игроков",
    ["Job"] = "Работа",
    ["Rank"] = "Ранг",
    ["CopySteamID"] = "Кликните, чтобы скопировать SteamID",
    ["SuccessfullyCopied"] = "Вы успешно скопировали SteamID игрока",
    ["Character"] = "Персонаж",
    ["PlayerInfo"] = "Информация об игроке",
    ["Random Number"] = "Случайное число",
    ["Drop Money"] = "Выбросить деньги",
    ["Give Money"] = "Передать деньги",
    ["How much money"] = "Сколько денег?",
    ["Drop Weapon"] = "Выбросить оружие",
    ["Advert"] = "Объявление",
    ["What do we advertise"] = "Что рекламируем?",
    ["Money"] = "Деньги",
    ["Health"] = "Здоровье",
    ["Armor"] = "Броня",
    ["Help"] = "Помощь",
    ["GPS"] = "Навигация",
    ["Clear GPS"] = "Очистить точки навигации",
    ["Settings"] = "Настройки",
    ["Music"] = "Музыка",
    ["OnShadows"] = "Включить дым",
    ["OnEyes"] = "Включить глаза",
    ["OnM9KGasEffect"] = "Включить дым у M9K",
    ["OffShadows"] = "Выключить тени",
    ["OffEyes"] = "Выключить глаза",
    ["OffM9KGasEffect"] = "Выключить дым у M9K",
    ["Clear Sounds"] = "Очистить звуки",
    ["Ask a Question"] = "Задать вопрос",
    ["Report"] = "Жалоба",   
    ["Close"] = "Закрыть",
    ["Write your question"] = "Напишите ваш вопрос",
    ["Disconnect"] = "Покинуть сервер"

}

ConfigHMenu.Language["French"] = {

    ["Menu"] = "Menu",
    ["F4 Menu"] = "F4 Menu",
    ["Contacts"] = "Contacts",
    ["Jobs"] = "Emplois",
    ["Entities"] = "Entités",
    ["Ammo"] = "Munition",
    ["Weapons"] = "Armes",
    ["Shipments"] = "Caisses",
    ["Food"] = "Nourriture",
    ["Scoreboard"] = "Liste des joueurs",
    ["Job"] = "Emploi",
    ["Rank"] = "Rang",
    ["CopySteamID"] = "Cliquez pour copier SteamID",
    ["SuccessfullyCopied"] = "Vous avez copié avec succès le SteamID du lecteur",
    ["Character"] = "Personnage",
    ["PlayerInfo"] = "Lecteur d'informations",
    ["Random Number"] = "Nombre aléatoire",
    ["Drop Money"] = "Jeter de l'argent",
    ["Give Money"] = "Donner de l'argent",
    ["How much money"] = "Combien d'argent?",
    ["Drop Weapon"] = "Lâchez votre arme",
    ["Advert"] = "Publicité",
    ["What do we advertise"] = "Que faisons-nous de la publicité?",
    ["Money"] = "Argent",
    ["Health"] = "Santé",
    ["Armor"] = "Armure",
    ["Help"] = "Aidez-moi",
    ["GPS"] = "GPS",
    ["Clear GPS"] = "Lieux principaux",
    ["Settings"] = "Réglages",
    ["Music"] = "La musique",
    ["OnShadows"] = "Activer les ombres",
    ["OnEyes"] = "Activer les yeux",
    ["OnM9KGasEffect"] = "Activez l'effet gaz M9K",
    ["OffShadows"] = "Désactiver les ombres",
    ["OffEyes"] = "Désactiver les yeux",
    ["OffM9KGasEffect"] = "Désactiver l'effet de gaz M9K",
    ["Clear Sounds"] = "Sons clairs",
    ["Ask a Question"] = "Poser une question",
    ["Report"] = "Rapport",
    ["Close"] = "Fermer",
    ["Write your question"] = "Écrivez votre question",
    ["Disconnect"] = "Déconnecter"

}