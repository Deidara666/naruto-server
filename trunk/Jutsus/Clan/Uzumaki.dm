obj
	bunshins
		TajuuKageBunshinNoJutsu //being worked on dont use
			verb/TajuuKageBunshinNoJutsu()
				set name = "Tajuu Kage Bunshin No Jutsu"
				set desc = "Create a clone that can attack"
				set category = "Jutsus"
				usr.Handseals()
				if(usr.firing)
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.chakra <= 15)
					usr << "Not enough chakra!"
					return
				if(usr.inso)
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
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(usr.Kaiten||usr.counter)
					return
				if(usr.gate1)
					return
				if(usr.gate2)
					return
				if(usr.gate3)
					return
				if(usr.gate4)
					return
				if(usr.gate5)
					return
				if(usr.gate6)
					return
				if(usr.gate7)
					return
				if(usr.gate8)
					return
				if(!usr.handseals)
					return
				else
					if(usr.TbunshinN >= 50)
						usr.firing = 1
						usr.KillBunshin()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>Tajuu Kage Bunshin No Jutsu!</FONT>"
						var/mob/npcs/Bunshin/A = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/B = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/C = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/D = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/E = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/F = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/G = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/H = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/I = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/J = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/L = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/M = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/N = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/O = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/P = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/Q = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/R = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/S = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/T = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/U = new /mob/npcs/KBunshin
						usr.TbunshinN += 1
						usr.bunshin += 21
						usr.Chakragain()
						if(A)
							A.name = "[usr.name]"
							A.original = usr
							A.icon = usr.icon
							A.overlays += usr.overlays
							A.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",A)
							A.max_exp = 2
							A.exp = 2
							A.tai = usr.tai/2
							A.health = 1

						if(B)
							B.name = "[usr.name]"
							B.original = usr
							B.icon = usr.icon
							B.overlays += usr.overlays
							B.loc = locate(usr.x-2, usr.y, usr.z)
							flick("smoke2",B)
							B.max_exp = 2
							B.exp = 2
							B.tai = usr.tai/2
							B.health = 1

						if(C)
							C.name = "[usr.name]"
							C.original = usr
							C.icon = usr.icon
							C.overlays += usr.overlays
							C.loc = locate(usr.x+1, usr.y, usr.z)
							flick("smoke2",C)
							C.max_exp = 2
							C.exp = 2
							C.tai = usr.tai/2
							C.health = 1

						if(D)
							D.name = "[usr.name]"
							D.original = usr
							D.icon = usr.icon
							D.overlays += usr.overlays
							D.loc = locate(usr.x+2, usr.y, usr.z)
							flick("smoke2",D)
							D.max_exp = 2
							D.exp = 2
							D.tai = usr.tai/2
							D.health = 1

						if(E)
							E.name = "[usr.name]"
							E.original = usr
							E.icon = usr.icon
							E.overlays += usr.overlays
							E.loc = locate(usr.x+3, usr.y, usr.z)
							flick("smoke2",E)
							E.max_exp = 2
							E.exp = 2
							E.tai = usr.tai/2
							E.health = 1

						if(F)
							F.name = "[usr.name]"
							F.original = usr
							F.icon = usr.icon
							F.overlays += usr.overlays
							F.loc = locate(usr.x-3, usr.y, usr.z)
							flick("smoke2",F)
							F.max_exp = 2
							F.exp = 2
							F.tai = usr.tai/2
							F.health = 1

						if(G)
							G.name = "[usr.name]"
							G.original = usr
							G.icon = usr.icon
							G.overlays += usr.overlays
							G.loc = locate(usr.x+4, usr.y, usr.z)
							flick("smoke2",G)
							G.max_exp = 2
							G.exp = 2
							G.tai = usr.tai/2
							G.health = 1

						if(H)
							H.name = "[usr.name]"
							H.original = usr
							H.icon = usr.icon
							H.overlays += usr.overlays
							H.loc = locate(usr.x-4, usr.y, usr.z)
							flick("smoke2",H)
							H.max_exp = 2
							H.exp = 2
							H.tai = usr.tai/2
							H.health = 1

						if(I)
							I.name = "[usr.name]"
							I.original = usr
							I.icon = usr.icon
							I.overlays += usr.overlays
							I.loc = locate(usr.x+5, usr.y, usr.z)
							flick("smoke2",I)
							I.max_exp = 2
							I.exp = 2
							I.tai = usr.tai/2
							I.health = 1

						if(J)
							J.name = "[usr.name]"
							J.original = usr
							J.icon = usr.icon
							J.overlays += usr.overlays
							J.loc = locate(usr.x-5, usr.y, usr.z)
							flick("smoke2",J)
							J.max_exp = 2
							J.exp = 2
							J.tai = usr.tai/2
							J.health = 1

						if(K)
							K.name = "[usr.name]"
							K.original = usr
							K.icon = usr.icon
							K.overlays += usr.overlays
							K.loc = locate(usr.x+1, usr.y+1, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.exp = 2
							K.tai = usr.tai/2
							K.health = 1

						if(L)
							L.name = "[usr.name]"
							L.original = usr
							L.icon = usr.icon
							L.overlays += usr.overlays
							L.loc = locate(usr.x-1, usr.y+1, usr.z)
							flick("smoke2",L)
							L.max_exp = 2
							L.exp = 2
							L.tai = usr.tai/2
							L.health = 1

						if(M)
							M.name = "[usr.name]"
							M.original = usr
							M.icon = usr.icon
							M.overlays += usr.overlays
							M.loc = locate(usr.x+2, usr.y+1, usr.z)
							flick("smoke2",M)
							M.max_exp = 2
							M.exp = 2
							M.tai = usr.tai/2
							M.health = 1

						if(N)
							N.name = "[usr.name]"
							N.original = usr
							N.icon = usr.icon
							N.overlays += usr.overlays
							N.loc = locate(usr.x-2, usr.y+1, usr.z)
							flick("smoke2",N)
							N.max_exp = 2
							N.exp = 2
							N.tai = usr.tai/2
							N.health = 1

						if(O)
							O.name = "[usr.name]"
							O.original = usr
							O.icon = usr.icon
							O.overlays += usr.overlays
							O.loc = locate(usr.x+3, usr.y+1, usr.z)
							flick("smoke2",O)
							O.max_exp = 2
							O.exp = 2
							O.tai = usr.tai/2
							O.health = 1

						if(P)
							P.name = "[usr.name]"
							P.original = usr
							P.icon = usr.icon
							P.overlays += usr.overlays
							P.loc = locate(usr.x-3, usr.y+1, usr.z)
							flick("smoke2",P)
							P.max_exp = 2
							P.exp = 2
							P.tai = usr.tai/2
							P.health = 1

						if(Q)
							Q.name = "[usr.name]"
							Q.original = usr
							Q.icon = usr.icon
							Q.overlays += usr.overlays
							Q.loc = locate(usr.x+4, usr.y+1, usr.z)
							flick("smoke2",Q)
							Q.max_exp = 2
							Q.exp = 2
							Q.tai = usr.tai/2
							Q.health = 1

						if(R)
							R.name = "[usr.name]"
							R.original = usr
							R.icon = usr.icon
							R.overlays += usr.overlays
							R.loc = locate(usr.x-4, usr.y+1, usr.z)
							flick("smoke2",R)
							R.max_exp = 2
							R.exp = 2
							R.tai = usr.tai/2
							R.health = 1

						if(S)
							S.name = "[usr.name]"
							S.original = usr
							S.icon = usr.icon
							S.overlays += usr.overlays
							S.loc = locate(usr.x+5, usr.y+1, usr.z)
							flick("smoke2",S)
							S.max_exp = 2
							S.exp = 2
							S.tai = usr.tai/2
							S.health = 1

						if(T)
							T.name = "[usr.name]"
							T.original = usr
							T.icon = usr.icon
							T.overlays += usr.overlays
							T.loc = locate(usr.x-5, usr.y+1, usr.z)
							flick("smoke2",T)
							T.max_exp = 2
							T.exp = 2
							T.tai = usr.tai/2
							T.health = 1

						if(U)
							U.name = "[usr.name]"
							U.original = usr
							U.icon = usr.icon
							U.overlays += usr.overlays
							U.loc = locate(usr.x, usr.y+1, usr.z)
							flick("smoke2",U)
							U.max_exp = 2
							U.exp = 2
							U.tai = usr.tai/2
							U.health = 1

						usr.firing=0
						usr.chakra -= 15
						usr.Mnin+=rand(10,50)
						usr.nin=usr.Mnin
						usr.Skills()
						usr.ninup()
						usr<<"<font color = blue>Your ninjutsu increased!"

						sleep(500)
						del(A)
						del(B)
						del(C)
						del(D)
						del(E)
						del(F)
						del(G)
						del(H)
						del(I)
						del(J)
						del(K)
						del(L)
						del(M)
						del(N)
						del(O)
						del(P)
						del(Q)
						del(R)
						del(S)
						del(T)
						del(U)
					else
						usr.random = rand (1,4)
						if(usr.random == 1||usr.random == 4)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>Tajuu Kage Bunshin No Jutsu!</FONT>"
							usr.firing = 1
							usr.KillBunshin()
							var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
							var/mob/npcs/Bunshin/L = new /mob/npcs/KBunshin
							var/mob/npcs/Bunshin/M = new /mob/npcs/KBunshin
							var/mob/npcs/Bunshin/N = new /mob/npcs/KBunshin
							usr.TbunshinN += 1
							usr.bunshin += 4
							usr.Chakragain()
							if(K)
								K.name = "[usr.name]"
								K.original = usr
								K.icon = usr.icon
								K.overlays += usr.overlays
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.exp = 2
								K.tai = usr.tai/2
								K.health = 1
							sleep(5)
							if(L)
								L.name = "[usr.name]"
								L.original = usr
								L.icon = usr.icon
								L.overlays += usr.overlays
								L.loc = locate(usr.x-2, usr.y, usr.z)
								flick("smoke2",L)
								L.max_exp = 2
								L.exp = 2
								L.tai = usr.tai/2
								L.health = 1
							sleep(5)
							if(M)
								M.name = "[usr.name]"
								M.original = usr
								M.icon = usr.icon
								M.overlays += usr.overlays
								M.loc = locate(usr.x+1, usr.y, usr.z)
								flick("smoke2",M)
								M.max_exp = 2
								M.exp = 2
								M.tai = usr.tai/2
								M.health = 1
							sleep(5)
							if(N)
								N.name = "[usr.name]"
								N.original = usr
								N.icon = usr.icon
								N.overlays += usr.overlays
								N.loc = locate(usr.x+2, usr.y, usr.z)
								flick("smoke2",N)
								N.max_exp = 2
								N.exp = 2
								N.tai = usr.tai/2
								N.health = 1
							sleep(14)
							usr.firing=0
							usr.chakra -= 15
							usr.Mnin+=rand(10,50)
							usr.nin=usr.Mnin
							usr.Skills()
							usr.ninup()
							usr<<"<font color = blue>Your ninjutsu increased!"


							sleep(500)
							del(K)
							del(L)
							del(M)
							del(N)

mob/shurikenmove
	verb
		KageShuriken()
			set category="Jutsus"
			set name = "Kage Shuriken No Jutsu"
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=100)
				usr<<"Not enough chakra."
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
			for(var/obj/Shuriken/S in view(10,usr))
				S.icon='kageshuriken.dmi'
				view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Kage Shuriken No Jutsu!"
				usr.firing=1
				usr.chakra-=100
				usr.Chakragain()
				S.tai=usr.tai*2
				sleep(3)
				usr.firing=0
				for(var/obj/Shuriken/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)

mob/shurikenmove
	verb
		KageKunai()
			set category="Jutsus"
			set name = "Kage Kunai No Jutsu"
			if(usr.firing)
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
			if(usr.chakra<=100)
				usr<<"Not enough chakra."
				return
			if(usr.caught)
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
			for(var/obj/Kunai/S in view(10,usr))
				S.icon='kagekunai.dmi'
				view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Kage Kunai No Jutsu!"
				usr.firing=1
				usr.chakra-=100
				usr.Chakragain()
				S.tai=usr.tai*2
				sleep(3)
				usr.firing=0
				for(var/obj/Kunai/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)

mob/jutsu
	verb
		Sexy()
			set category = "Jutsus"
			set name = "Oiroke No Jutsu"
			usr.Handseals()
			if (usr.ingat)
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
			if(usr.firing)
				return
			if (usr.sphere)
				usr<<"Not while useing sand of sphere"
				return
			if(usr.chakra <= 20)
				usr<<"Not enough chakra!"
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
			else
				var/list/O = usr.overlays.Copy()
				view()<<"<font color=silver><b><font face=verdana>[usr]: Oiroke No Jutsu!!"
				usr.icon = 'sexy.dmi'
				usr.firing=1
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.sexy = 1
				usr.chakra -= 20
				usr.Chakragain()
				sleep(100)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				sleep(10)
				usr.sexy = 0
				usr.firing=0

mob/jutsu
	verb
		NisenRendan()
			set category = "Jutsus"
			set name="Nisen Rendan"
			usr.Handseals()
			if(usr.firing)
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
			if(!usr.handseals)
				return
			if(usr.bakuretsuuse)
				return
			for(var/mob/npcs/Bunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
