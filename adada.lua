<VillageServer>


function n2645_warp_stone_OnTalk(userObjID, npcObjID, npc_talk_index, npc_talk_target)

	local job3rd = {23, 24, 25, 26, 29, 30, 31, 32, 35, 36, 37, 38, 41, 42, 43, 44, 45, 47, 48, 50, 51, 55, 56, 58, 59, 63, 64, 68, 69, 73, 74, 76, 78, 79, 81, 83, 85, 87, 89, 91, 93, 94, 96, 97, 99, 102, 103, 104, 105, 107, 108, 110}
    local function is_finaljob (tab, val)
        for index, value in ipairs(tab) do
            if value == val then
                return true
            end
        end

        return false
    end

    if npc_talk_index == "" then
        api_log_AddLog("npc_talk_index is null ..\n");
    elseif npc_talk_index == "start" then
        if not is_finaljob(job3rd, api_user_GetUserJobID(userObjID)) then
            api_npc_NextTalk(userObjID, npcObjID, "firstjob", npc_talk_target);
        elseif api_quest_IsMarkingCompleteQuest( userObjID, 3874) == 0 then
            api_npc_NextTalk(userObjID, npcObjID, "unlockhero", npc_talk_target);
        else
            api_npc_NextTalk(userObjID, npcObjID, "001", npc_talk_target);
        end
    elseif npc_talk_index == "customshop" then
        api_ui_OpenShop(userObjID,20240300,100);		
    elseif npc_talk_index == "training" then
        api_npc_NextTalk(userObjID, npcObjID, "training_0", npc_talk_target);
    elseif npc_talk_index == "training_1" then
        api_user_ChangeMap(userObjID, 11111, 1);

    elseif npc_talk_index == "heroskill" then
        api_quest_ForceCompleteQuest( userObjID, 238, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 239, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 240, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 241, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 242, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 243, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 244, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 245, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 246, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 747, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 751, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 755, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 759, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 764, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3601, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3612, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3618, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3658, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3663, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3760, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3814, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3843, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3846, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3849, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3852, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3855, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3858, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3861, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3864, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3867, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 3870, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4069, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4357, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4604, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4687, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4724, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4766, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4781, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4838, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4871, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4885, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4894, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4966, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4976, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4992, 1, 1, 1, 0);
        api_quest_ForceCompleteQuest( userObjID, 4995, 1, 1, 1, 0);
        api_user_ModAwakenLevel(userObjID, 1);
        api_quest_ForceCompleteQuest( userObjID, 3874, 1, 1, 1, 0);
        api_user_SetStageDifficult(userObjID,0,34);
        api_user_SetStageDifficult(userObjID,1,34);
        api_user_UserMessage(userObjID,6,9953, Ts);

        -- SetJob Part
        -- Special Job
        -- elseif npc_talk_index == "job_1_75" then
        -- if api_user_GetUserJobID(userObjID) == 1 and api_user_GetUserLevel(userObjID) >= 15 then
        -- api_user_SetUserJobID(userObjID, 75);
        -- else
        -- npc_talk_index = "_fail_error";
        -- end
    elseif npc_talk_index == "job_1_75_76" then
        if api_user_GetUserJobID(userObjID) == 75 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 76);
        else
            npc_talk_index = "_fail_error";
        end
        -- elseif npc_talk_index == "job_2_80" then
        -- if api_user_GetUserJobID(userObjID) == 2 and api_user_GetUserLevel(userObjID) >= 15 then
        -- api_user_SetUserJobID(userObjID, 80);
        -- else
        -- npc_talk_index = "_fail_error";
        -- end
    elseif npc_talk_index == "job_2_80_81" then
        if api_user_GetUserJobID(userObjID) == 80 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 81);
        else
            npc_talk_index = "_fail_error";
        end
        -- elseif npc_talk_index == "job_3_84" then
        -- if api_user_GetUserJobID(userObjID) == 3 and api_user_GetUserLevel(userObjID) >= 15 then
        -- api_user_SetUserJobID(userObjID, 84);
        -- else
        -- npc_talk_index = "_fail_error";
        -- end
    elseif npc_talk_index == "job_3_84_85" then
        if api_user_GetUserJobID(userObjID) == 84 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 85);
        else
            npc_talk_index = "_fail_error";
        end
        -- elseif npc_talk_index == "job_4_82" then
        -- if api_user_GetUserJobID(userObjID) == 4 and api_user_GetUserLevel(userObjID) >= 15 then
        -- api_user_SetUserJobID(userObjID, 82);
        -- else
        -- npc_talk_index = "_fail_error";
        -- end
    elseif npc_talk_index == "job_4_82_83" then
        if api_user_GetUserJobID(userObjID) == 82 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 83);
        else
            npc_talk_index = "_fail_error";
        end
        -- elseif npc_talk_index == "job_5_86" then
        -- if api_user_GetUserJobID(userObjID) == 5 and api_user_GetUserLevel(userObjID) >= 15 then
        -- api_user_SetUserJobID(userObjID, 86);
        -- else
        -- npc_talk_index = "_fail_error";
        -- end
    elseif npc_talk_index == "job_5_86_87" then
        if api_user_GetUserJobID(userObjID) == 86 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 87);
        else
            npc_talk_index = "_fail_error";
        end
        -- elseif npc_talk_index == "job_6_88" then
        -- if api_user_GetUserJobID(userObjID) == 6 and api_user_GetUserLevel(userObjID) >= 15 then
        -- api_user_SetUserJobID(userObjID, 88);
        -- else
        -- npc_talk_index = "_fail_error";
        -- end
    elseif npc_talk_index == "job_6_88_89" then
        if api_user_GetUserJobID(userObjID) == 88 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 89);
        else
            npc_talk_index = "_fail_error";
        end
        -- elseif npc_talk_index == "job_7_90" then
        -- if api_user_GetUserJobID(userObjID) == 7 and api_user_GetUserLevel(userObjID) >= 15 then
        -- api_user_SetUserJobID(userObjID, 90);
        -- else
        -- npc_talk_index = "_fail_error";
        -- end
    elseif npc_talk_index == "job_7_90_91" then
        if api_user_GetUserJobID(userObjID) == 90 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 91);
        else
            npc_talk_index = "_fail_error";
        end
        -- elseif npc_talk_index == "job_8_98" then
        -- if api_user_GetUserJobID(userObjID) == 8 and api_user_GetUserLevel(userObjID) >= 15 then
        -- api_user_SetUserJobID(userObjID, 98);
        -- else
        -- npc_talk_index = "_fail_error";
        -- end
    elseif npc_talk_index == "job_8_98_99" then
        if api_user_GetUserJobID(userObjID) == 98 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 99);
        else
            npc_talk_index = "_fail_error";
        end

        -- Default Job
        -- Warrior
    elseif npc_talk_index == "job_1_11" then
        if api_user_GetUserJobID(userObjID) == 1 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 11);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_1_12" then
        if api_user_GetUserJobID(userObjID) == 1 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 12);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_1_106" then
        if api_user_GetUserJobID(userObjID) == 1 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 106);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_1_11_24" then
        if api_user_GetUserJobID(userObjID) == 11 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 24);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_1_11_23" then
        if api_user_GetUserJobID(userObjID) == 11 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 23);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_1_12_25" then
        if api_user_GetUserJobID(userObjID) == 12 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 25);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_1_12_26" then
        if api_user_GetUserJobID(userObjID) == 12 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 26);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_1_106_107" then
        if api_user_GetUserJobID(userObjID) == 106 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 107);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_1_106_108" then
        if api_user_GetUserJobID(userObjID) == 106 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 108);
        else
            npc_talk_index = "_fail_error";
        end

        -- Archer
    elseif npc_talk_index == "job_2_14" then
        if api_user_GetUserJobID(userObjID) == 2 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 14);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_2_15" then
        if api_user_GetUserJobID(userObjID) == 2 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 15);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_2_14_29" then
        if api_user_GetUserJobID(userObjID) == 14 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 29);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_2_14_30" then
        if api_user_GetUserJobID(userObjID) == 14 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 30);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_2_15_31" then
        if api_user_GetUserJobID(userObjID) == 15 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 31);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_2_15_32" then
        if api_user_GetUserJobID(userObjID) == 15 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 32);
        else
            npc_talk_index = "_fail_error";
        end

        -- Soceress
    elseif npc_talk_index == "job_3_17" then
        if api_user_GetUserJobID(userObjID) == 3 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 17);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_3_18" then
        if api_user_GetUserJobID(userObjID) == 3 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 18);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_3_17_35" then
        if api_user_GetUserJobID(userObjID) == 17 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 35);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_3_17_36" then
        if api_user_GetUserJobID(userObjID) == 17 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 36);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_3_18_37" then
        if api_user_GetUserJobID(userObjID) == 18 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 37);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_3_18_38" then
        if api_user_GetUserJobID(userObjID) == 18 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 38);
        else
            npc_talk_index = "_fail_error";
        end

        -- Cleric
    elseif npc_talk_index == "job_4_20" then
        if api_user_GetUserJobID(userObjID) == 4 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 20);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_4_22" then
        if api_user_GetUserJobID(userObjID) == 4 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 22);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_4_20_41" then
        if api_user_GetUserJobID(userObjID) == 20 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 41);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_4_20_42" then
        if api_user_GetUserJobID(userObjID) == 20 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 42);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_4_22_43" then
        if api_user_GetUserJobID(userObjID) == 22 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 43);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_4_22_44" then
        if api_user_GetUserJobID(userObjID) == 22 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 44);
        else
            npc_talk_index = "_fail_error";
        end

        -- Academic
    elseif npc_talk_index == "job_5_46" then
        if api_user_GetUserJobID(userObjID) == 5 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 46);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_5_49_50" then
        if api_user_GetUserJobID(userObjID) == 49 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 50);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_5_49_51" then
        if api_user_GetUserJobID(userObjID) == 49 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 51);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_5_46_47" then
        if api_user_GetUserJobID(userObjID) == 46 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 47);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_5_46_48" then
        if api_user_GetUserJobID(userObjID) == 46 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 48);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_5_49" then
        if api_user_GetUserJobID(userObjID) == 5 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 49);
        else
            npc_talk_index = "_fail_error";
        end

        -- Kali
    elseif npc_talk_index == "job_6_54" then
        if api_user_GetUserJobID(userObjID) == 6 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 54);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_6_57" then
        if api_user_GetUserJobID(userObjID) == 6 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 57);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_6_54_55" then
        if api_user_GetUserJobID(userObjID) == 54 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 55);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_6_54_56" then
        if api_user_GetUserJobID(userObjID) == 54 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 56);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_6_57_58" then
        if api_user_GetUserJobID(userObjID) == 57 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 58);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_6_57_59" then
        if api_user_GetUserJobID(userObjID) == 57 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 59);
        else
            npc_talk_index = "_fail_error";
        end

        -- Assassin
    elseif npc_talk_index == "job_7_62" then
        if api_user_GetUserJobID(userObjID) == 7 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 62);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_7_62_63" then
        if api_user_GetUserJobID(userObjID) == 62 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 63);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_7_62_64" then
        if api_user_GetUserJobID(userObjID) == 62 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 64);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_7_67" then
        if api_user_GetUserJobID(userObjID) == 7 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 67);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_7_67_68" then
        if api_user_GetUserJobID(userObjID) == 67 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 68);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_7_67_69" then
        if api_user_GetUserJobID(userObjID) == 67 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 69);
        else
            npc_talk_index = "_fail_error";
        end

        --Lencea
    elseif npc_talk_index == "job_8_72" then
        if api_user_GetUserJobID(userObjID) == 8 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 72);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_8_72_73" then
        if api_user_GetUserJobID(userObjID) == 72 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 73);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_8_72_74" then
        if api_user_GetUserJobID(userObjID) == 72 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 74);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_8_92" then
        if api_user_GetUserJobID(userObjID) == 8 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 92);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_8_92_93" then
        if api_user_GetUserJobID(userObjID) == 92 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 93);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_8_92_94" then
        if api_user_GetUserJobID(userObjID) == 92 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 94);
        else
            npc_talk_index = "_fail_error";
        end

        --Machina
    elseif npc_talk_index == "job_9_77" then
        if api_user_GetUserJobID(userObjID) == 9 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 77);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_9_77_78" then
        if api_user_GetUserJobID(userObjID) == 77 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 78);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_9_77_79" then
        if api_user_GetUserJobID(userObjID) == 77 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 79);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_9_95" then
        if api_user_GetUserJobID(userObjID) == 9 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 95);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_9_95_96" then
        if api_user_GetUserJobID(userObjID) == 95 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 96);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_9_95_97" then
        if api_user_GetUserJobID(userObjID) == 95 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 97);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_9_109" then
        if api_user_GetUserJobID(userObjID) == 9 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 109);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_9_109_110" then
        if api_user_GetUserJobID(userObjID) == 95 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 110);
        else
            npc_talk_index = "_fail_error";
        end	

        -- Vandar
    elseif npc_talk_index == "job_10_100" then
        if api_user_GetUserJobID(userObjID) == 201 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 100);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_10_100_102" then
        if api_user_GetUserJobID(userObjID) == 100 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 102);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_10_100_103" then
        if api_user_GetUserJobID(userObjID) == 100 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 103);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_10_101" then
        if api_user_GetUserJobID(userObjID) == 201 and api_user_GetUserLevel(userObjID) >= 15 then
            api_user_SetUserJobID(userObjID, 101);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_10_101_104" then
        if api_user_GetUserJobID(userObjID) == 101 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 104);
        else
            npc_talk_index = "_fail_error";
        end
    elseif npc_talk_index == "job_10_101_105" then
        if api_user_GetUserJobID(userObjID) == 101 and api_user_GetUserLevel(userObjID) >= 45 then
            api_user_SetUserJobID(userObjID, 105);
        else
            npc_talk_index = "_fail_error";
        end		

        -- Aziz Simplified Change Job . Jan 7, 2016
        -- Warrior
    elseif api_user_GetUserClassID(userObjID) == 1 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 1 then
            api_npc_NextTalk(userObjID, npcObjID, "job1", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 11 then
                api_npc_NextTalk(userObjID, npcObjID, "job111", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 12 then
                api_npc_NextTalk(userObjID, npcObjID, "job112", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 75 then
                api_npc_NextTalk(userObjID, npcObjID, "job175", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 106 then
                api_npc_NextTalk(userObjID, npcObjID, "job1106", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Archer
    elseif api_user_GetUserClassID(userObjID) == 2 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 2 then
            api_npc_NextTalk(userObjID, npcObjID, "job2", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 14 then
                api_npc_NextTalk(userObjID, npcObjID, "job214", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 15 then
                api_npc_NextTalk(userObjID, npcObjID, "job215", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 80 then
                api_npc_NextTalk(userObjID, npcObjID, "job280", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Soceress
    elseif api_user_GetUserClassID(userObjID) == 3 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 3 then
            api_npc_NextTalk(userObjID, npcObjID, "job3", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 17 then
                api_npc_NextTalk(userObjID, npcObjID, "job317", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 18 then
                api_npc_NextTalk(userObjID, npcObjID, "job318", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 84 then
                api_npc_NextTalk(userObjID, npcObjID, "job384", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Cleric
    elseif api_user_GetUserClassID(userObjID) == 4 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 4 then
            api_npc_NextTalk(userObjID, npcObjID, "job4", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 20 then
                api_npc_NextTalk(userObjID, npcObjID, "job420", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 22 then
                api_npc_NextTalk(userObjID, npcObjID, "job422", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 82 then
                api_npc_NextTalk(userObjID, npcObjID, "job482", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Academic
    elseif api_user_GetUserClassID(userObjID) == 5 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 5 then
            api_npc_NextTalk(userObjID, npcObjID, "job5", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 46 then
                api_npc_NextTalk(userObjID, npcObjID, "job546", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 49 then
                api_npc_NextTalk(userObjID, npcObjID, "job549", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 86 then
                api_npc_NextTalk(userObjID, npcObjID, "job586", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Kali
    elseif api_user_GetUserClassID(userObjID) == 6 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 6 then
            api_npc_NextTalk(userObjID, npcObjID, "job6", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 54 then
                api_npc_NextTalk(userObjID, npcObjID, "job654", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 57 then
                api_npc_NextTalk(userObjID, npcObjID, "job657", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 88 then
                api_npc_NextTalk(userObjID, npcObjID, "job688", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Assassin
    elseif api_user_GetUserClassID(userObjID) == 7 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 7 then
            api_npc_NextTalk(userObjID, npcObjID, "job7", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 62 then
                api_npc_NextTalk(userObjID, npcObjID, "job762", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 67 then
                api_npc_NextTalk(userObjID, npcObjID, "job767", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 90 then
                api_npc_NextTalk(userObjID, npcObjID, "job790", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Lencea
    elseif api_user_GetUserClassID(userObjID) == 8 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 8 then
            api_npc_NextTalk(userObjID, npcObjID, "job8", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 72 then
                api_npc_NextTalk(userObjID, npcObjID, "job872", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 92 then
                api_npc_NextTalk(userObjID, npcObjID, "job892", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 98 then
                api_npc_NextTalk(userObjID, npcObjID, "job898", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Machina
    elseif api_user_GetUserClassID(userObjID) == 9 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 9 then
            api_npc_NextTalk(userObjID, npcObjID, "job9", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 77 then
                api_npc_NextTalk(userObjID, npcObjID, "job977", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 95 then
                api_npc_NextTalk(userObjID, npcObjID, "job995", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 109 then
                api_npc_NextTalk(userObjID, npcObjID, "job9109", npc_talk_target);				
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

        -- Vandar
    elseif api_user_GetUserClassID(userObjID) == 10 then
        if npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 and api_user_GetUserJobID(userObjID) == 201 then
            api_npc_NextTalk(userObjID, npcObjID, "job10", npc_talk_target);

        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 45 then
            if api_user_GetUserJobID(userObjID) == 100 then
                api_npc_NextTalk(userObjID, npcObjID, "job10100", npc_talk_target);
            elseif api_user_GetUserJobID(userObjID) == 101 then
                api_npc_NextTalk(userObjID, npcObjID, "job10101", npc_talk_target);
            else
                api_npc_NextTalk(userObjID, npcObjID, "_fail_full", npc_talk_target);
            end
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) < 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv15", npc_talk_target);
        elseif npc_talk_index == "job" and api_user_GetUserLevel(userObjID) >= 15 then
            api_npc_NextTalk(userObjID, npcObjID, "_fail_lv45", npc_talk_target);
        end

    else
        api_npc_NextTalk(userObjID, npcObjID, npc_talk_index, npc_talk_target);
    end

end

</VillageServer>



<GameServer>

function n2645_warp_stone_OnTalk( pRoom, userObjID, npcObjID, npc_talk_index, npc_talk_target)

	if npc_talk_index == "" then
		api_log_AddLog( pRoom, "npc_talk_index is null ..\n");
    elseif npc_talk_index == "customshop" then
        api_ui_OpenShop( pRoom, userObjID,20240300,100);          	
	elseif npc_talk_index == "start" then
		api_npc_NextTalk( pRoom, userObjID, npcObjID, "001", npc_talk_target);
	else
		api_npc_NextTalk( pRoom, userObjID, npcObjID, npc_talk_index, npc_talk_target);
	end

end

</GameServer>
