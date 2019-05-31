--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

--[[
  CATEGORIE MODERATION
--]]

--[[
  METIER MODERATION
--]]

TEAM_MODERATION = DarkRP.createJob("MODÉRATION", {
    color = Color(143, 143, 143, 255),
    model = {"models/player/skeleton.mdl"},
    description = [[Métier réservé à l'équipe de modération du serveur.
/!\ MÉTIER HRP /!\]],
    weapons = {"weapon_arc_atmcard", "weapon_arc_phone", "weapon_fists"},
    command = "moderation",
    max = 0,
    salary = 20,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "MODERATION",
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(10000)
        ply:SetHealth(10000)
        ply:SetArmor(10000)
    end
})

--[[
  CATEGORIE GARDIEN DE LA PAIX
--]]

TEAM_POLICE = DarkRP.createJob("Policier ", {
    color = Color(0, 42, 254, 255),
    model = {
        "models/portal/nypd/nypdmale_07_b.mdl",
        "models/portal/nypd/nypdmale_05_b.mdl",
        "models/portal/nypd/nypdmale_06_b.mdl",
        "models/portal/nypd/nypdmale_03_b.mdl",
        "models/portal/nypd/nypdmale_04_b.mdl"
    },
    description = [[Ton rôle est de protéger la ville contre les différentes menaces]],
    weapons = {"cw_g4p_usp40", "weapon_arc_atmcard", "weapon_fists", "weapon_arc_phone", "stungun", "weapon_r_handcuffs", "stunstick"},
    command = "police",
    max = 6,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "GARDIEN DE LA PAIX",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

TEAM_LTPOLICE = DarkRP.createJob("[VIP] Lieutenant Police", {
    color = Color(0, 42, 254, 255),
    model = {
        "models/portal/nypd/nypdmale_03_arm.mdl",
        "models/portal/nypd/nypdmale_04_arm.mdl",
        "models/portal/nypd/nypdmale_05_arm.mdl",
        "models/portal/nypd/nypdmale_06_arm.mdl",
        "models/portal/nypd/nypdmale_07_arm.mdl"
    },
    description = [[Ton rôle est de protéger la ville contre les différentes menaces]],
    weapons = {"cw_g4p_usp40", "cw_mp5", "weapon_arc_atmcard", "weapon_fists", "weapon_arc_phone", "stungun", "weapon_r_handcuffs", "stunstick"},
    command = "ltpolice",
    max = 6,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "GARDIEN DE LA PAIX",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

TEAM_CHIEF = DarkRP.createJob("Commissaire ", {
    color = Color(0, 42, 254, 255),
    model = {
        "models/portal/nypd/nypdmale_07.mdl",
        "models/portal/nypd/nypdmale_03.mdl",
        "models/portal/nypd/nypdmale_04.mdl",
        "models/portal/nypd/nypdmale_05.mdl",
        "models/portal/nypd/nypdmale_06.mdl"
    },
    description = [[Ton rôle est de protéger la ville contre les différentes menaces]],
    weapons = {"cw_g4p_usp40", "cw_g4p_m16a4", "weapon_arc_atmcard", "weapon_fists", "weapon_arc_phone", "stungun",  "weapon_r_handcuffs", "stunstick"},
    command = "commisaire",
    max = 1,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "GARDIEN DE LA PAIX",
    chief = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  CATEGORIE LEGAL
--]]

--[[
  Métier Chômeur
--]]

TEAM_CITIZEN = DarkRP.createJob("Chomeur", {
    color = Color(0, 255, 68, 255),
    model = {
        "models/humans/modern/female_01.mdl",
        "models/humans/modern/female_02.mdl",
        "models/humans/modern/female_04.mdl",
        "models/humans/modern/female_06.mdl",
        "models/humans/modern/female_03.mdl",
        "models/humans/modern/female_07.mdl",
        "models/humans/modern/male_01_01.mdl",
        "models/humans/modern/male_01_02.mdl",
        "models/humans/modern/male_01_03.mdl",
        "models/humans/modern/male_02_01.mdl",
        "models/humans/modern/male_02_02.mdl",
        "models/humans/modern/male_02_03.mdl",
        "models/humans/modern/male_03_01.mdl",
        "models/humans/modern/male_03_02.mdl",
        "models/humans/modern/male_03_04.mdl",
        "models/humans/modern/male_03_06.mdl",
        "models/humans/modern/male_03_07.mdl",
        "models/humans/modern/male_04_01.mdl",
        "models/humans/modern/male_04_02.mdl",
        "models/humans/modern/male_08_01.mdl",
        "models/humans/modern/male_08_04.mdl",
        "models/humans/modern/male_09_04.mdl"
    },
    description = [[Vous êtes à la recherche d'un emploi]],
    weapons = {"weapon_arc_atmcard", "weapon_fists", "weapon_arc_phone"},
    command = "chomeur",
    max = 0,
    salary = 20,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "LEGAL",
})

--[[
  Métier Arurier
--]]

TEAM_GUN = DarkRP.createJob("Armurier", {
    color = Color(255, 135, 0, 255),
    model = {"models/player/monk.mdl"},
    description = [[Votre rôle est de vendre des armes, leurs accessoires ainsi que des kevlars que vous devez fabriquer, faites attention à la concurrence!]],
    weapons = {"weapon_arc_atmcard", "weapon_arc_phone", "weapon_fists"},
    command = "gun",
    max = 2,
    salary = 30,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "LEGAL",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  Métier S.D.F
--]]

TEAM_SDF = DarkRP.createJob("S.D.F", {
    color = Color(87, 42, 42, 255),
    model = {"models/player/scavenger/scavenger.mdl"},
    description = [[Vous incarnez un S.D.F, entre autre vous devez gagner votre vie en mendiant de l'argent aux autres personnes]],
    weapons = {"weapon_arc_atmcard", "weapon_fists", "weapon_arc_phone"},
    command = "sdf",
    max = 4,
    salary = 10,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "LEGAL",
    hobo = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  Métier Banquier
--]]

TEAM_BANQUIER = DarkRP.createJob("Banquier", {
    color = Color(21, 138, 222, 255),
    model = {"models/player/monk.mdl"},
    description = [[Vous êtes banquier, votre devez gérer l'argent des citoyens et ainsi prendre une commission sur celui-ci pour gagner votre vie.]],
    weapons = {"weapon_arc_phone", "weapon_arc_atmcard", "weapon_fists" },
    command = "banquier",
    max = 2,
    salary = 30,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "LEGAL",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  Métier Docteur
--]]

TEAM_DOCTEUR = DarkRP.createJob("Docteur", {
    color = Color(235, 224, 224, 255),
    model = {"models/player/Group03m/female_01.mdl"},
    description = [[Vous devenez docteur, votre mission est de soigner les personnes qui souffrent!]],
    weapons = {"weapon_arc_phone", "weapon_arc_atmcard", "weapon_fists" },
    command = "docteur",
    max = 2,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "LEGAL",
    medic = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  Métier Cuisinier
--]]


TEAM_CUISINIER = DarkRP.createJob("Cuisinier", {
    color = Color(201, 33, 179, 255),
    model = {"models/humans/group02/chef1.mdl"},
    description = [[Vous allez être cuisinier, vous devez préparer des repas aux autres habitants de la ville afin de les rassasier]],
    weapons = {"weapon_arc_phone", "weapon_arc_atmcard", "weapon_fists" },
    command = "cuisinier",
    max = 3,
    salary = 30,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "LEGAL",
    cook = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  CATEGORIE JUSTICE
--]]

--[[
  Métier Juge
--]]

TEAM_JUGE = DarkRP.createJob("Juge", {
    color = Color(145, 118, 21, 255),
    model = {"models/joshers/badasses/playermodels/grigori_closed.mdl"},
    description = [[Vous incarnez un juge, votre rôle est de juger les différents accusés afin de leur donner la sentence qu'ils méritent]],
    weapons = {"weapon_arc_phone", "weapon_arc_atmcard", "weapon_fists" },
    command = "juge",
    max = 1,
    salary = 40,
    admin = 0,
    vote = true,
    hasLicense = false,
    candemote = false,
    category = "JUSTICE",
    hobo = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  Métier Procureur
--]]

TEAM_PROCUREUR = DarkRP.createJob("Procureur", {
    color = Color(120, 21, 21, 255),
    model = {"models/player/valley/dawkins.mdl"},
    description = [[Vous avez pour mission de faire en sorte qu'un accusé de justice soit puni par la loi, vos adversaires sont les avocats des accusés.]],
    weapons = {"weapon_arc_phone", "weapon_arc_atmcard", "weapon_fists" },
    command = "procureur",
    max = 1,
    salary = 40,
    admin = 0,
    vote = true,
    hasLicense = false,
    candemote = false,
    category = "JUSTICE",
    hobo = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  Métier Avocat
--]]

TEAM_AVOCAT = DarkRP.createJob("Avocat", {
    color = Color(31, 92, 32, 255),
    model = {"models/joshers/badasses/playermodels/kleiner.mdl"},
    description = [[Vous devez tout faire pour que votre client (un accusé de justice) soit acquitté ou ait une peine réduite. Vous devez faire face au procureur!]],
    weapons = {"weapon_arc_phone", "weapon_arc_atmcard", "weapon_fists" },
    command = "avocat",
    max = 2,
    salary = 40,
    admin = 0,
    vote = true,
    hasLicense = false,
    candemote = false,
    category = "JUSTICE",
    hobo = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  CATEGORIE ILLEGAL
--]]

--[[
  Métier Bandit
--]]

TEAM_BANDIT = DarkRP.createJob("Bandit", {
    color = Color(128, 128, 24, 255),
    model = {"models/player/Group03/male_01.mdl"},
    description = [[Vous devenez un bandit, votre but principal est donc de voler les autres personnes à votre profit!]],
    weapons = {"weapon_arc_phone", "weapon_arc_atmcard", "weapon_fists" },
    command = "bandit",
    max = 3,
    salary = 20,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "ILLEGAL",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  Métier Hacker
--]]
TEAM_HACK = DarkRP.createJob("Hacker", {
    color = Color(164, 255, 8, 255),
    model = {"models/mark2580/defalt_playermodel.mdl"},
    description = [[Vous êtes un hacker, votre rôle est de vous faire un maximum d'argent en nuisant aux services informatiques de la ville, vous pouvez deplus vous faire engager par des organisations afin des les aider à ce sujet.]],
    weapons = {"weapon_arc_phone", "weapon_arc_atmcard", "weapon_fists", "weapon_arc_atmhack", "keypad_cracker"},
    command = "hacker",
    max = 2,
    salary = 20,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "ILLEGAL",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})

--[[
  Métier Mafieux
--]]
TEAM_MAFIA = DarkRP.createJob("Mafieux", {
    color = Color(214, 27, 27, 255),
    model = {
        "models/suits/male_01_open.mdl",
        "models/suits/male_02_open.mdl",
        "models/suits/male_03_open.mdl",
        "models/suits/male_04_open.mdl",
        "models/suits/male_05_open.mdl",
        "models/suits/male_06_open.mdl",
        "models/suits/male_07_open.mdl",
        "models/suits/male_08_open.mdl",
        "models/suits/male_09_open.mdl"
    },
    description = [[Vous voulez être un mafieux? humm, ok, votre rôle sera d'avoir un maximum de pouvoir sur la ville, pour y parvenir vous devrez écouter les consignes de votre parrain tout en semant la terreur quand on prononce votre nom dans la ville.]],
    weapons = {"weapon_arc_atmcard", "weapon_arc_phone", "weapon_fists"},
    command = "mafieux",
    max = 5,
    salary = 20,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "ILLEGAL",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "")
    end
})
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_LTPOLICE] = true,
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
