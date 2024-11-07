<VillageServer>

function n2645_warp_stone_OnTalk(userObjID, npcObjID, npc_talk_index, npc_talk_target)

    local job3rd = {23, 24, 25, 26, 29, 30, 31, 32, 35, 36, 37, 38, 41, 42, 43, 44, 45, 47, 48, 50, 51, 55, 56, 58, 59, 63, 64, 68, 69, 73, 74, 76, 78, 79, 81, 83, 85, 87, 89, 91, 93, 94, 96, 97, 99, 102, 103, 104, 105, 107, 108}
    local function is_finaljob(tab, val)
        for index, value in ipairs(tab) do
            if value == val then
                return true
            end
        end
        return false
    end

    if npc_talk_index == "" then
        api_log_AddLog("npc_talk_index is null ..\n")
    elseif npc_talk_index == "start" then
        if not is_finaljob(job3rd, api_user_GetUserJobID(userObjID)) then
            api_npc_NextTalk(userObjID, npcObjID, "firstjob", npc_talk_target)
        elseif api_quest_IsMarkingCompleteQuest(userObjID, 3874) == 0 then
            api_npc_NextTalk(userObjID, npcObjID, "finishjob", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "001", npc_talk_target)
        end
    elseif npc_talk_index =="portal_list" then
        if api_user_HasCashItem(userObjID, 536876096, 1) > 0 then
            api_npc_NextTalk(userObjID, npcObjID, "portal", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "no_item", npc_talk_target)
        end
    elseif npc_talk_index == "silver" then
        api_user_ChangeMap(userObjID, 176, 1, 1)
    elseif npc_talk_index == "anu_arendel" then
        api_user_ChangeMap(userObjID, 34, 1, 1)
    elseif npc_talk_index == "riverwart" then
        api_user_ChangeMap(userObjID, 14, 1, 1)
    elseif npc_talk_index == "hermalte_port" then
        api_user_ChangeMap(userObjID, 12, 1, 1)
    elseif npc_talk_index == "black_mountain" then
        api_user_ChangeMap(userObjID, 13, 1, 1)
    elseif npc_talk_index == "grey_ruin" then
        api_user_ChangeMap(userObjID, 9, 1, 1)
    elseif npc_talk_index == "redlotus_world" then
        api_user_ChangeMap(userObjID, 188, 1, 1)
    elseif npc_talk_index == "redlotus_inside" then
        api_user_ChangeMap(userObjID, 193, 1, 1)
    elseif npc_talk_index == "merca" then
        api_user_ChangeMap(userObjID, 54, 1, 1)
    elseif npc_talk_index == "ladames" then
        api_user_ChangeMap(userObjID, 175, 1, 1)
    elseif npc_talk_index == "merca_port" then
        api_user_ChangeMap(userObjID, 13043, 1, 1)
    elseif npc_talk_index == "saintheaven" then
        api_user_ChangeMap(userObjID, 11, 1)
    elseif npc_talk_index == "redlotus" then
        api_user_ChangeMap(userObjID, 187, 1)
    elseif npc_talk_index == "lotusmarsh" then
        api_user_ChangeMap(userObjID, 15, 1)
    elseif npc_talk_index == "catherock" then
        api_user_ChangeMap(userObjID, 8, 1)
    elseif npc_talk_index == "volcano" then
        api_user_ChangeMap(userObjID, 19001, 1, 1)
    elseif npc_talk_index == "guardian" then
        api_user_ChangeMap(userObjID, 19003, 1, 1)
    elseif npc_talk_index == "mist" then
        api_user_ChangeMap(userObjID, 19005, 1, 1)
    elseif npc_talk_index == "manti" then
        api_user_ChangeMap(userObjID, 19019, 1, 1)
    elseif npc_talk_index == "chiron" then
        api_user_ChangeMap(userObjID, 19007, 1, 1)
    elseif npc_talk_index == "daidalos" then
        api_user_ChangeMap(userObjID, 19022, 1, 1)
    elseif npc_talk_index == "granom" then
        api_user_ChangeMap(userObjID, 19013, 1, 1)
    elseif npc_talk_index == "serpenta" then
        api_user_ChangeMap(userObjID, 19016, 1, 1)
    elseif npc_talk_index == "prof" then
        api_user_ChangeMap(userObjID, 19012, 1, 1)
    elseif npc_talk_index == "bishop" then
        api_user_ChangeMap(userObjID, 19020, 1, 1)
    elseif npc_talk_index == "gigantes" then
        api_user_ChangeMap(userObjID, 19680, 1, 1)
    elseif npc_talk_index == "typhoon" then
        api_user_ChangeMap(userObjID, 19011, 1, 1)
    elseif npc_talk_index == "training" then
        api_user_ChangeMap(userObjID, 11111, 1)
    elseif npc_talk_index == "cxlwzz_001" then
        local jobToDialogueMap = {
            [1]     = "01_jobwacxlw",
            [106]   = "10601_jobwacxlw",
            [11]    = "1101_jobwacxlw",
            [12]    = "1201_jobwacxlw",
            [75]    = "7501_jobwacxlw",
            [2]     = "02_jobarcxlw",
            [14]    = "1402_jobarcxlw",
            [15]    = "1502_jobarcxlw",
            [80]    = "8002_jobarcxlw",
            [3]     = "03_jobsocxlw",
            [17]    = "1703_jobsocxlw",
            [18]    = "1803_jobsocxlw",
            [84]    = "8403_jobsocxlw",
            [4]     = "04_jobclcxlw",
            [20]    = "2004_jobclcxlw",
            [22]    = "2204_jobclcxlw",
            [82]    = "8204_jobclcxlw",
            [5]     = "05_jobaccxlw",
            [46]    = "4605_jobaccxlw",
            [49]    = "4905_jobaccxlw",
            [86]    = "8605_jobaccxlw",
            [6]     = "06_jobkacxlw",
            [54]    = "5406_jobkacxlw",
            [57]    = "5706_jobkacxlw",
            [88]    = "8806_jobkacxlw",
            [7]     = "07_jobascxlw",
            [67]    = "6707_jobascxlw",
            [62]    = "6207_jobascxlw",
            [90]    = "9007_jobascxlw",
            [8]     = "08_joblecxlw",
            [72]    = "7208_joblecxlw",
            [92]    = "9208_joblecxlw",
            [98]    = "9808_joblecxlw",
            [109]   = "09109_jobvacxlw", 
            [9]     = "09_jobmccxlw",
            [77]    = "7709_jobmccxlw",
            [95]    = "9509_jobmccxlw",
            [201]   = "10_jobvacxlw",
            [100]   = "10010_jobvacxlw",
            [101]   = "10110_jobvacxlw", 
        }
    
        local dialogueTag = jobToDialogueMap[api_user_GetUserJobID(userObjID)] or "99_jobcxlw"
        api_npc_NextTalk(userObjID, npcObjID, dialogueTag, npc_talk_target)
    elseif npc_talk_index == "jobcxlw_1_11" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 11)
            api_npc_NextTalk(userObjID, npcObjID, "1101_jobwacxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_12" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 12)
            api_npc_NextTalk(userObjID, npcObjID, "1201_jobwacxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_11_24" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 24)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_11_23" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 23)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_106" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 106)
            api_npc_NextTalk(userObjID, npcObjID, "10601_jobwacxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_106_107" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 107)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_106_108" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 108)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_12_25" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 25)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_12_26" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 26)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_75" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 75)
            api_user_SetUserJobID(userObjID, 76)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_1_75_76" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 76)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_2_14" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 14)
            api_npc_NextTalk(userObjID, npcObjID, "1402_jobarcxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_2_15" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 15)
            api_npc_NextTalk(userObjID, npcObjID, "1502_jobarcxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_2_80" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 80)
            api_user_SetUserJobID(userObjID, 81)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_2_14_29" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 29)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_2_14_30" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 30)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_2_15_31" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 31)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_2_15_32" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 32)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_2_80_81" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 81)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_3_17" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 17)
            api_npc_NextTalk(userObjID, npcObjID, "1703_jobsocxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_3_18" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 18)
            api_npc_NextTalk(userObjID, npcObjID, "1803_jobsocxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_3_84" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 84)
            api_user_SetUserJobID(userObjID, 85)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_3_17_35" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 35)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_3_17_36" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 36)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_3_18_37" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 37)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_3_18_38" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 38)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_3_84_85" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 85)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_4_20" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 20)
            api_npc_NextTalk(userObjID, npcObjID, "2004_jobclcxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_4_22" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 22)
            api_npc_NextTalk(userObjID, npcObjID, "2204_jobclcxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_4_82" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 82)
            api_user_SetUserJobID(userObjID, 83)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_4_20_41" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 41)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_4_20_42" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 42)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_4_22_43" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 43)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_4_22_44" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 44)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_4_82_83" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 83)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_5_46" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 46)
            api_npc_NextTalk(userObjID, npcObjID, "4605_jobaccxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_5_49" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 49)
            api_npc_NextTalk(userObjID, npcObjID, "4905_jobaccxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_5_86" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 86)
            api_user_SetUserJobID(userObjID, 87)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_5_49_50" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 50)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_5_49_51" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 51)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_5_46_47" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 47)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_5_46_48" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 48)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_5_86_87" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 87)
            api_user_SetUserJobID(userObjID, 88)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_6_54" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 54)
            api_npc_NextTalk(userObjID, npcObjID, "5406_jobkacxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_6_57" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 57)
            api_npc_NextTalk(userObjID, npcObjID, "5706_jobkacxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_6_88" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 88)
            api_user_SetUserJobID(userObjID, 89)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_6_54_55" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 55)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_6_54_56" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 56)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_6_57_58" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 58)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_6_57_59" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 59)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_6_88_89" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 89)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_7_62" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 62)
            api_npc_NextTalk(userObjID, npcObjID, "6207_jobascxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_7_62_63" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 63)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_7_62_64" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 64)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_7_67" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 67)
            api_npc_NextTalk(userObjID, npcObjID, "6707_jobascxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_7_67_68" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 68)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_7_67_69" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 69)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_7_90" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 90)
            api_user_SetUserJobID(userObjID, 91)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_7_90_91" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 91)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_8_72" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 72)
            api_npc_NextTalk(userObjID, npcObjID, "7208_joblecxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_8_92" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 92)
            api_npc_NextTalk(userObjID, npcObjID, "9208_joblecxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_8_72_73" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 73)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_8_72_74" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 74)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_8_92_93" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 93)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_8_92_94" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 94)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_9_77" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 77)
            api_npc_NextTalk(userObjID, npcObjID, "7709_jobmccxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_9_77_78" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 78)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_9_77_79" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 79)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_9_95" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 95)
            api_npc_NextTalk(userObjID, npcObjID, "9509_jobmccxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_9_95_96" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 96)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_9_95_97" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 97)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_9_109" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 109)
            api_user_SetUserJobID(userObjID, 110)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_9_109_110" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 110)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_8_98" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 98)
            api_user_SetUserJobID(userObjID, 99)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_8_98_99" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 99)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_10_100" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 100)
            api_npc_NextTalk(userObjID, npcObjID, "10010_jobvacxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_10_101" then
        if api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 101)
            api_npc_NextTalk(userObjID, npcObjID, "10110_jobvacxlw", npc_talk_target)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_10_100_102" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 102)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_10_100_103" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 103)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_10_100_104" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 104)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "jobcxlw_10_100_105" then
        if api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 105)
        else
            api_npc_NextTalk(userObjID, npcObjID, "99_lvjobcxlw", npc_talk_target)
        end
    elseif npc_talk_index == "heroskill" then
        api_user_ModAwakenLevel(userObjID, 1)
        api_user_SetStageDifficult(userObjID, 0, 34)
        api_user_SetStageDifficult(userObjID, 1, 34)

        local questIDs = {
            238, 239, 240, 241, 242, 243, 244, 245, 246, 747, 751, 755, 759, 764, 
            997, 998, 3601, 3612, 3618, 3658, 3663, 3760, 3814, 3843, 3846, 3849, 
            3852, 3855, 3858, 3861, 3864, 3867, 3870, 3874, 4069, 4071, 4072, 4073, 4357, 
            4604, 4687, 4724, 4766, 4781, 4838, 4871, 4885, 4894, 4966, 4976, 4992, 4995
        }

        for _, questID in ipairs(questIDs) do
            api_quest_ForceCompleteQuest(userObjID, questID, 1, 1, 1, 0)
        end

        api_user_UserMessage(userObjID, 6, 9953, Ts)
    else
        api_npc_NextTalk(userObjID, npcObjID, npc_talk_index, npc_talk_target)
    end
end

</VillageServer>

<GameServer>

function n2645_warp_stone_OnTalk(pRoom, userObjID, npcObjID, npc_talk_index, npc_talk_target)

    if npc_talk_index == "" then
        api_log_AddLog(pRoom, "npc_talk_index is null ..\n")
    elseif npc_talk_index == "start" then
        api_npc_NextTalk(pRoom, userObjID, npcObjID, "001", npc_talk_target)
    else
        api_npc_NextTalk(pRoom, userObjID, npcObjID, npc_talk_index, npc_talk_target)
    end

    if npc_talk_index == "silver" then
        api_user_ChangeMap(pRoom, userObjID, 176, 1, 1)
    elseif npc_talk_index == "anu_arendel" then
        api_user_ChangeMap(pRoom, userObjID, 34, 1, 1)
    elseif npc_talk_index == "riverwart" then
        api_user_ChangeMap(pRoom, userObjID, 14, 1, 1)
    elseif npc_talk_index == "hermalte_port" then
        api_user_ChangeMap(pRoom, userObjID, 12, 1, 1)
    elseif npc_talk_index == "black_mountain" then
        api_user_ChangeMap(pRoom, userObjID, 13, 1, 1)
    elseif npc_talk_index == "grey_ruin" then
        api_user_ChangeMap(pRoom, userObjID, 9, 1, 1)
    elseif npc_talk_index == "redlotus_world" then
        api_user_ChangeMap(pRoom, userObjID, 188, 1, 1)
    elseif npc_talk_index == "redlotus_inside" then
        api_user_ChangeMap(pRoom, userObjID, 193, 1, 1)
    elseif npc_talk_index == "merca" then
        api_user_ChangeMap(pRoom, userObjID, 54, 1, 1)
    elseif npc_talk_index == "ladames" then
        api_user_ChangeMap(pRoom, userObjID, 175, 1, 1)
    elseif npc_talk_index == "merca_port" then
        api_user_ChangeMap(pRoom, userObjID, 13043, 1, 1)
    elseif npc_talk_index == "saintheaven" then
        api_user_ChangeMap(pRoom, userObjID, 11, 1)
    elseif npc_talk_index == "redlotus" then
        api_user_ChangeMap(pRoom, userObjID, 187, 1)
    elseif npc_talk_index == "lotusmarsh" then
        api_user_ChangeMap(pRoom, userObjID, 15, 1)
    elseif npc_talk_index == "catherock" then
        api_user_ChangeMap(pRoom, userObjID, 8, 1)
    elseif npc_talk_index == "volcano" then
        api_user_ChangeMap(pRoom, userObjID, 19001, 1, 1)
    elseif npc_talk_index == "guardian" then
        api_user_ChangeMap(pRoom, userObjID, 19003, 1, 1)
    elseif npc_talk_index == "mist" then
        api_user_ChangeMap(pRoom, userObjID, 19005, 1, 1)
    elseif npc_talk_index == "manti" then
        api_user_ChangeMap(pRoom, userObjID, 19019, 1, 1)
    elseif npc_talk_index == "chiron" then
        api_user_ChangeMap(pRoom, userObjID, 19007, 1, 1)
    elseif npc_talk_index == "daidalos" then
        api_user_ChangeMap(pRoom, userObjID, 19022, 1, 1)
    elseif npc_talk_index == "granom" then
        api_user_ChangeMap(pRoom, userObjID, 19013, 1, 1)
    elseif npc_talk_index == "serpenta" then
        api_user_ChangeMap(pRoom, userObjID, 19016, 1, 1)
    elseif npc_talk_index == "prof" then
        api_user_ChangeMap(pRoom, userObjID, 19012, 1, 1)
    elseif npc_talk_index == "bishop" then
        api_user_ChangeMap(pRoom, userObjID, 19020, 1, 1)
    elseif npc_talk_index == "gigantes" then
        api_user_ChangeMap(pRoom, userObjID, 19680, 1, 1)
    elseif npc_talk_index == "typhoon" then
        api_user_ChangeMap(pRoom, userObjID, 19011, 1, 1)
    else
        api_npc_NextTalk(pRoom, userObjID, npcObjID, npc_talk_index, npc_talk_target)
    end
end

</GameServer>
