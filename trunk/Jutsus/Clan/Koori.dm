mob/haku
	verb
		SensatsuSuishou() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Sensatsu Suishou"
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
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
			else // If the firing var isn't 1...
				if(!usr.hyoushou)
					usr.chakra -= 10
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SensatsuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>S</FONT><FONT COLOR=#c4c8c8>e</FONT><FONT COLOR=#c8d0d0>n</FONT><FONT COLOR=#ccd8d8>s</FONT><FONT COLOR=#d1e0e0>a</FONT><FONT COLOR=#d5e8e8>t</FONT><FONT COLOR=#d9f0f0>s</FONT><FONT COLOR=#ddf8f8>u</FONT><FONT COLOR=#e0ffff> </FONT><FONT COLOR=#dbfbfd>S</FONT><FONT COLOR=#d4f6fa>u</FONT><FONT COLOR=#cef1f6>i</FONT><FONT COLOR=#c7ecf3>s</FONT><FONT COLOR=#c1e7f0>h</FONT><FONT COLOR=#bae2ed>o</FONT><FONT COLOR=#b4dde9>u</FONT><FONT COLOR=#add8e6>!</FONT>"
					var/obj/Jutsus/Sensatsu/S1 = new /obj/Jutsus/Sensatsu
					var/obj/Jutsus/Sensatsu/S2 = new /obj/Jutsus/Sensatsu
					var/obj/Jutsus/Sensatsu/S3 = new /obj/Jutsus/Sensatsu
					var/obj/Jutsus/Sensatsu/S4 = new /obj/Jutsus/Sensatsu
					usr.Chakragain()
					S1.loc = usr.loc
					S1.tai=usr.tai
					S1.dir = NORTH
					S1.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S1.Gowner=usr
					walk(S1,NORTH)
					S2.loc = usr.loc
					S2.tai=usr.tai
					S2.dir = SOUTH
					S2.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S2.Gowner=usr
					walk(S2,SOUTH)
					S3.loc = usr.loc
					S3.tai=usr.tai
					S3.dir = WEST
					S3.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S3.Gowner=usr
					walk(S3,WEST)
					S4.loc = usr.loc
					S4.tai=usr.tai
					S4.dir = EAST
					S4.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S4.Gowner=usr
					walk(S4,EAST)
					sleep(10)
					usr.firing = 0
					sleep(45)
					del(S1)
					del(S2)
					del(S3)
					del(S4)
					return
				else
					for(var/mob/M in oview(6,usr))
						if(M.hyoushou)
							usr.chakra -= 20
							usr.SensatsuN += 1
							usr.firing = 1
							var/obj/Jutsus/Sensatsu/S1 = new /obj/Jutsus/Sensatsu
							var/obj/Jutsus/Sensatsu/S2 = new /obj/Jutsus/Sensatsu
							var/obj/Jutsus/Sensatsu/S3 = new /obj/Jutsus/Sensatsu
							var/obj/Jutsus/Sensatsu/S4 = new /obj/Jutsus/Sensatsu
							S1.loc = usr.loc
							S1.tai=usr.tai
							S1.name="[usr]"
							S1.Gowner=usr
							walk_towards(S1,M)
							sleep(5)
							S2.loc = usr.loc
							S2.tai=usr.tai
							S2.name="[usr]"
							S2.Gowner=usr
							walk_towards(S2,M)
							sleep(5)
							S3.loc = usr.loc
							S3.tai=usr.tai
							S3.name="[usr]"
							S3.Gowner=usr
							walk_towards(S3,M)
							sleep(5)
							S4.loc = usr.loc
							S4.tai=usr.tai
							S4.name="[usr]"
							S4.Gowner=usr
							walk_towards(S4,M)
							sleep(10)
							usr.firing = 0
							sleep(40)
							del(S1)
							del(S2)
							del(S3)
							del(S4)
							return

mob/haku
	verb
		MakyouHyoushou(mob/M in oview(11))
			set category = "Jutsus"
			set name = "Makyou Hyoushou"
			usr.Handseals()
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
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=9999)
				return
			if(!usr.handseals)
				return
			if(!usr.hyoushou)
				usr<<"To throw needles use Sensatsu, When you are using Hyoushou, Sensatsu Suishou changes to fit your need"
				usr.hyoushou=1
				usr.Chakragain()
				usr.chakra-=5000
				M.hyoushou=1
				var/obj/Jutsus/DemonMirror/A = new /obj/Jutsus/DemonMirror
				var/obj/Jutsus/DemonMirror/B = new /obj/Jutsus/DemonMirror
				var/obj/Jutsus/DemonMirror/C = new /obj/Jutsus/DemonMirror
				var/obj/Jutsus/DemonMirror/D = new /obj/Jutsus/DemonMirror
				var/obj/Jutsus/DemonMirror/E = new /obj/Jutsus/DemonMirror
				var/obj/Jutsus/DemonMirror/F = new /obj/Jutsus/DemonMirror
				var/obj/Jutsus/DemonMirror/G = new /obj/Jutsus/DemonMirror
				var/obj/Jutsus/DemonMirror/H = new /obj/Jutsus/DemonMirror
				var/obj/Jutsus/DenseThing/A1 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/B2 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/C3 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/D4 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/E5 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/F6 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/G7 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/H8 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/I9 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/J10 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/K11 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/L12 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/M13 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/N14 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/O15 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/P16 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/Q17 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/R18 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/S19 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/T20 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/U21 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/V22 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/W23 = new /obj/Jutsus/DenseThing
				var/obj/Jutsus/DenseThing/X24 = new /obj/Jutsus/DenseThing
				A1.owner=usr
				B2.owner=usr
				C3.owner=usr
				D4.owner=usr
				E5.owner=usr
				F6.owner=usr
				G7.owner=usr
				H8.owner=usr
				I9.owner=usr
				J10.owner=usr
				K11.owner=usr
				L12.owner=usr
				M13.owner=usr
				N14.owner=usr
				O15.owner=usr
				P16.owner=usr
				Q17.owner=usr
				R18.owner=usr
				S19.owner=usr
				T20.owner=usr
				U21.owner=usr
				V22.owner=usr
				W23.owner=usr
				X24.owner=usr
				A1.loc = locate(M.x-3,M.y+4,M.z)//Tops
				B2.loc = locate(M.x-2,M.y+4,M.z)//Tops
				C3.loc = locate(M.x-1,M.y+4,M.z)//Tops
				D4.loc = locate(M.x+1,M.y+4,M.z)//Tops
				E5.loc = locate(M.x+2,M.y+4,M.z)//Tops
				F6.loc = locate(M.x+3,M.y+4,M.z)//Tops
				G7.loc = locate(M.x-3,M.y-4,M.z)//Bottoms
				H8.loc = locate(M.x-2,M.y-4,M.z)//Bottoms
				I9.loc = locate(M.x-1,M.y-4,M.z)//Bottoms
				J10.loc = locate(M.x+1,M.y-4,M.z)//Bottoms
				K11.loc = locate(M.x+2,M.y-4,M.z)//Bottoms
				L12.loc = locate(M.x+3,M.y-4,M.z)//Bottoms
				M13.loc = locate(M.x-4,M.y+1,M.z)//Lefts
				N14.loc = locate(M.x-4,M.y+2,M.z)//Lefts
				O15.loc = locate(M.x-4,M.y+3,M.z)//Lefts
				P16.loc = locate(M.x-4,M.y-1,M.z)//Lefts
				Q17.loc = locate(M.x-4,M.y-2,M.z)//Lefts
				R18.loc = locate(M.x-4,M.y-3,M.z)//Lefts
				S19.loc = locate(M.x+4,M.y+1,M.z)//Rights
				T20.loc = locate(M.x+4,M.y+2,M.z)//Rights
				U21.loc = locate(M.x+4,M.y+3,M.z)//Rights
				V22.loc = locate(M.x+4,M.y-1,M.z)//Rights
				W23.loc = locate(M.x+4,M.y-2,M.z)//Rights
				X24.loc = locate(M.x+4,M.y-3,M.z)//Rights
				A.loc = locate(M.x-4,M.y,M.z)
				A.owner=usr
				B.loc = locate(M.x,M.y-4,M.z)
				B.owner=usr
				C.loc = locate(M.x-4,M.y-4,M.z)
				C.owner=usr
				D.loc = locate(M.x+4,M.y,M.z)
				D.owner=usr
				E.loc = locate(M.x+4,M.y+4,M.z)
				E.owner=usr
				F.loc = locate(M.x,M.y+4,M.z)
				F.owner=usr
				G.loc = locate(M.x+4,M.y-4,M.z)
				G.owner=usr
				H.loc = locate(M.x-4,M.y+4,M.z)
				H.owner=usr
				Gotcha
					if(usr.chakra>=5)
						if(usr.hyoushou)
							if(A)
								usr.loc = A.loc
								usr.chakra-=100
							sleep(13)
							if(B)
								usr.loc = B.loc
								usr.chakra-=100
							sleep(13)
							if(C)
								usr.loc = C.loc
								usr.chakra-=100
							sleep(13)
							if(D)
								usr.loc = D.loc
								usr.chakra-=100
							sleep(13)
							if(E)
								usr.loc = E.loc
								usr.chakra-=100
							sleep(13)
							if(F)
								usr.loc = F.loc
								usr.chakra-=100
							sleep(13)
							if(G)
								usr.loc = G.loc
								usr.chakra-=100
							sleep(13)
							if(H)
								usr.loc = H.loc
								usr.chakra-=100
					switch(input("Do you wish to cancel out of Mirriors?") in list("Yes","No"))
						if("Yes")
							del(A)
							del(B)
							del(C)
							del(D)
							del(E)
							del(F)
							del(G)
							del(H)
							del(A1)
							del(B2)
							del(C3)
							del(D4)
							del(E5)
							del(F6)
							del(G7)
							del(H8)
							del(I9)
							del(J10)
							del(K11)
							del(L12)
							del(M13)
							del(N14)
							del(O15)
							del(P16)
							del(Q17)
							del(R18)
							del(S19)
							del(T20)
							del(U21)
							del(V22)
							del(W23)
							del(X24)
							sleep(60)
							usr.hyoushou=0
							M.hyoushou=0
						if("No")
							goto Gotcha
