mob/Inuzuka
	verb
		Gatsuuga()
			set category = "Jutsus"
			set name = "Tsuuga"
			if(usr.ingat == 1||usr.Kaiten == 1||usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else .
				if(GatN >= 35)
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#708090>T</FONT><FONT COLOR=#a0abb5>s</FONT><FONT COLOR=#d0d5db>u</FONT><FONT COLOR=#ffffff>u</FONT><FONT COLOR=#d5d5d5>g</FONT><FONT COLOR=#ababab>a</FONT><FONT COLOR=#808080>!</FONT>"
					usr.GatN += 1
					usr.ingat = 1
					usr.overlays+='gatsuuga.dmi'
					usr.firing = 1
					sleep(30)
					usr.ingat = 0
					usr.overlays-='gatsuuga.dmi'
					usr.overlays-='gatsuuga.dmi'
					usr.overlays-='gatsuuga.dmi'
					usr.Move_Delay = usr.Savedspeed
					usr.firing = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#708090>T</FONT><FONT COLOR=#a0abb5>s</FONT><FONT COLOR=#d0d5db>u</FONT><FONT COLOR=#ffffff>u</FONT><FONT COLOR=#d5d5d5>g</FONT><FONT COLOR=#ababab>a</FONT><FONT COLOR=#808080>!</FONT>"
						usr.GatN += 1
						usr.ingat = 1
						usr.overlays+='gatsuuga.dmi'
						usr.firing = 1
						usr.overlays += 'gatsuuga.dmi'
						sleep(30)
						usr.ingat = 0
						usr.overlays-='gatsuuga.dmi'
						usr.overlays-='gatsuuga.dmi'
						usr.overlays-='gatsuuga.dmi'
						usr.firing = 0
mob/Inuzuka
	verb
		Gatsuuga1()
			set category = "Jutsus"
			set name = "Gatsuuga"
			if(usr.ingat||usr.Kaiten||usr.firing)
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else
				for(var/mob/pet/P in oview(11,usr))
					if(!usr.Jujin)
						usr<<"You need to use Juujin Bunshin No Jutsu first!"
						return
					view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Gatsuuga!"
					usr.GatN += 1
					usr.ingat = 1
					usr.overlays+='gatsuuga.dmi'
					usr.firing = 1
					P.ingat = 1
					P.overlays = null
					P.icon='gatsuuga.dmi'
					sleep(30)
					usr.firing=0
					usr.Jujin=0
					usr.overlays-='gatsuuga.dmi'
					usr.ingat = 0
					P.firing=0
					P.Jujin=0
					P.icon = 'dog.dmi'
					P.overlays = null
					P.ingat = 0
mob/Inuzuka
	verb
		Garouga()
			set category = "Jutsus"
			set name = "Garouga"
			if(usr.ingat == 1||usr.Kaiten == 1||usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else .
				if(garN >= 145)
					if(usr.inso == 1)
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>G</FONT><FONT COLOR=#afdff2>a</FONT><FONT COLOR=#d8eff9>r</FONT><FONT COLOR=#ffffff>o</FONT><FONT COLOR=#c0f0ff>u</FONT><FONT COLOR=#80e0ff>g</FONT><FONT COLOR=#40cfff>a</FONT><FONT COLOR=#00bfff>!</FONT>"
						usr.garN += 1
						usr.ingar = 1
						usr.overlays+='Garouga .dmi'
						usr.firing = 1
						sleep(30)
						usr.overlays-='Garouga .dmi'
						usr.ingar = 0
						usr.firing = 0
					else
						usr<<"You must be in soutourou to use Garouga."
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.inso == 1)
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>G</FONT><FONT COLOR=#afdff2>a</FONT><FONT COLOR=#d8eff9>r</FONT><FONT COLOR=#ffffff>o</FONT><FONT COLOR=#c0f0ff>u</FONT><FONT COLOR=#80e0ff>g</FONT><FONT COLOR=#40cfff>a</FONT><FONT COLOR=#00bfff>!</FONT>"
							usr.garN += 1
							usr.ingar = 1
							usr.overlays+='Garouga .dmi'
							usr.firing = 1
							sleep(30)
							usr.overlays-='Garouga .dmi'
							usr.ingar = 0
							usr.firing = 0
						else
							usr<<"You must be in soutourou to use Garouga."


mob
	pet
		icon = 'Dog.dmi'
		Move_Delay=1
		tai=100
		maxhealth = 1000
		density=1
		health = 1000
		isdog=1
		kyuubinpc=1
		Wfight=0
		Move()
			..()
			//var/mob/O = src.owner
			if(src.Frozen)
				return
			//src.random = rand(1,50)
			//if(src.random==1)
				//src.tai += 1
				//src.maxhealth += rand(2,10)
				//src.health += rand(2,10)
				//O.dogmaxhealth=src.maxhealth
				//O.dogtai=src.tai
		Bump(mob/M)
			..()
			var/mob/P = src
			if(istype(M,/mob/))
				if(M == owner||M.name == src.name||Wfight==0||fighting)
					return
				if(M.PK==0)
					return
				if(src.PK==0)
					return
				else
					var/Damage = P.tai
					M.health -= Damage
					Death(M)
					view() << "[src] atacou [M] e tirou [Damage]!"
					src.fighting = 1
					sleep(5)
					src.fighting = 0

mob/inuzuka
	verb
		Tame(mob/pet/P in oview(1))
			set category = "Cachorro"
			if(P.cansave)
				usr<<"Você não pode dominar os jogadores"
				return
			if(istype(P,/mob/npc))
				usr<<"Você não pode dominar os NPC's"
				return
			if(!usr.hasdog)
				if(usr.Clan == "Inuzuka")
					if(!P.named&&!P.owned)
						P.loc = usr
						P.owner = usr
						P.owned = 1
						P.tai = usr.dogtai
						P.maxhealth=usr.dogmaxhealth
						usr.hasdog=1
						usr.dog = P
						P.named = 1
						P.name = input("Por favor escolha um nome para seu novo cachorro.") as text
						usr.dogname=P.name
						usr.dogtai=P.tai
						usr.dogmaxhealth=P.maxhealth
						usr.verbs += typesof(/mob/dogstuff/verb)
						usr.SaveK()
					else
						usr<<"Este cachorro já pertence a alguém."
						return
				else
					usr<<"Somente membros do clã Inuzuka podem dominar um cachorro."
					return
			else
				usr<<"Você já tem um cachorro."
				return

mob/var
	owner
	Wfight = 0
	named = 0
	fighting = 0
	sit = 0
	isdog=0
	dogtai=0
mob/dogstuff
	verb
		Pickup()
			set category = "Cachorro"
			for(var/mob/pet/P in oview(1,P))
				if(P.owner == usr)
					P.loc = usr
					P.Frozen =1
					P.owner = usr
				else
					usr<<"Este cachorro não pertence a você."

		Drop()
			set category = "Cachorro"
			for(var/mob/pet/P in src.contents)
				if(P.health <= 1)
					P.loc=locate(usr.x,usr.y-1,usr.z)
					P.Frozen = 0
					P.owner = usr
				else
					usr<<"Seu cachorro está machucado e não pode ser descartado."
					return
		Aggressive()
			set category = "Cachorro"
			for(var/mob/pet/P in oview())
				if(P.owner == usr&&P.Wfight == 0)
					P.Wfight = 1
					usr<<"Seu cachorro agora irá atacar qualquer coisa que esbarra nele."
					return
				else if(P.owner == usr&&P.Wfight == 1)
					usr<<"Seu cachorro vai deixar de atacar qualquer coisa que esbarrar nele."
					P.Wfight = 0
					return
				else
					usr<<"Este não é seu cachorro!"
					return
		Sit(var/mob/pet/P in oview(1))
			set category = "Cachorro"
			if(P.owner==usr&&P.sit == 0)
				P.Frozen=1
				walk(src,0)
			else if(P.owner==usr&&P.sit == 1)
				P.Frozen=0
				walk(src,0)
			else
				usr<<"Este não é seu cachorro."
				return
		Come()
			set category = "Cachorro"
			for(var/mob/pet/P in view())
				if(P.owner==usr)
					P.Frozen=0
					walk_towards(P,src)
		FollowSomeone(mob/M in view())
			set category = "Dog"
			for(var/mob/pet/P in oview())
				if(P.owner == usr&&P.Frozen == 0)
					walk_towards(P,M)

mob/Inuzuka
	verb
		JuujinBunshin() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Juujin Bunshin No Jutsu"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else // If the firing var isn't 1...
				if(JuU >= 11)
					for(var/mob/pet/M in oview(6))
						if(M.owner == usr)
							usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
							usr.move = 0 // Disables the mob's movement
							usr.chakra -= 15
							usr.Jujin=1
							usr.JuU += 1
							sleep(3)
							usr.move = 1
							usr.Chakragain()
							usr.firing = 0
							M.icon = usr.icon
							flick("smoke2",M)
							M.overlays += usr.overlays
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f4a460>J</FONT><FONT COLOR=#ee9a5c>u</FONT><FONT COLOR=#e68f57>u</FONT><FONT COLOR=#df8352>j</FONT><FONT COLOR=#d8784d>i</FONT><FONT COLOR=#d16d48>n</FONT><FONT COLOR=#c96243> </FONT><FONT COLOR=#c2573e>B</FONT><FONT COLOR=#bb4c39>u</FONT><FONT COLOR=#b44034>n</FONT><FONT COLOR=#ac352f>s</FONT><FONT COLOR=#a52a2a>h</FONT><FONT COLOR=#a62a2a>i</FONT><FONT COLOR=#a72a2a>n</FONT><FONT COLOR=#a92929> </FONT><FONT COLOR=#aa2828>N</FONT><FONT COLOR=#ab2727>o</FONT><FONT COLOR=#ac2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#b02424>t</FONT><FONT COLOR=#b12424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
							sleep(600)
							M.overlays =null
							M.icon = 'dog.dmi'
							usr.Jujin = 0
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.ninup()
								usr.Skills()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return

				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						for(var/mob/pet/M in oview(6))
							if(M.owner == usr)
								usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
								usr.move = 0 // Disables the mob's movement
								usr.chakra -= 15
								Jujin=1
								JuU += 1
								usr.Chakragain()
								sleep(3)
								usr.move = 1
								usr.firing = 0
								M.icon = usr.icon
								flick("smoke2",M)
								M.overlays += usr.overlays
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f4a460>J</FONT><FONT COLOR=#ee9a5c>u</FONT><FONT COLOR=#e68f57>u</FONT><FONT COLOR=#df8352>j</FONT><FONT COLOR=#d8784d>i</FONT><FONT COLOR=#d16d48>n</FONT><FONT COLOR=#c96243> </FONT><FONT COLOR=#c2573e>B</FONT><FONT COLOR=#bb4c39>u</FONT><FONT COLOR=#b44034>n</FONT><FONT COLOR=#ac352f>s</FONT><FONT COLOR=#a52a2a>h</FONT><FONT COLOR=#a62a2a>i</FONT><FONT COLOR=#a72a2a>n</FONT><FONT COLOR=#a92929> </FONT><FONT COLOR=#aa2828>N</FONT><FONT COLOR=#ab2727>o</FONT><FONT COLOR=#ac2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#b02424>t</FONT><FONT COLOR=#b12424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
								sleep(600)
								M.overlays -= usr.overlays
								M.icon = 'dog.dmi'
								Jujin = 0
								usr.random = rand(1,6)
								if(random == 5||random==1)
									usr.ninexp += rand(1,10)
									usr.ninup()
									usr.Skills()
									var/ccrandom=rand(1,15)
									if(ccrandom==4||ccrandom==10)
										var/ccgain=rand(1,3)
										if(usr.ChakraC>=100)
											usr.ChakraC=100
											return
										else
											usr.ChakraC+=ccgain
											usr<<"[usr] you gained [ccgain] Chakra control..."
								else
									return

mob/Inuzuka
	verb
		Soutourou() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Soutourou"
			usr.Handseals()
			if(usr.Jujin == 0||usr.Henge||usr.firing||usr.Kaiten == 1||usr.inso==1) // If the mob's firing var is one...
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.canS==1)
				usr<<"You have used soutourou to recently..."
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else // If the firing var isn't 1...
				if(soU >= 150)
					for(var/mob/pet/M in oview(6))
						if(M.owner == usr)
							if(usr.Jujin == 1)
								var/list/O = usr.overlays.Copy()
								usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
								usr.move = 0 // Disables the mob's movement
								usr.chakra -= 55
								inso=1
								soU += 1
								sleep(3)
								usr.move = 1
								usr.firing = 0
								usr.Chakragain()
								M.loc=locate(0,0,0)
								usr.overlays = usr.overlays.Remove(usr.overlays)
								usr.icon = 'souta.dmi'
								usr.tai = usr.tai*2.2
								usr.Savedspeed = usr.Move_Delay
								usr.Move_Delay = usr.Speed2
								sleep(300)
								usr<<"<font color = blue>You stop using soutoutou!"
								usr.overlays = O.Copy()
								M.loc = locate(usr.x,usr.y,usr.z)
								usr.icon = usr.Oicon
								usr.tai = usr.Mtai
								M.icon='dog.dmi'
								M.Jujin=0
								usr.inso = 0
								sleep(100)
								usr.canS = 0
								if(usr.Mnin <= usr.cap)
									usr.random = rand(1,6)
									if(random == 5||random==1)
										usr.ninexp += rand(1,10)
										usr.ninup()
										usr.Skills()
										var/ccrandom=rand(1,15)
										if(ccrandom==4||ccrandom==10)
											var/ccgain=rand(1,3)
											if(usr.ChakraC>=100)
												usr.ChakraC=100
												return
											else
												usr.ChakraC+=ccgain
												usr<<"[usr] you gained [ccgain] Chakra control..."
									else
										return
								else
									usr.random = rand(1,20)
									if(random == 5||random==1)
										usr.ninexp += rand(1,10)
										usr.ninup()
										usr.Skills()
										var/ccrandom=rand(1,15)
										if(ccrandom==4||ccrandom==10)
											var/ccgain=rand(1,3)
											if(usr.ChakraC>=100)
												usr.ChakraC=100
												return
											else
												usr.ChakraC+=ccgain
												usr<<"[usr] you gained [ccgain] Chakra control..."
									else
										return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						for(var/mob/pet/M in oview(6))
							if(M.owner == usr)
								if(usr.Jujin == 1)
									var/list/O = usr.overlays.Copy()
									usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
									usr.move = 0 // Disables the mob's movement
									usr.chakra -= 55
									inso=1
									soU += 1
									sleep(3)
									usr.move = 1
									usr.firing = 0
									usr.Chakragain()
									M.loc=locate(0,0,0)
									usr.overlays = usr.overlays.Remove(usr.overlays)
									usr.icon = 'souta.dmi'
									usr.tai = usr.tai*2.2
									usr.Savedspeed = usr.Move_Delay
									usr.Move_Delay = usr.Speed2
									sleep(300)
									usr<<"<font color = blue>You stop using soutoutou!"
									usr.overlays = O.Copy()
									M.loc = locate(usr.x,usr.y,usr.z)
									usr.icon = usr.Oicon
									usr.tai = usr.Mtai
									M.icon='dog.dmi'
									M.Jujin=0
									usr.inso = 0
									sleep(100)
									usr.canS = 0
									if(usr.Mnin <= usr.cap)
										usr.random = rand(1,6)
										if(random == 5||random==1)
											usr.ninexp += rand(1,10)
											usr.ninup()
											usr.Skills()
											var/ccrandom=rand(1,15)
											if(ccrandom==4||ccrandom==10)
												var/ccgain=rand(1,3)
												if(usr.ChakraC>=100)
													usr.ChakraC=100
													return
												else
													usr.ChakraC+=ccgain
													usr<<"[usr] you gained [ccgain] Chakra control..."
										else
											return
									else
										usr.random = rand(1,20)
										if(random == 5||random==1)
											usr.ninexp += rand(1,10)
											usr.ninup()
											usr.Skills()
											var/ccrandom=rand(1,15)
											if(ccrandom==4||ccrandom==10)
												var/ccgain=rand(1,3)
												if(usr.ChakraC>=100)
													usr.ChakraC=100
													return
												else
													usr.ChakraC+=ccgain
													usr<<"[usr] you gained [ccgain] Chakra control..."
										else
											return

