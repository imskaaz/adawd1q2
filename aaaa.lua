
g_Description = "[M] 35. ������ ƴ ����Ȯ�� ������ġ %, %, %, %, % �� è�Ǿ� %��(�⺻0:Random)(0~1), ������ ���� % ���� (3~5), ������ ƴ Ȱ��ȭ %"
g_ParamType = { "Value","Value","Value","Value","Value", "Integer", "Integer", "Value" }

function Action( Zone_1,Zone_2,Zone_3,Zone_4,Zone_5,ChampNumSelect, ZoneNum, ArkChamp )

	ActorHandle = api_trigger_GetPartyActor(g_room,1);  -- ���� ����
	
	
	local Start = api_trigger_GetRandomRange(g_room,1,1000);
    local ChampPossibility = api_trigger_TriggerVariableTable( g_room, 4015 )
    local ArkPossibility = api_trigger_TriggerVariableTable( g_room, 4016 )
	local RandomZoneNum1 = 0
	local RandomZoneNum2 = 0
	local RandomZoneNum3 = 0
	local ChampNumSelectZone = ChampNumSelect
	local ChampNum = nil
    local Arkset = api_trigger_GetRandomRange(g_room,1,100); -- ������ ƴ Ȱ��ȭ Ȯ��
	local dimension = 0
    
    if ZoneNum < 3 then
        ZoneNum = 3;
    elseif ZoneNum > 5 then
        ZoneNum = 5;
    end
      
    Count = api_trigger_GetPartyCount(g_room);
	for i = 1, Count do 
	  ActorHandle = api_trigger_GetPartyActor(g_room,i);  
	  api_log_UserLog(g_room, ActorHandle, "������ ƴ ����-����Ȯ�� - 37.5 �ۼ�Ʈ"); -- ���� ����
	end
	
	ActorHandle = api_trigger_GetPartyActor(g_room,1);  -- ���� ����
	
	api_log_UserLog(g_room, ActorHandle, Start );-- ���� ����
	
	if api_trigger_CheckDolisEvent(g_room, 1, 1 ) == true then
		do
		api_log_UserLog(g_room, ActorHandle, "������ Ȱ�� Ȯ��: �Ƚ�ó 300%Ȯ��"); -- ������ �̺�Ʈ 1-1 Ȱ�� ��, 100%�� ħ���� ����
		end		
	end
	
	if api_trigger_CheckDolisEvent(g_room, 1, 2 ) == true then
		do
		api_log_UserLog(g_room, ActorHandle, "������ Ȱ�� Ȯ��: �Ƚ�ó 500%Ȯ��"); -- ������ �̺�Ʈ 1-1 Ȱ�� ��, 100%�� ħ���� ����
		end		
	end
	
	if api_trigger_CheckDolisEvent(g_room, 1, 3 ) == true then
		do
		api_log_UserLog(g_room, ActorHandle, "������ Ȱ�� Ȯ��: �Ƚ�ó 1000%Ȯ��"); -- ������ �̺�Ʈ 1-1 Ȱ�� ��, 100%�� ħ���� ����
		end		
	end
    
    if Start <= ChampPossibility then

        api_log_UserLog(g_room, ActorHandle, "������ ƴ Ȱ��?");-- ���� ����
        floorCheck = api_trigger_GetStageExDifficultLevel( g_room )	
        partyLevelCount = 0;
    
        for i = 1, Count do
            ActorHandle = api_trigger_GetPartyActor(g_room,i);  
            if api_trigger_GetUserLevelByTrigger(g_room,ActorHandle) >= 99 then -- ��Ƽ�� �Ѹ��� 99 �̻��϶��� üũ
                partyLevelCount = partyLevelCount + 1; -- 99 �̻��϶� ���� 1�� �ø�
            end
            api_log_UserLog(g_room, ActorHandle, "���� üũ�Ϸ�");
            api_log_UserLog(g_room, ActorHandle, Arkset );-- ���� ����
        end
    
        if partyLevelCount == Count then -- ���� ��Ƽ�� ���� ������ ����� ���� �������� üũ == ���� ���� Ȯ��
            if floorCheck >= 19 then -- 15�� �̻��϶� = �� ���� Ȯ��
                if Arkset <= ArkPossibility then -- ������ ƴ Ȱ��ȭ
                    api_log_UserLog(g_room, ActorHandle, "Ȱ��,�α׺���");
                    g_value[ArkChamp] = 1;
                    dimension = 1;
                    Count = api_trigger_GetPartyCount(g_room)
                    for i = 1, Count do 
                        ActorHandle = api_trigger_GetPartyActor(g_room,i)
                        api_trigger_ActivateMission(g_room, ActorHandle, 6293)		
                    end
                elseif Arkset > ArkPossibility then
                    api_log_UserLog(g_room, ActorHandle, "��Ȱ��"); -- ������ ƴ ��Ȱ��ȭ
                end
            else
                api_log_UserLog(g_room, ActorHandle, "��񸰽� ���� ������"); -- ������ ƴ ��Ȱ��ȭ
            end
        else
            api_log_UserLog(g_room, ActorHandle, "���� ���� ������"); -- ������ ƴ ��Ȱ��ȭ
        end    
        
		
		if dimension == 1 then -- ������ ƴ ���� ħ���� ���� ����
            api_log_UserLog(g_room, ActorHandle, "������ ƴ ����")
        
		-- 0�϶� 1~3���� �����ϰ�, 1�϶� �Ѹ��� Ȯ��, 2�϶� 1~2���� Ȯ��, 3�϶� 3���� Ȯ��
			if ChampNumSelectZone == 0 then
				ChampNum = api_trigger_GetRandomRange(g_room,1,100);
				api_log_UserLog(g_room, ActorHandle, "ħ����_0_1~2���� ����");-- ���� ����
			end	

			if ChampNumSelectZone == 1 then
				ChampNum = api_trigger_GetRandomRange(g_room,1,100);
				api_log_UserLog(g_room, ActorHandle, "è�Ǿ�_1_1���� Ȯ��");-- ���� ����
			end
            
            if ChampNumSelectZone == 11  then
				soloBossChcek = api_trigger_GetRandomRange(g_room,1, 100);
				api_log_UserLog(g_room, ActorHandle, soloBossChcek);-- ���� ����
				if soloBossChcek <= 50 then
					ChampNum = api_trigger_GetRandomRange(g_room, 1, 90 );
					api_log_UserLog(g_room, ActorHandle, "3���̻� ������ ������ ���������� �߰� ���� ����");-- ���� ����
				end
			end
		
            
		else
            api_log_UserLog(g_room, ActorHandle, "�Ϲ� ħ���� ����")
			if ChampNumSelectZone == 0 then
				ChampNum = api_trigger_GetRandomRange(g_room,1,100);
				api_log_UserLog(g_room, ActorHandle, "è�Ǿ�test_0_1~2���� ����");-- ���� ����
			end	

			if ChampNumSelectZone == 1 then
				ChampNum = api_trigger_GetRandomRange(g_room,1,100);
				api_log_UserLog(g_room, ActorHandle, "è�Ǿ�test_1_1~2���� ����");-- ���� ����
			end
            
            if ChampNumSelectZone == 11  then
				soloBossChcek = api_trigger_GetRandomRange(g_room,1, 100);
				api_log_UserLog(g_room, ActorHandle, soloBossChcek);-- ���� ����
				if soloBossChcek <= 50 then
					ChampNum = api_trigger_GetRandomRange(g_room, 1, 90 );
					api_log_UserLog(g_room, ActorHandle, "3���̻� ������ ������ ���������� �߰� ���� ����");-- ���� ����
				end
			end

		end
		
		-- è�Ǿ� ������ Ȯ�� ���� ���� ��ġ ���� ����, 1���� 80��, 2���� 15��, 3���� 5��
		if ChampNum <= 90 then
			RandomZoneNum1 = api_trigger_GetRandomRange(g_room,1,ZoneNum);
			api_log_UserLog(g_room, ActorHandle, "è�Ǿ��Ѹ���");-- ���� ����
			
		elseif ChampNum > 90 and ChampNum <= 100 then
			RandomZoneNum1 = api_trigger_GetRandomRange(g_room,1,ZoneNum);
			RandomZoneNum2 = api_trigger_GetRandomRange(g_room,1,ZoneNum);
			while RandomZoneNum1 == RandomZoneNum2 do
				RandomZoneNum2 = api_trigger_GetRandomRange(g_room,1,ZoneNum);
			end
			api_log_UserLog(g_room, ActorHandle, "è�Ǿ�θ���");-- ���� ����
		end
	end
	
	-- ��ġ ���� ����
	if RandomZoneNum1 == 1 then
		g_value[Zone_1] = g_value[Zone_1] + 9999;
		api_log_UserLog(g_room, ActorHandle, "1��");-- ���� ����
	elseif RandomZoneNum1 == 2 then
		g_value[Zone_2] = g_value[Zone_2] + 9999;
		api_log_UserLog(g_room, ActorHandle, "2��");-- ���� ����
	elseif RandomZoneNum1 == 3 then
		g_value[Zone_3] = g_value[Zone_3] + 9999;
		api_log_UserLog(g_room, ActorHandle, "3��");-- ���� ����
	elseif RandomZoneNum1 == 4 then
		g_value[Zone_4] = g_value[Zone_4] + 9999;
		api_log_UserLog(g_room, ActorHandle, "4��");-- ���� ����
	elseif RandomZoneNum1 == 5 then
		g_value[Zone_5] = g_value[Zone_5] + 9999;
		api_log_UserLog(g_room, ActorHandle, "5��");-- ���� ����
	end
	
	if RandomZoneNum2 == 1 then
		g_value[Zone_1] = g_value[Zone_1] + 9999;
		api_log_UserLog(g_room, ActorHandle, "1��");-- ���� ����
	elseif RandomZoneNum2 == 2 then
		g_value[Zone_2] = g_value[Zone_2] + 9999;
		api_log_UserLog(g_room, ActorHandle, "2��");-- ���� ����
	elseif RandomZoneNum2 == 3 then
		g_value[Zone_3] = g_value[Zone_3] + 9999;
		api_log_UserLog(g_room, ActorHandle, "3��");-- ���� ����
	elseif RandomZoneNum2 == 4 then
		g_value[Zone_4] = g_value[Zone_4] + 9999;
		api_log_UserLog(g_room, ActorHandle, "4��");-- ���� ����
	elseif RandomZoneNum2 == 5 then
		g_value[Zone_5] = g_value[Zone_5] + 9999;
		api_log_UserLog(g_room, ActorHandle, "5��");-- ���� ����
	end


    return true
end
