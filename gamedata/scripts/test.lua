--===========Телепорты в разные места===================
--enter_prip()
--enter_bar()
--enter_limansk()
--enter_agro()
--enter_mil()
--enter_mil_1()
--enter_marsh()
--enter_marsh1()
--enter_radar()
--enter_yantar()

--kordon, novice village
--teleportate(-200.95087,-19.90391,-137.85629)
--==============Телепортация по уровню==================
    -- db.actor:set_actor_position(vector():set(x,y,z))
    -- db.actor:set_actor_direction(dir)
-- -- --   db.actor:set_actor_direction(-dir:getH()) --??

--========= Функция телепортации в пределах уровня======

	--function teleportate(x,y,z)
	--(8.342,-21.392,40.248),8149,2758
	--(8.608,-21.393,40.109),8149,2758
-- local a = vector()
	-- Задаем координаты
	--==================--
	-- Болота, хутор мстителей
--	a.x = 615.28076171875,2
--	a.y = 2.57928943634033
--	a.z = 419.633544921875
--рюкзак с гранатометом на милитари
--[[	a.x = -274.669860839844
	a.y = -27.5451145172119
	a.z = 245.542663574219]]
	-- Дер.новичков
--[[	a.x = -200.95087
	a.y = -19.90391
	a.z = -137.85629	]]
	--X-10
	--a.x = 6
	--a.y = -21.393
	--a.z = 40.3
	--Prip
--[[	a.x=-3.064
	a.y=-4.263
	a.z=191.348]]
	--== Сама телепортация
-- db.actor:set_actor_position(a)



--end

--========================================================
--db.actor:give_info_portion("agr_help_stalkers_done")
--db.actor:give_info_portion("agr_help_stalkers_assault_dead")
--db.actor:give_info_portion("agr_help_krot_done")
--db.actor:give_info_portion("agr_krot_task_complete")
--db.actor:give_info_portion("agr_factory_assault_skirmish")
--db.actor:give_info_portion("agr_krot_skirmish_start")
--db.actor:give_info_portion("agr_krot_go_to_well")
--db.actor:give_info_portion("agr_help_krot_start")
--db.actor:give_info_portion("agr_krot_met")
--db.actor:give_info_portion("agr_factory_spawn_spetsnaz")
--========================================================

--============= Кордон, деревня новичков
function enter_escape()
spawn_level_changer.create_level_changer(14105, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	51688,
			            57,
			            vector():set(-200.95087,-19.90391,-137.85629),	
                        vector():set(0.0, 0.0, 0.0),	
						"l01_escape",
                      0)
end
--============= Кордон, за железкой
function enter_escape()
spawn_level_changer.create_level_changer(990000, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	574761,
			            250,
			            vector():set(314.95672,15.82027,280.94275),	
                        vector():set(0.0, 0.0, 0.0),	
						"l01_escape",
                      0)
end

function enter_village()
spawn_level_changer.create_level_changer(14106, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	19974,
			            3330,
			            vector():set(21.354202270508,15.136278152466,43.751117706299),	
                        vector():set(0.0, 0.0, 0.0),	
						"lost_village",
                      0)
end
function enter_agro()
spawn_level_changer.create_level_changer(9828, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	428448,
			            498,
			            vector():set(253.95002746582,-0.20055566728115,76.619018554688),	
                        vector():set(0.0, 0.0, 0.0),	
						"l03_agroprom",
                      0)
end
function enter_marsh()
spawn_level_changer.create_level_changer(14102, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),
			524306,
				3579,
			vector():set(615.28076171875,2.57928943634033,419.633544921875),
			vector():set(0.0,0.0,0.0),
						"marsh",
                      0)
end
function enter_marsh1()
spawn_level_changer.create_level_changer(14103, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),
			54747,
				3367,
			vector():set(-174.2788848877,1.8328202962875,-272.23278808594),
			vector():set(0.0,0.0,0.0),
						"marsh",
                      0)
end
function enter_radar()
spawn_level_changer.create_level_changer(9806, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	93230,
			            2081,
			            vector():set(351.03564453125,-45.688995361328,-201.36804199219),	
                        vector():set(0.0, 0.0, 0.0),	
						"l10_radar",

                      0)
end
function enter_yantar()
spawn_level_changer.create_level_changer(9832, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	22009,
			            1454,
			            vector():set(-49.516319274902,-12.687213897705,-263.55654907227),	
                        vector():set(0.0, 0.0, 0.0),	
						"l08_yantar",
                      0)
end
function enter_mil()
spawn_level_changer.create_level_changer(9814, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	66343,
			            1786,
			            vector():set(-274.62121582031,-27.297189712524,239.00979614258),	
                        vector():set(0.0, 0.0, 0.0),	
						"l07_military",
                      0)
end
function enter_mil_1()
spawn_level_changer.create_level_changer(9803, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	28719,
			            1758,
			            vector():set(-317.23675537109,-26.327833175659,55.278633117676),	
                        vector():set(0.0, 0.0, 0.0),	
						"l07_military",
                      0)
end
function enter_prip()
spawn_level_changer.create_level_changer(9820, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	7817,
			            2216,
			            vector():set(-112.93630981445,2.8031325340271,97.108512878418),	
                        vector():set(0.0, 0.0, 0.0),	
						"l11_pripyat",
                      0)
end
function enter_bar()
spawn_level_changer.create_level_changer(9842, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),	 
                    	39883,
			            1204,
			            vector():set(175.31533813477,-0.0002819299697876,145.91943359375),	
                        vector():set(0.0, 0.0, 0.0),	
						"l05_bar",
                      0)
end
--===============Телепорт в Лиманске
function enter_limansk()
spawn_level_changer.create_level_changer(14104, db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(),
			46539,
				3003,
			vector():set(36.7756080627441,28.5412578582764,197.561050415039),
			vector():set(0.0, 0.0, 0.0),
			"limansk",
			0)
end
--===========Удаляем телепорты===================
--spawn_level_changer.remove_old_teleport()
--function remove_old_teleport()
--	local sim = alife()
--	se_obj = sim:story_object(14104)
--	if se_obj then
--		sim:release(se_obj, true)
--	end
--	local sim = alife()
--	local se_obj = sim:story_object(9828)
--	if se_obj then
--		sim:release(se_obj, true)
--	end

--	local se_obj = sim:story_object(9803)
--	if se_obj then
--		sim:release(se_obj, true)
--	end

--	local se_obj = sim:story_object(9820)
--	if se_obj then
--		sim:release(se_obj, true)
--	end
--	local actor = db.actor
--9842 9814 
--===============Метки============================
--for a=1,65534 do
--local obj = alife():object(a) 

--if obj then

--ставим метку на Кота
--if obj and obj:name() == "kot" then 
--amk.add_spot_on_map(obj.id,"green_location","Кот")
--end

--ставим метку на смарт Кота
--if obj and obj:name() == "bar_kot" then 
--amk.add_spot_on_map(obj.id,"green_location","Смарт Кот")
--end

--ставим метку на Раби
--if obj and obj:name() == "rabi" then 
--amk.add_spot_on_map(obj.id,"green_location","Рабинович")
--end

--На Луиса
--if obj and obj:name() == "brat_luis" then
--amk.add_spot_on_map(obj.id,"green_location","Брат Луис")
--end

--на Француза
--if obj and obj:name() == "francuz" then
--amk.add_spot_on_map(obj.id,"green_location","Француз")
--end

--end
--end
--========Устанавливаем погоду==============
--local str="default_weather_clear_12"
--if system_ini():line_exist("weathers",str) then	
--	level.set_weather(str,true)
--	news_manager.send_tip(db.actor,"Установлена погода:"..str,nil,nil,1000)
--else
--	news_manager.send_tip(db.actor,"Нет такой секции:"..str,nil,nil,1000)
--end
--========Устанавливаем отношения враг-друг и репутацию у непися===========
	-- for id,obj in pairs(db.creatures) do
	    -- local text="esc_akim"  --здесь секция непися (или часть секции)
	    -- local stalker=IsStalker(obj)
	    -- if (stalker) and obj:alive() and string.find(obj:name(),text) then
	      -- local rel = obj:relation(db.actor)
	      -- amk.send_tip("Непись: "..obj:name()..", было отн: "..rel.." репа: "..db.actor:character_reputation().." ","SetNpcGoodwill",0,10,"gen_info") -- rel: "..rel.." 
	   -- obj:set_goodwill(1000,db.actor)
	      -- obj:set_relation(game_object.friend, db.actor)
	--	db.actor:change_character_reputation(10)
--	      local rel = obj:relation(db.actor)
--	      amk.send_tip("Непись: "..obj:name()..", стало отн: "..rel.."  репа: "..db.actor:character_reputation().." ","SetNpcGoodwill",0,10,"gen_info")
	--    amk.send_tip("Непись: "..obj:id().." ","Cheat: SetNpcGoodwill",0,10,"gen_info")
	--    obj:relation(db.actor)==game_object.neutral
	
--	    end
--	end
--===============
--[[--for a=1,65535 do

for id,obj in pairs(db.creatures) do
	local id = get_clsid(obj)
	if id == clsid.dog_s and not obj:alive() then
	if id == clsid.tushkano_s and not obj:alive() then
	-- if (id == clsid.tushkano_s or id == clsid.dog_s or id == clsid.snork_s) and (not obj:alive()) then
	if not obj:alive() and (string.find(obj:name(),"rat_weak") or string.find(obj:name(),"rat_normal") or string.find(obj:name(),"rat_strong")) then

	   local sobj=alife():object(obj:id())
	   alife():release(sobj, true)
	   amk.send_tip("Удалили "..obj:name(),"Удалятель от Shadowman",0,10,"gen_info")
	end
end]]

--========Удаляем консервы==========
function release_koncepv()
-- get_console():execute("flush")
-- local num_conserv=0
-- local num_govna=0
-- for a=1,65535 do
--  local obj = alife():object(a)
--   if obj then
--    if string.find(obj:name(),"object_koncepva") then
--amk.send_tip("Нашли "..obj:name(),"Удалятель неудаляющий",0,10,"gen_info")	
--	alife():release(obj)
--	num_conserv=num_conserv+1
--    end
--    if string.find(obj:name(),"govno") then
--	alife():release(obj)
--	num_govna=num_govna+1
--    end
--  end
-- end
-- amk.send_tip("Удалили негодных консервов "..num_conserv.." банок. Говна "..num_govna.." куч.","Нет мусору на локациях!",0,10,"gen_info")
-- get_console():execute("flush")
end
--================Ящички Бака============
--[[local tabl_boxes={
[l03u_agr_underground]=5958,
[l04u_labx18]=6411,
[l08u_brainlab]=11458,
[l08_yantar]=26258,
[l10_radar]=26556,
[l05_bar]=27128,
[l03_agroprom]=27275,
[l07_military]=27798,
[l06_rostok]=28280,
[l04_darkvalley]=30599,
[l01_escape]=34608,
[l02_garbage]=35913
}]]


--[[local tabl_boxes_id={
5958,
6411,
11458,
26258,
26556,
27128,
27275,
27798,
28280,
30599,
34608,
35913
}]]
--[[local tabl_boxes_levels={
"l03u_agr_underground",
"l04u_labx18",
"l08u_brainlab",
"l08_yantar",
"l10_radar",
"l05_bar",
"l03_agroprom",
"l07_military",
"l06_rostok",
"l04_darkvalley",
"l01_escape",
"l02_garbage"
}]]
--local bad_object_names = {"wpn_lr30025601", "wpn_lr30028817","wpn_lr30033589", "wpn_lr30029441" }
function bad_wpn_search()
local bad_object_names = {"wpn_lr30053522", "wpn_lr30058409", "wpn_lr30017674" }
-- local bad_object_names = {"fracture_strong13078", "pseudodog_strong18225", "zombie_normal18231", "psy_dog_radar36627", "pseudodog_strong40993", "zombie_normal41004", "chimera_strong44043", "psy_dog_radar46966", "electro_chimera47047", "zombie_normal47072", "zombie_normal47076", "zombie_normal47077"}
local i, se_name, obj, pos

for i, se_name in ipairs(bad_object_names) do
	se_obj = alife():object(se_name)
	if se_obj then
--		alife():release(se_obj, true)
	--	local cwpn = level.object_by_id(se_obj:id())
		local parent = se_obj.parent_id
		if parent == 65535 then
			local text = "on ground: "..se_name
			get_console():execute("load ~#I#:"..string.format(text))
		end
		
		local text = "parent: "..parent.." pos: "..obj_pos
	
	local obj_pos =se_name..": x = "..se_obj.position.x.." y = "..se_obj.position.y.." z = "..se_obj.position.z
	local text = obj_pos
--	local text = se_name.."; координаты: " ..pos	--.." уровень="..game.translate_string(map)
	get_console():execute("load ~#I#:"..string.format(text))
  end
end
end
function bad_wpn_search1()
--	local boxid = nil
--	local clid = ggraph:vertex(db.actor:game_vertex_id()):level_id()
	local sim = alife()
	local ggraph = game_graph()
	for id=0,65535 do	
		local obj = sim:object(id)
		if obj then
		local m_game_vertex
--		local nm = "nil"
--		if (obj.name) then nm = obj:name() end
		if (obj.fov) then
			m_game_vertex = obj:game_vertex_id()
		else
			m_game_vertex = obj.m_game_vertex_id	--m_game_vertex_id
--			_level_vertex_id
		end

		local parent = obj.parent_id
		if parent == 65535 then
--		if string.find(obj:name(),"wpn_") then
		if string.find(obj:name(),"wpn_") and sim:level_name(ggraph:vertex(obj.m_game_vertex_id):level_id())=="l10_radar" then
			local map=sim:level_name(ggraph:vertex(obj.m_game_vertex_id):level_id())
			local text = "on ground: "..obj:name().." уровень="..game.translate_string(map).." m_game_vertex = "..m_game_vertex
			get_console():execute("load ~#I#:"..string.format(text))
			if ggraph:valid_vertex_id(m_game_vertex) == true then				
				get_console():execute("load ~#I#:"..string.format(text))
			else
				text2 = "вертекс!"..m_game_vertex
				text = text.."  "..text2
				get_console():execute("load ~#I#:"..string.format(text))
			end
		end
--		end
		end
		end
		--local cwpn = level.object_by_id(id)
	end
--[[	if cwpn then
		local parent = cwpn:parent()
		if parent then 			--and parent:id()) == 35913
			local map=sim:level_name(ggraph:vertex(cwpn.m_game_vertex_id):level_id())
			local CountBoxes = table.getn(tabl_boxes_id)
			for i=1,CountBoxes do
			  if tabl_boxes_levels[i] == tostring(map) then
				if parent:id() == tabl_boxes_id[i] then
					local text =game.translate_string(map)..": ствол в ящике= "..obj:name()
					rx_ai.printf(text)
				end
			  end
			end			
		end
	end]]

--[[		if obj and obj:section_name() == "inventory_box" and obj.position.y == -300 then
	local map=sim:level_name(ggraph:vertex(obj.m_game_vertex_id):level_id())
	local boxid=tostring(id)
	local text="["..map.."]="..boxid
	local text = boxid.." уровень="..game.translate_string(map)
	rx_ai.printf(text)

	end
	end]]
	get_console():execute("flush")
end
--[[
	for id=0,65535 do
	if id==26556 then
		sim:release(obj)
		text="Удален ящик на радаре"
		rx_ai.printf(text)		
	end
	end
]]
--========Проверяем имена секций трупов в радиусе а-лайфа ===========
--local corps_names = {"rad_curve_road_high_guard2", "rad_curve_road_mid_guard2", "rad_curve_road_mid_guard1", "rad_curve_road_high_guard1" }
--[[	for id,obj in pairs(db.creatures) do
--	for id=0,65535 do
--		local obj = alife():object(id)
--		local isAlive = false
		if obj and db.actor:id() ~= obj_id then
--			if (obj.fov) then
--				isAlive = obj:alive()
--			else
--				isAlive = obj.alive
--			end
	--	    local text="esc_akim"  --здесь секция непися (или часть секции)
			local stalker=IsStalker(obj)
			if (stalker) and not obj:alive() then -- and string.find(obj:name(),"_stalker_respawn_")
				local dist = obj:position():distance_to(db.actor:position())
				local text = "Труп: "..obj:name().." расст: "..dist
				get_console():execute("load ~#I#:"..string.format(text))
			end
		end
	end
	get_console():execute("flush")]]
--=============== Нетпакет ===============
function netpacket_pda_()
local tabl_varnames={
"m_teleport_6",
"m_teleport_26",
"m_teleport_35",
"m_teleport_36",
"m_teleport_37",
"m_teleport_38",
"m_teleport_39",
"m_teleport_40",
"m_teleport_41",
"m_teleport_42",
"m_teleport_43",
"m_teleport_44",
"m_teleport_45",
"m_teleport_46",
"m_teleport_47",
"m_teleport_48",
"m_teleport_49",
"m_teleport_50",
"m_teleport_51",
"m_teleport_52",
"m_teleport_53",
"m_teleport_54",
"gps_labels",
"lim_zone_teleport1",
"lim_zone_teleport2",
"zone_teleport_new",
"zone_teleport_new_out",
"flame_start",
"flame_reload",
"flame_reload_count",
"sak_teleport",
"glushitel_reload",
"repair_box",
"repair_item_outfit",
"repair_item_weapon",
"af_simbion_activation",
"artmod_activation_info_artmod_electra_flash_zharka",
"artmod_activation_info_artmod_ameba_slime_zharka",
"artmod_activation_info_artmod_gravi_zharka",
"artmod_activation_info_artmod_night_star_zharka",
"artmod_activation_info_artmod_electra_moonlight_zharka",
"artmod_activation_info_artmod_dummy_battery_zharka",
"artmod_activation_info_artmod_fireball_galant",
"artmod_activation_info_artmod_cristall_flower_galant",
"artmod_activation_info_artmod_ameba_mica_galant",
"artmod_activation_info_artmod_electra_moonlight_galant",
"artmod_activation_info_artmod_gold_fish_galant",
"artmod_activation_info_artmod_dummy_spring_galant",
"artmod_activation_info_artmod_medusa_galant",
"artmod_activation_info_artmod_rusty_kristall_buzz",
"artmod_activation_info_artmod_rusty_thorn_buzz",
"artmod_activation_info_artmod_fireball_buzz",
"artmod_activation_info_artmod_cristall_buzz",
"artmod_activation_info_artmod_night_star_buzz",
"artmod_activation_info_artmod_fuzz_kolobok_buzz",
"artmod_activation_info_artmod_vyvert_buzz",
"artmod_activation_info_artmod_cristall_flower_mincer",
"artmod_activation_info_artmod_drops_mincer",
"artmod_activation_info_artmod_rusty_kristall_mincer",
"artmod_activation_info_artmod_electra_moonlight_mincer",
"artmod_activation_info_artmod_ameba_slug_mincer",
"artmod_activation_info_artmod_dummy_glassbeads_mincer",
"artmod_activation_info_artmod_mincer_meat_mosquito_bald",
"artmod_activation_info_artmod_electra_sparkler_mosquito_bald",
"artmod_activation_info_artmod_ameba_slug_mosquito_bald",
"artmod_activation_info_artmod_cristall_mosquito_bald",
"artmod_activation_info_artmod_rusty_sea-urchin_mosquito_bald",
"artmod_activation_info_artmod_dummy_dummy_mosquito_bald",
"artmod_activation_info_artmod_ameba_slug_gravi_zone",
"artmod_activation_info_artmod_ameba_slime_gravi_zone",
"artmod_activation_info_artmod_electra_flash_gravi_zone",
"artmod_activation_info_artmod_night_star_gravi_zone",
"artmod_activation_info_artmod_soul_gravi_zone",
"artmod_activation_info_artmod_dummy_pellicle_gravi_zone",
"artmod_activation_life_heart_final"
}
--[[	local sim = alife()	
	for id=0,65535 do	
		local obj = sim:object(id)
		if obj then
			if obj:name()=="netpacket_pda" then
				local np_pda=obj
				break
			end
		end
	end]]
	local pda_id = netpacket_pda_create.create_pda()
	get_console():execute("load ~#I#:"..string.format(pda_id))
	for i = 1, table.getn(tabl_varnames) do
		local varname = tabl_varnames[i]
		--local value = xr_logic.pstor_retrieve(db.actor, varname, 0)
		-- local value = db.storage[db.actor:id()].pstor[varname]
		local value = db.storage[pda_id].pstor[varname]
		-- if value~=0 and value~=nil then
		if value~=nil then
			local text = tabl_varnames[i]..": значение - "..tostring(value)
			get_console():execute("load ~#I#:"..string.format(text))
			--чистим "левые" артмоды
--[[			amk.del_variable(tabl_varnames[i])
			local text = tabl_varnames[i]..": значение - "..tostring(value)
			get_console():execute("load ~#I#:"..string.format(text))]]
		end
	end
	get_console():execute("flush")
end

--== Тестируем шмон актора
--braad_test.release_actor_items()
--braad_test.clear_actor(db.actor)

--========= Принудительно записываем лог-файл ============
-- get_console():execute("flush")

--[[    if not has_alife_info("storyline_actor_start") then
--      self.object:give_info_portion("storyline_actor_start")
		local text="not has_alife_info storyline_actor_start"
		get_console():execute("load ~#I#:"..string.format(text))
	end]]
		
	--1) sak.nepis_umer() +
		--выдать	bar_ivancov_rg6_start
--[[		local text="bar_ivancov_rg6_start"
		db.actor:give_info_portion(text)
		amk.send_tip(text.." добавлено.","Cheat: Add Info",0,15,"gen_info")		]]
		--убийство иванцова - bar_dolg_ivancov_umer : проверить, что провален (bar_ivancov_rg6_fail)
	--2)braad_test.new_info() +
		--на агро: подойти к базе вояк
		--выдать kot_agro_mono_start
--[[		local text="kot_agro_mono_start"
		db.actor:give_info_portion(text)
		amk.send_tip(text.." добавлено.","Cheat: Add Info",0,15,"gen_info")]]
		--проверить спавн монолитовцев
	--3)meceniy_utils.on_actor_update_callback()
		--проверить ЧУ
	--4)meceniy_work.set_invisible() +
		--проверить meceniy_outfit_new - невидимость и удаление оружия из слота
		--alife():create("meceniy_outfit_new",db.actor:position(),db.actor:level_vertex_id(),db.actor:game_vertex_id(),db.actor:id())
	--5)sak.out_teleport()
--		sak.get_kordon_yantar()
		--уйти с кордона, проверить, что удалился
		
		
--[[for id=0,65535 do
	local sim = alife()
	local obj = sim:object(id)
	local ggraph = game_graph()
	if obj and obj:section_name() == "inventory_box" and obj.position.y == -300 then
		local map=sim:level_name(ggraph:vertex(obj.m_game_vertex_id):level_id())
		local boxid=tostring(id)
		local text="["..map.."]="..boxid
		local text = boxid.." уровень="..game.translate_string(map)
		get_console():execute("load ~#I#:"..string.format(text))
	end
end]]

--sak.switch_timer_stancia()
--[[	amk.del_variable("artmod_activation_info_artmod_electra_flash_zharka")
	amk.del_variable("artmod_activation_info_artmod_gravi_zharka")
	amk.del_variable("artmod_activation_info_artmod_dummy_battery_zharka")]]
--	xr_logic.pstor_load_all(db.actor,)
--[[	local npc_id=db.actor:id()
	local pstor = db.storage[npc_id].pstor
	for k,v in pairs(pstor) do
		local varname = tostring(pstor[k])
--		local val = tostring(pstor[v])
--		if val and val~=nil and val~="nil" and val~=0 then
			local text = "var: "..varname	--.." value: "..val
			get_console():execute("load ~#I#:"..string.format(text))
--		end
	end]]
	--
--[[local total_removed = 0
--for id,obj in pairs(db.creatures) do
for i=0,65535 do
	local obj = alife():object(i)
	if obj then
		local obj_level = game_graph():vertex(obj.m_game_vertex_id):level_id()
		if alife():level_name(obj_level) == "l01_escape" then
			local id = get_clsid(obj)
			if (id == clsid.tushkano_s or id == clsid.dog_s) and obj:alive() then
		--       local sobj=alife():object(obj:id())
			   alife():release(obj, true)
			   total_removed = total_removed+1
			end
		end
	end
end
amk.send_tip("Удалили всего: "..total_removed.." монстров","Удалялка",0,10,"gen_info")]]

--[[function monstr_kil()
  if level.name() ~= "l07_military" then
	return
  else
	  for k, v in pairs (db.storage) do
		local monstr = level.object_by_id(k)
		if (monstr and IsMonster(monstr) and monstr:alive()) then
			monstr:kill(monstr)
		end
	  end
  end
end]]
--[[function spawn_controllers()
	local a = vector()
	a = db.actor:position()
	a.z = a.z + 2
	a.y = a.y + 0.5
	vid = db.actor:level_vertex_id()
	gvid = db.actor:game_vertex_id()
	for i = 1, 7 do
	alife():create("m_controller_normal",vector():set(a.x-1+math.random()*5,a.y,a.z-1+math.random()*6),vid,gvid,65535)
	end
end]]
--[[local tabl_diaries={
"kontroler_diary_info_1",
"kontroler_diary_info_2",
"kontroler_diary_info_3",
"kontroler_diary_info_4",
"kontroler_diary_info_5",
"kontroler_diary_info_6",
"kontroler_diary_info_7",
"kontroler_diary_info_8",
"kontroler_diary_info_9",
"kontroler_diary_info_10",
"kontroler_diary_info_11",
"kontroler_diary_info_12",
"kontroler_diary_info_13",
"kontroler_diary_info_14",
"kontroler_diary_info_15",
"kontroler_diary_info_16",
"kontroler_diary_info_17",
}
for i=1, table.getn(tabl_diaries) do
	db.actor:give_info_portion(tabl_diaries[i])
end]]
--alife():create("m_controller_normal",vector():set(a.x-1+math.random()*2,a.y,a.z-1+math.random()*2),vid,gvid,65535)

-- local varnames = {"wounded_state", "wounded_sound","wounded_fight","wounded_victim"}
--ставим метку на охотника
-- for a=1,65534 do
--[[	local bad_object_names = {"fracture_strong13078", "pseudodog_strong18225", "zombie_normal18231", "psy_dog_radar36627", "pseudodog_strong40993", "zombie_normal41004", "chimera_strong44043", "psy_dog_radar46966", "electro_chimera47047", "zombie_normal47072", "zombie_normal47076", "zombie_normal47077"}
local i, se_name, se_obj, pos

for i, se_name in ipairs(bad_object_names) do	
	local obj = alife():object(se_name) --bar_ohotnik_respawn_114038	
	if obj then --and obj:name() == "bar_ohotnik_respawn_1" rat_strong28938
		-- local npc_id = obj:id()
		alife():release(obj, true)
		if not obj then
			get_console():execute("load ~#I#:"..string.format("удалён объект: "..se_name))
		else
			local npc = level.object_by_id(npc_id)
			if npc then
				local h = hit()
				h.power = 3
				h.impulse = 3
				h.draftsman = npc
				h.direction = vector():set(0,0,0)
				h:bone("bip01_spine")
				h.type = hit.fire_wound
				npc:hit(h)
				get_console():execute("load ~#I#:"..string.format("найден объект: "..se_name))
				alife():release(npc, true)
				if not npc then
					get_console():execute("load ~#I#:"..string.format("удалён объект: "..se_name))
				end
			end
		end
		-- local npc = alife():object(13852)
		-- amk.make_suicide(npc)
		
		-- switch_online(obj)
		-- amk.add_spot_on_map(obj.id,"green_location","Лёня Бард")		
		-- local text = obj:name()
		-- get_console():execute("load ~#I#:"..string.format(text))

	end	
end]]
		-- local npc = alife():object("bar_ohotnik_respawn_141216")
		-- amk.make_suicide(npc)
		
		-- switch_online(obj)
		-- amk.add_spot_on_map(npc.id,"red_location","Охотник")
		-- local text = obj:name()
		-- get_console():execute("load ~#I#:"..string.format(text))
		
		--esc_stalker_respawn_226845
		-- local npc = level.object_by_id(26845)
		-- if npc then
			-- amk.make_suicide(npc)
		-- end
-- get_console():execute("flush")
--============ Выполняем без игры =========--
-- sleep_manager.main(1)
-- level.set_time_factor(1000)
-- local obj = alife():object(0)
-- get_console():execute("load ~#I#:"..game.translate_string(obj:name()))
  if level.present() and (db.actor ~= nil) then
--	db.actor:give_money(10000)
	  local text
	  local vid, gvid
	  local a = vector()
	  a = db.actor:position()
	  vid = db.actor:level_vertex_id()
	  gvid = db.actor:game_vertex_id()
	  text = "Позиция:\\nX= "..a.x.."\\nY= "..a.y.."\\nZ= "..a.z.."\\nlevel_vertex= "..vid.."\\ngame_vertex_id= "..gvid
	  news_manager.send_tip(db.actor, text, nil, nil, 30000)
	  get_console():execute(string.format("(%.3f,%.3f,%.3f),%d,%d",a.x,a.y,a.z,vid,gvid))	  
	end
get_console():execute("flush")