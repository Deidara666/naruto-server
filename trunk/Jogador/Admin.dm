mob/var
	jailed=0
mob/Darck
	verb
		FicarFodao(mob/M in world)
			set category = "Darcksombra"
			M.overlays+='Staff.dmi'
			M.overlays+='AKAH.dmi'
			src.view=20
			src.Kisame=1
			src.Uchiha=1
			src.Realplayer = 1
			src.human = 1
			src.Clan = "<font color = red>Staff"
			src.Inuzuka=1
			src.Gaaraclan=1
			src.Kaguya=1
			src.Hyuuga=1
			src.Nara=1
			src.NonClan=1
			src.Aburame=1
			src.Akimichi = 1
			src.Kamizuri=1
			src.sharingan3=1
			src.Yen = 9999999999999999999999999999999999999999999999
			src.mangekyou=1
			src.Puppet=1
			src.Medical=1
			src.Kyuubi=1
			src.Shukkaku=1
			src.NonClan=1
			src.Haku = 1
			src.Uzumaki = 1
			src.Tenten = 1
			src.Spiderclan = 1
			src.Rank2 ="Player"
			src.rank = "Administrador"
			src.tai = 9999999999999999999999999999999999999999999
			src.gen = 9999999999999999999999999999999999999999999
			src.nin = 9999999999999999999999999999999999999999999
			src.chakra=999999999999999999999999999999999999999999999999999999999999
			src.health=9999999999999999999999999999999999999999999999999999999999999
			src.level=1000
			src.ChidoriU = 1
			src.RasenganU =1
			src.Clan="Staff Member"
			src.kills=9999999999999999
			src.starS=1
			src.leafS = 1
			src.sandS = 1
			src.snowS = 1
			src.grassS = 1
			src.soundS = 1
			src.rainS = 1
			src.earthS = 1
			src.mistS = 1
			src.lightningS = 1
			src.akatS = 1
			src.soS = 1
			src.waterS = 1
			M.verbs += new /mob/flight/verb/Fly()
			M.verbs += new /mob/nara/verb/kageteleport()
			M.verbs += new /mob/star/verb/Aura()
mob/Owner
	verb
		MakeStar(mob/M in world)
			set category = "Kage"
			M.Village="Estrela"
			M.verbs += new /mob/flight/verb/Fly()
			M.verbs += new /mob/nara/verb/kageteleport()
			M.verbs += new /mob/star/verb/Aura()
			M.verbs += new /mob/star/verb/StarDragon()
			M.verbs += new /mob/star/verb/Peacock()
			var/obj/StarSuit/B = new/obj/StarSuit
			B.loc = M
			M<<"Bem Vindo a Estrela. Você aprendeu todos os Jutsus da Estrela!"
			usr<<"Você recrutou [M] em Estrela."
		MAXBoost(mob/M in world)
			set category = "Ranks"
			M.kills+=50
			M.Mtai += 100000000
			M.Mnin += 100000000
			M.Mgen += 100000000
			M.Suses +=100000
			M.Mshurikenskill = M.cap
			M.Mkunaiskill = M.cap
			M.Mtrapskill = M.cap
			M.kills += 50
			M.maxhealth += 100000000
			M.Mchakra += 10000000
		Key_Ban(mob/M in world)
			set category = "Staff"
			set desc = "Key banida de um jogador do mundo."
			if(!M) return
			if(M==usr)
				usr<<"<font color = red>Você não pode se banir!</font>"
				return
			if(M.key=="")
				usr << "o.O"
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por [usr] porque ele está tentando banir o dono!</font>"
				del(usr)
			if(M.key=="")
				usr << "o.O"
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por [usr] porque ele est tentando banir o dono!</font>"
				del(usr)
			if(M.client)
				Bans:Add(M.key)
				Bans[M.key]="[M.client.address]"
				world<<"<font color = red>[M] foi banido por [usr].</font>"
				del(M)
			else
				usr<<"<font color = red>Você não pode banir npc's.</font>"
		UnBanKey(Key in Bans)
			set category = "Staff"
			set desc = "Key Unban a player."
			if(!Key) return
			var/confirm=input(usr,"Unban","Really unban [Key]?") in list("Yes","No")
			switch(confirm)
				if("Sim")
					Bans:Remove(Key)
					world<<"<TT><font color = red><b>[Key] foi desbanido por [usr].</font>"
				if("Não")
					return
		Manual_Ban(mkey as text)
			set category = "Staff"
			set desc = "Digite manualmente para a banir."
			if(!mkey) return
			if(mkey in Bans)
				usr<<"Eles já estão banidos!</font>"
				return
			if(mkey==usr.key)
				usr<<"<font color = red>Você não pode se banir!</font>"
				return
			if(mkey=="")
				usr << "o.O"
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por [usr] porque ele está tentando banir o dono!</font>"
				del(usr)
			if(mkey=="")
				usr << "o.O"
				Bans:Add(usr.key)
				Bans[usr.key]="[usr.client.address]"
				world<<"<font color = red>[usr] foi banido por [usr] porque ele está tentando banir o dono!</font>"
				del(usr)
			else
				Bans:Add(mkey)
				world<<"<font color = red>A Key \"[mkey]\", foi banida por [usr].</font>"
		Invisible()
			set name = "Invisivel"
			set category = "Staff"
			var/list/O = usr.overlays.Copy()
			if(usr.invisibility==0)
				usr.icon = 'invis.dmi'
				usr.firing=1
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.invisibility=1
			else
				usr.invisibility = 0
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()

		CheckPack(M as mob in world)
			set name = "Verifique inventário"
			set category = "Staff"
			var/varPackList = list()
			if(locate(/obj) in M:contents)
				for(var/obj/O in M:contents)
					varPackList += O
			else
				src << "[M:name] tem um inventário vazio!"
				return
			var/varPackItem = input("Escolha um item de [M:name]","Verifique inventário") in varPackList + list("Cancelar")
			if(varPackItem != "Cancel")
				if(alert("Você gostaria de apagar [varPackItem:name] de [M:name]?","[varPackItem:name]","Sim","Não") == "Sim")
					del(varPackItem)
		IPBan(mob/M in world)
			set category = "Enforcer"
			set desc = "Alguém teve o IP banido no mundo."
			if(!M) return
			if(M==usr)
				usr<<"<font color = red>Você não pode banir-se</font>"
				return
			if(M.key=="")
				world << "[usr] tentou banir [src]"
				return
			if(M.key=="")
				world << "[usr] tentou banir [src]"
				return
			if(M.client)
				IPBans:Add(M.client.address)//Adds the players key to the ban list.
				world<<"<font color = red>[M] teve o ip banido por [usr].</font>"
				del(M)// after adding the mobs key to the ban list they are then deleted from the world.
			else
				usr<<"<font color = red>Você não pode banir NPC's"

		UnBanIP(IP in IPBans)
			set category = "Enforcer"
			set desc = "Algum Ip foi desbanido"
			if(!IP) return
			var/confirm=input(usr,"Sebanir","Realmente desbanir [IP]?") in list("Sim","Não")
			switch(confirm)
				if("Sim")
					IPBans:Remove(IP)
					world<<"<TT><font color = red><b>the IP:\"[IP]\" has been Unbanned(IP) by [usr]</font>."
				if("Não")
					return

		Coords(varX as num, varY as num, varZ as num)
			set name = "Coordenadas"
			set category = "Staff"
			set desc = "X,Y,Z"
			if(varX > world.maxx) // if the number they put in is higher than the map's highest point make it go as close as it can, that way they dont go off map and have to relog
				src.x = world.maxx
			else
				if(varX < 1) // if its less than one go to one since you cant have negative map points
					src.x = 1
			if(varY > world.maxy)
				src.y = world.maxy
			else
				if(varY < 1)
					src.y = 1
			if(varZ > world.maxz)
				src.z = world.maxz
			else
				if(varZ < 1)
					src.z = 1
			src.loc = locate(varX,varY,varZ)

		SetServerDelay()
			set name = "Definir atraso"
			set category = "Host"
			set desc = "Definir o atraso de um outro processo"
			var/nDelay = input(usr, "O que você deseja definir o tick_lag a?[ascii2text(10)]tick_lag atual é [world.tick_lag]","Configurar o atraso do Mundo","1") as null|num
			if (nDelay == null)
				nDelay = 1
			else if (nDelay == 0)
				nDelay = 1
			else if (nDelay > 100)
				nDelay = 10
			else if (nDelay < 10)
				nDelay = 1
			world.tick_lag = nDelay
			text2file("[time2text(world.realtime)]: atraso no servidor foi editada por [usr]<BR>","GMlog.html")
			world << "<font color=red><i>Mundo atraso definido para [(nDelay/10)] segundo(s)</i></strong>"

		ForceNewName(M as mob in world)
			set name = "Força Novo Nome"
			set category = "Enforcer"
			usr<<"Retirado uso de Renomear!"
		Rename(mob/M as mob in world, ID as text)
			set category="Staff"
			set desc="Alterar ID do mob"
			if(length(ID) <= 2)
				src<<"<font color = red> Seu nome deve ser maior que 2 caracteres!"
			else
				src<<"[M] seu nome agora é [ID]"
				M.name=ID
				M.SaveK()


		CEvento()
			set name="Começar Evento"
			set category = "Staff"
			comecaEvento()


		TEvento()
			set name = "Terminar Evento"
			set category = "Staff"
			terminaEvento()



		Boot()
			set name = "Boot"
			set category = "Enforcer"
			var/varPeople = list()              // make a new var for the player list
			for(var/mob/T in world) // for each player in the world..
				varPeople += T         // add it to that list
			var/M = input("Quem você gostaria de iniciar?","tirar") in varPeople + list("Cancelar")
			if(M == "Cancelar")
				return
			if(src.client)
				if(M == src)
					src << "Você não pode iniciar-se!"
					return
				if(M:Rank2 == "Adminitrador" || M:Rank2 == "Moderador"||M:Rank2=="Dono"||M:Rank2=="Fundador")
					src << "Can't boot staff!"
				else
					if(M != null)     // make sure they havn't signed off any time soon.
						var/R = input("Por que você está inicializando[M:name]?","iniciar") as text|null
						if(R == "" || R == null)
							world << "[M:name] está indo, indo, indo, ido!"
						else
							world << "[M:name] está indo, indo, indo, ido! Enquando gritar \"[R]\""
						del(M)

		MusicPlay(S as sound)
			set name = "Tocar Música"
			set category = "Host"
			view(src) << sound(S,0)
			view(src) << "[src.name] execuções [S] para nós!"

		MusicStop()
			set name = "Parar Música"
			set category = "Host"
			view(src) << sound(null)
			view(src) << "[src.name] parou a música!"

		Reboot()
			set name = "Reboot"
			set category = "Host"
			world << "Mundo Reiniciará em 30 segundos. Salve!"
			sleep(300)
			world << "Reiniciará em 5"
			sleep(10)
			world << "4"
			sleep(10)
			world << "3"
			sleep(10)
			world << "2"
			sleep(10)
			world << "1"
			sleep(10)
			world.Reboot()

		Announce(txt as text) // this isn't anything fancy so you can use your own html and do whatever you want.
			set name = "Anunciar"
			set category = "Staff"
			world << "<font face=verdana><font size=3><b><center> [usr] gostaria de anunciar:<center><font color=silver>[txt]"

		LAnnounce(txt as text) // L for local...
			set name = "INFO"
			set category = "Staff"
			world << "<font color=red><big>INFO:<font color=white>[txt]"

		Jail(mob/M in world)
			set popup_menu = 0
			set category = "Enforcer"
			set desc="To jail a unrulely character"
			if(istype(M,/mob/npc))
				usr<<"You cant jail NPCs"
				return
			usr << "Você tem preso [M]"
			M << "Você foi preso por [usr]"
			M.loc = locate(19,94,29)
			M.OOC = 0
			M.jailed=1
			M.SaveK()


		UnJail(mob/M in world)
			set category = "Enforcer"
			set name = "Unjail"
			set desc="To jail a unrulely character"
			if(istype(M,/mob/npc))
				usr<<"You cant jail NPCs"
				return
			M.loc= locate(48,47,1)
			usr << "You have Unjailed [M]"
			M << "You have been Unjailed by [usr]"
			M.OOC = 1
			M.jailed=0
			M.SaveK()


		World_Mute()
			set category = "Enforcer"
			set name = "World Mute"
			world << "<b><font size=1>[src] mutes the world!"
			worldC=0

		World_Unmute()
			set category = "Enforcer"
			set name = "World Unmute"
			world << "<b><font size=1>[src] unmutes the world!"
			worldC=1

		OverlaysFix(mob/M in world)
			set category="Staff"
			M.overlays=null
			M.underlays=null
			M<<"Use a opção de corrigir-me e não deixe ninguém te pegar assim de novo"
			M.SaveK()

		FixIcon(mob/M in world)
			set category="Staff"
			M.icon='Base white.dmi'
			M<<"Use a opção de corrigir-me e não deixe ninguém te pegar assim de novo"
			M.SaveK()


		Summon(mob/M in world)
			set name = "Summon"
			set category = "Staff"
			if(M != src) // so they cant summon themself
				M.loc = locate(usr.x,usr.y-1,usr.z)
				src.dir = SOUTH // face them
				M << "Você foi convocado pelo [src.name]"

		Teleport(obj/M as obj|mob in world)
			set popup_menu = 0
			set category = "Staff"
			set desc = "Teleport to an obj or mob"
			M << "[usr] teleporta próximo a você"
			usr << "Você teleport ao lado [M]"
			usr.loc = locate(M.x,M.y-1,M.z)

		Restore(M as mob in world)
			set name = "Restore"
			set category = "Staff"
			M:health = M:maxhealth
			M:chakra = M:Mchakra
			M << "<font color=red>Você se sente restaurado."

		Create()
			set name = "Create"
			set category = "Staff"
			var/varItem
			var/varType = input("O que você quer criar?","Create") in list("Object","Mob","Turf","Cancel")
			if(varType == "Cancel")
				return
			if(varType == "Object")
				varItem = input("O que você quer fazer?","Create obj") in typesof(/obj) + list("Cancel")
			if(varType == "Mob")
				varItem = input("O que você quer fazer?","Create mob") in typesof(/mob) + list("Cancel")
			if(varType == "Turf")
				varItem = input("O que você quer fazer?","Create turf") in typesof(/turf) + list("Cancel")
			if(varItem == "Cancel")
				return
			new varItem(locate(src.x,src.y,src.z))

		ChangeWorldStatus()
			set category="Host"
			world.status = input("Qual é o status do novo mundo?","Change World Status",world.status)

		Edit(var/O as obj|mob|turf in view(src))
			set name = "Edit"
			set category = "Staff"
			var/variable = input("Which var?","Var") in O:vars + list("Cancel")
			if(variable == "Cancel")
				return
			var/default
			var/typeof = O:vars[variable]
			if(isnull(typeof))
				default = "Text"
			else if(isnum(typeof))
				default = "Num"
				dir = 1
			else if(istext(typeof))
				default = "Text"
			else if(isloc(typeof))
				default = "Reference"
			else if(isicon(typeof))
				typeof = "\icon[typeof]"
				default = "Icon"
			else if(istype(typeof,/atom) || istype(typeof,/datum))
				default = "Type"
			else if(istype(typeof,/list))
				default = "List"
			else if(istype(typeof,/client))
				default = "Cancel"
			else
				default = "File"
			var/class = input("What kind of variable?","Variable Type",default) in list("Text","Num","Type","Reference","Icon","File","Restore to default","List","Null","Cancel")
			switch(class)
				if("Cancel")
					return
				if("Restore to default")
					O:vars[variable] = initial(O:vars[variable])
					text2file("[time2text(world.realtime)]: [O] was restored to default by [usr]<BR>","GMlog.html")
				if("Text")
					O:vars[variable] = input("Enter new text:","Text",O:vars[variable]) as text
					text2file("[time2text(world.realtime)]: [O] had one of his [variable] edited with text by [usr]<BR>","GMlog.html")
				if("Num")
					O:vars[variable] = input("Enter new number:","Num",O:vars[variable]) as num
					text2file("[time2text(world.realtime)]: [O] had one of his [variable] edited with numbers by [usr]<BR>","GMlog.html")
				if("Type")
					O:vars[variable] = input("Enter type:","Type",O:vars[variable]) in typesof(/obj,/mob,/area,/turf)
				if("Reference")
					O:vars[variable] = input("Select reference:","Reference",O:vars[variable]) as mob|obj|turf|area in world
				if("File")
					O:vars[variable] = input("Pick file:","File",O:vars[variable]) as file
				if("Icon")
					O:vars[variable] = input("Pick icon:","Icon",O:vars[variable]) as icon
				if("List")
					input("This is what's in [variable]") in O:vars[variable] + list("Close")
				if("Null")
					if(alert("Are you sure you want to clear this variable?","Null","Yes","No") == "Yes")
						O:vars[variable] = null

		MakeKyuubi(mob/M in world)
			set category = "Staff"
			M.Kyuubi=1
			M<<"You feel a tingle but you don't pay any mind to it."
			usr<<"You have given [M] Kyuubi"
			return

		CurseSealSomeone(mob/M in world)
			set category = "Staff"
			M.bit=1
			M<<"You feel a great urge to avenge the faults of the past."
			usr<<"You have given [M] a chance at Curse seal"
			return





		Blind()
			set name = "Blind"
			set category = "Staff"
			var/varPeople = list()
			for(var/mob/T in world)
				varPeople += T
			var/M = input("Who would you like to blind?","Blind") in varPeople + list("Cancel")
			if(M != "Cancel")
				M:sight |= BLIND
				world << "Haha! [M:name] got blinded by [src.name]!"

		Unblind()
			set name = "Unblind"
			set category = "Staff"
			var/varPeople = list()
			for(var/mob/T in world)
				varPeople += T
			var/M = input("Who would you like to unblind?","Unblind") in varPeople + list("Cancel")
			if(M != "Cancel")
				M:sight &= ~BLIND
				world << "It's a miracle! [M:name] can see again"

		WorldRestore()
			set category="Host"
			world.Repop()

		Freeze(mob/M in world)
			set name = "Freeze"
			set category = "Staff"
			M.Frozen = 1

		Unfreeze(mob/M in world)
			set name = "Unfreeze"
			set category = "Staff"
			M.Frozen = 0

		GiveClanJutsu(mob/M in world)
			set name = "Give Clan Jutsu"
			set category = "Staff"
			switch(input("Qual Jutsu você deseja dar a eles?", text) in list("Focus","Rasengan","Chidori","Ikazuchi No Kiba","TajuuKageBunshinNoJutsu","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Suiton No Jutsu","Kaiten","Ice Armor","Jyuuken","Hakke Kuushou","Katon Ryuuka","Rai No Jutsu","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirriors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons","Cancel"))
				if("Focus")
					M.verbs += new /mob/Tenten/verb/Focus()
				if("Rasengan")
					M.verbs += new /mob/jutsu/verb/Rasengan()
				if("Chidori")
					M.verbs += new /mob/jutsu/verb/Chidori()
				if("Ikazuchi No Kiba")
					M.verbs += new /mob/rai/verb/Ikazuchi_No_Kiba()
				if("Homing Shuriken")
					M.verbs += new /mob/Tenten/verb/HomingShuriken()
				if("Homing Kunai")
					M.verbs += new /mob/Tenten/verb/HomingKunai()
				if("Homing Windmill")
					M.verbs += new /mob/Tenten/verb/HomingWindmill()
				if("Kaiten")
					M.verbs += new /mob/hyuuga/verb/HakkeshouKaiten()
				if("Bee Sabaku Kyuu")
					M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
				if("Bee Sabaku Sousou")
					M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
				if("Jyuuken")
					M.verbs += new /mob/hyuuga/verb/Jyuken()
				if("Hakke Kuushou")
					M.verbs += new /mob/hyuuga/verb/HakkeKuusho()
				if("Katon Ryuuka")
					M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
				if("Suiton No Jutsu")
					M.verbs += new /mob/mist/verb/MistArmor()
				if("Ice Armor")
					M.verbs += new /mob/ice/verb/IceArmor()
				if("Rai No Jutsu")
					M.verbs += new /mob/rai/verb/RaiArmor()
				if("Zan No Jutsu")
					M.verbs += new /mob/sound/verb/ZanArmor()
				if("Katon Karyuu Endan")
					M.verbs += new /mob/katon/verb/KatonKaryuuEndan()
				if("Sensatsu Suishou")
					M.verbs += new /mob/haku/verb/SensatsuSuishou()
				if("Mist")
					M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
				if("Mirriors")
					M.verbs += new /mob/haku/verb/MakyouHyoushou()
				if("Nikudan")
					M.verbs += new /mob/Akimichi/verb/NikudanSensha()
				if("Nikudan Hari")
					M.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
				if("Bubun Baika")
					M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
				if("Kage Shibari")
					M.verbs += new /mob/nara/verb/kageshibari()
					M.verbs += new /mob/nara/verb/ExtendShadow()
					M.verbs += new /mob/nara/verb/RetractShadow()
				if("Kage Kubi Shibaru")
					M.verbs += new /mob/nara/verb/KageKubiShibaru()
				if("Bone Sword")
					M.verbs += new /mob/kaguyajutsu/verb/CreateBoneSword()
				if("Bone Whip")
					M.verbs += new /mob/kaguyajutsu/verb/CreateSpineWhip()
				if("Yanagi")
					M.verbs += new /mob/kaguyajutsu/verb/YanagiNoMai()
				if("Tsubaki")
					M.verbs += new /mob/kaguyajutsu/verb/TsubakiNoMai()
				if("Karamatsu")
					M.verbs += new /mob/kaguyajutsu/verb/KaramatsuNoMai()
				if("Teshi Sendan")
					M.verbs += new /mob/kaguyajutsu/verb/TeshiSendan()
				if("Tessenka")
					M.verbs += new /mob/kaguyajutsu/verb/TessenkaNoMai()
				if("Sawarabi")
					M.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
				if("Konchuu")
					M.verbs += new /mob/aburame/verb/summonkonchuu()
					M.verbs += new /mob/aburame/verb/Placekonchuu()
					M.verbs += new /mob/aburame/verb/DestroyKonchuu()
				if("Explode Bug")
					M.verbs += new /mob/aburame/verb/ExplodeKonchuu()
				if("Tame")
					M.verbs += new /mob/inuzuka/verb/Tame()
				if("Tsuuga")
					M.verbs += new /mob/Inuzuka/verb/Gatsuuga()
				if("Gatsuuga")
					M.verbs += new /mob/Inuzuka/verb/Gatsuuga1()
				if("Soutourou")
					M.verbs += new /mob/Inuzuka/verb/Soutourou()
				if("Konoha Renpuu")
					M.verbs += new /mob/Lee/verb/KonohaReppu()
				if("Konoha Senpuu")
					M.verbs += new /mob/Lee/verb/KonohaSenpuu()
				if("Omote Renge")
					M.verbs += new /mob/Lee/verb/OmoteRenge()
				if("Ura Renge")
					M.verbs += new /mob/Lee/verb/UraRenge()
				if("Konoha Genuriki Senpuu")
					M.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
				if("Suna Shuirken")
					M.verbs += new /mob/gaara/verb/SunaShuriken()
				if("Suna Shushin")
					M.verbs += new /mob/gaara/verb/SunaShushinNoJutsu()
				if("Sand Sphere")
					M.verbs += new /mob/gaara/verb/SandSphere()
				if("Sand Armor")
					M.verbs += new /mob/gaara/verb/SandArmor()
				if("Sabaku Kyuu")
					M.verbs += new /mob/gaara/verb/SabakuKyuu()
				if("Sabaku Sousou")
					M.verbs += new /mob/gaara/verb/SabakuSousou()
				if("Shousen")
					M.verbs += new /mob/medical/verb/Shousen_Jutsu()
				if("Chakra No Mesu")
					M.verbs += new /mob/medical/verb/ChakraNoMesu()
				if("Slice Tendons")
					M.verbs += new /mob/medical/verb/SliceTendons()
				if("Screw Nerves")
					M.verbs += new /mob/medical/verb/ScrewNerves()
				if("Fire Armor")
					M.verbs += new /mob/uchiha/verb/FireArmor()
				if("Konchuu")
					M.verbs += new /mob/aburame/verb/summonkonchuu()
					M.verbs += new /mob/aburame/verb/Placekonchuu()
					M.verbs += new /mob/aburame/verb/DestroyKonchuu()
				if("Hunter")
					M.verbs += new /mob/jutsu/verb/JourouSenbon()
				if("TajuuKageBunshinNoJutsu")
					M.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
				if("Missing")
					M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()

				if("Cancel")
					return

		TakeClanJutsu(mob/M in world)
			set name = "Take Clan Jutsu"
			set category = "Staff"
			switch(input("What Jutsu do you wish to take from them?", text) in list("Focus","Chidori","Rasengan","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Suiton No Jutsu","Ice Armor","Kaiten","Jyuuken","Hakke Kuushou","Rai No Jutsu","Katon Ryuuka","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirriors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons",,"Teleport","Fly","Bug Armor","Bug Kyuu","Bug Sousou","Bees","Explode Bee","Bee Wings","Counter","Blind","Sexy","Kage Shuriken","Kage Kunai","Tajuu Bunshin","Nisen Rendan","Cancel"))
				if("Focus")
					M.verbs -= new /mob/Tenten/verb/Focus()
					M.SaveK()
				if("Rasengan")
					M.verbs -= new /mob/jutsu/verb/Rasengan()
					M.SaveK()
				if("Chidori")
					M.verbs += new /mob/jutsu/verb/Chidori()
					M.SaveK()
				if("Homing Shuriken")
					M.verbs -= new /mob/Tenten/verb/HomingShuriken()
					M.SaveK()
				if("Homing Kunai")
					M.verbs -= new /mob/Tenten/verb/HomingKunai()
					M.SaveK()
				if("Homing Windmill")
					M.verbs -= new /mob/Tenten/verb/HomingWindmill()
					M.SaveK()
				if("Kaiten")
					M.verbs -= new /mob/hyuuga/verb/HakkeshouKaiten()
					M.SaveK()
				if("Bee Sabaku Kyuu")
					M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
					M.SaveK()
				if("Bee Sabaku Sousou")
					M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
					M.SaveK()
				if("Tame")
					M.verbs -= new /mob/inuzuka/verb/Tame()
					M.SaveK()
				if("Jyuuken")
					M.verbs -= new /mob/hyuuga/verb/Jyuken()
					M.SaveK()
				if("Zan No Jutsu")
					M.verbs -= new /mob/sound/verb/ZanArmor()
					M.SaveK()
				if("Fire Armor")
					M.verbs -= new /mob/uchiha/verb/FireArmor()
					M.SaveK()
				if("Hakke Kuushou")
					M.verbs -= new /mob/hyuuga/verb/HakkeKuusho()
					M.SaveK()
				if("Katon Ryuuka")
					M.verbs -= new /mob/katon/verb/KatonRyuukanoJutsu()
					M.SaveK()
				if("Katon Karyuu Endan")
					M.verbs -= new /mob/katon/verb/KatonKaryuuEndan()
					M.SaveK()
				if("Sensatsu Suishou")
					M.verbs -= new /mob/haku/verb/SensatsuSuishou()
					M.SaveK()
				if("Mist")
					M.verbs -= new /mob/mist/verb/KirigakurenoJutsu()
					M.SaveK()
				if("Mirriors")
					M.verbs -= new /mob/haku/verb/MakyouHyoushou()
					M.SaveK()
				if("Nikudan")
					M.verbs -= new /mob/Akimichi/verb/NikudanSensha()
					M.SaveK()
				if("Nikudan Hari")
					M.verbs -= new /mob/Akimichi/verb/NikudanHariSensha()
					M.SaveK()
				if("Bubun Baika")
					M.verbs -= new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					M.SaveK()
				if("Kage Shibari")
					M.verbs -= new /mob/nara/verb/kageshibari()
					M.verbs -= new /mob/nara/verb/ExtendShadow()
					M.verbs -= new /mob/nara/verb/RetractShadow()
					M.SaveK()
				if("Kage Kubi Shibaru")
					M.verbs -= new /mob/nara/verb/KageKubiShibaru()
					M.SaveK()
				if("Bone Sword")
					M.verbs -= new /mob/kaguyajutsu/verb/CreateBoneSword()
					M.SaveK()
				if("Bone Whip")
					M.verbs -= new /mob/kaguyajutsu/verb/CreateSpineWhip()
					M.SaveK()
				if("Yanagi")
					M.verbs -= new /mob/kaguyajutsu/verb/YanagiNoMai()
					M.SaveK()
				if("Tsubaki")
					M.verbs -= new /mob/kaguyajutsu/verb/TsubakiNoMai()
					M.SaveK()
				if("Karamatsu")
					M.verbs -= new /mob/kaguyajutsu/verb/KaramatsuNoMai()
					M.SaveK()
				if("Teshi Sendan")
					M.verbs -= new /mob/kaguyajutsu/verb/TeshiSendan()
					M.SaveK()
				if("Tessenka")
					M.verbs -= new /mob/kaguyajutsu/verb/TessenkaNoMai()
					M.SaveK()
				if("Sawarabi")
					M.verbs -= new /mob/kaguyajutsu/verb/Sawarabi()
					M.SaveK()
				if("Konchuu")
					M.verbs -= new /mob/aburame/verb/summonkonchuu()
					M.verbs -= new /mob/aburame/verb/Placekonchuu()
					M.verbs -= new /mob/aburame/verb/DestroyKonchuu()
					M.SaveK()
				if("Explode Bug")
					M.verbs -= new /mob/aburame/verb/ExplodeKonchuu()
					M.SaveK()
				if("Tsuuga")
					M.verbs -= new /mob/Inuzuka/verb/Gatsuuga()
					M.SaveK()
				if("Gatsuuga")
					M.verbs -= new /mob/Inuzuka/verb/Gatsuuga1()
					M.SaveK()
				if("Soutourou")
					M.verbs -= new /mob/Inuzuka/verb/Soutourou()
					M.SaveK()
				if("Konoha Renpuu")
					M.verbs -= new /mob/Lee/verb/KonohaReppu()
					M.SaveK()
				if("Konoha Senpuu")
					M.verbs -= new /mob/Lee/verb/KonohaSenpuu()
					M.SaveK()
				if("Omote Renge")
					M.verbs -= new /mob/Lee/verb/OmoteRenge()
					M.SaveK()
				if("Ura Renge")
					M.verbs -= new /mob/Lee/verb/UraRenge()
					M.SaveK()
				if("Konoha Genuriki Senpuu")
					M.verbs -= new /mob/Lee/verb/KonohaGenkurikiSenpuu()
					M.SaveK()
				if("Suna Shuirken")
					M.verbs -= new /mob/gaara/verb/SunaShuriken()
					M.SaveK()
				if("Suna Shushin")
					M.verbs -= new /mob/gaara/verb/SunaShushinNoJutsu()
					M.SaveK()
				if("Sand Sphere")
					M.verbs -= new /mob/gaara/verb/SandSphere()
					M.SaveK()
				if("Sand Armor")
					M.verbs -= new /mob/gaara/verb/SandArmor()
					M.SaveK()
				if("Suiton No Jutsu")
					M.verbs -= new /mob/mist/verb/MistArmor()
					M.SaveK()
				if("Ice Armor")
					M.verbs -= new /mob/ice/verb/IceArmor()
					M.SaveK()
				if("Rai No Jutsu")
					M.verbs -= new /mob/rai/verb/RaiArmor()
					M.SaveK()
				if("Sabaku Kyuu")
					M.verbs -= new /mob/gaara/verb/SabakuKyuu()
					M.SaveK()
				if("Sabaku Sousou")
					M.verbs -= new /mob/gaara/verb/SabakuSousou()
					M.SaveK()
				if("Shousen")
					M.verbs -= new /mob/medical/verb/Shousen_Jutsu()
					M.SaveK()
				if("Chakra No Mesu")
					M.verbs -= new /mob/medical/verb/ChakraNoMesu()
					M.SaveK()
				if("Slice Tendons")
					M.verbs -= new /mob/medical/verb/SliceTendons()
					M.SaveK()
				if("Screw Nerves")
					M.verbs -= new /mob/medical/verb/ScrewNerves()
					M.SaveK()
				if("Konchuu")
					M.verbs -= new /mob/aburame/verb/summonkonchuu()
					M.verbs -= new /mob/aburame/verb/Placekonchuu()
					M.verbs -= new /mob/aburame/verb/DestroyKonchuu()
					M.SaveK()
				if("Hunter")
					M.verbs -= new /mob/jutsu/verb/JourouSenbon()
					M.SaveK()
				if("Missing")
					M.verbs-= new /mob/jutsu/verb/BakuretsuBunshin()
					M.SaveK()
				if("Cancel")
					return

		GMOOC(msg as text)
			set category = "Staff"
			set name = "GM OOC"
			for(var/mob/M in world)
				if(M.GM)
					M<<"(GM OOC)<font color=red> [usr]: [msg] )"

		TakeVerb(mob/M in world)
			set name = "Take Verb"
			set category = "Staff"
			var/varPeople = list()
			for(var/mob/T in world)
				varPeople += T
			input("Who would you to take a verb from?","Take Verb") in varPeople + list("Cancel")
			var/varVerb = input("What verb would you like to take from [M:name]?","Take Verb") in M:verbs + list("Cancel")
			if(varVerb != "Cancel" && M:key != null)
				M:verbs -= varVerb
			AutoSave()

		Mute(mob/M as mob in world,msg as text)
			set category = "Enforcer"
			M.OOC = 0
			world << "<font color=silver><font size=1><B>[src] mutes [M] for [msg]"
			text2file("[time2text(world.realtime)]: [M] was muted by [usr] for [msg]<BR>","GMlog.html")
			M.SaveK()


		Unmute(mob/M as mob in world)
			set category = "Enforcer"
			M.OOC = 1
			world << "<font color=silver><font size=1><B>[src] unmutes [M]"
			text2file("[time2text(world.realtime)]: [M] was unmuted by [usr]<BR>","GMlog.html")
			M.SaveK()


		MakeAdmin(mob/M as mob in world)
			set category = "Staff"
			M.GM=1
			M.verbs += typesof(/mob/Admin/verb) // give admins all admin verbs
			M.SaveK()


		MakeEnforcer(mob/M as mob in world)
			set category = "Staff"
			M.GM=1
			M.verbs += typesof(/mob/Enforcer/verb)
			M.SaveK()

		Set_to_CAPS(mob/M as mob in world)
			set category = "Ranks"
			M.Mtai = M.cap
			M.Mnin = M.cap
			M.Mgen = M.cap
			M.Mshurikenskill = M.cap
			M.Mkunaiskill = M.cap
			M.Mtrapskill = M.cap

		HealthBoost(mob/M as mob in world)
			set category = "Ranks"
			M.maxhealth += 100000
			M.Mchakra += 100000

		MakePlayer(mob/M as mob in world)
			set category = "Staff"
			M.Rank2 = "Player"
			M.verbs -= typesof(/mob/Admin/verb)
			M.verbs -= typesof(/mob/Enforcer/verb)
			M.GM=0
			M.SaveK()


		Chuuninexam()
			set category = "Staff"
			set name = "Chuunin Examination"
			if(!Chuunintime)
				usr<<"You will be teleported to the Chuunin host room when it starts"
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 5 minutes - Go to the Chuunin room theres one in all Villages..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 4 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 3 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 2 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 1 minute..."
				sleep(500)
				world<<"<font size=3><font color=red>Chuunin exam has now started..."
				Chuunintime=1
				usr.loc=locate(52,40,13)
			else
				world<<"Chuunin Exam Part one over"
				Chuunintime=0

		MakeJounin(mob/M in world)
			set category = "Staff"
			world<<"[M] is now a jounin"
			M.seals=100
			M.cap = Jcap
			M.rank="Jounin"
			M.verbs+= new /mob/Buyou/verb/Kagebuyou
			M.jounin=1
			M.verbs -= new /mob/Enforcer/verb/Jail()
			M.verbs -= new /mob/Enforcer/verb/UnJail()
			if(M.Village=="Leaf")
				var/obj/LeafSuit/R = new/obj/LeafSuit
				R.loc=M
			if(M.Village =="Sand")
				var/obj/SandSuit/S = new/obj/SandSuit
				S.loc = M
			if(M.Village =="Sound")
				var/obj/SoundSuit/S = new/obj/SoundSuit
				S.loc = M
			if(M.Village =="Grass")
				var/obj/GrassSuit/S = new/obj/GrassSuit
				S.loc = M
			if(M.Village =="Rain")
				var/obj/RainSuit/S = new/obj/RainSuit
				S.loc = M
			if(M.Village =="Cloud")
				var/obj/CloudSuit/S = new/obj/CloudSuit
				S.loc = M
			if(M.Village =="Mist")
				var/obj/MistSuit/S = new/obj/MistSuit
				S.loc = M
			if(M.Village =="Rock")
				var/obj/RockSuit/S = new/obj/RockSuit
				S.loc = M
			if(M.Village =="Snow")
				var/obj/SnowSuit/S = new/obj/SnowSuit
				S.loc = M
			if(M.Village =="Waterfall")
				var/obj/WaterfallSuit/S = new/obj/WaterfallSuit
				S.loc = M


		MakeANBU(mob/M in world)
			set category = "Kage"
			switch(input("What Jutsu do you wish to give them?", text) in list("Focus","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Bee Armor","Suiton No Jutsu","Kaiten","Ice Armor","Jyuuken","Hakke Kuushou","Katon Ryuuka","Rai No Jutsu","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirriors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons","Teleport","Fly","Bug Armor","Bug Kyuu","Bug Sousou","Bees","Explode Bee","Bee Wings","Counter","Blind","Sexy","Kage Shuriken","Kage Kunai","Tajuu Bunshin","Nisen Rendan","Restore","Absorb","Cansel"))
				if("Restore")
					M.verbs += new /mob/medical/verb/Restore_Jutsu()
				if("Absorb")
					M.verbs += new /mob/medical/verb/ChakraAbsorb()
				if("Focus")
					M.verbs += new /mob/Tenten/verb/Focus()
				if("Homing Shuriken")
					M.verbs += new /mob/Tenten/verb/HomingShuriken()
				if("Homing Kunai")
					M.verbs += new /mob/Tenten/verb/HomingKunai()
				if("Homing Windmill")
					M.verbs += new /mob/Tenten/verb/HomingWindmill()
				if("Kaiten")
					M.verbs += new /mob/hyuuga/verb/HakkeshouKaiten()
				if("Bee Sabaku Kyuu")
					M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
				if("Bee Sabaku Sousou")
					M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
				if("Jyuuken")
					M.verbs += new /mob/hyuuga/verb/Jyuken()
				if("Hakke Kuushou")
					M.verbs += new /mob/hyuuga/verb/HakkeKuusho()
				if("Katon Ryuuka")
					M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
				if("Suiton No Jutsu")
					M.verbs += new /mob/mist/verb/MistArmor()
				if("Ice Armor")
					M.verbs += new /mob/ice/verb/IceArmor()
				if("Rai No Jutsu")
					M.verbs += new /mob/rai/verb/RaiArmor()
				if("Zan No Jutsu")
					M.verbs += new /mob/sound/verb/ZanArmor()
				if("Katon Karyuu Endan")
					M.verbs += new /mob/katon/verb/KatonKaryuuEndan()
				if("Sensatsu Suishou")
					M.verbs += new /mob/haku/verb/SensatsuSuishou()
				if("Mist")
					M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
				if("Mirriors")
					M.verbs += new /mob/haku/verb/MakyouHyoushou()
				if("Nikudan")
					M.verbs += new /mob/Akimichi/verb/NikudanSensha()
				if("Nikudan Hari")
					M.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
				if("Bubun Baika")
					M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
				if("Kage Shibari")
					M.verbs += new /mob/nara/verb/kageshibari()
					M.verbs += new /mob/nara/verb/ExtendShadow()
					M.verbs += new /mob/nara/verb/RetractShadow()
				if("Kage Kubi Shibaru")
					M.verbs += new /mob/nara/verb/KageKubiShibaru()
				if("Bone Sword")
					M.verbs += new /mob/kaguyajutsu/verb/CreateBoneSword()
				if("Bone Whip")
					M.verbs += new /mob/kaguyajutsu/verb/CreateSpineWhip()
				if("Yanagi")
					M.verbs += new /mob/kaguyajutsu/verb/YanagiNoMai()
				if("Tsubaki")
					M.verbs += new /mob/kaguyajutsu/verb/TsubakiNoMai()
				if("Karamatsu")
					M.verbs += new /mob/kaguyajutsu/verb/KaramatsuNoMai()
				if("Teshi Sendan")
					M.verbs += new /mob/kaguyajutsu/verb/TeshiSendan()
				if("Tessenka")
					M.verbs += new /mob/kaguyajutsu/verb/TessenkaNoMai()
				if("Sawarabi")
					M.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
				if("Konchuu")
					M.verbs += new /mob/aburame/verb/summonkonchuu()
					M.verbs += new /mob/aburame/verb/Placekonchuu()
					M.verbs += new /mob/aburame/verb/DestroyKonchuu()
				if("Explode Bug")
					M.verbs += new /mob/aburame/verb/ExplodeKonchuu()
				if("Tame")
					M.verbs += new /mob/inuzuka/verb/Tame()
				if("Tsuuga")
					M.verbs += new /mob/Inuzuka/verb/Gatsuuga()
				if("Gatsuuga")
					M.verbs += new /mob/Inuzuka/verb/Gatsuuga1()
				if("Soutourou")
					M.verbs += new /mob/Inuzuka/verb/Soutourou()
				if("Konoha Renpuu")
					M.verbs += new /mob/Lee/verb/KonohaReppu()
				if("Konoha Senpuu")
					M.verbs += new /mob/Lee/verb/KonohaSenpuu()
				if("Omote Renge")
					M.verbs += new /mob/Lee/verb/OmoteRenge()
				if("Ura Renge")
					M.verbs += new /mob/Lee/verb/UraRenge()
				if("Konoha Genuriki Senpuu")
					M.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
				if("Suna Shuirken")
					M.verbs += new /mob/gaara/verb/SunaShuriken()
				if("Suna Shushin")
					M.verbs += new /mob/gaara/verb/SunaShushinNoJutsu()
				if("Sand Sphere")
					M.verbs += new /mob/gaara/verb/SandSphere()
				if("Sand Armor")
					M.verbs += new /mob/gaara/verb/SandArmor()
				if("Sabaku Kyuu")
					M.verbs += new /mob/gaara/verb/SabakuKyuu()
				if("Sabaku Sousou")
					M.verbs += new /mob/gaara/verb/SabakuSousou()
				if("Shousen")
					M.verbs += new /mob/medical/verb/Shousen_Jutsu()
				if("Chakra No Mesu")
					M.verbs += new /mob/medical/verb/ChakraNoMesu()
				if("Slice Tendons")
					M.verbs += new /mob/medical/verb/SliceTendons()
				if("Screw Nerves")
					M.verbs += new /mob/medical/verb/ScrewNerves()
				if("Fire Armor")
					M.verbs += new /mob/uchiha/verb/FireArmor()
				if("Konchuu")
					M.verbs += new /mob/aburame/verb/summonkonchuu()
					M.verbs += new /mob/aburame/verb/Placekonchuu()
					M.verbs += new /mob/aburame/verb/DestroyKonchuu()
				if("Hunter")
					M.verbs += new /mob/jutsu/verb/JourouSenbon()
				if("Missing")
					M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()
				if("Teleport")
					M.verbs += new /mob/nara/verb/kageteleport()
				if("Fly")
					M.verbs += new /mob/flight/verb/Fly()
				if("Bee Armor")
					M.verbs += new /mob/Kamizuri/verb/BeeArmor()
				if("Bug Armor")
					M.verbs += new /mob/aburame/verb/BugArmor()
				if("Bug Kyuu")
					M.verbs += new /mob/aburame/verb/KonchuuKyuu()
				if("Bug Sousou")
					M.verbs += new /mob/aburame/verb/KonchuuSousou()
				if("Bees")
					M.verbs += new /mob/Kamizuri/verb/summonbees()
					M.verbs += new /mob/Kamizuri/verb/Placebee()
					M.verbs += new /mob/Kamizuri/verb/Destroybee()
				if("Explode Bee")
					M.verbs += new /mob/Kamizuri/verb/ExplodeBee()
				if("Bee Wings")
					M.verbs += new /mob/Beeflight/verb/Fly()
				if("Blind")
					M.verbs += new /mob/nara/verb/kageblind()
				if("Sexy")
					M.verbs += new /mob/jutsu/verb/Sexy()
				if("Kage Shuriken")
					M.verbs += new /mob/shurikenmove/verb/KageShuriken()
				if("Kage Kunai")
					M.verbs += new /mob/shurikenmove/verb/KageKunai()
				if("Tajuu Bunshin")
					M.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
				if("Nisen Rendan")
					M.verbs += new /mob/jutsu/verb/NisenRendan()
				if("Cancel")
					return
			usr<<"They picked their jutsu."
			M<<"You have been promoted to the rank of ANBU by the kage!"
			world<<"[M] is now a ANBU"
			M.rank = "ANBU"
			M.cap = Acap
			var/obj/Suit1/S = new/obj/Suit1
			S.loc = M
			if(src.Village=="Leaf")
				M.ChakraC=100
				M.squad="Leaf ANBU"
				M.squads=1
				var/obj/Ranbu/R = new/obj/Ranbu
				R.loc=M
			if(src.Village =="Sand")
				M.ChakraC=100
				M.squad="Sand ANBU"
				M.squads=1
				var/obj/Sanbu/R = new/obj/Sanbu
				R.loc = M
			if(src.Village =="Sound")
				M.ChakraC=100
				M.squad="Sound ANBU"
				M.squads=1
				var/obj/Danbu/R = new/obj/Danbu
				R.loc = M
			if(src.Village =="Grass")
				M.ChakraC=100
				M.squad="Grass ANBU"
				M.squads=1
				var/obj/Ganbu/R = new/obj/Ganbu
				R.loc = M
			if(src.Village =="Rain")
				M.ChakraC=100
				M.squad="Rain ANBU"
				M.squads=1
				var/obj/Banbu/R = new/obj/Banbu
				R.loc = M
			if(src.Village =="Cloud")
				M.ChakraC=100
				M.squad="Cloud ANBU"
				M.squads=1
				var/obj/Yanbu/R = new/obj/Yanbu
				R.loc = M
			if(src.Village =="Mist")
				M.ChakraC=100
				M.squad="Mist ANBU"
				M.squads=1
				var/obj/Banbu/R = new/obj/Banbu
				R.loc = M
			if(src.Village =="Rock")
				M.ChakraC=100
				M.squad="Rock ANBU"
				M.squads=1
				var/obj/Eanbu/R = new/obj/Eanbu
				R.loc = M
			if(src.Village =="Snow")
				M.ChakraC=100
				M.squad="Snow ANBU"
				M.squads=1
				var/obj/Panbu/R = new/obj/Panbu
				R.loc = M
			if(src.Village =="Waterfall")
				M.ChakraC=100
				M.squad="Waterfall ANBU"
				M.squads=1
				var/obj/Banbu/R = new/obj/Banbu
				R.loc = M


		MakeChuunin(mob/M in world)
			set category = "Staff"
			world<<"[M] is now a Chuunin"
			M.rank = "Chuunin"
			M.cap = Ccap
			M.verbs -= new /mob/Enforcer/verb/Jail()
			M.verbs -= new /mob/Enforcer/verb/UnJail()
			if(M.Village =="Snow")
				var/obj/Snowvest/B = new/obj/Snowvest
				B.loc = M
			if(M.Village =="Leaf")
				var/obj/ChuuninVest/B = new/obj/ChuuninVest
				B.loc = M
			if(M.Village =="Rain")
				var/obj/RChuuninVest/B = new/obj/RChuuninVest
				B.loc = M
			if(M.Village =="Sand")
				var/obj/SChuuninVest/B = new/obj/SChuuninVest
				B.loc = M
			if(M.Village =="Rock")
				var/obj/EChuuninVest/B = new/obj/EChuuninVest
				B.loc = M
			if(M.Village =="Mist")
				var/obj/MChuuninVest/B = new/obj/MChuuninVest
				B.loc = M
			if(M.Village =="Cloud")
				var/obj/LChuuninVest/B = new/obj/LChuuninVest
				B.loc = M
			if(M.Village == "Grass")
				var/obj/GChuuninVest/B = new/obj/GChuuninVest
				B.loc = M
			if(M.Village == "Sound")
				var/obj/SoundChuuninVest/B = new/obj/SoundChuuninVest
				B.loc = M
			if(M.Village =="Waterfall")
				var/obj/WChuuninVest/B = new/obj/WChuuninVest
				B.loc = M

		MakeGenin(mob/M in world)
			set category = "Staff"
			world<<"[M] agora é um genin"
			M.rank = "Genin"
			M.cap = Gcap
			M.verbs -= new /mob/Enforcer/verb/Jail()
			M.verbs -= new /mob/Enforcer/verb/UnJail()
			var/obj/Headband/B = new/obj/Headband
			B.loc = M
			B.loc = M

		MakeStudent(mob/M in world)
			set category = "Staff"
			world<<"[M] agora é um estudante"
			M.rank = "Student"
			M.cap = Gcap

		MakeLeafkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Leaf")
				M<<"You have been made Hokage!"
				world<<"[M] agora é Hokage!"
				M.rank = "Kage"
				M.cap = Mcap
				M.squads=1
				M.squad="Leaf Sannin"
				var/obj/KageRoupas/HokageHat/B = new/obj/KageRoupas/HokageHat
				B.loc = M
				var/obj/KageRoupas/HokageSuit/C = new/obj/KageRoupas/HokageSuit
				C.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Leaf."

		MakeStarkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Star")
				M<<"You have been made Hoshikage!"
				world<<"[M] agora é Hoshikage!"
				M.rank = "Kage"
				M.cap = Mcap
				M.squads=1
				M.squad="Star Sannin"
				var/obj/KageRoupas/HoshikageHat/B = new/obj/KageRoupas/HoshikageHat
				B.loc = M
				var/obj/KageRoupas/HoshikageSuit/C = new/obj/KageRoupas/HoshikageSuit
				C.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Star."

		MakeSandkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Sand")
				M<<"You have been made Kazekage!"
				world<<"[M] agora é Kazekage!"
				M.rank = "Kage"
				M.cap =  Mcap
				M.squads=1
				M.squad="Sand Sannin"
				var/obj/KageRoupas/KazekageHat/B = new/obj/KageRoupas/KazekageHat
				B.loc = M
				var/obj/KageRoupas/KazekageSuit/C = new/obj/KageRoupas/KazekageSuit
				C.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Sand."

		MakeCloudkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Cloud")
				M<<"You have been made Raikage!"
				world<<"[M] agora é Raikage!"
				M.rank = "Kage"
				M.cap =  Mcap
				M.squads=1
				M.squad="Cloud Sannin"
				var/obj/KageRoupas/RaikageHat/B = new/obj/KageRoupas/RaikageHat
				B.loc = M
				var/obj/KageRoupas/RaikageSuit/C = new/obj/KageRoupas/RaikageSuit
				C.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Cloud."

		MakeRockkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Rock")
				M<<"You have been made Tsuchikage!"
				world<<"[M] agora é Tsuchikage!"
				M.rank = "Kage"
				M.cap =  Mcap
				M.squads=1
				M.squad="Rock Sannin"
				var/obj/KageRoupas/TsuchikageHat/B = new/obj/KageRoupas/TsuchikageHat
				B.loc = M
				var/obj/KageRoupas/TsuchikageSuit/C = new/obj/KageRoupas/TsuchikageSuit
				C.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Rock."

		MakeMistkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Mist")
				M<<"You have been made Mizukage!"
				world<<"[M] agora é Mizukage!"
				M.rank = "Kage"
				M.cap =  Mcap
				M.squads=1
				M.squad="Mist Sannin"
				var/obj/KageRoupas/MizukageHat/B = new/obj/KageRoupas/MizukageHat
				B.loc = M
				var/obj/KageRoupas/MizukageSuit/C = new/obj/KageRoupas/MizukageSuit
				C.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Mist."

		MakeSoundkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Sound")
				M<<"You have been made Otokage!"
				world<<"[M] agora é Otokage!"
				M.rank = "Kage"
				M.cap =  Mcap
				M.squads=1
				M.squad="Sound Sannin"
				var/obj/KageRoupas/OtokageHat/B = new/obj/KageRoupas/OtokageHat
				B.loc = M
				var/obj/KageRoupas/OtokageSuit/C = new/obj/KageRoupas/OtokageSuit
				C.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Sound."

		MakeRainkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Rain")
				M<<"You have been made Amekage!"
				world<<"[M] agora é Amekage!"
				M.rank = "Kage"
				M.squads=1
				M.squad="Rain Sannin"
				M.cap =  Mcap
				var/obj/KageRoupas/AmekageHat/B = new/obj/KageRoupas/AmekageHat
				B.loc = M
				var/obj/KageRoupas/AmekageSuit/C = new/obj/KageRoupas/AmekageSuit
				C.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Rain."

		/*MakeWaterkage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Waterfall")
				M<<"You have been made Enukage!"
				world<<"[M] agora é Enukage!"
				M.rank = "Kage"
				M.squads=1
				M.squad="Waterfall Sannin"
				M.cap =  Mcap
				//var/obj/KageRoupas/WaterLSuit/B = new/obj/KageRoupas/WaterLSuit
				B.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Water Fall."

		MakeGrasskage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Grass")
				M<<"You have been made Fumakage!"
				world<<"[M] agora é Fumakage!"
				M.rank = "Kage"
				M.cap =  Mcap
				M.squads=1
				M.squad="Grass Sannin"
				//var/obj/KageRoupas/GrassLSuit/B = new/obj/KageRoupas/GrassLSuit
				B.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Grass."

		MakeSnowKage(mob/M in world)
			set category = "Ranks"
			if(M.Village == "Snow")
				M<<"You have been made Sorukage!"
				world<<"[M] agora é Sorukage!"
				M.rank = "Kage"
				M.cap =  Mcap
				M.squads=1
				M.squad="Snow Sannin"
				//var/obj/KageRoupas/SnowLSuit/B = new/obj/KageRoupas/SnowLSuit
				B.loc = M
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Snow."*/

		Remove_Kage(mob/M in world)
			set category = "Ranks"
			if(M.rank == "Kage")
				M<<"You have been removed of Kage!"
				M.rank = "Jounin"
				M.cap = Jcap
				M.GM=0
				M.squads=0
				M.squad=""
				M.verbs -= typesof(/mob/hokage/verb)

		MakeAkatLeader(mob/M in world)
			set category="Staff"
			M.Village="Akatsuki"
			var/obj/AKAH/H = new()
			var/obj/AKAS/S = new()
			H.loc=M
			S.loc=M
			M.cap = Mcap
			M.akatsukileader=1
			M.akatsukimember=1
			M.squads=1
			M.squad="Akat"
			M.verbs += /mob/akatsuki/verb/InviteA
			M.verbs += /mob/akatsuki/verb/BootA
			M.verbs += /mob/hokage/verb/WAR
			M.verbs += /mob/hokage/verb/EscapeW
		MakeSoundLeader(mob/M in world)
			set category="Staff"
			M.Village="Sound Organization"
			M.soundleader=1
			M.soundmember=1
			M.cap = Mcap
			M.squads=1
			M.squad="SO"
			M.verbs += /mob/sound/verb/InviteS
			M.verbs += /mob/sound/verb/BootS
			M.verbs += /mob/hokage/verb/WAR
			M.verbs += /mob/hokage/verb/EscapeW

		MakeHunter(mob/M in world)
			set category="Staff"
			M.squad="Hunter-Nins"
			M.squads=1
			M.rank = "Hunter-Nins"
			M.cap = Hcap
			M.verbs += new /mob/jutsu/verb/JourouSenbon()
			M.verbs -= new /mob/Squads/verb/Invite()
			M.verbs -= new /mob/Squads/verb/Boot()
			if(M.Village=="Star")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				var/obj/HSuit/B = new/obj/HSuit
				var/obj/Anbu/R = new/obj/Anbu
				B.loc=M
				R.loc=M
				M.cap = Hcap
				M.rank="Hunter-Nin"
				M.hunternin=1
			if(M.Village=="Leaf")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				var/obj/HSuit/B = new/obj/HSuit
				var/obj/Ranbu/R = new/obj/Ranbu
				B.loc=M
				R.loc=M
				M.verbs -= new /mob/Enforcer/verb/Jail()
				M.verbs -= new /mob/Enforcer/verb/UnJail()
				M.cap = Hcap
				M.rank="Hunter-Nin"
				M.hunternin=1
			if(M.Village =="Sand")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Sanbu/R = new/obj/Sanbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Sound")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Danbu/R = new/obj/Danbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Grass")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Ganbu/R = new/obj/Ganbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Rain")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Banbu/R = new/obj/Banbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Cloud")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Yanbu/R = new/obj/Yanbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Mist")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Banbu/R = new/obj/Banbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Rock")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Eanbu/R = new/obj/Eanbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Snow")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Panbu/R = new/obj/Panbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Waterfall")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.rank="Hunter-Nin"
				M.hunternin=1
				var/obj/Banbu/R = new/obj/Banbu
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
		StripOrganization(mob/M in world)
			set category="Staff"
			M.Village="None"
			M.rank="Missing"
			M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
			M.soundleader=0
			M.soundmember=0
			M.akatsukimember=0
			M.akatsukileader=0
			M.cap = Jcap
			for(var/obj/AKAH/H in M.contents)
				del(H)
			for(var/obj/AKAS/S in M.contents)
				del(S)
			for(var/obj/SOSuit/O in M.contents)
				del(O)

		Delete(M as mob|obj|turf in view(src))
			set name = "Delete"
			set category = "Staff"
			del(M)

		DeathVerb(mob/M in world)
			set name = "Death"
			set category = "Staff"
			if(alert("Are you sure you want to cast death on [M]?","Death","Yes","No") == "Yes")
				M.health = 0
				M.Death(usr)
				if(M)
					M.dead=1

		Change_Icon(mob/M in world, arg as icon)
			set category = "Staff"
			set name = "Change Icon"
			M.icon = arg

		Change_Icon_State(mob/M in world, t as text)
			set category ="Staff"
			set name ="Change icon state"
			var/answer = input("change icon state to?(CASE SENSITIVE!!!!!!)") as text
			M.icon_state="[answer]"

		Force_Save(mob/M in world)
			set category = "Enforcer"
			M.SaveK()




mob/Admin
	verb
		Delete(M as mob|obj|turf in view(src))
			set name = "Delete"
			set category = "Staff"
			del(M)
		MakeChuunin(mob/M in world)
			set category = "Staff"
			world<<"[M] agora é um Chuunin"
			M.rank = "Chuunin"
			M.cap = Ccap
			M.verbs -= new /mob/Enforcer/verb/Jail()
			M.verbs -= new /mob/Enforcer/verb/UnJail()
			if(M.Village =="Snow")
				var/obj/Snowvest/B = new/obj/Snowvest
				B.loc = M
			if(M.Village =="Leaf")
				var/obj/ChuuninVest/B = new/obj/ChuuninVest
				B.loc = M
			if(M.Village =="Rain")
				var/obj/RChuuninVest/B = new/obj/RChuuninVest
				B.loc = M
			if(M.Village =="Sand")
				var/obj/SChuuninVest/B = new/obj/SChuuninVest
				B.loc = M
			if(M.Village =="Rock")
				var/obj/EChuuninVest/B = new/obj/EChuuninVest
				B.loc = M
			if(M.Village =="Mist")
				var/obj/MChuuninVest/B = new/obj/MChuuninVest
				B.loc = M
			if(M.Village =="Cloud")
				var/obj/LChuuninVest/B = new/obj/LChuuninVest
				B.loc = M
			if(M.Village == "Grass")
				var/obj/GChuuninVest/B = new/obj/GChuuninVest
				B.loc = M
			if(M.Village == "Sound")
				var/obj/SoundChuuninVest/B = new/obj/SoundChuuninVest
				B.loc = M
			if(M.Village =="Waterfall")
				var/obj/WChuuninVest/B = new/obj/WChuuninVest
				B.loc = M
		Create()
			set name = "Create"
			set category = "Staff"
			var/varItem
			var/varType = input("O que você deseja criar?","Create") in list("Object","Mob","Turf","Cancel")
			if(varType == "Cancel")
				return
			if(varType == "Object")
				varItem = input("O que você deseja fazer?","Create obj") in typesof(/obj) + list("Cancel")
			if(varType == "Mob")
				varItem = input("O que você deseja fazer?","Create mob") in typesof(/mob) + list("Cancel")
			if(varType == "Turf")
				varItem = input("O que você deseja fazer?","Create turf") in typesof(/turf) + list("Cancel")
			if(varItem == "Cancel")
				return
			new varItem(locate(src.x,src.y,src.z))


		GMOOC(msg as text)
			set category = "Staff"
			set name = "GM OOC"
			for(var/mob/M in world)
				if(M.GM)
					M<<"(GM OOC)<font color=red> [usr]: [msg] )"
		IPBan(mob/M in world)
			set category = "Enforcer"
			set desc = "IP Ban Someone in the world."
			if(!M) return
			if(M==usr)
				usr<<"<font color = red>you cant ban yourself!</font>"
				return
			if(M.key=="D-Roc2k6")
				world << "[usr] tried to ban [src]"
				return
			if(M.key=="Dasher2k6")
				world << "[usr] tried to ban [src]"
				return
			if(M.client)
				IPBans:Add(M.client.address)//Adds the players key to the ban list.
				world<<"<font color = red>[M] has been IPBanned by [usr].</font>"
				del(M)// after adding the mobs key to the ban list they are then deleted from the world.
			else
				usr<<"<font color = red>You can only ban non-npc's."



		SetServerDelay()
			set name = "Set Delay"
			set category = "Host"
			set desc = "Set the delay for processing Other"
			var/nDelay = input(usr, "What do you want to set the tick_lag to?[ascii2text(10)]Current tick_lag is [world.tick_lag]","Set World Delay","1") as null|num
			if (nDelay == null)
				nDelay = 1
			else if (nDelay == 0)
				nDelay = 1
			else if (nDelay > 100)
				nDelay = 10
			else if (nDelay < 10)
				nDelay = 1
			world.tick_lag = nDelay
			text2file("[time2text(world.realtime)]: server delay was edited by [usr]<BR>","GMlog.html")
			world << "<font color=red><i>World delay set to [(nDelay/10)] second(s)</i></strong>"

		ForceNewName(M as mob in world)
			set name = "Force New Name"
			set category = "Enforcer"
			usr<<"TAKEN OUT USE RENAME!"
		Rename(mob/M as mob in world, ID as text)
			set category="Staff"
			set desc="Change A Mob's ID"
			if(length(ID) <= 2)
				src<<"<font color = red> Their name must be longer then 2 characters!"
			else
				src<<"[M]'s name is now [ID]"
				M.name=ID
				M.SaveK()


		Boot()
			set name = "Boot"
			set category = "Enforcer"
			var/varPeople = list()              // make a new var for the player list
			for(var/mob/T in world) // for each player in the world..
				varPeople += T         // add it to that list
			var/M = input("Who would you like to boot?","Boot") in varPeople + list("Cancel")
			if(M == "Cancel")
				return
			if(src.client)
				if(M == src)
					src << "You can't boot yourself!"
					return
				if(M:Rank2 == "Administrator" || M:Rank2 == "Moderator"||M:Rank2=="Owner"||M:Rank2=="Co-Owner")
					src << "Can't boot staff!"
				else
					if(M != null)     // make sure they havn't signed off any time soon.
						var/R = input("Why are you booting [M:name]?","Boot") as text|null
						if(R == "" || R == null)
							world << "[M:name] is going, going, going, gone bitch!"
						else
							world << "[M:name] is going, going, going, gone bitch! While yelling \"[R]\""
						del(M)

		MusicPlay(S as sound)
			set name = "Music Play"
			set category = "Host"
			view(src) << sound(S,0)
			view(src) << "[src.name] plays [S] for us!"

		MusicStop()
			set name = "Music Stop"
			set category = "Host"
			view(src) << sound(null)
			view(src) << "[src.name] parou a música!"

		Reboot()
			set name = "Reboot"
			set category = "Host"
			world << "Mundo Reiniciando em 30 segundos. Salve!"
			sleep(250)
			world << "Reiniciando em 5"
			sleep(10)
			world << "4"
			sleep(10)
			world << "3"
			sleep(10)
			world << "2"
			sleep(10)
			world << "1"
			sleep(10)
			world.Reboot()

		Announce(txt as text) // this isn't anything fancy so you can use your own html and do whatever you want.
			set name = "Announce"
			set category = "Staff"
			world << "<font face=verdana><font size=3><b><center>Officer[usr] would like to announce:<center><font color=silver>[txt]"

		LAnnounce(txt as text) // L for local...
			set name = "INFO"
			set category = "Staff"
			world << "<font color=red><big>INFO:<font color=white>[txt]"

		Jail(mob/M in world)
			set popup_menu = 0
			set category = "Enforcer"
			set desc="To jail a unrulely character"
			if(istype(M,/mob/npc))
				usr<<"You cant jail NPCs"
				return
			usr << "You have Jailed [M]"
			M << "You have been jailed by [usr]"
			M.loc = locate(19,94,29)
			M.OOC = 0
			M.jailed=1
			M.SaveK()


		UnJail(mob/M in world)
			set category = "Enforcer"
			set name = "Unjail"
			set desc="To jail a unrulely character"
			if(istype(M,/mob/npc))
				usr<<"You cant jail NPCs"
				return
			M.loc= locate(48,47,1)
			usr << "You have Unjailed [M]"
			M << "You have been Unjailed by [usr]"
			M.OOC = 1
			M.jailed=0
			M.SaveK()


		World_Mute()
			set category = "Enforcer"
			set name = "World Mute"
			world << "<b><font size=1>[src] mutes the world!"
			worldC=0

		World_Unmute()
			set category = "Enforcer"
			set name = "World Unmute"
			world << "<b><font size=1>[src] unmutes the world!"
			worldC=1

		OverlaysFix(mob/M in world)
			set category="Staff"
			M.overlays=null
			M.underlays=null
			M<<"Use the Fix Me option and Don't let anyone catch you like this again"
			M.SaveK()

		FixIcon(mob/M in world)
			set category="Staff"
			M.icon='Base white.dmi'
			M<<"Use the Fix Me option and Don't let anyone catch you like this again"
			M.SaveK()


		Summon(mob/M in world)
			set name = "Summon"
			set category = "Staff"
			if(M != src) // so they cant summon themself
				M.loc = locate(usr.x,usr.y-1,usr.z)
				src.dir = SOUTH // face them
				M << "You have been summoned by [src.name]"

		Teleport(obj/M as obj|mob in world)
			set popup_menu = 0
			set category = "Staff"
			set desc = "Teleport to an obj or mob"
			M << "<font color=red>An Officer appears before you."
			usr << "You teleport next to [M]"
			usr.loc = locate(M.x,M.y-1,M.z)

		Restore(M as mob in world)
			set name = "Restore"
			set category = "Staff"
			M:health = M:maxhealth
			M:chakra = M:Mchakra
			M << "your restored happy?!?!"

		WorldRestore()
			set category="Host"
			world.Repop()

		Mute(mob/M as mob in world,msg as text)
			set category = "Enforcer"
			M.OOC = 0
			world << "<font color=silver><font size=1><B>[src] mutes [M] for [msg]"
			text2file("[time2text(world.realtime)]: [M] was muted by [usr] for [msg]<BR>","GMlog.html")
			M.SaveK()


		Unmute(mob/M as mob in world)
			set category = "Enforcer"
			M.OOC = 1
			world << "<font color=silver><font size=1><B>[src] unmutes [M]"
			text2file("[time2text(world.realtime)]: [M] was unmuted by [usr]<BR>","GMlog.html")
			M.SaveK()


		Chuuninexam()
			set category = "Staff"
			set name = "Chuunin Examination"
			if(!Chuunintime)
				usr<<"You will be teleported to the Chuunin host room when it starts"
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 5 minutes - Go to the Chuunin room theres one in all Villages..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 4 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 3 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 2 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 1 minute..."
				sleep(500)
				world<<"<font size=3><font color=red>Chuunin exam has now started..."
				Chuunintime=1
				usr.loc=locate(52,40,13)
			else
				world<<"Chuunin Exam Part one over"
				Chuunintime=0

		Change_Icon(mob/M in world, arg as icon)
			set category = "Staff"
			set name = "Change Icon"
			M.icon = arg

		Change_Icon_State(mob/M in world, t as text)
			set category ="Staff"
			set name ="Change icon state"
			var/answer = input("change icon state to?(CASE SENSITIVE!!!!!!)") as text
			M.icon_state="[answer]"

		Force_Save(mob/M in world)
			set category = "Enforcer"
			SaveK()


mob/Enforcer
	verb
		Summon(mob/M in world)
			set name = "Summon"
			set category = "Staff"
			if(M != src) // so they cant summon themself
				M.loc = locate(usr.x,usr.y-1,usr.z)
				src.dir = SOUTH // face them
				M << "You have been summoned by [src.name]"

		Teleport(obj/M as obj|mob in world)
			set popup_menu = 0
			set category = "Staff"
			set desc = "Teleport to an obj or mob"
			M << "Officer [usr] teleports next to you"
			usr << "You teleport next to [M]"
			usr.loc = locate(M.x,M.y-1,M.z)
		GMOOC(msg as text)
			set category = "Staff"
			set name = "GM OOC"
			for(var/mob/M in world)
				if(M.GM)
					M<<"(GM OOC)<font color=red> [usr]: [msg] )"
		IPBan(mob/M in world)
			set category = "Enforcer"
			set desc = "IP Ban Someone in the world."
			if(!M) return
			if(M==usr)
				usr<<"<font color = red>you cant ban yourself!</font>"
				return
			if(M.key=="Dasher2k6")
				world << "[usr] tried to ban [src]"
				return
			if(M.key=="D-Roc2k6")
				world << "[usr] tried to ban [src]"
				return
			if(M.client)
				IPBans:Add(M.client.address)//Adds the players key to the ban list.
				world<<"<font color = red>[M] has been IPBanned by [usr].</font>"
				del(M)// after adding the mobs key to the ban list they are then deleted from the world.
			else
				usr<<"<font color = red>You can only ban non-npc's."

		SetServerDelay()
			set name = "Set Delay"
			set category = "Host"
			set desc = "Set the delay for processing Other"
			var/nDelay = input(usr, "What do you want to set the tick_lag to?[ascii2text(10)]Current tick_lag is [world.tick_lag]","Set World Delay","1") as null|num
			if (nDelay == null)
				nDelay = 1
			else if (nDelay == 0)
				nDelay = 1
			else if (nDelay > 100)
				nDelay = 10
			else if (nDelay < 10)
				nDelay = 1
			world.tick_lag = nDelay
			text2file("[time2text(world.realtime)]: server delay was edited by [usr]<BR>","GMlog.html")
			world << "<font color=red><i>World delay set to [(nDelay/10)] second(s)</i></strong>"

		ForceNewName(M as mob in world)
			set name = "Force New Name"
			set category = "Enforcer"
			usr<<"TAKEN OUT USE RENAME!"
		Rename(mob/M as mob in world, ID as text)
			set category="Staff"
			set desc="Change A Mob's ID"
			if(length(ID) <= 2)
				src<<"<font color = red> Their name must be longer then 2 characters!"
			else
				src<<"[M]'s name is now [ID]"
				M.name=ID
				M.SaveK()

		Boot()
			set name = "Boot"
			set category = "Enforcer"
			var/varPeople = list()              // make a new var for the player list
			for(var/mob/T in world) // for each player in the world..
				varPeople += T         // add it to that list
			var/M = input("Who would you like to boot?","Boot") in varPeople + list("Cancel")
			if(M == "Cancel")
				return
			if(src.client)
				if(M == src)
					src << "You can't boot yourself!"
					return
				if(M:Rank2 == "Administrator" || M:Rank2 == "Moderator"||M:Rank2=="Owner"||M:Rank2=="Co-Owner")
					src << "Can't boot staff!"
				else
					if(M != null)     // make sure they havn't signed off any time soon.
						var/R = input("Why are you booting [M:name]?","Boot") as text|null
						if(R == "" || R == null)
							world << "[M:name] is going, going, going, gone bitch!"
						else
							world << "[M:name] is going, going, going, gone bitch! While yelling \"[R]\""
						del(M)

		MusicPlay(S as sound)
			set name = "Music Play"
			set category = "Host"
			view(src) << sound(S,0)
			view(src) << "[src.name] plays [S] for us!"

		MusicStop()
			set name = "Music Stop"
			set category = "Host"
			view(src) << sound(null)
			view(src) << "[src.name] has stopped the music!"

		Reboot()
			set name = "Reboot"
			set category = "Host"
			world << "Mundo Reiniciando em 30 segundos. Salve!"
			sleep(250)
			world << "Reiniciando em 5"
			sleep(10)
			world << "4"
			sleep(10)
			world << "3"
			sleep(10)
			world << "2"
			sleep(10)
			world << "1"
			sleep(10)
			world.Reboot()

		Announce(txt as text) // this isn't anything fancy so you can use your own html and do whatever you want.
			set name = "Announce"
			set category = "Staff"
			world << "<font face=verdana><font size=3><b><center>Officer[usr] would like to announce:<center><font color=silver>[txt]"

		LAnnounce(txt as text) // L for local...
			set name = "INFO"
			set category = "Staff"
			world << "<font  color=red><big>INFO:<font color=white>[txt]"

		Jail(mob/M in world)
			set popup_menu = 0
			set category = "Enforcer"
			set desc="To jail a unrulely character"
			if(istype(M,/mob/npc))
				usr<<"You cant jail NPCs"
				return
			usr << "You have Jailed [M]"
			M << "You have been jailed by [usr]"
			M.loc = locate(19,94,29)
			M.OOC = 0
			M.jailed=1
			M.SaveK()


		UnJail(mob/M in world)
			set category = "Enforcer"
			set name = "Unjail"
			set desc="To jail a unrulely character"
			if(istype(M,/mob/npc))
				usr<<"You cant jail NPCs"
				return
			M.loc= locate(48,47,1)
			usr << "You have Unjailed [M]"
			M << "You have been Unjailed by [usr]"
			M.OOC = 1
			M.jailed=0
			M.SaveK()


		World_Mute()
			set category = "Enforcer"
			set name = "World Mute"
			world << "<b><font size=1>[src] shoves a sock in everyones mouth!"
			worldC=0

		World_Unmute()
			set category = "Enforcer"
			set name = "World Unmute"
			world << "<b><font size=1>[src] removes a sock from everyones mouth!"
			worldC=1

		OverlaysFix(mob/M in world)
			set category="Staff"
			M.overlays=null
			M.underlays=null
			M<<"Use the Fix Me option and Don't let anyone catch you like this again"
			M.SaveK()

		FixIcon(mob/M in world)
			set category="Staff"
			M.icon='Base white.dmi'
			M<<"Use the Fix Me option and Don't let anyone catch you like this again"
			M.SaveK()


		Mute(mob/M as mob in world,msg as text)
			set category = "Enforcer"
			M.OOC = 0
			world << "<font color=silver><font size=1><B>[src] mutes [M] for [msg]"
			text2file("[time2text(world.realtime)]: [M] was muted by [usr] for [msg]<BR>","GMlog.html")
			M.SaveK()
			usr.SaveK()

		Unmute(mob/M as mob in world)
			set category = "Enforcer"
			M.OOC = 1
			world << "<font color=silver><font size=1><B>[src] unmutes [M]"
			text2file("[time2text(world.realtime)]: [M] was unmuted by [usr]<BR>","GMlog.html")
			M.SaveK()
			usr.SaveK()

		Force_Save(mob/M in world)
			set category = "Enforcer"
			SaveK()


mob/hokage
	verb
		EscapeW()
			set category = "Kage"
			set name = "Retreat from War"
			if(usr.inthewar&&war==1)
				usr.loc=locate(6,58,20)
				usr.inthewar=0
				for(var/mob/M in world)
					if(M.inthewar)
						(M) << sound(null)
						if(M.z==17&&M.Village=="Leaf"&&M.inthewar==1)
							world<<"<b>Leaf has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								leafwar=0
						if(M.z==17&&M.Village=="Mist"&&M.inthewar==1)
							world<<"<b>Mist has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								mistwar=0
						if(M.z==17&&M.Village=="Rain"&&M.inthewar==1)
							world<<"<b>Rain has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								rainwar=0
						if(M.z==17&&M.Village=="Cloud"&&M.inthewar==1)
							world<<"<b>Cloud has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								cloudwar=0
						if(M.z==17&&M.Village=="Rock"&&M.inthewar==1)
							world<<"<b>Rock has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								rockwar=0
						if(M.z==17&&M.Village=="Sand"&&M.inthewar==1)
							world<<"<b>Sand has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Sound"&&M.inthewar==1)
							world<<"<b>Sound has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								soundwar=0
						if(M.z==17&&M.Village=="Snow"&&M.inthewar==1)
							world<<"<b>Snow has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								snowwar=0
						if(M.z==17&&M.Village=="Grass"&&M.inthewar==1)
							world<<"<b>Grass has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								grasswar=0
						if(M.z==17&&M.Village=="Waterfall"&&M.inthewar==1)
							world<<"<b>Waterfall has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								waterwar=0
						if(M.z==17&&M.Village=="Star"&&M.inthewar==1)
							world<<"<b>Star has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								starwar=0
						if(M.z==17&&M.Village=="Sound Organization"&&M.inthewar==1)
							world<<"<b>Sound Organization has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								SOwar=0
						if(M.z==17&&M.Village=="Akatsuki"&&M.inthewar==1)
							world<<"<b>Akatsuki has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
								AKATwar=0
		WAR()
			set category = "Kage"
			set name = "Declare War"
			if(text==usr.Village)
				usr<<"Dont declare war on your own Village retard."
				return

			if(usr.Village=="Leaf")
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				leafwar=1
				usr.PK=1
				usr.inwar1=1
				for(var/mob/E in world)
					if(E&&E.Village=="Leaf"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Rain")
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				rainwar=1
				usr.PK=1
				usr.inwar1=1
				for(var/mob/E in world)
					if(E&&E.Village=="Rain"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"

			if(usr.Village=="Mist")
				mistwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Mist"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Cloud")
				cloudwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Cloud"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Rock")
				rockwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Cloud"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Sand")
				sandwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Sand"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Sound")
				soundwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Sound"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Grass")
				grasswar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Grass"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Snow")
				snowwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Snow"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Waterfall")
				waterwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Waterfall"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="SO")
				SOwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Sound Organization"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="AKAT")
				AKATwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Akatsuki"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Star")
				starwar=1
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is prepareing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Star"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			switch(input("Who will you goto war with?", text)in list("Leaf","Mist","Cloud","Rock","Sand","Sound","Snow","Waterfall","Rain","Grass","Star","AKAT","SO"))
				if("Leaf")
					world<<"<font color=blue><font size = 5><b>Leaf is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Leaf"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Mist")
					world<<"<font color=blue><font size=5>Mist is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Mist"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Rain")
					world<<"<font color=blue><font size = 5><b>Rain is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Rain"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"

				if("Cloud")
					world<<"<font color=blue><font size = 5><b>Cloud is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Cloud"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Rock")
					world<<"<font color=blue><font size = 5><b>Rock is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Rock"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Sand")
					world<<"<font color=blue><font size = 5><b>Sand is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Sand"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"

				if("Grass")
					world<<"<font color=blue><font size = 5><b>Grass is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Grass"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Snow")
					world<<"<font color=blue><font size = 5><b>Snow is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Snow"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Waterfall")
					world<<"<font color=blue><font size = 5><b>Waterfall is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Waterfall"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("SO")
					world<<"<font color=blue><font size = 5><b>Sound Organization is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Sound Organization"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("AKAT")
					world<<"<font color=blue><font size = 5><b>Akatsuki is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Akatsuki"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Star")
					world<<"<font color=blue><font size = 5><b>Star is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Star"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Sound")
					world<<"<font color=blue><font size = 5><b>Sound is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Sound"&&E.war==1)
							if(usr.jailed==1)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
		Chuuninexam()
			set category = "Staff"
			set name = "Chuunin Examination"
			if(!Chuunintime)
				usr<<"You will be teleported to the Chuunin host room when it starts"
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 5 minutes - Go to the Chuunin room theres one in all Villages..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 4 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 3 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 2 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chuunin exam in 1 minute..."
				sleep(500)
				world<<"<font size=3><font color=red>Chuunin exam has now started..."
				Chuunintime=1
				usr.loc=locate(52,40,13)
			else
				world<<"Chuunin Exam Part one over"
				Chuunintime=0

		MakeJounin(mob/M in world)
			set category = "Staff"
			world<<"[M] is now a jounin"
			M.seals=100
			M.cap = Jcap
			M.rank="Jounin"
			M.verbs+= new /mob/Buyou/verb/Kagebuyou
			M.jounin=1
			M.verbs -= new /mob/Enforcer/verb/Jail()
			M.verbs -= new /mob/Enforcer/verb/UnJail()
			if(M.Village=="Leaf")
				var/obj/LeafSuit/R = new/obj/LeafSuit
				R.loc=M
			if(M.Village =="Sand")
				var/obj/SandSuit/S = new/obj/SandSuit
				S.loc = M
			if(M.Village =="Sound")
				var/obj/SoundSuit/S = new/obj/SoundSuit
				S.loc = M
			if(M.Village =="Grass")
				var/obj/GrassSuit/S = new/obj/GrassSuit
				S.loc = M
			if(M.Village =="Rain")
				var/obj/RainSuit/S = new/obj/RainSuit
				S.loc = M
			if(M.Village =="Cloud")
				var/obj/CloudSuit/S = new/obj/CloudSuit
				S.loc = M
			if(M.Village =="Mist")
				var/obj/MistSuit/S = new/obj/MistSuit
				S.loc = M
			if(M.Village =="Rock")
				var/obj/RockSuit/S = new/obj/RockSuit
				S.loc = M
			if(M.Village =="Snow")
				var/obj/SnowSuit/S = new/obj/SnowSuit
				S.loc = M
			if(M.Village =="Waterfall")
				var/obj/WaterfallSuit/S = new/obj/WaterfallSuit
				S.loc = M


		MakeGenin(mob/M in world)
			set category = "Staff"
			world<<"[M] agora é um genin"
			M.rank = "Genin"
			M.cap = Gcap
			M.verbs -= new /mob/Enforcer/verb/Jail()
			M.verbs -= new /mob/Enforcer/verb/UnJail()
			var/obj/Headband/B = new/obj/Headband
			B.loc = M

		MakeANBU(mob/M in world)
			set category = "Kage"
			if(M.rank == "ANBU")
				usr<<"There already a ANBU DONT BE GIVEING OUT JUTSUS!"
				return
			if(M.rank== "Kage")
				usr<<"Your a abusive dumb fuck GM."
				world<<"[usr] Just tried to abuse their GM HAHAHA point and laugh."
				del(usr)
			if(M.Village == usr.Village)
				switch(input("What Jutsu do you wish to give them?", text) in list("Focus","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Bee Armor","Suiton No Jutsu","Kaiten","Ice Armor","Jyuuken","Hakke Kuushou","Katon Ryuuka","Rai No Jutsu","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirriors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons","Teleport","Fly","Bug Armor","Bug Kyuu","Bug Sousou","Bees","Explode Bee","Bee Wings","Counter","Blind","Sexy","Kage Shuriken","Kage Kunai","Tajuu Bunshin","Nisen Rendan","Restore","Absorb","Cansel"))
					if("Restore")
						M.verbs += new /mob/medical/verb/Restore_Jutsu()
					if("Absorb")
						M.verbs += new /mob/medical/verb/ChakraAbsorb()
					if("Focus")
						M.verbs += new /mob/Tenten/verb/Focus()
					if("Homing Shuriken")
						M.verbs += new /mob/Tenten/verb/HomingShuriken()
					if("Homing Kunai")
						M.verbs += new /mob/Tenten/verb/HomingKunai()
					if("Homing Windmill")
						M.verbs += new /mob/Tenten/verb/HomingWindmill()
					if("Kaiten")
						M.verbs += new /mob/hyuuga/verb/HakkeshouKaiten()
					if("Bee Sabaku Kyuu")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
					if("Bee Sabaku Sousou")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
					if("Jyuuken")
						M.verbs += new /mob/hyuuga/verb/Jyuken()
					if("Hakke Kuushou")
						M.verbs += new /mob/hyuuga/verb/HakkeKuusho()
					if("Katon Ryuuka")
						M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					if("Suiton No Jutsu")
						M.verbs += new /mob/mist/verb/MistArmor()
					if("Ice Armor")
						M.verbs += new /mob/ice/verb/IceArmor()
					if("Rai No Jutsu")
						M.verbs += new /mob/rai/verb/RaiArmor()
					if("Zan No Jutsu")
						M.verbs += new /mob/sound/verb/ZanArmor()
					if("Katon Karyuu Endan")
						M.verbs += new /mob/katon/verb/KatonKaryuuEndan()
					if("Sensatsu Suishou")
						M.verbs += new /mob/haku/verb/SensatsuSuishou()
					if("Mist")
						M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					if("Mirriors")
						M.verbs += new /mob/haku/verb/MakyouHyoushou()
					if("Nikudan")
						M.verbs += new /mob/Akimichi/verb/NikudanSensha()
					if("Nikudan Hari")
						M.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/nara/verb/kageshibari()
						M.verbs += new /mob/nara/verb/ExtendShadow()
						M.verbs += new /mob/nara/verb/RetractShadow()
					if("Kage Kubi Shibaru")
						M.verbs += new /mob/nara/verb/KageKubiShibaru()
					if("Bone Sword")
						M.verbs += new /mob/kaguyajutsu/verb/CreateBoneSword()
					if("Bone Whip")
						M.verbs += new /mob/kaguyajutsu/verb/CreateSpineWhip()
					if("Yanagi")
						M.verbs += new /mob/kaguyajutsu/verb/YanagiNoMai()
					if("Tsubaki")
						M.verbs += new /mob/kaguyajutsu/verb/TsubakiNoMai()
					if("Karamatsu")
						M.verbs += new /mob/kaguyajutsu/verb/KaramatsuNoMai()
					if("Teshi Sendan")
						M.verbs += new /mob/kaguyajutsu/verb/TeshiSendan()
					if("Tessenka")
						M.verbs += new /mob/kaguyajutsu/verb/TessenkaNoMai()
					if("Sawarabi")
						M.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
					if("Konchuu")
						M.verbs += new /mob/aburame/verb/summonkonchuu()
						M.verbs += new /mob/aburame/verb/Placekonchuu()
						M.verbs += new /mob/aburame/verb/DestroyKonchuu()
					if("Explode Bug")
						M.verbs += new /mob/aburame/verb/ExplodeKonchuu()
					if("Tame")
						M.verbs += new /mob/inuzuka/verb/Tame()
					if("Tsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga()
					if("Gatsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga1()
					if("Soutourou")
						M.verbs += new /mob/Inuzuka/verb/Soutourou()
					if("Konoha Renpuu")
						M.verbs += new /mob/Lee/verb/KonohaReppu()
					if("Konoha Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaSenpuu()
					if("Omote Renge")
						M.verbs += new /mob/Lee/verb/OmoteRenge()
					if("Ura Renge")
						M.verbs += new /mob/Lee/verb/UraRenge()
					if("Konoha Genuriki Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
					if("Suna Shuirken")
						M.verbs += new /mob/gaara/verb/SunaShuriken()
					if("Suna Shushin")
						M.verbs += new /mob/gaara/verb/SunaShushinNoJutsu()
					if("Sand Sphere")
						M.verbs += new /mob/gaara/verb/SandSphere()
					if("Sand Armor")
						M.verbs += new /mob/gaara/verb/SandArmor()
					if("Sabaku Kyuu")
						M.verbs += new /mob/gaara/verb/SabakuKyuu()
					if("Sabaku Sousou")
						M.verbs += new /mob/gaara/verb/SabakuSousou()
					if("Shousen")
						M.verbs += new /mob/medical/verb/Shousen_Jutsu()
					if("Chakra No Mesu")
						M.verbs += new /mob/medical/verb/ChakraNoMesu()
					if("Slice Tendons")
						M.verbs += new /mob/medical/verb/SliceTendons()
					if("Screw Nerves")
						M.verbs += new /mob/medical/verb/ScrewNerves()
					if("Fire Armor")
						M.verbs += new /mob/uchiha/verb/FireArmor()
					if("Hunter")
						M.verbs += new /mob/jutsu/verb/JourouSenbon()
					if("Missing")
						M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()
					if("Teleport")
						M.verbs += new /mob/nara/verb/kageteleport()
					if("Fly")
						M.verbs += new /mob/flight/verb/Fly()
					if("Bee Armor")
						M.verbs += new /mob/Kamizuri/verb/BeeArmor()
					if("Bug Armor")
						M.verbs += new /mob/aburame/verb/BugArmor()
					if("Bug Kyuu")
						M.verbs += new /mob/aburame/verb/KonchuuKyuu()
					if("Bug Sousou")
						M.verbs += new /mob/aburame/verb/KonchuuSousou()
					if("Bees")
						M.verbs += new /mob/Kamizuri/verb/summonbees()
						M.verbs += new /mob/Kamizuri/verb/Placebee()
						M.verbs += new /mob/Kamizuri/verb/Destroybee()
					if("Explode Bee")
						M.verbs += new /mob/Kamizuri/verb/ExplodeBee()
					if("Bee Wings")
						M.verbs += new /mob/Beeflight/verb/Fly()
					if("Blind")
						M.verbs += new /mob/nara/verb/kageblind()
					if("Sexy")
						M.verbs += new /mob/jutsu/verb/Sexy()
					if("Kage Shuriken")
						M.verbs += new /mob/shurikenmove/verb/KageShuriken()
					if("Kage Kunai")
						M.verbs += new /mob/shurikenmove/verb/KageKunai()
					if("Tajuu Bunshin")
						M.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
					if("Nisen Rendan")
						M.verbs += new /mob/jutsu/verb/NisenRendan()
					if("Cancel")
						return
				usr<<"THEY PICKED THERE JUTSU."
				M<<"Você foi promovido ao posto de AMBU pelo kage!"
				world<<"[M] agora é um ANBU"
				M.rank = "ANBU"
				M.cap = Acap
				var/obj/Suit1/S = new/obj/Suit1
				S.loc = M
				if(src.Village=="Leaf")
					M.ChakraC=100
					M.squad="Leaf ANBU"
					M.squads=1
					var/obj/Ranbu/R = new/obj/Ranbu
					R.loc=M
				if(src.Village =="Sand")
					M.ChakraC=100
					M.squad="Sand ANBU"
					M.squads=1
					var/obj/Sanbu/R = new/obj/Sanbu
					R.loc = M
				if(src.Village =="Sound")
					M.ChakraC=100
					M.squad="Sound ANBU"
					M.squads=1
					var/obj/Danbu/R = new/obj/Danbu
					R.loc = M
				if(src.Village =="Grass")
					M.ChakraC=100
					M.squad="Grass ANBU"
					M.squads=1
					var/obj/Ganbu/R = new/obj/Ganbu
					R.loc = M
				if(src.Village =="Rain")
					M.ChakraC=100
					M.squad="Rain ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
				if(src.Village =="Cloud")
					M.ChakraC=100
					M.squad="Cloud ANBU"
					M.squads=1
					var/obj/Yanbu/R = new/obj/Yanbu
					R.loc = M
				if(src.Village =="Mist")
					M.ChakraC=100
					M.squad="Mist ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
				if(src.Village =="Rock")
					M.ChakraC=100
					M.squad="Rock ANBU"
					M.squads=1
					var/obj/Eanbu/R = new/obj/Eanbu
					R.loc = M
				if(src.Village =="Snow")
					M.ChakraC=100
					M.squad="Snow ANBU"
					M.squads=1
					var/obj/Panbu/R = new/obj/Panbu
					R.loc = M
				if(src.Village =="Waterfall")
					M.ChakraC=100
					M.squad="Waterfall ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
					return

			else
				usr<<"They are not from your village."

		MakeANBUCAP(mob/M in world)
			set category = "Kage"
			if(M.rank == "ANBU-CAP")
				usr<<"There already a ANBU-CAP DONT BE GIVEING OUT JUTSUS!"
				return
			if(M.rank== "Kage")
				usr<<"Your a abusive dumb fuck GM."
				world<<"[usr] Just tried to abuse their GM HAHAHA point and laugh."
				del(usr)
			if(M.Village == usr.Village)
				switch(input("What Jutsu do you wish to give them?", text) in list("Focus","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Bee Armor","Suiton No Jutsu","Kaiten","Ice Armor","Jyuuken","Hakke Kuushou","Katon Ryuuka","Rai No Jutsu","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirriors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons","Teleport","Fly","Bug Armor","Bug Kyuu","Bug Sousou","Bees","Explode Bee","Bee Wings","Counter","Blind","Sexy","Kage Shuriken","Kage Kunai","Tajuu Bunshin","Nisen Rendan","Restore","Absorb","Cansel"))
					if("Restore")
						M.verbs += new /mob/medical/verb/Restore_Jutsu()
					if("Absorb")
						M.verbs += new /mob/medical/verb/ChakraAbsorb()
					if("Focus")
						M.verbs += new /mob/Tenten/verb/Focus()
					if("Homing Shuriken")
						M.verbs += new /mob/Tenten/verb/HomingShuriken()
					if("Homing Kunai")
						M.verbs += new /mob/Tenten/verb/HomingKunai()
					if("Homing Windmill")
						M.verbs += new /mob/Tenten/verb/HomingWindmill()
					if("Kaiten")
						M.verbs += new /mob/hyuuga/verb/HakkeshouKaiten()
					if("Bee Sabaku Kyuu")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
					if("Bee Sabaku Sousou")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
					if("Jyuuken")
						M.verbs += new /mob/hyuuga/verb/Jyuken()
					if("Hakke Kuushou")
						M.verbs += new /mob/hyuuga/verb/HakkeKuusho()
					if("Katon Ryuuka")
						M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					if("Suiton No Jutsu")
						M.verbs += new /mob/mist/verb/MistArmor()
					if("Ice Armor")
						M.verbs += new /mob/ice/verb/IceArmor()
					if("Rai No Jutsu")
						M.verbs += new /mob/rai/verb/RaiArmor()
					if("Zan No Jutsu")
						M.verbs += new /mob/sound/verb/ZanArmor()
					if("Katon Karyuu Endan")
						M.verbs += new /mob/katon/verb/KatonKaryuuEndan()
					if("Sensatsu Suishou")
						M.verbs += new /mob/haku/verb/SensatsuSuishou()
					if("Mist")
						M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					if("Mirriors")
						M.verbs += new /mob/haku/verb/MakyouHyoushou()
					if("Nikudan")
						M.verbs += new /mob/Akimichi/verb/NikudanSensha()
					if("Nikudan Hari")
						M.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/nara/verb/kageshibari()
						M.verbs += new /mob/nara/verb/ExtendShadow()
						M.verbs += new /mob/nara/verb/RetractShadow()
					if("Kage Kubi Shibaru")
						M.verbs += new /mob/nara/verb/KageKubiShibaru()
					if("Bone Sword")
						M.verbs += new /mob/kaguyajutsu/verb/CreateBoneSword()
					if("Bone Whip")
						M.verbs += new /mob/kaguyajutsu/verb/CreateSpineWhip()
					if("Yanagi")
						M.verbs += new /mob/kaguyajutsu/verb/YanagiNoMai()
					if("Tsubaki")
						M.verbs += new /mob/kaguyajutsu/verb/TsubakiNoMai()
					if("Karamatsu")
						M.verbs += new /mob/kaguyajutsu/verb/KaramatsuNoMai()
					if("Teshi Sendan")
						M.verbs += new /mob/kaguyajutsu/verb/TeshiSendan()
					if("Tessenka")
						M.verbs += new /mob/kaguyajutsu/verb/TessenkaNoMai()
					if("Sawarabi")
						M.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
					if("Konchuu")
						M.verbs += new /mob/aburame/verb/summonkonchuu()
						M.verbs += new /mob/aburame/verb/Placekonchuu()
						M.verbs += new /mob/aburame/verb/DestroyKonchuu()
					if("Explode Bug")
						M.verbs += new /mob/aburame/verb/ExplodeKonchuu()
					if("Tame")
						M.verbs += new /mob/inuzuka/verb/Tame()
					if("Tsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga()
					if("Gatsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga1()
					if("Soutourou")
						M.verbs += new /mob/Inuzuka/verb/Soutourou()
					if("Konoha Renpuu")
						M.verbs += new /mob/Lee/verb/KonohaReppu()
					if("Konoha Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaSenpuu()
					if("Omote Renge")
						M.verbs += new /mob/Lee/verb/OmoteRenge()
					if("Ura Renge")
						M.verbs += new /mob/Lee/verb/UraRenge()
					if("Konoha Genuriki Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
					if("Suna Shuirken")
						M.verbs += new /mob/gaara/verb/SunaShuriken()
					if("Suna Shushin")
						M.verbs += new /mob/gaara/verb/SunaShushinNoJutsu()
					if("Sand Sphere")
						M.verbs += new /mob/gaara/verb/SandSphere()
					if("Sand Armor")
						M.verbs += new /mob/gaara/verb/SandArmor()
					if("Sabaku Kyuu")
						M.verbs += new /mob/gaara/verb/SabakuKyuu()
					if("Sabaku Sousou")
						M.verbs += new /mob/gaara/verb/SabakuSousou()
					if("Shousen")
						M.verbs += new /mob/medical/verb/Shousen_Jutsu()
					if("Chakra No Mesu")
						M.verbs += new /mob/medical/verb/ChakraNoMesu()
					if("Slice Tendons")
						M.verbs += new /mob/medical/verb/SliceTendons()
					if("Screw Nerves")
						M.verbs += new /mob/medical/verb/ScrewNerves()
					if("Fire Armor")
						M.verbs += new /mob/uchiha/verb/FireArmor()
					if("Hunter")
						M.verbs += new /mob/jutsu/verb/JourouSenbon()
					if("Missing")
						M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()
					if("Teleport")
						M.verbs += new /mob/nara/verb/kageteleport()
					if("Fly")
						M.verbs += new /mob/flight/verb/Fly()
					if("Bee Armor")
						M.verbs += new /mob/Kamizuri/verb/BeeArmor()
					if("Bug Armor")
						M.verbs += new /mob/aburame/verb/BugArmor()
					if("Bug Kyuu")
						M.verbs += new /mob/aburame/verb/KonchuuKyuu()
					if("Bug Sousou")
						M.verbs += new /mob/aburame/verb/KonchuuSousou()
					if("Bees")
						M.verbs += new /mob/Kamizuri/verb/summonbees()
						M.verbs += new /mob/Kamizuri/verb/Placebee()
						M.verbs += new /mob/Kamizuri/verb/Destroybee()
					if("Explode Bee")
						M.verbs += new /mob/Kamizuri/verb/ExplodeBee()
					if("Bee Wings")
						M.verbs += new /mob/Beeflight/verb/Fly()
					if("Blind")
						M.verbs += new /mob/nara/verb/kageblind()
					if("Sexy")
						M.verbs += new /mob/jutsu/verb/Sexy()
					if("Kage Shuriken")
						M.verbs += new /mob/shurikenmove/verb/KageShuriken()
					if("Kage Kunai")
						M.verbs += new /mob/shurikenmove/verb/KageKunai()
					if("Tajuu Bunshin")
						M.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
					if("Nisen Rendan")
						M.verbs += new /mob/jutsu/verb/NisenRendan()
					if("Cancel")
						return
				usr<<"THEY PICKED THERE JUTSU."
				M<<"Você foi promovido ao posto de ANBU-CAP pelo kage!"
				world<<"[M] agora é um ANBU-CAP"
				M.rank = "ANBU-CAP"
				M.cap = SDcap
				var/obj/Suit1/S = new/obj/Suit1
				S.loc = M
				var/obj/Vest2/V = new/obj/Vest2
				V.loc = M
				if(src.Village=="Leaf")
					M.ChakraC=100
					M.squad="Leaf ANBU"
					M.squads=1
					var/obj/Ranbu/R = new/obj/Ranbu
					R.loc=M
				if(src.Village =="Sand")
					M.ChakraC=100
					M.squad="Sand ANBU"
					M.squads=1
					var/obj/Sanbu/R = new/obj/Sanbu
					R.loc = M
				if(src.Village =="Sound")
					M.ChakraC=100
					M.squad="Sound ANBU"
					M.squads=1
					var/obj/Danbu/R = new/obj/Danbu
					R.loc = M
				if(src.Village =="Grass")
					M.ChakraC=100
					M.squad="Grass ANBU"
					M.squads=1
					var/obj/Ganbu/R = new/obj/Ganbu
					R.loc = M
				if(src.Village =="Rain")
					M.ChakraC=100
					M.squad="Rain ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
				if(src.Village =="Cloud")
					M.ChakraC=100
					M.squad="Cloud ANBU"
					M.squads=1
					var/obj/Yanbu/R = new/obj/Yanbu
					R.loc = M
				if(src.Village =="Mist")
					M.ChakraC=100
					M.squad="Mist ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
				if(src.Village =="Rock")
					M.ChakraC=100
					M.squad="Rock ANBU"
					M.squads=1
					var/obj/Eanbu/R = new/obj/Eanbu
					R.loc = M
				if(src.Village =="Snow")
					M.ChakraC=100
					M.squad="Snow ANBU"
					M.squads=1
					var/obj/Panbu/R = new/obj/Panbu
					R.loc = M
				if(src.Village =="Waterfall")
					M.ChakraC=100
					M.squad="Waterfall ANBU"
					M.squads=1
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = M
					return

			else
				usr<<"They are not from your village."

		MakeChuunin(mob/M in world)
			set category = "Kage"
			M<<"Você foi promovido ao posto de chuunin pelo kage!"
			world<<"[M] agora é um Chuunin"
			M.rank = "Chuunin"
			M.cap = Ccap
			M.verbs -= new /mob/Enforcer/verb/Jail()
			M.verbs -= new /mob/Enforcer/verb/UnJail()
			if(M.Village =="Snow")
				var/obj/Snowvest/B = new/obj/Snowvest
				B.loc = M
			if(M.Village =="Leaf")
				var/obj/ChuuninVest/B = new/obj/ChuuninVest
				B.loc = M
			if(M.Village =="Rain")
				var/obj/RChuuninVest/W = new/obj/RChuuninVest
				W.loc = M
			if(M.Village =="Sand")
				var/obj/SChuuninVest/S = new/obj/SChuuninVest
				S.loc = M
			if(M.Village =="Rock")
				var/obj/EChuuninVest/E = new/obj/EChuuninVest
				E.loc = M
			if(M.Village =="Mist")
				var/obj/MChuuninVest/W = new/obj/MChuuninVest
				W.loc = M
			if(M.Village =="Cloud")
				var/obj/LChuuninVest/L = new/obj/LChuuninVest
				L.loc = M
			if(M.Village == "Grass")
				var/obj/GChuuninVest/G = new/obj/GChuuninVest
				G.loc = M
			if(M.Village == "Sound")
				var/obj/SoundChuuninVest/G = new/obj/SoundChuuninVest
				G.loc = M
			if(M.Village =="Waterfall")
				var/obj/WChuuninVest/MM = new/obj/WChuuninVest
				MM.loc = M


		VillageBoot(mob/M in world)
			set category="Kage"
			if(M.Village == usr.Village)
				M.Village="None"
				M.rank="Missing"
				M.soundleader=0
				M.soundmember=0
				M.akatsukimember=0
				M.akatsukileader=0
				M.cap = Jcap
				M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
				for(var/obj/AKAH/H in M.contents)
					del(H)
				for(var/obj/AKAS/S in M.contents)
					del(S)
				for(var/obj/SOSuit/S in M.contents)
					del(S)
			else
				usr<<"You can not edit some one's rank from another villages."
		Reward(mob/M in world)
			set category="Kage"
			if(usr.Yen>=100000)
				usr<<"They already have as much Yen as they can carry."
				return
			else
				M.Yen += 10000
				M<<"Você receberá recompensa de 10k [src]"
				src<<"You give [M] 10k reward"



		Mute(mob/M as mob in world,msg as text)
			set category = "Staff"
			M.OOC = 0
			world << "<font color=silver><font size=1><B>[src] mutes [M] for [msg]"
			text2file("[time2text(world.realtime)]: [M] was muted by [usr] for [msg]<BR>","GMlog.html")

		Unmute(mob/M as mob in world)
			set category = "Staff"
			M.OOC = 1
			world << "<font color=silver><font size=1><B>[src] unmutes [M]"
			text2file("[time2text(world.realtime)]: [M] was unmuted by [usr]<BR>","GMlog.html")

		Jail(mob/M in world)
			set popup_menu = 0
			set category = "Enforcer"
			set desc="To jail a unrulely character"
			if(istype(M,/mob/npc))
				usr<<"You cant jail NPCs"
				return
			usr << "You have Jailed [M]"
			M << "You have been jailed by [usr]"
			M.loc = locate(19,94,29)
			M.OOC = 0
			M.jailed=1
			M.SaveK()


		UnJail(mob/M in world)
			set category = "Enforcer"
			set name = "Unjail"
			set desc="To jail a unrulely character"
			if(istype(M,/mob/npc))
				usr<<"You cant jail NPCs"
				return
			M.loc= locate(48,47,1)
			usr << "You have Unjailed [M]"
			M << "You have been Unjailed by [usr]"
			M.OOC = 1
			M.jailed=0
			M.SaveK()


		World_Mute()
			set category = "Enforcer"
			set name = "World Mute"
			world << "<b><font size=1>[src] mutes the world!"
			worldC=0

		World_Unmute()
			set category = "Enforcer"
			set name = "World Unmute"
			world << "<b><font size=1>[src] unmutes the world!"
			worldC=1

		OverlaysFix(mob/M in world)
			set category="Staff"
			M.overlays=null
			M.underlays=null
			M<<"Use the Fix Me option and Don't let anyone catch you like this again"
			M.SaveK()

		FixIcon(mob/M in world)
			set category="Staff"
			M.icon='Base white.dmi'
			M<<"Use the Fix Me option and Don't let anyone catch you like this again"
			M.SaveK()


		Summon(mob/M in world)
			set name = "Summon"
			set category = "Staff"
			if(M != src) // so they cant summon themself
				M.loc = locate(usr.x,usr.y-1,usr.z)
				src.dir = SOUTH // face them
				M << "You have been summoned by [src.name]"

		Teleport(obj/M as obj|mob in world)
			set popup_menu = 0
			set category = "Staff"
			set desc = "Teleport to an obj or mob"
			M << "Officer [usr] teleports next to you"
			usr << "You teleport next to [M]"
			usr.loc = locate(M.x,M.y-1,M.z)

		MakeSannin(mob/M in world)
			set category = "Kage"
			if(M.rank == "Sannin")
				usr<<"There already a Sannin DONT BE GIVEING OUT JUTSUS!"
				return
			if(M.rank== "Kage")
				usr<<"Your a abusive dumb fuck GM."
			if(M.Village == usr.Village)
				switch(input("What Jutsu do you wish to give them?", text) in list("Focus","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Bee Armor","Suiton No Jutsu","Kaiten","Ice Armor","Jyuuken","Hakke Kuushou","Katon Ryuuka","Rai No Jutsu","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirriors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons","Teleport","Fly","Bug Armor","Bug Kyuu","Bug Sousou","Bees","Explode Bee","Bee Wings","Counter","Blind","Sexy","Kage Shuriken","Kage Kunai","Tajuu Bunshin","Nisen Rendan","Cansel"))
					if("Focus")
						M.verbs += new /mob/Tenten/verb/Focus()
					if("Homing Shuriken")
						M.verbs += new /mob/Tenten/verb/HomingShuriken()
					if("Homing Kunai")
						M.verbs += new /mob/Tenten/verb/HomingKunai()
					if("Homing Windmill")
						M.verbs += new /mob/Tenten/verb/HomingWindmill()
					if("Kaiten")
						M.verbs += new /mob/hyuuga/verb/HakkeshouKaiten()
					if("Bee Sabaku Kyuu")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
					if("Bee Sabaku Sousou")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
					if("Jyuuken")
						M.verbs += new /mob/hyuuga/verb/Jyuken()
					if("Hakke Kuushou")
						M.verbs += new /mob/hyuuga/verb/HakkeKuusho()
					if("Katon Ryuuka")
						M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					if("Suiton No Jutsu")
						M.verbs += new /mob/mist/verb/MistArmor()
					if("Ice Armor")
						M.verbs += new /mob/ice/verb/IceArmor()
					if("Rai No Jutsu")
						M.verbs += new /mob/rai/verb/RaiArmor()
					if("Zan No Jutsu")
						M.verbs += new /mob/sound/verb/ZanArmor()
					if("Katon Karyuu Endan")
						M.verbs += new /mob/katon/verb/KatonKaryuuEndan()
					if("Sensatsu Suishou")
						M.verbs += new /mob/haku/verb/SensatsuSuishou()
					if("Mist")
						M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					if("Mirriors")
						M.verbs += new /mob/haku/verb/MakyouHyoushou()
					if("Nikudan")
						M.verbs += new /mob/Akimichi/verb/NikudanSensha()
					if("Nikudan Hari")
						M.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/nara/verb/kageshibari()
						M.verbs += new /mob/nara/verb/ExtendShadow()
						M.verbs += new /mob/nara/verb/RetractShadow()
					if("Kage Kubi Shibaru")
						M.verbs += new /mob/nara/verb/KageKubiShibaru()
					if("Bone Sword")
						M.verbs += new /mob/kaguyajutsu/verb/CreateBoneSword()
					if("Bone Whip")
						M.verbs += new /mob/kaguyajutsu/verb/CreateSpineWhip()
					if("Yanagi")
						M.verbs += new /mob/kaguyajutsu/verb/YanagiNoMai()
					if("Tsubaki")
						M.verbs += new /mob/kaguyajutsu/verb/TsubakiNoMai()
					if("Karamatsu")
						M.verbs += new /mob/kaguyajutsu/verb/KaramatsuNoMai()
					if("Teshi Sendan")
						M.verbs += new /mob/kaguyajutsu/verb/TeshiSendan()
					if("Tessenka")
						M.verbs += new /mob/kaguyajutsu/verb/TessenkaNoMai()
					if("Sawarabi")
						M.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
					if("Konchuu")
						M.verbs += new /mob/aburame/verb/summonkonchuu()
						M.verbs += new /mob/aburame/verb/Placekonchuu()
						M.verbs += new /mob/aburame/verb/DestroyKonchuu()
					if("Explode Bug")
						M.verbs += new /mob/aburame/verb/ExplodeKonchuu()
					if("Tame")
						M.verbs += new /mob/inuzuka/verb/Tame()
					if("Tsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga()
					if("Gatsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga1()
					if("Soutourou")
						M.verbs += new /mob/Inuzuka/verb/Soutourou()
					if("Konoha Renpuu")
						M.verbs += new /mob/Lee/verb/KonohaReppu()
					if("Konoha Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaSenpuu()
					if("Omote Renge")
						M.verbs += new /mob/Lee/verb/OmoteRenge()
					if("Ura Renge")
						M.verbs += new /mob/Lee/verb/UraRenge()
					if("Konoha Genuriki Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
					if("Suna Shuirken")
						M.verbs += new /mob/gaara/verb/SunaShuriken()
					if("Suna Shushin")
						M.verbs += new /mob/gaara/verb/SunaShushinNoJutsu()
					if("Sand Sphere")
						M.verbs += new /mob/gaara/verb/SandSphere()
					if("Sand Armor")
						M.verbs += new /mob/gaara/verb/SandArmor()
					if("Sabaku Kyuu")
						M.verbs += new /mob/gaara/verb/SabakuKyuu()
					if("Sabaku Sousou")
						M.verbs += new /mob/gaara/verb/SabakuSousou()
					if("Shousen")
						M.verbs += new /mob/medical/verb/Shousen_Jutsu()
					if("Chakra No Mesu")
						M.verbs += new /mob/medical/verb/ChakraNoMesu()
					if("Slice Tendons")
						M.verbs += new /mob/medical/verb/SliceTendons()
					if("Screw Nerves")
						M.verbs += new /mob/medical/verb/ScrewNerves()
					if("Fire Armor")
						M.verbs += new /mob/uchiha/verb/FireArmor()
					if("Hunter")
						M.verbs += new /mob/jutsu/verb/JourouSenbon()
					if("Missing")
						M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()
					if("Teleport")
						M.verbs += new /mob/nara/verb/kageteleport()
					if("Fly")
						M.verbs += new /mob/flight/verb/Fly()
					if("Bee Armor")
						M.verbs += new /mob/Kamizuri/verb/BeeArmor()
					if("Bug Armor")
						M.verbs += new /mob/aburame/verb/BugArmor()
					if("Bug Kyuu")
						M.verbs += new /mob/aburame/verb/KonchuuKyuu()
					if("Bug Sousou")
						M.verbs += new /mob/aburame/verb/KonchuuSousou()
					if("Bees")
						M.verbs += new /mob/Kamizuri/verb/summonbees()
						M.verbs += new /mob/Kamizuri/verb/Placebee()
						M.verbs += new /mob/Kamizuri/verb/Destroybee()
					if("Explode Bee")
						M.verbs += new /mob/Kamizuri/verb/ExplodeBee()
					if("Bee Wings")
						M.verbs += new /mob/Beeflight/verb/Fly()
					if("Blind")
						M.verbs += new /mob/nara/verb/kageblind()
					if("Sexy")
						M.verbs += new /mob/jutsu/verb/Sexy()
					if("Kage Shuriken")
						M.verbs += new /mob/shurikenmove/verb/KageShuriken()
					if("Kage Kunai")
						M.verbs += new /mob/shurikenmove/verb/KageKunai()
					if("Tajuu Bunshin")
						M.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
					if("Nisen Rendan")
						M.verbs += new /mob/jutsu/verb/NisenRendan()
					if("Cancel")
						return

				usr<<"THEY PICKED THERE JUTSU."
				M<<"Você foi promovido ao posto de Sannin pelo kage!"
				world<<"[M] agora é um Sannin"
				M.rank = "Sannin"
				M.cap = SDcap
				M.verbs -= new /mob/Enforcer/verb/Jail()
				M.verbs -= new /mob/Enforcer/verb/UnJail()
				M.squads=1
				M.squad="[src.squad]"
				usr.recruits+=1
				var/obj/ANBUattacksuit/S = new/obj/ANBUattacksuit
				S.loc = M
				if(src.Village=="Leaf")
					src.ChakraC=100
					var/obj/Ranbu/R = new/obj/Ranbu
					R.loc=usr
				if(src.Village =="Sand")
					src.ChakraC=100
					var/obj/Sanbu/R = new/obj/Sanbu
					R.loc = src
				if(src.Village =="Sound")
					src.ChakraC=100
					var/obj/Danbu/R = new/obj/Danbu
					R.loc = src
				if(src.Village =="Grass")
					src.ChakraC=100
					var/obj/Ganbu/R = new/obj/Ganbu
					R.loc = src
				if(src.Village =="Rain")
					src.ChakraC=100
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = src
				if(src.Village =="Cloud")
					src.ChakraC=100
					var/obj/Yanbu/R = new/obj/Yanbu
					R.loc = src
				if(src.Village =="Mist")
					src.ChakraC=100
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = src
				if(src.Village =="Rock")
					src.ChakraC=100
					var/obj/Eanbu/R = new/obj/Eanbu
					R.loc = src
				if(src.Village =="Snow")
					src.ChakraC=100
					var/obj/Panbu/R = new/obj/Panbu
					R.loc = src
				if(src.Village =="Waterfall")
					src.ChakraC=100
					var/obj/Banbu/R = new/obj/Banbu
					R.loc = src
					return

			else
				usr<<"They are not from your village."

		GMOOC(msg as text)
			set category = "Staff"
			set name = "GM OOC"
			for(var/mob/M in world)
				if(M.GM)
					M<<"(GM OOC)<font color=red> [usr]: [msg] )"




var
	warring=0
mob/var/inthewar=0
mob
	verb
		EscapeWar()
			if(usr.inthewar&&war==1)
				usr.loc=locate(6,58,20)
				usr.inthewar=0
				(usr) << sound(null)



mob/var/tmp/inkyuubi=0
mob/var
	kyuu2=0
	kyuu3=0
mob/proc/Kyuubi()
	if(src.kyuu3>=1)
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*3
		src.tai = usr.Mtai*3
		src.gen = usr.Mgen*3
		src.nin = usr.Mnin*3
		src.inkyuubi=1
		sleep(600)
		if(src&&src.inkyuubi)
			src<<"Your power rush comes to an end"
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*2
		src.tai = usr.Mtai*2.5
		src.gen = usr.Mgen*2.5
		src.nin = usr.Mnin*2.5
		src.inkyuubi=1
		sleep(600)
		if(src&&src.inkyuubi)
			src<<"Your power rush comes to an end"
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*1.5
		src.tai = usr.Mtai*2
		src.gen = usr.Mgen*2
		src.nin = usr.Mnin*2
		src.inkyuubi=1
		sleep(600)
		if(src&&src.inkyuubi)
			src<<"Your power rush comes to an end"
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return
mob/var
	CS2=0
	CS3=0
mob/proc/Cursed_Seal()
	if(src.CS3>=1)
		src.overlays+='cs.dmi'
		src.overlays+='cs2.dmi'
		src.overlays+='cs3.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*1.2
		src.tai = usr.Mtai*2.1
		src.gen = usr.Mgen*2.5
		src.nin = usr.Mnin*2.5
		src.incs=1
		sleep(600)
		if(src&&src.incs)
			src<<"Your power rush comes to an end"
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs3.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return
	if(src.CS2>=1)
		src.overlays+='cs.dmi'
		src.overlays+='cs2.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*1.2
		src.tai = usr.Mtai*2
		src.gen = usr.Mgen*2
		src.nin = usr.Mnin*2
		src.incs=1
		sleep(600)
		if(src&&src.incs)
			src<<"Your power rush comes to an end"
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='cs.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*1.3
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.incs=1
		sleep(600)
		if(src&&src.incs)
			src<<"Your power rush comes to an end"
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return


mob/var/tmp/inkaku=0
mob/var
	kaku2=0
	kaku3=0
mob/proc/Kaku()
	if(src.kaku3>=1)
		src.overlays+='kakuA.dmi'
		src.overlays+='kaku3.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*1.8
		src.tai = usr.Mtai*2
		src.gen = usr.Mgen*2
		src.nin = usr.Mnin*3
		src.inkaku=1
		sleep(600)
		if(src&&src.inkaku)
			src<<"Your power rush comes to an end"
			src.overlays-='kaku3.dmi'
			src.overlays-='kaku3.dmi'
			src.overlays-='kaku3.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return
	if(src.kaku2>=1)
		src.overlays+='kaku2.dmi'
		src.overlays+='kakuA.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*2
		src.tai = usr.Mtai*1.8
		src.gen = usr.Mgen*1.7
		src.nin = usr.Mnin*2.2
		src.inkaku=1
		sleep(600)
		if(src&&src.inkaku)
			src<<"Your power rush comes to an end"
			src.overlays-='kaku2.dmi'
			src.overlays-='kaku2.dmi'
			src.overlays-='kaku2.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='kaku.dmi'
		src.overlays-='kakuA.dmi'
		src.health=src.maxhealth/2
		src.chakra=src.Mchakra*1.3
		src.tai = usr.Mtai*1.1
		src.gen = usr.Mgen*1.2
		src.nin = usr.Mnin*1.5
		src.inkaku=1
		sleep(600)
		if(src&&src.inkaku)
			src<<"Your power rush comes to an end"
			src.overlays-='kaku.dmi'
			src.overlays-='kaku.dmi'
			src.overlays-='kaku.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return











































//------------------------------------------------//
var/list/Bans = list()
var/list/IPBans = list()
var/tmp/list/boots = list()

proc
	BanSave()
		if(length(Bans)||length(IPBans))
			var/savefile/F = new("Bans.sav")
			F["Bans"] << Bans
			F["IPBans"] << IPBans
proc
	BanLoad()
		if(fexists("Bans.sav"))
			var/savefile/F = new("Bans.sav")
			F["Bans"] >> Bans
			F["IPBans"] >> IPBans
client/New()
	..()
	if(Bans.Find(key))
		src.verbs-=src.verbs
		src<<"<font color = red><big>You're banned from [world.name].</font>"
		spawn() del(src)
	if(IPBans.Find(address))
		src.verbs-=src.verbs
		src<<"<font color = red><big>You're banned from [world.name].</font>"
		spawn() del(src)
world
	New()
		..()
		BanLoad()
world
	Del()
		..()
		BanSave()
proc/Boottime(T,K)
	set background = 1
	sleep(T)
	boots.Remove(K)


















//------------------------------------------------//