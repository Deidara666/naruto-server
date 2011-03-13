atom/movable
	var
		guild = "None"
		guildowner = 0
		guildtitle = "Member"
		council = 0
		guildallow = 0
		npc = 0
		guildgm = 0
mob
	verb
		Create_Guild()
			set category = "Guild"
			var/name = input("Name it:","") as text
			for(var/mob/M in world)
				if(M.guildgm == 1)
					switch(alert(M,"Accept [name] guild?","","Accept","Deny"))
						if("Accept")
							usr << "<B><font color=green>You're guild has been accepted!"
							usr.guild = "[name]"
							usr.verbs += /mob/guildcontrols/verb/Invite
							usr.verbs += /mob/guildcontrols/verb/Boot_Member
							usr.verbs += /mob/guildcontrols/verb/Guild_Say
							usr.verbs += /mob/guildcontrols/verb/Change_Members_Rank
							usr.verbs += /mob/guildcontrols/verb/Leave_Guild
							usr.verbs += /mob/guildcontrols/verb/Council_Say
							usr.verbs -= /mob/verb/Create_Guild
							usr.guildtitle = "Owner"
							usr.council = 1
							usr.guildowner = 1
						if("Deny")
							usr << "<B><font color=yellow>You're guild has been denied."
mob
	guildcontrols
		verb
			Invite(mob/M as mob in world)
				set category = "Guild"
				if(M.npc == 1||M.guildallow==0)
					world << "They are an NPC you cannot!"
				if(M.npc == 0||M.guildallow==1)
					switch(alert(M,"[usr] has invited you to their guild, [usr.guild]?","","Accept","Deny"))
						if("Accept")
							usr << "<B>[M] has joined you're guild!"
							M << "<B>You have joined [usr]'s guild!"
							M.guild = usr.guild
							usr.verbs += /mob/guildcontrols/verb/Guild_Say
							usr.verbs += /mob/guildcontrols/verb/Leave_Guild
						if("Deny")
							usr << "<B>[M] has declined you're invite."
							M << "<B>You have declined [M]'s invite."
			Boot_Member(mob/M as mob in world)
				set category = "Guild"
				if(M.guild == usr.guild)
					switch(alert(M,"Are you sure about booting [M] from you're guild?","","Yes","No"))
						if("Yes")
							if(M.guildowner == 0)
								M << "<B>You have been booted from [usr.guild].</B>"
								M.guild = "None"
								usr << "<B>You have booted [M] from you're guild."
							if(M.guildowner == 1)
								usr << "You cannot you are the guild owner!"
						if("No")
							usr << "<B>Ok."
			Guild_Say(msg as text)
				set category = "Guild"
				for(var/mob/M in world)
					if(M.guild == usr.guild)
						world << "<B><font color=lime>{{</font>[usr.guild] [usr.guildtitle]</font><font color=lime>}} {{</font><font color=red>[usr]</font><font color=lime>}}</font>says: [msg]"
			Council_Say(msg as text)
				set category = "Guild"
				for(var/mob/M in world)
					if(M.guild == usr.guild)
						if(M.council == 1||usr.council == 1)
							world << "<B><font color=lime>{{</font>[usr.guild] [usr.guildtitle]</font><font color=lime>}} {{</font><font color=red>[usr]</font><font color=lime>}}</font>council says: [msg]"
			Change_Members_Rank(mob/M as mob in world)
				set category = "Guild"
				if(usr.guild == M.guild)
					switch(alert(usr,"What do you want to change [M]'s guild rank to?","Leader","Council","Recruiter","Member"))
						if("Leader")
							M.verbs -= /mob/guildcontrols/verb/Invite
							M.verbs -= /mob/guildcontrols/verb/Boot_Member
							M.verbs -= /mob/guildcontrols/verb/Guild_Say
							M.verbs -= /mob/guildcontrols/verb/Change_Members_Rank
							M.verbs -= /mob/guildcontrols/verb/Leave_Guild
							M.verbs -= /mob/guildcontrols/verb/Council_Say
							sleep(2)
							M.verbs += /mob/guildcontrols/verb/Change_Members_Rank
							M.verbs += /mob/guildcontrols/verb/Invite
							M.verbs += /mob/guildcontrols/verb/Boot_Member
							M.verbs += /mob/guildcontrols/verb/Guild_Say
							M.verbs += /mob/guildcontrols/verb/Leave_Guild
							usr << "Done."
							M.guildtitle = "Leader"
							M << "You're rank has been changed to Leader."
							if(M.guildowner==1)
								M.verbs += /mob/guildcontrols/verb/Invite
								M.verbs += /mob/guildcontrols/verb/Boot_Member
								M.verbs += /mob/guildcontrols/verb/Guild_Say
								M.verbs += /mob/guildcontrols/verb/Change_Members_Rank
								M.verbs += /mob/guildcontrols/verb/Leave_Guild
								M.verbs += /mob/guildcontrols/verb/Council_Say
						if("Council")
							M.verbs -= /mob/guildcontrols/verb/Invite
							M.verbs -= /mob/guildcontrols/verb/Boot_Member
							M.verbs -= /mob/guildcontrols/verb/Guild_Say
							M.verbs -= /mob/guildcontrols/verb/Change_Members_Rank
							M.verbs -= /mob/guildcontrols/verb/Leave_Guild
							M.verbs -= /mob/guildcontrols/verb/Council_Say
							sleep(2)
							M.verbs += /mob/guildcontrols/verb/Council_Say
							M.verbs += /mob/guildcontrols/verb/Guild_Say
							M.verbs += /mob/guildcontrols/verb/Leave_Guild
							M.council = 1
							M.guildtitle = "Council"
							M << "You're rank has been changed to Council."
							usr << "Done."
							if(M.guildowner==1)
								M.verbs += /mob/guildcontrols/verb/Invite
								M.verbs += /mob/guildcontrols/verb/Boot_Member
								M.verbs += /mob/guildcontrols/verb/Guild_Say
								M.verbs += /mob/guildcontrols/verb/Change_Members_Rank
								M.verbs += /mob/guildcontrols/verb/Leave_Guild
								M.verbs += /mob/guildcontrols/verb/Council_Say
						if("Recruiter")
							M.verbs -= /mob/guildcontrols/verb/Invite
							M.verbs -= /mob/guildcontrols/verb/Boot_Member
							M.verbs -= /mob/guildcontrols/verb/Guild_Say
							M.verbs -= /mob/guildcontrols/verb/Change_Members_Rank
							M.verbs -= /mob/guildcontrols/verb/Leave_Guild
							M.verbs -= /mob/guildcontrols/verb/Council_Say
							sleep(2)
							M.verbs += /mob/guildcontrols/verb/Invite
							M.verbs += /mob/guildcontrols/verb/Guild_Say
							M.verbs += /mob/guildcontrols/verb/Leave_Guild
							M << "You're rank has been changed to Recruiter."
							M.guildtitle = "Recruiter"
							usr << "Done."
							if(M.guildowner==1)
								M.verbs += /mob/guildcontrols/verb/Invite
								M.verbs += /mob/guildcontrols/verb/Boot_Member
								M.verbs += /mob/guildcontrols/verb/Guild_Say
								M.verbs += /mob/guildcontrols/verb/Change_Members_Rank
								M.verbs += /mob/guildcontrols/verb/Leave_Guild
								M.verbs += /mob/guildcontrols/verb/Council_Say
						if("Member")
							M.verbs -= /mob/guildcontrols/verb/Invite
							M.verbs -= /mob/guildcontrols/verb/Boot_Member
							M.verbs -= /mob/guildcontrols/verb/Guild_Say
							M.verbs -= /mob/guildcontrols/verb/Change_Members_Rank
							M.verbs -= /mob/guildcontrols/verb/Leave_Guild
							M.verbs -= /mob/guildcontrols/verb/Council_Say
							sleep(2)
							M.verbs += /mob/guildcontrols/verb/Guild_Say
							M.verbs += /mob/guildcontrols/verb/Leave_Guild
							M << "You're rank has been changed to Member."
							M.guildtitle = "Member"
							usr << "Done."
							if(M.guildowner==1)
								M.verbs += /mob/guildcontrols/verb/Invite
								M.verbs += /mob/guildcontrols/verb/Boot_Member
								M.verbs += /mob/guildcontrols/verb/Guild_Say
								M.verbs += /mob/guildcontrols/verb/Change_Members_Rank
								M.verbs += /mob/guildcontrols/verb/Leave_Guild
								M.verbs += /mob/guildcontrols/verb/Council_Say
			Leave_Guild()
				set category = "Guild"
				switch(alert(usr,"Are you sure you want to leave you're guild?","","Yes","No"))
					if("Yes")
						usr.guild = "None"
						usr << "You have left the guild."
						usr.verbs -= /mob/guildcontrols/verb/Invite
						usr.verbs -= /mob/guildcontrols/verb/Boot_Member
						usr.verbs -= /mob/guildcontrols/verb/Guild_Say
						usr.verbs -= /mob/guildcontrols/verb/Change_Members_Rank
						usr.verbs -= /mob/guildcontrols/verb/Leave_Guild
						usr.verbs -= /mob/guildcontrols/verb/Council_Say
						usr.verbs += /mob/verb/Create_Guild
						usr << "Remember, this guild code could have never been made possible without Shinguku."
					if("No")
						usr << "Ok."
