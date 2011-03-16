mob/doton
	verb
		DotonDoryoDango() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Doton Doryo Dango"
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough rocks!"
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

			else // If the firing var isn't 1...
				if(usr.DDD >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.DDD += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f0e68c>D</FONT><FONT COLOR=#e8cf81>o</FONT><FONT COLOR=#deb874>t</FONT><FONT COLOR=#d5a068>o</FONT><FONT COLOR=#cb895c>n</FONT><FONT COLOR=#c2714f> </FONT><FONT COLOR=#b85943>D</FONT><FONT COLOR=#af4236>o</FONT><FONT COLOR=#a52a2a>r</FONT><FONT COLOR=#a23233>y</FONT><FONT COLOR=#9e3b3c>o</FONT><FONT COLOR=#994345> </FONT><FONT COLOR=#954b4e>D</FONT><FONT COLOR=#915458>a</FONT><FONT COLOR=#8d5c61>n</FONT><FONT COLOR=#88646a>g</FONT><FONT COLOR=#846d73>o</FONT><FONT COLOR=#80747b>!</FONT>"
					var/obj/DotonDD/K = new /obj/DotonDD
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					usr.Chakragain()
					K.Gowner=usr
					K.Move_Delay=2
					walk(K,usr.dir)
					if (target == null)
						del(K)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.ninup()
							usr.Skills()

					sleep(45)
					del(K)
					sleep(10)
					usr.firing = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.DDD += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f0e68c>D</FONT><FONT COLOR=#e8cf81>o</FONT><FONT COLOR=#deb874>t</FONT><FONT COLOR=#d5a068>o</FONT><FONT COLOR=#cb895c>n</FONT><FONT COLOR=#c2714f> </FONT><FONT COLOR=#b85943>D</FONT><FONT COLOR=#af4236>o</FONT><FONT COLOR=#a52a2a>r</FONT><FONT COLOR=#a23233>y</FONT><FONT COLOR=#9e3b3c>o</FONT><FONT COLOR=#994345> </FONT><FONT COLOR=#954b4e>D</FONT><FONT COLOR=#915458>a</FONT><FONT COLOR=#8d5c61>n</FONT><FONT COLOR=#88646a>g</FONT><FONT COLOR=#846d73>o</FONT><FONT COLOR=#80747b>!</FONT>"
						var/obj/DotonDD/K = new /obj/DotonDD
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						K.Move_Delay=2
						walk(K,usr.dir)
						if (target == null)
							del(K)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.ninup()
								usr.Skills()

						sleep(45)
						del(K)
						sleep(10)
						usr.firing = 0
					else
						usr<<"You failed to use Doton Doryo Dango"

obj
	doryuuheki
		icon = 'doryuuheki.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Doryuuheki for [damage] damage!!"
					M.Death(M)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	doryuudan
		icon = 'water.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suiton Doryuudan for [damage] damage!!"
					M.Death(M)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/doton
	verb
		DotonDoryuuheki() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Doton Doryuuheki"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.chakra <= 40)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.chakra -= 39
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#deb887>D</FONT><FONT COLOR=#d8b78b>o</FONT><FONT COLOR=#d2b590>t</FONT><FONT COLOR=#cbb394>o</FONT><FONT COLOR=#c4b199>n</FONT><FONT COLOR=#bdaf9d> </FONT><FONT COLOR=#b7ada1>D</FONT><FONT COLOR=#b0aba6>o</FONT><FONT COLOR=#a9a9a9>r</FONT><FONT COLOR=#a69595>y</FONT><FONT COLOR=#a28080>u</FONT><FONT COLOR=#9e6a6a>u</FONT><FONT COLOR=#9b5555>h</FONT><FONT COLOR=#974040>e</FONT><FONT COLOR=#932b2b>k</FONT><FONT COLOR=#8f1515>i</FONT><FONT COLOR=#8b0000>!</FONT>"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					var/obj/doryuuheki/E = new /obj/doryuuheki/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					D.loc = locate(usr.x-2, usr.y+1, usr.z)
					E.loc = locate(usr.x+2, usr.y+1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					var/obj/doryuuheki/E = new /obj/doryuuheki/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-2, usr.y-1, usr.z)
					E.loc = locate(usr.x+2, usr.y-1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					D.dir = SOUTH
					E.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					var/obj/doryuuheki/E = new /obj/doryuuheki/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-2, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					E.loc = locate(usr.x-1, usr.y+2, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = WEST
					B.dir = WEST
					C.dir = WEST
					D.dir = WEST
					E.dir = WEST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					var/obj/doryuuheki/E = new /obj/doryuuheki/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x+1, usr.y-2, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					E.loc = locate(usr.x+1, usr.y+2, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = EAST
					B.dir = EAST
					C.dir = EAST
					D.dir = EAST
					E.dir = EAST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(110)
					return
				return

mob/doton
	verb
		Doroudorno() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Doroudorno"
			if(usr.chakra <= 5)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.Kaiten&&!usr.firing)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>Doroudorno!</FONT>"
				usr.Frozen = 1
				usr.firing = 1
				usr.overlays += 'Esphere.dmi'
				usr.Kaiten =1
				OMG
				if(usr.Kaiten)
					usr.chakra -=2
					if(usr.chakra <= 2)
						usr.firing = 0
						usr.overlays -= 'Esphere.dmi'
						usr.Kaiten = 0
					else
						sleep(4)
						goto OMG
			else if(usr.Kaiten)
				usr.Frozen = 0
				usr.firing = 0
				usr.overlays -= 'Esphere.dmi'
				usr.Kaiten =0
				usr<<"You release Doroudorno."

mob/doton
	verb
		DotonSousou()
			set category = "Jutsus"
			set name = "Doton Sousou"
			usr.Handseals()
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
			for(var/mob/M in oview(10,usr))
				if(usr.sphere)
					return
				if(src.Kaiten)
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				if(usr.chakra<=10000)
					usr<<"Not Enough Chakra"
					return
				if(M.captured)
					usr.firing=1
					var/damage=usr.nin*5
					view(usr)<<"Doton Sousou!"
					flick("doton",M)
					M.overlays-='DotonCoffin.dmi'
					M.overlays-='DotonCoffin.dmi'
					usr.Chakragain()
					M.overlays-='DotonCoffin.dmi'
					M.health-=damage
					M.captured=0
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
						return
				else
					return
mob/doton
	verb
		DotonKyuu(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Doton Kyuu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.firing)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
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
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=10000)
				usr<<"Not Enough Chakra"
				return
			if(M.Kaiten)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(M.captured)
				usr<<"He is already caught!"
				return
			else
				if(usr.KyuuN>=100)
					usr.chakra -= 10000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.KyuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Doton Kyuu!"
					M.overlays+='DotonCoffin.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='DotonCoffin.dmi'
						M.overlays-='DotonCoffin.dmi'
						M.overlays-='DotonCoffin.dmi'
						M.overlays-='DotonCoffin.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Doton Kyuu!"
						M.overlays+='DotonCoffin.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Doton Kyuu!"
						M.overlays+='DotonCoffin.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Doton Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Doton Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Doton Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0
