ConfigHMenu = ConfigHMenu or {}

ConfigHMenu.ButtonOpenMenu = KEY_T // possible buttons here: https://wiki.facepunch.com/gmod/Enums/KEY

ConfigHMenu.Colors = {
    ['ColorHeader'] = Color(65, 105, 225), // https://imgur.com/a/ULY1Rln
    ['ColorBackground'] = Color(0, 0, 0, 100) // https://imgur.com/a/MWlvuEH
}

ConfigHMenu.Modules = {
    ['F4 Menu'] = {
        TextFont = 'hmenu.fonts.standartFont',
        ColorBackground = Color(0, 0, 0, 0),
        ColorText = Color(255, 255, 255),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true
    },

    ['Scoreboard'] = {
        TextFont = 'hmenu.fonts.standartFont',
        ColorBackground = Color(0, 0, 0, 0),
        ColorText = Color(255, 255, 255),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true
    },

    ['Character'] = {
        TextFont = 'hmenu.fonts.standartFont',
        ColorBackground = Color(0, 0, 0, 0),
        ColorText = Color(255, 255, 255),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true
    },
    
    ['GPS'] = {
        TextFont = 'hmenu.fonts.standartFont',
        ColorBackground = Color(0, 0, 0, 0),
        ColorText = Color(255, 255, 255),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true
    },

    ['Settings'] = {
        TextFont = 'hmenu.fonts.standartFont',
        ColorBackground = Color(0, 0, 0, 0),
        ColorText = Color(255, 255, 255),
        IsCategory = true,
        IsAdminOnly = false,
        Enabled = true
    },

    ['Ask a Question'] = {
        TextFont = 'hmenu.fonts.standartFont',
        ColorBackground = Color(0, 0, 0, 0),
        ColorText = Color(255, 255, 25),
        IsCategory = false,
        IsAdminOnly = false,
        Enabled = true
    },

    ['Report'] = {
        TextFont = 'hmenu.fonts.standartFont',
        ColorBackground = Color(0, 0, 0, 0),
        ColorText = Color(255, 76, 91),
        IsCategory = false,
        IsAdminOnly = false,
        Enabled = true
    },

    ['Close'] = {
        TextFont = 'hmenu.fonts.standartFont',
        ColorBackground = Color(0, 0, 0, 0),
        ColorText = Color(255, 76, 91),
        IsCategory = false,
        IsAdminOnly = false,
        Enabled = true
    },
}

// other modules

ConfigHMenu.ModulesSettings = {
    ['CommandForReport'] = '!report', -- Chat input command for Report button.
    ['CommandForQuestion'] = '@', -- Chat input command for Ask a Question button. Example: @ How can you make money here?
    ['EnableFood'] = true -- If you want the food menu to be enabled, write true. Accordingly, if you want to turn off, enter false.
}

// f4 menu settings

ConfigHMenu.F4Menu = ConfigHMenu.F4Menu or {} -- Do not touch it.

ConfigHMenu.F4Menu.Sites = {
    ['Steam'] = { // site name
        SiteUrl = 'https://steamcommunity.com/',
        Enabled = true
    }, 

    ['Forum'] = {
        SiteUrl = 'https://www.google.com/',
        Enabled = true
    },
}

// gps settings

ConfigHMenu.GPS = ConfigHMenu.GPS or {}

ConfigHMenu.GPS.Category = {
    ['Main places'] = {
        Enabled = true
    },
}

ConfigHMenu.GPS.Positions = {
    ['Test Position'] = {
        Command = 'testposition',
        Category = 'Main places',
        Position = Vector( -1447.090210, -426.852753, -83.985886 ),
        Enabled = true
    },
}

// sound settings

ConfigHMenu.Music = {
    ['Test Music'] = {
        MusicUrl = 'http://d.zaix.ru/h7kG.mp3',
        Enabled = true
    },
}

// language settings

ConfigHMenu.Language = ConfigHMenu.Language or {}

ConfigHMenu.Language.Settings = 'English' // change language (English, Russian, French)

ConfigHMenu.Language['English'] = {
    ['Menu'] = 'Menu',
    ['F4 Menu'] = 'F4 Menu',
    ['Contacts'] = 'Contacts',
    ['Jobs'] = 'Jobs',
    ['Entities'] = 'Entities',
    ['Ammo'] = 'Ammo',
    ['Weapons'] = 'Weapons',
    ['Shipments'] = 'Shipments',
    ['Food'] = 'Food',
    ['Scoreboard'] = 'Scoreboard',
    ['Job'] = 'Job',
    ['Rank'] = 'Rank',
    ['CopySteamID'] = 'Click to copy SteamID',
    ['SuccessfullyCopied'] = 'You have successfully copied the SteamID of the player',
    ['Character'] = 'Character',
    ['PlayerInfo'] = 'Player Info',
    ['Random Number'] = 'Random Number',
    ['Drop Money'] = 'Drop Money',
    ['Give Money'] = 'Give Money',
    ['How much money'] = 'How much money?',
    ['Drop Weapon'] = 'Drop Weapon',
    ['Advert'] = 'Advert',
    ['What do we advertise'] = 'What do we advertise?',
    ['Money'] = 'Money',
    ['Health'] = 'Health',
    ['Armor'] = 'Armor',
    ['Help'] = 'Help',
    ['GPS'] = 'GPS',
    ['Clear GPS'] = 'Clear GPS',
    ['Settings'] = 'Settings',
    ['Music'] = 'Music',
    ['OnShadows'] = 'Enable Shadows',
    ['OnEyes'] = 'Enable Eyes',
    ['OnM9KGasEffect'] = 'Enable M9K Gas Effect',
    ['OffShadows'] = 'Disable Shadows',
    ['OffEyes'] = 'Disable Eyes',
    ['OffM9KGasEffect'] = 'Disable M9K Gas Effect',
    ['Clear Sounds'] = 'Clear Sounds',
    ['Ask a Question'] = 'Ask a Question',
    ['Report'] = 'Report',
    ['Close'] = 'Close',
    ['Write your question'] = 'Write your question',
    ['Disconnect'] = 'Disconnect'
}

ConfigHMenu.Language['Russian'] = {
    ['Menu'] = 'Меню',
    ['F4 Menu'] = 'F4 Меню',
    ['Contacts'] = 'Контакты',
    ['Jobs'] = 'Профессии',
    ['Entities'] = 'Предметы',
    ['Ammo'] = 'Патроны',
    ['Weapons'] = 'Оружие',
    ['Shipments'] = 'Коробки',
    ['Food'] = 'Еда',
    ['Scoreboard'] = 'Список игроков',
    ['Job'] = 'Работа',
    ['Rank'] = 'Ранг',
    ['CopySteamID'] = 'Кликните, чтобы скопировать SteamID',
    ['SuccessfullyCopied'] = 'Вы успешно скопировали SteamID игрока',
    ['Character'] = 'Персонаж',
    ['PlayerInfo'] = 'Информация об игроке',
    ['Random Number'] = 'Случайное число',
    ['Drop Money'] = 'Выбросить деньги',
    ['Give Money'] = 'Передать деньги',
    ['How much money'] = 'Сколько денег?',
    ['Drop Weapon'] = 'Выбросить оружие',
    ['Advert'] = 'Объявление',
    ['What do we advertise'] = 'Что рекламируем?',
    ['Money'] = 'Деньги',
    ['Health'] = 'Здоровье',
    ['Armor'] = 'Броня',
    ['Help'] = 'Помощь',
    ['GPS'] = 'Навигация',
    ['Clear GPS'] = 'Очистить точки навигации',
    ['Settings'] = 'Настройки',
    ['Music'] = 'Музыка',
    ['OnShadows'] = 'Включить дым',
    ['OnEyes'] = 'Включить глаза',
    ['OnM9KGasEffect'] = 'Включить дым у M9K',
    ['OffShadows'] = 'Выключить тени',
    ['OffEyes'] = 'Выключить глаза',
    ['OffM9KGasEffect'] = 'Выключить дым у M9K',
    ['Clear Sounds'] = 'Очистить звуки',
    ['Ask a Question'] = 'Задать вопрос',
    ['Report'] = 'Жалоба',   
    ['Close'] = 'Закрыть',
    ['Write your question'] = 'Напишите ваш вопрос',
    ['Disconnect'] = 'Покинуть сервер'
}

ConfigHMenu.Language['French'] = {
    ['Menu'] = 'Menu',
    ['F4 Menu'] = 'F4 Menu',
    ['Contacts'] = 'Contacts',
    ['Jobs'] = 'Emplois',
    ['Entities'] = 'Entités',
    ['Ammo'] = 'Munition',
    ['Weapons'] = 'Armes',
    ['Shipments'] = 'Caisses',
    ['Food'] = 'Nourriture',
    ['Scoreboard'] = 'Liste des joueurs',
    ['Job'] = 'Emploi',
    ['Rank'] = 'Rang',
    ['CopySteamID'] = 'Cliquez pour copier SteamID',
    ['SuccessfullyCopied'] = 'Vous avez copié avec succès le SteamID du lecteur',
    ['Character'] = 'Personnage',
    ['PlayerInfo'] = 'Lecteur d\'informations',
    ['Random Number'] = 'Nombre aléatoire',
    ['Drop Money'] = 'Jeter de l\'argent',
    ['Give Money'] = 'Donner de l\'argent',
    ['How much money'] = 'Combien d\'argent?',
    ['Drop Weapon'] = 'Lâchez votre arme',
    ['Advert'] = 'Publicité',
    ['What do we advertise'] = 'Que faisons-nous de la publicité?',
    ['Money'] = 'Argent',
    ['Health'] = 'Santé',
    ['Armor'] = 'Armure',
    ['Help'] = 'Aidez-moi',
    ['GPS'] = 'GPS',
    ['Clear GPS'] = 'Lieux principaux',
    ['Settings'] = 'Réglages',
    ['Music'] = 'La musique',
    ['OnShadows'] = 'Activer les ombres',
    ['OnEyes'] = 'Activer les yeux',
    ['OnM9KGasEffect'] = 'Activez l\'effet gaz M9K',
    ['OffShadows'] = 'Désactiver les ombres',
    ['OffEyes'] = 'Désactiver les yeux',
    ['OffM9KGasEffect'] = 'Désactiver l\'effet de gaz M9K',
    ['Clear Sounds'] = 'Sons clairs',
    ['Ask a Question'] = 'Poser une question',
    ['Report'] = 'Rapport',
    ['Close'] = 'Fermer',
    ['Write your question'] = 'Écrivez votre question',
    ['Disconnect'] = 'Déconnecter'
}