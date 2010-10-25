save_system/mysql
	var
		DBConnection/dbcon
		ready = 0

	New(sql_host, sql_database, sql_user, sql_password)
		. = ..()

		dbcon = new /DBConnection()

		var/connected = dbcon.Connect("dbi:mysql:[sql_database]:[sql_host]", sql_user, sql_password)
		if(!connected || !dbcon.IsConnected())
			world.log << "Database Connection error: [dbcon.ErrorMsg()]"
			ready = 0
		else
			ready = 1

	proc
		Quote(text)
			if(isnull(text))
				text="NULL"
			else
				text="[text]"

			return dbcon.Quote(text)

		IsAllowedServer(addr)
			if(!dbcon.IsConnected())
				world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
				return 0

			var
				serverban_query_sql = "SELECT * FROM `allowed_servers` WHERE `allowed_servers`.`ip` = [Quote(addr)]"
				DBQuery/serverban_query = dbcon.NewQuery(serverban_query_sql)

			if(!serverban_query.Execute())
				world.log << "IsAllowedServer failed:\n\t[serverban_query_sql]\n\t[serverban_query.ErrorMsg()]"
				return 0

			if(!serverban_query.NextRow())
				return 0

			return 1

	GetCharacterNames(key)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		key = ckey(key)

		var
			query_sql = "SELECT `name` FROM `players` WHERE `ckey` = [Quote(key)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "GetCharacterNames failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		var/list/chars = new

		while(query.NextRow())
			var/list/columns = query.GetRowData()
			chars += columns["name"]

		return chars

	IsNameUsed(name)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "SELECT COUNT(*) FROM `players` WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "IsNameUsed failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 1

		while(query.NextRow())
			if(text2num("[query.item[1]]") > 0)
				return 1

		return 0

	CreateSquad(name, leader)
		if(!name)
			return 0

		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "INSERT INTO `squads` (`leader`, `name`) VALUES ((SELECT `id` FROM `players` WHERE `name` = [Quote(leader)]), [Quote(name)])"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "CreateSquad failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	DeleteSquad(name)
		if(!name)
			return 0

		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "DELETE FROM `squads` WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "DeleteSquad failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	ChangeSquadLeader(name, new_leader)
		if(!name)
			return 0

		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "UPDATE `squads` SET `leader` = (SELECT `id` FROM `players` WHERE `name` = [Quote(new_leader)]) WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "ChangeSquadLeader failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	GetSquadMemberCount(name)
		if(!name)
			return 0

		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 100

		var
			query_sql = "SELECT COUNT(*) FROM `players` WHERE `squad` = (SELECT `id` FROM `squads` WHERE `name` = [Quote(name)])"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "GetSquadMemberCount failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 100

		if(query.NextRow())
			return text2num(query.item[1])

		return 100

	GetSquadInfo(name)
		if(!name)
			return 0

		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "SELECT * FROM `squads` WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "GetSquadInfo(squad) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		if(query.NextRow())
			var/list/info = query.GetRowData()
			var/leader = ""

			if(info["leader"])
				query_sql = "SELECT `name` FROM `players` WHERE `id` = [Quote(info["leader"])]"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "GetSquadInfo(leader name) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					return 0

				if(query.NextRow())
					leader = query.item[1]

			var/list/ret = list("name" = info["name"], "leader" = leader)
			return ret

		return 0

	CreateFaction(name, leader, village, mouse_icon, chat_icon, chuunin_item, member_limit)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = {"
				INSERT INTO `factions` (`leader`, `name`, `village`, `mouse_icon`, `chat_icon`,`chuunin_item`, `member_limit`)
					VALUES (
						(SELECT `id` FROM `players` WHERE `name` = [Quote(leader)]),
						[Quote(name)],
						[Quote(village)],
						[Quote(mouse_icon)],
						[Quote(chat_icon)],
						[Quote(chuunin_item)],
						[Quote(member_limit)]
					)"}
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "CreateFaction failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	DeleteFaction(name)
		if(!name)
			return 0

		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "DELETE FROM `factions` WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "DeleteFaction failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	ChangeFactionLeader(name, new_leader)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql
			DBQuery/query

		if(new_leader)
			query_sql = "UPDATE `factions` SET `leader` = (SELECT `id` FROM `players` WHERE `name` = [Quote(new_leader)]) WHERE `name` = [Quote(name)]"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "ChangeFactionLeader(with leader) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
				return 0
		else
			query_sql = "UPDATE `factions` SET `leader` = NULL WHERE `name` = [Quote(name)]"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "ChangeFactionLeader(no leader) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
				return 0

		return 1

	GetFactionMemberCount(name)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 100

		var
			query_sql = "SELECT COUNT(*) FROM `players` WHERE `faction` = (SELECT `id` FROM `factions` WHERE `name` = [Quote(name)])"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "GetFactionMemberCount failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 100

		if(query.NextRow())
			return text2num(query.item[1])

		return 100

	GetFactionInfo(name)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "SELECT * FROM `factions` WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "Faction info(1) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		if(query.NextRow())
			var/list/info = query.GetRowData()
			var/leader = ""

			if(info["leader"])
				query_sql = "SELECT `name` FROM `players` WHERE `id` = [Quote(info["leader"])]"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "Faction info(2) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					return 0

				if(query.NextRow())
					leader = query.item[1]

			var/list/ret = list("name" = info["name"], "leader" = leader, "village" = info["village"], "mouse_icon" = info["mouse_icon"], "chat_icon" = info["chat_icon"], "chuunin_item" = info["chuunin_item"], "member_limit" = info["member_limit"])
			return ret

		return 0

	GetHelpers()
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return list()

		var
			query_sql = "SELECT (SELECT `name` FROM players WHERE `id` = `helpers`.`helper`) 'name', (SELECT `name` FROM `factions` WHERE `id` = `helpers`.`village`) 'village' FROM `helpers`"
			DBQuery/query = dbcon.NewQuery(query_sql)
			helpers = list()

		if(!query.Execute())
			world.log << "GetHelpers failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return

		while(query.NextRow())
			var/list/info = query.GetRowData()

			if(!helpers[info["village"]])
				helpers[info["village"]] = list()

			helpers[info["village"]] += info["name"]

		return helpers

	AddHelper(name, village)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "INSERT INTO `helpers` (`helper`, `village`) VALUES  ((SELECT `id` FROM players WHERE `name` = [Quote(name)]), (SELECT `id` FROM factions WHERE `name` = [Quote(village)]))"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "AddHelper failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	RemoveHelper(name, village)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "DELETE FROM `helpers` WHERE `helper`= (SELECT `id` FROM players WHERE `name` = [Quote(name)]) AND `village` = (SELECT `id` FROM factions WHERE `name` = [Quote(village)])"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "RemoveHelper failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	IsBanned(key, computer_id)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 1

		key = ckey(key)

		var
			query_sql = "SELECT COUNT(*) FROM `key_bans`, `computer_bans` WHERE `key_bans`.`key` = [Quote(key)] OR `computer_bans`.`computer_id` = [Quote(computer_id)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "IsBanned(ban check) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 1

		// Update key-ip associations.
		while(query.NextRow())
			if(text2num(query.item[1]) > 0)
				// Ban key if it matched IP and isn't already banned
				query_sql = "INSERT IGNORE INTO `key_bans` (`key`) VALUES ([Quote(key)])"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "IsBanned(key update) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					return 1

				// Ban IP if it matched key and isn't already banned
				query_sql = "INSERT IGNORE INTO `computer_bans` (`computer_id`) VALUES ([Quote(computer_id)])"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "IsBanned(computer_id update) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					return 1

				// Add record of this particular association
				query_sql = "INSERT IGNORE INTO `key_computer_pairs` (`key`, `computer_id`) VALUES ([Quote(key)], [Quote(computer_id)])"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "IsBanned(pair update) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				return 1

		return 0

	AddBan(key, computer_id)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		key = ckey(key)

		// Add a ban. Uses database transation functionality so changes can be rolled back if something failed.
		var
			query_sql = "START TRANSACTION"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "AddBan(start transaction) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		if(key)
			query_sql = "INSERT IGNORE INTO `key_bans` (`key`) VALUES ([Quote(key)])"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "AddBan(add key ban) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				query_sql = "ROLLBACK"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "AddBan(failure recovery: add key ban) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				return 0

		if(computer_id)
			query_sql = "INSERT IGNORE INTO `computer_bans` (`computer_id`) VALUES ([Quote(computer_id)])"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "AddBan(add computer_id ban) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				query_sql = "ROLLBACK"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "AddBan(failure recovery: add computer_id ban) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				return 0

		if(key && computer_id)
			query_sql = "INSERT INTO `key_computer_pairs` (`key`, `computer_id`) VALUES ([Quote(key)], [Quote(computer_id)])"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "AddBan(pair ban) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				query_sql = "ROLLBACK"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "AddBan(failure recovery: pair ban) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				return 0

		query_sql = "COMMIT"
		query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "AddBan(commit) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

			query_sql = "ROLLBACK"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "AddBan(failure recovery: commit) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

			return 0

		return 1

	RemoveBan(key, computer_id)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		key = ckey(key)

		// Remove a ban. Uses database transation functionality so changes can be rolled back if something failed.
		var
			query_sql = "START TRANSACTION"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "RemoveBan(start transaction) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		if(key)
			query_sql = "DELETE FROM `key_bans` WHERE `key` = ([Quote(key)])"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "RemoveBan(remove key) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				query_sql = "ROLLBACK"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "RemoveBan(failure recovery: remove key) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				return 0

		if(computer_id)
			query_sql = "DELETE FROM `computer_bans` WHERE `computer_id` = ([Quote(computer_id)])"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "RemoveBan(remove computer_id) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				query_sql = "ROLLBACK"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "RemoveBan(failure recovery: remove computer_id) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				return 0

		query_sql = "COMMIT"
		query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "RemoveBan(commit) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

			query_sql = "ROLLBACK"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "RemoveBan(failure recovery: commit) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

			return 0

		return 1

	SetInfoCardComment(name, village, new_comment)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		if(!village)
			return 0

		var
			query_sql = "UPDATE `players` SET ["`comment_[village]`"]=[Quote(new_comment)] WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "SetInfoCardComment failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	GetInfoCard(name, village)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			comment_field = village?"comment_[village]":null

			query_sql = "SELECT `name`, (SELECT `village` FROM `factions` WHERE `factions`.`id` = `players`.`faction`) 'village', (SELECT `name` FROM `factions` WHERE `factions`.`id` = `players`.`faction`) 'faction', `rank`, `body_level`, `faction_points`, `missions_d`, `missions_c`, `missions_b`, `missions_a`, `missions_s`[comment_field?", `[comment_field]` 'comment'":""] FROM `players` WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "GetInfoCard failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		if(query.NextRow())
			var/list/columns = query.GetRowData()
			return list2params(columns)

		return 0

	RenameCharacter(old_name, new_name)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "UPDATE `players` SET `name` = [Quote(new_name)] WHERE `name` = [Quote(old_name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "RenameCharacter failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	DeleteCharacter(name)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		var
			query_sql = "DELETE FROM `players` WHERE `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "DeleteCharacter failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		return 1

	GetCharacter(name, key)
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		key = ckey(key)

		var
			list
				L = new(5)
				inv
				bar
				strg
				nums
				lst

			query_sql = "SELECT * FROM `players` WHERE `ckey` = [Quote(key)] AND `name` = [Quote(name)]"
			DBQuery/query = dbcon.NewQuery(query_sql)

		if(!query.Execute())
			world.log << "GetCharacter failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			return 0

		if(query.NextRow())
			var/list/columns = query.GetRowData()

			bar = new /list(10)
			for(var/i in 1 to 10)
				bar[i] = text2num(columns["macro[i]"])

			strg = new /list(10)
			strg[1]=columns["last_hosted_chuunin_time"]
			strg[2]=columns["last_hostile_key"]
			strg[3]=columns["rank"]
			strg[4]=columns["icon"]
			strg[5]=columns["name"]

			if(columns["faction"])
				query_sql = "SELECT `name` FROM `factions` WHERE `id` = [Quote(columns["faction"])]"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "GetCharacter(faction lookup) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					strg[6]="Missing"
				else
					if(query.NextRow())
						strg[6]=query.item[1]
					else
						strg[6]="Missing"
			else
				strg[6]="Missing"

			if(columns["squad"])
				query_sql = "SELECT `name` FROM `squads` WHERE `id` = [Quote(columns["squad"])]"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "GetCharacter(squad lookup) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					strg[7]=null
				else
					if(query.NextRow())
						strg[7]=query.item[1]
					else
						strg[7]=null
			else
				strg[7]=null

			strg[8]=columns["hair_color"]
			strg[9]=columns["clan"]
			strg[10]=columns["verify"]

			nums = new /list(34)
			nums[1]=text2num(columns["ezing"])
			nums[2]=text2num(columns["mission_cool"])
			nums[3]=text2num(columns["survivalist_cooldown"])
			nums[4]=text2num(columns["mutevote_cooldown"])
			nums[5]=text2num(columns["vote_cooldown"])
			nums[6]=text2num(columns["faction_points"])
			nums[7]=text2num(columns["headband_position"])
			nums[8]=text2num(columns["missions_d"])
			nums[9]=text2num(columns["missions_c"])
			nums[10]=text2num(columns["missions_b"])
			nums[11]=text2num(columns["missions_a"])
			nums[12]=text2num(columns["missions_s"])
			nums[13]=text2num(columns["bounty"])
			nums[14]=text2num(columns["hair_type"])
			nums[15]=text2num(columns["control"])
			nums[16]=text2num(columns["strength"])
			nums[17]=text2num(columns["intelligence"])
			nums[18]=text2num(columns["reflex"])
			nums[19]=text2num(columns["skill_points"])
			nums[20]=text2num(columns["level_points"])
			nums[21]=text2num(columns["money"])
			nums[22]=text2num(columns["stamina"])
			nums[23]=text2num(columns["current_stamina"])
			nums[24]=text2num(columns["chakra"])
			nums[25]=text2num(columns["current_chakra"])
			nums[26]=text2num(columns["max_wounds"])
			nums[27]=text2num(columns["current_wounds"])
			nums[28]=text2num(columns["body_points"])
			nums[29]=text2num(columns["body_level"])
			nums[30]=text2num(columns["kod"])
			nums[31]=text2num(columns["supplies"])
			nums[32]=text2num(columns["x"])
			nums[33]=text2num(columns["y"])
			nums[34]=text2num(columns["z"])

			var/hash=md5("[nums[28]]["squad_delete"][nums[15]+nums[16]+nums[17]+nums[18]]["faction_info"][nums[29]]["get_chars"][nums[20]]["check_name"][nums[19]]")
			if(strg[10] != hash)
				world.log << "GetCharacter([key], [name]) failed: hash mismatch, deleting character"

				query_sql = "DELETE FROM `players` WHERE `id` = [Quote(columns["id"])]"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "GetCharacter(failed -- delete) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"

				return 0

			lst = new /list(8)
			lst[1]=columns["skills_passive"]

			var/skill_info[0]
			query_sql = "SELECT * FROM `skills` WHERE `player` = [Quote(columns["id"])]"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "GetCharacter(skill retrieval) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			else
				while(query.NextRow())
					var/list/skill = query.GetRowData()
					skill_info += skill["id"]
					skill_info += skill["cooldown"]
					skill_info += skill["uses"]

			lst[2]=dd_list2text(skill_info,"&")
			lst[3]=columns["puppet1"]
			lst[4]=columns["puppet2"]
			lst[5]=columns["puppet3"]
			lst[6]=columns["custmac"]
			lst[7]=columns["elements"]
			lst[1]=columns["skills_passive"]

			inv = list()
			query_sql = "SELECT * FROM `items` WHERE `player` = [Quote(columns["id"])]"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "GetCharacter(item retrieval) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
			else
				while(query.NextRow())
					var/list/item = query.GetRowData()
					inv += item["id"]
					inv += item["equipped"]

		if(!inv) inv = list()

		if(!bar) bar = new/list(10)
		if(bar.len < 10) bar.len = 10

		if(!strg) strg = new/list(8)
		if(strg.len < 10) strg.len = 10

		if(!nums) nums = new/list(43)
		if(nums.len < 43) nums.len = 43

		if(!lst) lst = new/list(7)
		if(lst.len < 7) lst.len = 7

		for(var/i in 1 to 7)
			if(!lst[i]) lst[i] = list()

		L[1]=inv//dd_list2text(inv,";")
		L[2]=bar//dd_list2text(bar,";")
		L[3]=strg//dd_list2text(strg,";")
		L[4]=nums//dd_list2text(nums,";")
		L[5]=lst//dd_list2text(lst,";")

		return L//dd_list2text(L,"$")

	SaveCharacter(key, inv[], bar[], strg[], nums[], lst[])
		if(!dbcon.IsConnected())
			world.log << "Database Disconnected: [dbcon.ErrorMsg()]"
			return 0

		key = ckey(key)

		if(!key)
			world.log << "SaveCharacter(\"[strg[5]]\") failed: No key given"
			return 0

		if(strg && nums && lst)
			for(var/i = 1; i <= nums.len; ++i)
				nums[i] = text2num(nums[i])
				if(!nums[i]) nums[i] = 0

			var/hash=md5("[nums[28]]["squad_delete"][nums[15]+nums[16]+nums[17]+nums[18]]["faction_info"][nums[29]]["get_chars"][nums[20]]["check_name"][nums[19]]")

			if(strg[10] != hash)
				world.log << "SaveCharacter(\"[strg[5]]\") failed: Verification failed."
				return 0

			var/query_sql = "SELECT ckey FROM players WHERE name = [Quote(strg[5])]"
			var/DBQuery/query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "SaveCharacter failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
				return 0

			var/already_exists = 0
			if(query.NextRow())
				already_exists = 1
				var/list/data = query.GetRowData()

				if(data["ckey"] != key)
					return 0

			var/update_sql = {"
				ezing = [Quote(nums[1])],
				mission_cool = [Quote(nums[2])],
				survivalist_cooldown = [Quote(nums[3])],
				mutevote_cooldown = [Quote(nums[4])],
				vote_cooldown = [Quote(nums[5])],
				faction_points = [Quote(nums[6])],
				headband_position = [Quote(nums[7])],
				missions_d = [Quote(nums[8])],
				missions_c = [Quote(nums[9])],
				missions_b = [Quote(nums[10])],
				missions_a = [Quote(nums[11])],
				missions_s = [Quote(nums[12])],
				bounty = [Quote(nums[13])],
				hair_type = [Quote(nums[14])],
				control = [Quote(nums[15])],
				strength = [Quote(nums[16])],
				intelligence = [Quote(nums[17])],
				reflex = [Quote(nums[18])],
				skill_points = [Quote(nums[19])],
				level_points = [Quote(nums[20])],
				money = [Quote(nums[21])],
				stamina = [Quote(nums[22])],
				current_stamina = [Quote(nums[23])],
				chakra = [Quote(nums[24])],
				current_chakra = [Quote(nums[25])],
				max_wounds = [Quote(nums[26])],
				current_wounds = [Quote(nums[27])],
				body_points = [Quote(nums[28])],
				body_level = [Quote(nums[29])],
				kod = [Quote(nums[30])],
				supplies = [Quote(nums[31])],
				x = [Quote(nums[32])],
				y = [Quote(nums[33])],
				z = [Quote(nums[34])],
				last_hosted_chuunin_time = [Quote(strg[1])],
				last_hostile_key = [Quote(strg[2])],
				rank = [Quote(strg[3])],
				icon = [Quote(strg[4])],
				name = [Quote(strg[5])],
				faction = (SELECT `id` from `factions` WHERE `name` = [Quote(strg[6])]),
				squad = [strg[7]?"(SELECT `id` from `squads` WHERE `name` = [Quote(strg[7])])":"NULL"],
				hair_color = [Quote(strg[8])],
				ckey = [Quote(key)],
				clan = [Quote(strg[9])],
				verify = [Quote(strg[10])],
				skills_passive = [Quote(lst[1])],
				puppet1 = [Quote(lst[3])],
				puppet2 = [Quote(lst[4])],
				puppet3 = [Quote(lst[5])],
				custmac= [Quote(lst[6])],
				elements = [Quote(lst[7])],
				macro1 = [bar[1]?Quote(bar[1]):"NULL"],
				macro2 = [bar[2]?Quote(bar[2]):"NULL"],
				macro3 = [bar[3]?Quote(bar[3]):"NULL"],
				macro4 = [bar[4]?Quote(bar[4]):"NULL"],
				macro5 = [bar[5]?Quote(bar[5]):"NULL"],
				macro6 = [bar[6]?Quote(bar[6]):"NULL"],
				macro7 = [bar[7]?Quote(bar[7]):"NULL"],
				macro8 = [bar[8]?Quote(bar[8]):"NULL"],
				macro9 = [bar[9]?Quote(bar[9]):"NULL"],
				macro10 = [bar[10]?Quote(bar[10]):"NULL"]
			"}

			if(already_exists)
				query_sql = "UPDATE `players` SET [update_sql] WHERE name = [Quote(strg[5])] AND ckey = [Quote(key)]"
			else
				query_sql = "INSERT INTO `players` SET [update_sql]"

			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "SaveCharacter failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
				return 0

			var/pid = 0

			query_sql = "SELECT id FROM players WHERE name = [Quote(strg[5])]"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "SaveCharacter(get player ID) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
				return 0

			if(query.NextRow())
				pid = query.item[1]
			else
				world.log << "SaveCharacter(get player ID) failed: No save?"
				return 0

			var/current_skills[0]

			query_sql = "SELECT id FROM skills WHERE player = [Quote(pid)]"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "SaveCharacter(skills:check existing) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
				return 0

			while(query.NextRow())
				current_skills += text2num(query.item[1])

			var/skill_info[] = dd_text2list(lst[2], "&")
			var/skill_inserts[0]
			var/skill_deletes[0]
			var/saved_skills[0]

			for(var/i = 0; i < skill_info.len;)
				var/id = text2num(skill_info[++i])
				var/cooldown = text2num(skill_info[++i])
				var/uses = text2num(skill_info[++i])

				if(!id || (id in saved_skills)) continue

				cooldown = cooldown?(cooldown):(0)
				uses = uses?(uses):(0)

				if(id in current_skills)
					query_sql = "UPDATE skills SET cooldown=[Quote(cooldown)], uses=[Quote(uses)] WHERE id=[Quote(id)] AND player=[Quote(pid)]"

					query = dbcon.NewQuery(query_sql)
					if(!query.Execute())
						world.log << "SaveCharacter(skills:update) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
						return 0
				else
					skill_inserts += "([Quote(id)], [Quote(cooldown)], [Quote(uses)], [Quote(pid)])"

				saved_skills += id

			for(var/skill in current_skills)
				if(!(skill in saved_skills))
					skill_deletes += "id = [Quote(skill)]"

			if(skill_inserts.len)
				query_sql = "INSERT INTO skills (id, cooldown, uses, player) VALUES [dd_list2text(skill_inserts, ",")]"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "SaveCharacter(skills:add) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					return 0

			if(skill_deletes.len)
				var/skill_ids = ""

				for(var/i = 1, i < skill_deletes.len, ++i)
					skill_ids += skill_deletes[i]
					skill_ids += " OR "

				skill_ids += skill_deletes[skill_deletes.len]

				query_sql = "DELETE FROM skills WHERE player = [Quote(pid)] AND ([Quote(skill_ids)])"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "SaveCharacter(skills:delete) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					return 0

			var/current_items[0]
			query_sql = "SELECT id FROM items WHERE player = [Quote(pid)]"
			query = dbcon.NewQuery(query_sql)

			if(!query.Execute())
				world.log << "SaveCharacter(items:check existing) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
				return 0

			while(query.NextRow())
				current_items += text2num(query.item[1])

			var/items_info[] = inv//dd_text2list(lst[2], "&")
			var/item_deletes[0]
			var/item_inserts[0]
			var/saved_items[0]

			if(!istype(items_info, /list))
				items_info = list()

			for(var/i = 0; i < items_info.len;)
				var/id = text2num(items_info[++i])
				var/equipped = text2num(items_info[++i])

				if(!id || (id in saved_items)) continue

				equipped = equipped?(equipped):(0)

				if(id in current_items)
					query_sql = "UPDATE items SET equipped=[Quote(equipped)] WHERE id=[Quote(id)] AND player=[Quote(pid)]"

					query = dbcon.NewQuery(query_sql)
					if(!query.Execute())
						world.log << "SaveCharacter(items:update) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
						return 0
				else
					item_inserts += "([Quote(id)], [Quote(equipped)], [Quote(pid)])"
				saved_items += id

			for(var/item in current_items)
				if(!(item in saved_items))
					item_deletes += "id = [Quote(item)]"

			if(item_inserts.len)
				query_sql = "INSERT INTO items (id, equipped, player) VALUES [dd_list2text(item_inserts, ",")]"
				query = dbcon.NewQuery(query_sql)
				if(!query.Execute())
					world.log << "SaveCharacter(items:add) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					return 0

			if(item_deletes.len)
				var/item_ids = ""

				for(var/i = 1, i < item_deletes.len, ++i)
					item_ids += item_deletes[i]
					item_ids += " OR "

				item_ids += item_deletes[item_deletes.len]

				query_sql = "DELETE FROM items WHERE player = [Quote(pid)] AND ([Quote(item_ids)])"
				query = dbcon.NewQuery(query_sql)

				if(!query.Execute())
					world.log << "SaveCharacter(items:delete) failed:\n\t[query_sql]\n\t[query.ErrorMsg()]"
					return 0

			return 1
