mob/nara
	verb
		ShadowNoJutsu()
			set popup_menu = 0
			set category = "Jutsus"
			set name = "Shadow No Jutsu"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
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
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.SHarmor==1)
				usr<<"Not now."
				return
			else
				var/list/O = usr.overlays.Copy()
				view()<<"<font color=silver><b><font face=verdana>[usr]: Shadow No Jutsu!!"
				usr.nin = usr.nin*2
				usr.icon = 'invis.dmi'
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.SHarmor = 1
				usr.chakra -= 20
				usr.Chakragain()
				sleep(300)
				usr.nin = usr.Mnin
				usr<<"You take down the Shadow No Jutsu."
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				usr.SHarmor =0
mob/nara
	verb
		kageteleport(mob/M in world)
			set popup_menu = 0
			set category = "Jutsus"
			set name = "Kage Teleport"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 1)
				usr<<"Not enough Chakra!"
				return
			if(M.z==2||M.z==10||M.z==13||M.z==15||M.z==16||M.z==17||M.z==18||M.z==20||M.z==25||M.z==28||M.z==29||M.z==30)
				usr<<"You can not teleport there."
				return
			else
				M << "[usr] teleports next to you"
				usr << "You teleport next to [M]"
				usr.loc = locate(M.x,M.y-1,M.z)
mob/nara
	verb
		kageblind(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Kage Blinding no Jutsu"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 1)
				usr<<"Not enough Chakra!"
				return
			else
				var/Sleeptime = round(usr.gen/10)
				if(Sleeptime <= 1)
					Sleeptime = 55
					M:sight |= BLIND
					usr << "Haha! [M:name] got blinded by [src.name]!"
					M << "Haha! [M:name] got blinded by [src.name]!"
					sleep(Sleeptime)
					M:sight &= ~BLIND
					usr << "It's a miracle! [M:name] can see again"
					M << "It's a miracle! [M:name] can see again"
				else
					M:sight |= BLIND
					usr << "Haha! [M:name] got blinded by [src.name]!"
					M << "Haha! [M:name] got blinded by [src.name]!"
					sleep(Sleeptime)
					M:sight &= ~BLIND
					usr << "It's a miracle! [M:name] can see again"
					M << "It's a miracle! [M:name] can see again"

mob/nara
	verb
		kageshibari(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Kage Shibari no Jutsu"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
				return
			if(!usr.handseals)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 1)
				usr<<"Not enough Chakra!"
			else
				if(usr.Kshibari)
					for(var/obj/shibari/K in world)
						if(K.owner==usr)
							del(K)
							usr.Kshibari=0
							usr.Frozen=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
					for(var/obj/shibaritrail/T in world)
						if(T.owner==usr)
							del(T)
							usr.Kshibari=0
							usr.Frozen=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
				else
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#708090>K</FONT><FONT COLOR=#707f8d>a</FONT><FONT COLOR=#6f7c89>g</FONT><FONT COLOR=#6f7a85>e</FONT><FONT COLOR=#6e7781> </FONT><FONT COLOR=#6d757d>S</FONT><FONT COLOR=#6c7379>h</FONT><FONT COLOR=#6b7075>i</FONT><FONT COLOR=#6b6e71>b</FONT><FONT COLOR=#6a6b6d>a</FONT><FONT COLOR=#696969>r</FONT><FONT COLOR=#777777>i</FONT><FONT COLOR=#848484> </FONT><FONT COLOR=#929292>N</FONT><FONT COLOR=#a0a0a0>o</FONT><FONT COLOR=#aeaeae> </FONT><FONT COLOR=#bbbbbb>J</FONT><FONT COLOR=#c9c9c9>u</FONT><FONT COLOR=#d7d7d7>t</FONT><FONT COLOR=#e5e5e5>s</FONT><FONT COLOR=#f2f2f2>u</FONT><FONT COLOR=#ffffff>!</FONT>"
					var/obj/shibari/K = new /obj/shibari
					K.loc = usr.loc
					usr.Chakragain()
					K.Move_Delay = 2
					K.gen = usr.gen
					usr.Kshibari=1
					K.owner = usr
					K.target=M
					usr.Frozen=1

		ExtendShadow()
			set category = "Jutsus"
			set name = "Extend Shadow"
			usr.chakra -= 100
			for(var/obj/shibari/K in world)
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.froze)
					usr<<"Your frozen"
					return
				if(usr.Frozen)
					usr<<"Your frozen"
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.captured)
					usr<<"Your captured"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(K.owner == usr)
					step_towards(K,K.target)
				if(usr.chakra<=100)
					del(K)
					usr.Kshibari=0
					usr<<"You have hold has sliped"
					for(var/obj/shibaritrail/T in world)
						usr.Frozen=0
						if(T.owner == usr)
							usr.Frozen=0
							del(T)
		RetractShadow()
			set category = "Jutsus"
			set name = "Retract Shadow"
			usr.chakra -= 500
			for(var/obj/shibari/K in world)
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.froze)
					usr<<"Your frozen"
					return
				if(usr.Frozen)
					usr<<"Your frozen"
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.captured)
					usr<<"Your captured"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				K.move=1
				if(K.owner == usr)
					for(var/mob/M in K.loc)
						if(K.owner == M)
							if(K.loc == M.loc)
								del(K)
								usr.Frozen=0
								usr.Kshibari=0
								M.Frozen=0
								for(var/obj/shibaritrail/A in world)
									if(A.owner==usr)
										del(A)
								return
					for(var/obj/shibaritrail/T in oview(1,K))
						if(T.owner==usr)
							K.loc = T.loc
							K.dir=T.dir
							del(T)
						else
							del(K)
							for(var/obj/shibaritrail/L in world)
								if(L.owner==usr)
									del(L)
							usr.Frozen=0
							usr.kubi=0
							usr.Kshibari=0
							usr.firing=0
							del(K)

							del(T)

						for(var/mob/M in oview(11,K))
							if(M==K.target)
								if(K.loc==M.loc)
									M.Frozen=1
									M.caught=1
								else
									M.Frozen=0
									M.caught=0
									M.kubi=0
									M.overlays-='kagekubi.dmi'
									M.overlays-='kagekubi.dmi'
									M.overlays-='kagekubi.dmi'
		KageKubiShibaru()
			set category = "Jutsus"
			set name="Kage Kubi Shibaru"
			if(usr.firing)
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
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			for(var/obj/shibari/K in world)
				if(K.owner==usr)
					for(var/mob/M in world)
						if(M.caught&&!M.kubi)
							M.kubi=1
							usr.Chakragain()
							usr.chakra-=100
							M.overlays+='kagekubi.dmi'
							var/damage=round(usr.gen*5)
							if(damage<=5)
								usr<<"Your neck bind is too weak, [M] breaks out!"
								return
							else
								ROFL
									if(usr.chakra<=5)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									if(!M.caught)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									if(!usr.Kshibari)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
									if(!M.kubi)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									else
										usr.chakra-=100
										view(usr)<<"[M] takes [damage] damage from Neck Bind"
										M.health-=damage
										if(M.health<=0)
											M.Death(usr)
											usr.Frozen=0
											usr.Kshibari=0
											usr.kubi=0
											return
										sleep(40)
										goto ROFL
