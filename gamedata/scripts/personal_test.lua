--[===[
--Поиск старых визуалов и звуков в конфигах
local need_visuals, need_sounds = {},{}

local function check_section(sect)
	local t = get_section_keys_and_values(sect)
	for k,v in pairs(t) do
		if k:find("visual") then
			if v:find("weapons") and not v:find("dynamics") then
				need_visuals[v:find(".ogf") and v or v..".ogf"] = true
			end
		elseif k:find("snd_") and not get_string(sect, "visual", ""):find("dynamics") then
			if v:find("weapons") then
				local exploded_snd2 = string.explode(",", v, true)
				need_sounds[#exploded_snd2 > 0 and exploded_snd2[1]..".ogg" or v..".ogg"] = true
			end
		end
	end
end

sys_ini:iterate_sections( check_section )



--Поиск старых визуалов в оллспавне
local path = getFS():update_path( "$game_spawn$", "" )
stdfs.recursive_directory_iterator( path, function( file )
  if file.extension == ".ltx" then
	for line in io.lines(file.full_path_name) do
		if line:find("visual") and line:find("weapons") and not line:find("dynamics") then
			for vis in pairs(need_visuals) do
				if line:find(vis) then
					goto CONTINUE
				end
			end
			need_visuals[line:sub(15):find(".ogf") and line:sub(15) or line:sub(15)..".ogf"] = true
		end
		::CONTINUE::
	end
  end
end )

log3("--need_old_wpn_visuals: %s", need_visuals)
log3("--need_old_wpn_sounds: %s", need_sounds)



local visuals_dirs = {
	--"F:\\Games\\OGSR Mod\\!!!UNPACK\\gamedata_db_xxfix\\gamedata\\meshes\\weapons",
	--"F:\\Games\\OGSR Mod\\!!!UNPACK\\gamedata_db_xpatch\\gamedata\\meshes\\weapons",
	--"F:\\Games\\OGSR Mod\\!!!UNPACK\\gamedata_db_meshes\\gamedata\\meshes\\weapons",
}
for _, dir in ipairs(visuals_dirs) do
	stdfs.recursive_directory_iterator( dir, function( file )
		for visual in pairs(need_visuals) do
			if file.full_path_name:find(visual) then
				log3("--NOT removed: [%s]", file.full_path_name)			
				return
			end
		end

		log3("~~removed: [%s]", file.full_path_name)
		os.remove(file.full_path_name)
	end )
end

local sounds_dirs = {
	--"F:\\Games\\OGSR Mod\\!!!UNPACK\\gamedata_db_xxfix\\gamedata\\sounds\\weapons",
	--"F:\\Games\\OGSR Mod\\!!!UNPACK\\gamedata_db_xpatch\\gamedata\\sounds\\weapons",
	"F:\\Games\\OGSR Mod\\!!!UNPACK\\gamedata_db_base_sounds\\gamedata\\sounds\\weapons",
}
for _, dir in ipairs(sounds_dirs) do
	stdfs.recursive_directory_iterator( dir, function( file )
		for snd in pairs(need_sounds) do
			if file.full_path_name:find(snd) then
				log3("--NOT removed: [%s]", file.full_path_name)			
				return
			end
		end

		log3("~~removed: [%s]", file.full_path_name)
		os.remove(file.full_path_name)
	end )
end
--]===]