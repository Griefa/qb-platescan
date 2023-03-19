Config = {}

Config.Debug = false         -- Set to true for debug mode (shows client/server tables in console)

Config.GKSPhone = false      -- Set to true if using gks phone, false for qb-phone

Config.LockOnFlag = false    -- Set to true to lock front plate reader on flagged status
Config.NotifDuration = 6000  -- Time until scan notification disappears (default = 6sec)

Config.GTAVSounds = {        -- Frontend sounds from GTAV (https://wiki.gtanet.work/index.php?title=FrontEndSoundlist)
    good = {
        name = "5_Second_Timer",
        ref = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS",
    },
    bad = {
        name = "Event_Message_Purple",
        ref = "GTAO_FM_Events_Soundset",
    },
}