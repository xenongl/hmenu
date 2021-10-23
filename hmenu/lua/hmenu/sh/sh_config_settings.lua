configHMenu = configHMenu or {}

configHMenu.buttonOpenMenu = KEY_T // possible buttons here: https://wiki.facepunch.com/gmod/Enums/KEY

configHMenu.colors = {
    ['colorHeader'] = Color(65, 105, 225), // https://imgur.com/a/ULY1Rln
    ['colorBackground'] = Color(0, 0, 0, 100) // https://imgur.com/a/MWlvuEH
}

configHMenu.modules = {
    ['F4 Menu'] = {
        textFont = 'hmenu.fonts.standartFont',
        colorBackground = Color(0, 0, 0, 0),
        colorText = Color(255, 255, 255),
        isCategory = true,
        IsAdminOnly = false,
        enabled = true
    },

    ['Scoreboard'] = {
        textFont = 'hmenu.fonts.standartFont',
        colorBackground = Color(0, 0, 0, 0),
        colorText = Color(255, 255, 255),
        isCategory = true,
        IsAdminOnly = false,
        enabled = true
    },

    ['Character'] = {
        textFont = 'hmenu.fonts.standartFont',
        colorBackground = Color(0, 0, 0, 0),
        colorText = Color(255, 255, 255),
        isCategory = true,
        IsAdminOnly = false,
        enabled = true
    },
    
    ['GPS'] = {
        textFont = 'hmenu.fonts.standartFont',
        colorBackground = Color(0, 0, 0, 0),
        colorText = Color(255, 255, 255),
        isCategory = true,
        IsAdminOnly = false,
        enabled = true
    },

    ['Settings'] = {
        textFont = 'hmenu.fonts.standartFont',
        colorBackground = Color(0, 0, 0, 0),
        colorText = Color(255, 255, 255),
        isCategory = true,
        IsAdminOnly = false,
        enabled = true
    },

    ['Ask a Question'] = {
        textFont = 'hmenu.fonts.standartFont',
        colorBackground = Color(0, 0, 0, 0),
        colorText = Color(255, 255, 25),
        isCategory = false,
        IsAdminOnly = false,
        enabled = true
    },

    ['Report'] = {
        textFont = 'hmenu.fonts.standartFont',
        colorBackground = Color(0, 0, 0, 0),
        colorText = Color(255, 76, 91),
        isCategory = false,
        IsAdminOnly = false,
        enabled = true
    },

    ['Close'] = {
        textFont = 'hmenu.fonts.standartFont',
        colorBackground = Color(0, 0, 0, 0),
        colorText = Color(255, 76, 91),
        isCategory = false,
        IsAdminOnly = false,
        enabled = true
    },
}

// other modules

configHMenu.modulesSettings = {
    ['commandForReport'] = '!report',
    ['commandForQuestion'] = '@',
    ['enableFood'] = true
}

// f4 menu settings

configHMenu.f4Menu = configHMenu.f4Menu or {} -- Do not touch it.

configHMenu.f4Menu.sites = {
    ['Steam'] = { // site name
        siteUrl = 'https://steamcommunity.com/',
        enabled = true
    }, 

    ['Forum'] = {
        siteUrl = 'https://www.google.com/',
        enabled = true
    },
}

// gps settings

configHMenu.GPS = configHMenu.GPS or {}

configHMenu.GPS.category = {
    ['Main places'] = {
        enabled = true
    },
}

configHMenu.GPS.positions = {
    ['Test Position'] = {
        command = 'testposition',
        category = 'Main places',
        position = Vector(-1447.090210, -426.852753, -83.985886),
        enabled = true
    },
}

// sound settings

configHMenu.music = {
    ['Test Music'] = {
        musicUrl = 'http://d.zaix.ru/h7kG.mp3',
        enabled = true
    },
}

// language settings

configHMenu.language = configHMenu.language or {}

configHMenu.language.settings = 'English' // change language (English, Russian, French)

configHMenu.language['English'] = {
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

configHMenu.language['Russian'] = {
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

configHMenu.language['French'] = {
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