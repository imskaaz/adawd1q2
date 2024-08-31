
g_Description = "[M] 35. 차원의 틈 높은확률 등장위치 %, %, %, %, % 와 챔피언 %명(기본0:Random)(0~1), 등장존 개수 % 세팅 (3~5), 차원의 틈 활성화 %"
g_ParamType = { "Value","Value","Value","Value","Value", "Integer", "Integer", "Value" }

function Action( Zone_1,Zone_2,Zone_3,Zone_4,Zone_5,ChampNumSelect, ZoneNum, ArkChamp )

	ActorHandle = api_trigger_GetPartyActor(g_room,1);  -- 삭제 예정
	
	
	local Start = api_trigger_GetRandomRange(g_room,1,1000,4015);
    local ChampPossibility = api_trigger_TriggerVariableTable( g_room, 4015 )
    local ArkPossibility = api_trigger_TriggerVariableTable( g_room, 4016 )
	local RandomZoneNum1 = 0
	local RandomZoneNum2 = 0
	local RandomZoneNum3 = 0
	local ChampNumSelectZone = ChampNumSelect
	local ChampNum = nil
    local Arkset = api_trigger_GetRandomRange(g_room,1,100,4016); -- 차원의 틈 활성화 확률
	local dimension = 0
    
    if ZoneNum < 3 then
        ZoneNum = 3;
    elseif ZoneNum > 5 then
        ZoneNum = 5;
    end
      
    Count = api_trigger_GetPartyCount(g_room);
	for i = 1, Count do 
	  ActorHandle = api_trigger_GetPartyActor(g_room,i);  
	  api_log_UserLog(g_room, ActorHandle, "차원의 틈 세팅-높은확률 - 37.5 퍼센트"); -- 삭제 예정
	end
	
	ActorHandle = api_trigger_GetPartyActor(g_room,1);  -- 삭제 예정
	
	api_log_UserLog(g_room, ActorHandle, Start );-- 삭제 예정
	
	if api_trigger_CheckDolisEvent(g_room, 1, 1 ) == true then
		do
		api_log_UserLog(g_room, ActorHandle, "도리스 활성 확인: 안식처 300%확률"); -- 도리스 이벤트 1-1 활성 시, 100%로 침략자 등장
		end		
	end
	
	if api_trigger_CheckDolisEvent(g_room, 1, 2 ) == true then
		do
		api_log_UserLog(g_room, ActorHandle, "도리스 활성 확인: 안식처 500%확률"); -- 도리스 이벤트 1-1 활성 시, 100%로 침략자 등장
		end		
	end
	
	if api_trigger_CheckDolisEvent(g_room, 1, 3 ) == true then
		do
		api_log_UserLog(g_room, ActorHandle, "도리스 활성 확인: 안식처 1000%확률"); -- 도리스 이벤트 1-1 활성 시, 100%로 침략자 등장
		end		
	end
    
    if Start <= ChampPossibility then

        api_log_UserLog(g_room, ActorHandle, "차원의 틈 활성?");-- 삭제 예정
        floorCheck = api_trigger_GetStageExDifficultLevel( g_room )	
        partyLevelCount = 0;
    
        for i = 1, Count do
            ActorHandle = api_trigger_GetPartyActor(g_room,i);  
            if api_trigger_GetUserLevelByTrigger(g_room,ActorHandle) >= 99 then -- 파티원 한명씩 99 이상일때를 체크
                partyLevelCount = partyLevelCount + 1; -- 99 이상일때 숫자 1씩 올림
            end
            api_log_UserLog(g_room, ActorHandle, "레벨 체크완료");
            api_log_UserLog(g_room, ActorHandle, Arkset );-- 삭제 예정
        end
    
        if partyLevelCount == Count then -- 만렙 파티원 수와 입장한 사람들 수가 동일한지 체크 == 만렙 조건 확인
            if floorCheck >= 19 then -- 15층 이상일때 = 층 조건 확인
                if Arkset <= ArkPossibility then -- 차원의 틈 활성화
                    api_log_UserLog(g_room, ActorHandle, "활성,로그보냄");
                    g_value[ArkChamp] = 1;
                    dimension = 1;
                    Count = api_trigger_GetPartyCount(g_room)
                    for i = 1, Count do 
                        ActorHandle = api_trigger_GetPartyActor(g_room,i)
                        api_trigger_ActivateMission(g_room, ActorHandle, 6293)
                        api_trigger_AddCharacterActionOtherLog(g_room,ActorHandle,10000,0,0,0,0,0,0)			
                    end
                elseif Arkset > ArkPossibility then
                    api_log_UserLog(g_room, ActorHandle, "비활성"); -- 차원의 틈 비활성화
                end
            else
                api_log_UserLog(g_room, ActorHandle, "라비린스 조건 미충족"); -- 차원의 틈 비활성화
            end
        else
            api_log_UserLog(g_room, ActorHandle, "레벨 조건 미충족"); -- 차원의 틈 비활성화
        end    
        
		
		if dimension == 1 then -- 차원의 틈 전용 침략자 등장 세팅
            api_log_UserLog(g_room, ActorHandle, "차원의 틈 로직")
        
		-- 0일땐 1~3마리 랜덤하게, 1일땐 한마리 확정, 2일땐 1~2마리 확정, 3일땐 3마리 확정
			if ChampNumSelectZone == 0 then
				ChampNum = api_trigger_GetRandomRange(g_room,1,100);
				api_log_UserLog(g_room, ActorHandle, "침략자_0_1~2마리 랜덤");-- 삭제 예정
			end	

			if ChampNumSelectZone == 1 then
				ChampNum = api_trigger_GetRandomRange(g_room,1,100);
				api_log_UserLog(g_room, ActorHandle, "챔피언_1_1마리 확정");-- 삭제 예정
			end
            
            if ChampNumSelectZone == 11  then
				soloBossChcek = api_trigger_GetRandomRange(g_room,1, 100);
				api_log_UserLog(g_room, ActorHandle, soloBossChcek);-- 삭제 예정
				if soloBossChcek <= 50 then
					ChampNum = api_trigger_GetRandomRange(g_room, 1, 90 );
					api_log_UserLog(g_room, ActorHandle, "3개이상 맵으로 구성된 스테이지시 중간 지역 전용");-- 삭제 예정
				end
			end
		
            
		else
            api_log_UserLog(g_room, ActorHandle, "일반 침략자 로직")
			if ChampNumSelectZone == 0 then
				ChampNum = api_trigger_GetRandomRange(g_room,1,100);
				api_log_UserLog(g_room, ActorHandle, "챔피언test_0_1~2마리 랜덤");-- 삭제 예정
			end	

			if ChampNumSelectZone == 1 then
				ChampNum = api_trigger_GetRandomRange(g_room,1,100);
				api_log_UserLog(g_room, ActorHandle, "챔피언test_1_1~2마리 랜덤");-- 삭제 예정
			end
            
            if ChampNumSelectZone == 11  then
				soloBossChcek = api_trigger_GetRandomRange(g_room,1, 100);
				api_log_UserLog(g_room, ActorHandle, soloBossChcek);-- 삭제 예정
				if soloBossChcek <= 50 then
					ChampNum = api_trigger_GetRandomRange(g_room, 1, 90 );
					api_log_UserLog(g_room, ActorHandle, "3개이상 맵으로 구성된 스테이지시 중간 지역 전용");-- 삭제 예정
				end
			end

		end
		
		-- 챔피언 마리수 확정 이후 등장 위치 설정 로직, 1마리 80퍼, 2마리 15퍼, 3마리 5퍼
		if ChampNum <= 90 then
			RandomZoneNum1 = api_trigger_GetRandomRange(g_room,1,ZoneNum,4013);
			api_log_UserLog(g_room, ActorHandle, "챔피언한마리");-- 삭제 예정
			
		elseif ChampNum > 90 and ChampNum <= 100 then
			RandomZoneNum1 = api_trigger_GetRandomRange(g_room,1,ZoneNum,4013);
			RandomZoneNum2 = api_trigger_GetRandomRange(g_room,1,ZoneNum,4013);
			while RandomZoneNum1 == RandomZoneNum2 do
				RandomZoneNum2 = api_trigger_GetRandomRange(g_room,1,ZoneNum);
			end
			api_log_UserLog(g_room, ActorHandle, "챔피언두마리");-- 삭제 예정
		end
	end
	
	-- 위치 변수 변경
	if RandomZoneNum1 == 1 then
		g_value[Zone_1] = g_value[Zone_1] + 9999;
		api_log_UserLog(g_room, ActorHandle, "1존");-- 삭제 예정
	elseif RandomZoneNum1 == 2 then
		g_value[Zone_2] = g_value[Zone_2] + 9999;
		api_log_UserLog(g_room, ActorHandle, "2존");-- 삭제 예정
	elseif RandomZoneNum1 == 3 then
		g_value[Zone_3] = g_value[Zone_3] + 9999;
		api_log_UserLog(g_room, ActorHandle, "3존");-- 삭제 예정
	elseif RandomZoneNum1 == 4 then
		g_value[Zone_4] = g_value[Zone_4] + 9999;
		api_log_UserLog(g_room, ActorHandle, "4존");-- 삭제 예정
	elseif RandomZoneNum1 == 5 then
		g_value[Zone_5] = g_value[Zone_5] + 9999;
		api_log_UserLog(g_room, ActorHandle, "5존");-- 삭제 예정
	end
	
	if RandomZoneNum2 == 1 then
		g_value[Zone_1] = g_value[Zone_1] + 9999;
		api_log_UserLog(g_room, ActorHandle, "1존");-- 삭제 예정
	elseif RandomZoneNum2 == 2 then
		g_value[Zone_2] = g_value[Zone_2] + 9999;
		api_log_UserLog(g_room, ActorHandle, "2존");-- 삭제 예정
	elseif RandomZoneNum2 == 3 then
		g_value[Zone_3] = g_value[Zone_3] + 9999;
		api_log_UserLog(g_room, ActorHandle, "3존");-- 삭제 예정
	elseif RandomZoneNum2 == 4 then
		g_value[Zone_4] = g_value[Zone_4] + 9999;
		api_log_UserLog(g_room, ActorHandle, "4존");-- 삭제 예정
	elseif RandomZoneNum2 == 5 then
		g_value[Zone_5] = g_value[Zone_5] + 9999;
		api_log_UserLog(g_room, ActorHandle, "5존");-- 삭제 예정
	end


    return true
end
