mob/uchiha
	verb
		FireArmor()
			set category = "Jutsus"
			set name = "Katon No Jutsu"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
				usr<<"Not now."
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
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(!usr.Farmor&&!usr.firing)
				view()<<"<font color = red>[usr]: Katon No Jutsu!"
				usr.overlays += 'Farmor.dmi'
				usr.Farmor =1
				usr.nin = usr.nin*2
				fire
				if(usr.Farmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Farmor.dmi'
						usr.Farmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Farmor)
				usr.overlays -= 'Farmor.dmi'
				usr.Farmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Katon No Jutsu."

mob/katon
	verb
		KatonHousenka() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Katon Housenka No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||usr.counter)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.inso)
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
			if(usr.chakra <= 20)
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
			else
				if(usr.Katon2N >= 40)
					if(usr.dir==NORTHWEST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==SOUTHWEST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==NORTHEAST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==SOUTHEAST)
						usr<<"You can't face a diagnol and use this move"
						return
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.Katon2N += 1
					usr.chakra -= 100
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#f44a0c>a</FONT><FONT COLOR=#e84f18>t</FONT><FONT COLOR=#dc5424>o</FONT><FONT COLOR=#d05930>n</FONT><FONT COLOR=#c45e3c>:</FONT><FONT COLOR=#b86349> </FONT><FONT COLOR=#ac6855>H</FONT><FONT COLOR=#a06d61>o</FONT><FONT COLOR=#94726d>u</FONT><FONT COLOR=#887779>s</FONT><FONT COLOR=#7c7c85>e</FONT><FONT COLOR=#708090>n</FONT><FONT COLOR=#727685>k</FONT><FONT COLOR=#756c79>a</FONT><FONT COLOR=#77616d> </FONT><FONT COLOR=#795661>N</FONT><FONT COLOR=#7c4b55>o</FONT><FONT COLOR=#7e4149> </FONT><FONT COLOR=#80363c>J</FONT><FONT COLOR=#832b30>u</FONT><FONT COLOR=#852024>t</FONT><FONT COLOR=#871618>s</FONT><FONT COLOR=#8a0b0c>u</FONT><FONT COLOR=#8b0000>!</FONT>"
					var/obj/katonG/D = new /obj/katonG
					var/obj/katonG/S = new /obj/katonG
					var/obj/katonG/K = new /obj/katonG
					var/obj/katonG/L = new /obj/katonG
					usr.Chakragain()
					var/obj/katonG/N = new /obj/katonG
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Move_Delay=1.4
						K.Gowner=usr
						walk(K,usr.dir)
					sleep(6)
					if(D)
						D.loc = usr.loc
						if(usr.dir==NORTH)
							D.x-=1
						if(usr.dir==SOUTH)
							D.x+=1
						if(usr.dir==WEST)
							D.y+=1
						if(usr.dir==EAST)
							D.y-=1
						D.nin=usr.nin
						D.name="[usr]"
						D.Move_Delay=1.4
						D.Gowner=usr
						walk(D,usr.dir)
					sleep(6)
					if(L)
						L.loc = usr.loc
						if(usr.dir==NORTH)
							L.x+=1
						if(usr.dir==SOUTH)
							L.x-=1
						if(usr.dir==WEST)
							L.y-=1
						if(usr.dir==EAST)
							L.y+=1
						L.Move_Delay=1.4
						L.nin=usr.nin
						L.name="[usr]"
						L.Gowner=usr
						walk(L,usr.dir)
					sleep(13)
					if(S)
						S.loc = usr.loc
						if(usr.dir==NORTH)
							S.x+=1
						if(usr.dir==SOUTH)
							S.x-=1
						if(usr.dir==WEST)
							S.y-=1
						if(usr.dir==EAST)
							S.y+=1
						S.Move_Delay=1.4
						S.nin=usr.nin
						S.name="[usr]"
						S.Gowner=usr
						walk(S,usr.dir)
					sleep(5)
					if(N)
						N.loc = usr.loc
						if(usr.dir==NORTH)
							N.x-=1
						if(usr.dir==SOUTH)
							N.x+=1
						if(usr.dir==WEST)
							N.y+=1
						if(usr.dir==EAST)
							N.y-=1
						N.Move_Delay=1.4
						N.nin=usr.nin
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					del(L)
					del(N)
					usr.random = rand(1,6)
					if(random == 5||random==1)
						usr.ninup()
						usr.Skills()
						var/ccrandom=rand(1,15)
						if(ccrandom==4||ccrandom==10)
							var/ccgain=rand(1,3)
							usr.ChakraC+=ccgain
							if(usr.ChakraC>100)
								usr.ChakraC=100
							usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.dir==NORTHWEST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==SOUTHWEST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==NORTHEAST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==SOUTHEAST)
							usr<<"You can't face a diagnol and use this move"
							return
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.chakra -= 20
						usr.Katon2N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#f44a0c>a</FONT><FONT COLOR=#e84f18>t</FONT><FONT COLOR=#dc5424>o</FONT><FONT COLOR=#d05930>n</FONT><FONT COLOR=#c45e3c>:</FONT><FONT COLOR=#b86349> </FONT><FONT COLOR=#ac6855>H</FONT><FONT COLOR=#a06d61>o</FONT><FONT COLOR=#94726d>u</FONT><FONT COLOR=#887779>s</FONT><FONT COLOR=#7c7c85>e</FONT><FONT COLOR=#708090>n</FONT><FONT COLOR=#727685>k</FONT><FONT COLOR=#756c79>a</FONT><FONT COLOR=#77616d> </FONT><FONT COLOR=#795661>N</FONT><FONT COLOR=#7c4b55>o</FONT><FONT COLOR=#7e4149> </FONT><FONT COLOR=#80363c>J</FONT><FONT COLOR=#832b30>u</FONT><FONT COLOR=#852024>t</FONT><FONT COLOR=#871618>s</FONT><FONT COLOR=#8a0b0c>u</FONT><FONT COLOR=#8b0000>!</FONT>"
						var/obj/katonG/D = new /obj/katonG
						var/obj/katonG/S = new /obj/katonG
						var/obj/katonG/K = new /obj/katonG
						var/obj/katonG/L = new /obj/katonG
						usr.Chakragain()
						var/obj/katonG/N = new /obj/katonG
						if(K)
							K.loc = usr.loc
							K.nin=usr.nin
							K.name="[usr]"
							K.Move_Delay=1.4
							K.Gowner=usr
							walk(K,usr.dir)
						sleep(6)
						if(D)
							D.loc = usr.loc
							if(usr.dir==NORTH)
								D.x-=1
							if(usr.dir==SOUTH)
								D.x+=1
							if(usr.dir==WEST)
								D.y+=1
							if(usr.dir==EAST)
								D.y-=1
							D.nin=usr.nin
							D.name="[usr]"
							D.Move_Delay=1.4
							D.Gowner=usr
							walk(D,usr.dir)
						sleep(6)
						if(L)
							L.loc = usr.loc
							if(usr.dir==NORTH)
								L.x+=1
							if(usr.dir==SOUTH)
								L.x-=1
							if(usr.dir==WEST)
								L.y-=1
							if(usr.dir==EAST)
								L.y+=1
							L.Move_Delay=1.4
							L.nin=usr.nin
							L.name="[usr]"
							L.Gowner=usr
							walk(L,usr.dir)
						sleep(13)
						if(S)
							S.loc = usr.loc
							if(usr.dir==NORTH)
								S.x+=1
							if(usr.dir==SOUTH)
								S.x-=1
							if(usr.dir==WEST)
								S.y-=1
							if(usr.dir==EAST)
								S.y+=1
							S.Move_Delay=1.4
							S.nin=usr.nin
							S.name="[usr]"
							S.Gowner=usr
							walk(S,usr.dir)
						sleep(5)
						if(N)
							N.loc = usr.loc
							if(usr.dir==NORTH)
								N.x-=1
							if(usr.dir==SOUTH)
								N.x+=1
							if(usr.dir==WEST)
								N.y+=1
							if(usr.dir==EAST)
								N.y-=1
							N.Move_Delay=1.4
							N.nin=usr.nin
							N.name="[usr]"
							N.Gowner=usr
							walk(N,usr.dir)
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						del(L)
						del(N)
						usr.random = rand(1,5)
						if(random == 5||random==1)
							usr.ninup()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
					usr<<"You failed to use Katon Housenka"

mob/katon
	verb
		KatonKaryuuEndan(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Katon Karyuu Endan"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||usr.counter) // If the mob's firing var is one...
				return
			if(M.PK==0)
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 24)
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
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return

			else // If the firing var isn't 1...
				if(usr.Katon3N >= 100)
					usr.firing = 24 // Sets the firing var to 1, so he cant fire another beam
					usr.Katon3N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>K</FONT><FONT COLOR=#980000>a</FONT><FONT COLOR=#a50000>t</FONT><FONT COLOR=#b20000>o</FONT><FONT COLOR=#bf0000>n</FONT><FONT COLOR=#cc0000>:</FONT><FONT COLOR=#d90000> </FONT><FONT COLOR=#e60000>K</FONT><FONT COLOR=#f30000>a</FONT><FONT COLOR=#ff0000>r</FONT><FONT COLOR=#fc0206>y</FONT><FONT COLOR=#f9040c>u</FONT><FONT COLOR=#f50612>u</FONT><FONT COLOR=#f20818> </FONT><FONT COLOR=#ee0b1f>E</FONT><FONT COLOR=#ea0d25>n</FONT><FONT COLOR=#e70f2b>d</FONT><FONT COLOR=#e31131>a</FONT><FONT COLOR=#e01337>n</FONT><FONT COLOR=#dc143c>!</FONT>"
					var/obj/katonEndan/K = new /obj/katonEndan
					usr.target=M
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					K.Gowner=usr
					usr.Chakragain()
					K.Move_Delay=2
					walk_towards(K,M)
					sleep(1)
					usr.move = 1
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(K)
					if (target == null)
						del(K)
					usr.random = rand(1,6)
					if(random == 5||random==1)
						usr.ninexp += rand(1,10)
						usr.ninup()
						usr.Skills()
						var/ccrandom=rand(1,15)
						if(ccrandom==4||ccrandom==10)
							var/ccgain=rand(1,3)
							usr.ChakraC+=ccgain
							if(usr.ChakraC>100)
								usr.ChakraC=100
							usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.firing = 24 // Sets the firing var to 1, so he cant fire another beam
						usr.Katon3N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>K</FONT><FONT COLOR=#980000>a</FONT><FONT COLOR=#a50000>t</FONT><FONT COLOR=#b20000>o</FONT><FONT COLOR=#bf0000>n</FONT><FONT COLOR=#cc0000>:</FONT><FONT COLOR=#d90000> </FONT><FONT COLOR=#e60000>K</FONT><FONT COLOR=#f30000>a</FONT><FONT COLOR=#ff0000>r</FONT><FONT COLOR=#fc0206>y</FONT><FONT COLOR=#f9040c>u</FONT><FONT COLOR=#f50612>u</FONT><FONT COLOR=#f20818> </FONT><FONT COLOR=#ee0b1f>E</FONT><FONT COLOR=#ea0d25>n</FONT><FONT COLOR=#e70f2b>d</FONT><FONT COLOR=#e31131>a</FONT><FONT COLOR=#e01337>n</FONT><FONT COLOR=#dc143c>!</FONT>"
						var/obj/katonEndan/K = new /obj/katonEndan
						usr.target=M
						K.loc = usr.loc
						K.nin=usr.nin
						usr.Chakragain()
						K.name="[usr]"
						K.Move_Delay=2
						K.Gowner=usr
						walk_towards(K,M)
						sleep(1)
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(K)
						if (target == null)
							del(K)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.ninup()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
					else
						usr<<"You failed to use Katon Karyuu Endan"

mob/katon
	verb
		KatonRyuukanoJutsu() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Katon Ryuuka no Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 30)
				usr<<"You dont have enough chakra!"
				return
			if(usr.caught)
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
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return

			else // If the firing var isn't 1...
				if(usr.Katon4N >= 165)
					usr.chakra -= 30
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#dc143c>K</FONT><FONT COLOR=#d8163b>a</FONT><FONT COLOR=#d3183a>t</FONT><FONT COLOR=#ce1a38>o</FONT><FONT COLOR=#c91c36>n</FONT><FONT COLOR=#c41e34>:</FONT><FONT COLOR=#be2133> </FONT><FONT COLOR=#b92331>R</FONT><FONT COLOR=#b4252f>y</FONT><FONT COLOR=#af272d>u</FONT><FONT COLOR=#aa292c>u</FONT><FONT COLOR=#a52a2a>k</FONT><FONT COLOR=#a62a2a>a</FONT><FONT COLOR=#a82929> </FONT><FONT COLOR=#a92929>N</FONT><FONT COLOR=#aa2828>o</FONT><FONT COLOR=#ab2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#af2424>t</FONT><FONT COLOR=#b02424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
					usr.Katon4N += 1
					var/obj/KRyuuka/K = new /obj/KRyuuka
					K.loc = usr.loc
					K.nin=usr.nin
					K.Move_Delay=2
					usr.Chakragain()
					K.dir = usr.dir
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
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

					sleep(10)
					usr.firing = 0
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 30
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.Katon4N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#dc143c>K</FONT><FONT COLOR=#d8163b>a</FONT><FONT COLOR=#d3183a>t</FONT><FONT COLOR=#ce1a38>o</FONT><FONT COLOR=#c91c36>n</FONT><FONT COLOR=#c41e34>:</FONT><FONT COLOR=#be2133> </FONT><FONT COLOR=#b92331>R</FONT><FONT COLOR=#b4252f>y</FONT><FONT COLOR=#af272d>u</FONT><FONT COLOR=#aa292c>u</FONT><FONT COLOR=#a52a2a>k</FONT><FONT COLOR=#a62a2a>a</FONT><FONT COLOR=#a82929> </FONT><FONT COLOR=#a92929>N</FONT><FONT COLOR=#aa2828>o</FONT><FONT COLOR=#ab2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#af2424>t</FONT><FONT COLOR=#b02424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
						var/obj/KRyuuka/K = new /obj/KRyuuka
						K.loc = usr.loc
						K.nin=usr.nin
						usr.Chakragain()
						K.dir = usr.dir
						K.name="[usr]"
						K.Move_Delay=2
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
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

						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)
					else
						usr<<"You failed to use Katon Ryuuka no Jutsu."

mob/katon
	verb
		KatonGoukakyuu() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Katon Goukakyuu No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.caught)
				usr<<"Your captured"
				return
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
				if(usr.Katon1N >= 40)
					usr.chakra -= 15
					usr.Chakragain()
					usr.firing = 1
					var/obj/middle/K = new /obj/middle
					var/obj/middle/L = new /obj/middle
					var/obj/middle/M1 = new /obj/middle
					var/obj/middle/N = new /obj/middle
					var/obj/middle/O = new /obj/middle
					var/obj/topright/TR = new /obj/topright
					var/obj/bottomright/BR = new /obj/bottomright
					var/obj/topleft/TL = new /obj/topleft
					var/obj/bottomleft/BL = new /obj/bottomleft
					var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
					usr.Katon1N += 1
					usr.handseals=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ffffff>K</FONT><FONT COLOR=#f6ebeb>a</FONT><FONT COLOR=#edd5d5>t</FONT><FONT COLOR=#e3c0c0>o</FONT><FONT COLOR=#d9abab>n</FONT><FONT COLOR=#cf9595>:</FONT><FONT COLOR=#c68080> </FONT><FONT COLOR=#bc6b6b>G</FONT><FONT COLOR=#b25555>o</FONT><FONT COLOR=#a84040>u</FONT><FONT COLOR=#9f2b2b>k</FONT><FONT COLOR=#951515>a</FONT><FONT COLOR=#8b0000>k</FONT><FONT COLOR=#910205>y</FONT><FONT COLOR=#980309>u</FONT><FONT COLOR=#9e050e>u</FONT><FONT COLOR=#a40613> </FONT><FONT COLOR=#ab0817>N</FONT><FONT COLOR=#b10a1c>o</FONT><FONT COLOR=#b70b21> </FONT><FONT COLOR=#bd0d26>J</FONT><FONT COLOR=#c40f2a>u</FONT><FONT COLOR=#ca102f>t</FONT><FONT COLOR=#d01234>s</FONT><FONT COLOR=#d71338>u</FONT><FONT COLOR=#dc143c>!</FONT></FONT>"
					K.Gowner=usr
					K.nin=usr.nin
					usr.Frozen=1
					if(usr.dir==NORTH)
						if(K)
							K.loc = usr.loc
							K.y+=2
						if(L)
							L.loc = usr.loc
							L.y+=3
						if(M1)
							M1.loc = usr.loc
							M1.y+=4
						if(O)
							O.loc = usr.loc
							O.y+=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y+=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y+=4
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y+=4
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y+=2
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y+=2
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y+=1
					if(usr.dir==SOUTH)
						if(K)
							K.loc = usr.loc
							K.y-=2
						if(L)
							L.loc = usr.loc
							L.y-=3
						if(M1)
							M1.loc = usr.loc
							M1.y-=4
						if(O)
							O.loc = usr.loc
							O.y-=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y-=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y-=2
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y-=2
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y-=4
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y-=4
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y-=1
					if(usr.dir==WEST)
						if(K)
							K.loc = usr.loc
							K.x-=2
						if(L)
							L.loc = usr.loc
							L.x-=3
						if(M1)
							M1.loc = usr.loc
							M1.x-=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x-=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x-=3
						if(TR)
							TR.loc = usr.loc
							TR.x-=2
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x-=4
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x-=2
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x-=4
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x-=1
					if(usr.dir==EAST)
						if(K)
							K.loc = usr.loc
							K.x+=2
						if(L)
							L.loc = usr.loc
							L.x+=3
						if(M1)
							M1.loc = usr.loc
							M1.x+=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x+=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x+=3
						if(TR)
							TR.loc = usr.loc
							TR.x+=4
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x+=2
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x+=4
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x+=2
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x+=1
					for(var/mob/M in oview(4,usr))
						if(K)
							if(M.loc==K.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(T)
							if(M.loc==T.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(L)
							if(M.loc==L.loc)
								if(M.Kaiten||M.counter)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(M1)
							if(M.loc==M1.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(N)
							if(M.loc==N.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(O)
							if(M.loc==O.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(BL)
							if(M.loc==BL.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(BR)
							if(M.loc==BR.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(TR)
							if(M.loc==TR.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(TL)
							if(M.loc==TL.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*6
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,8)
						if(random == 5||random==1)
							usr.Mnin += rand(1,2)
							usr.nin = usr.Mnin
							usr.ninup()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						usr.random = rand(1,10)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(30)
					usr.firing = 0
					usr.Frozen=0
					sleep(45)
					del(K)
					del(T)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.firing = 1
						var/obj/GoukakyuuHead/K = new /obj/GoukakyuuHead
						var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
						usr.Katon1N += 1
						usr.Frozen=1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ffffff>K</FONT><FONT COLOR=#f6ebeb>a</FONT><FONT COLOR=#edd5d5>t</FONT><FONT COLOR=#e3c0c0>o</FONT><FONT COLOR=#d9abab>n</FONT><FONT COLOR=#cf9595>:</FONT><FONT COLOR=#c68080> </FONT><FONT COLOR=#bc6b6b>G</FONT><FONT COLOR=#b25555>o</FONT><FONT COLOR=#a84040>u</FONT><FONT COLOR=#9f2b2b>k</FONT><FONT COLOR=#951515>a</FONT><FONT COLOR=#8b0000>k</FONT><FONT COLOR=#910205>y</FONT><FONT COLOR=#980309>u</FONT><FONT COLOR=#9e050e>u</FONT><FONT COLOR=#a40613> </FONT><FONT COLOR=#ab0817>N</FONT><FONT COLOR=#b10a1c>o</FONT><FONT COLOR=#b70b21> </FONT><FONT COLOR=#bd0d26>J</FONT><FONT COLOR=#c40f2a>u</FONT><FONT COLOR=#ca102f>t</FONT><FONT COLOR=#d01234>s</FONT><FONT COLOR=#d71338>u</FONT><FONT COLOR=#dc143c>!</FONT></FONT>"
						K.Gowner=usr
						K.nin=usr.nin
						if(usr.dir==NORTH)
							if(K)
								K.loc = usr.loc
								K.y+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y+=1
						if(usr.dir==SOUTH)
							if(K)
								K.loc = usr.loc
								K.y-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y-=1
						if(usr.dir==WEST)
							if(K)
								K.loc = usr.loc
								K.x-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x-=1
						if(usr.dir==EAST)
							if(K)
								K.loc = usr.loc
								K.x+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x+=1
						for(var/mob/M in oview(4,usr))
							if(K)
								if(M.loc==K.loc)
									if(M.Kaiten||M.sphere)
										usr<<"Your attack doesn't harm [M]."
										M<<"You block [usr]'s Goukakyuu."
										return
									if(M.counter)
										usr<<"They copy and reflect it back at you."
										M<<"You copy and reflect it back at them."
										usr.health -= M.Mnin/5
										Death(usr)
										return
									var/damage=usr.nin*6
									view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
									M.health-=damage
									if(M.health<=0)
										M.Death(usr)
						for(var/mob/M in oview(4,usr))
							if(T)
								if(M.loc==T.loc)
									if(M.Kaiten||M.sphere)
										usr<<"Your attack doesn't harm [M]."
										M<<"You block [usr]'s Goukakyuu."
										return
									if(M.counter)
										usr<<"They copy and reflect it back at you."
										M<<"You copy and reflect it back at them."
										usr.health -= M.Mnin/5
										Death(usr)
										return
									var/damage=usr.nin*6
									view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
									M.health-=damage
									if(M.health<=0)
										M.Death(usr)
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
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
						sleep(10)
						usr.firing = 0
						usr.Frozen=0
						sleep(45)
						del(K)
						del(T)

obj
	katonG
		icon = 'katons.dmi'
		icon_state = ""
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
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Katon Housenka for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	katonEndan
		icon = 'realendan.dmi'
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
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Katon Karyuu Endan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/katon
	verb
		Karyuudan() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Karyuudan"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
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
			if(usr.chakra <= 25)
				usr<<"You dont have enough chakra!"
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
			if(!usr.handseals)
				return
			usr.chakra -= 15
			usr.firing = 1
			var/obj/KaryHead/K = new /obj/KaryHead
			var/obj/KaryTail/T = new /obj/KaryTail
			usr.Katon1N += 1
			usr.Frozen=1
			view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ffffff>Karyuudan!</FONT></FONT>"
			K.Gowner=usr
			K.nin=usr.nin
			if(usr.dir==NORTH)
				if(K)
					K.loc = usr.loc
					K.y+=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.y+=1
			if(usr.dir==SOUTH)
				if(K)
					K.loc = usr.loc
					K.y-=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.y-=1
			if(usr.dir==WEST)
				if(K)
					K.loc = usr.loc
					K.x-=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.x-=1
			if(usr.dir==EAST)
				if(K)
					K.loc = usr.loc
					K.x+=2
				if(T)
					T.dir = usr.dir
					T.loc = usr.loc
					T.x+=1
			for(var/mob/M in oview(4,usr))
				if(K)
					if(M.loc==K.loc)
						if(M.Kaiten||M.sphere)
							usr<<"Your attack doesn't harm [M]."
							M<<"You block [usr]'s Karyuudan."
							return
						if(M.counter)
							usr<<"They copy and reflect it back at you."
							M<<"You copy and reflect it back at them."
							usr.health -= M.Mnin/5
							Death(usr)
							return
						var/damage=usr.nin*10
						view()<<"[M] has taken [damage] Damage from [usr]'s Karyuudan"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
			for(var/mob/M in oview(4,usr))
				if(T)
					if(M.loc==T.loc)
						if(M.Kaiten||M.sphere)
							usr<<"Your attack doesn't harm [M]."
							M<<"You block [usr]'s Karyuudan."
							return
						if(M.counter)
							usr<<"They copy and reflect it back at you."
							M<<"You copy and reflect it back at them."
							usr.health -= M.Mnin/5
							Death(usr)
							return
						var/damage=usr.nin*10
						view()<<"[M] has taken [damage] Damage from [usr]'s Karyuudan"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
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
						else
							usr.ChakraC+=ccgain
							usr<<"[usr] you gained [ccgain] Chakra control..."
			else
				usr.random = rand(1,20)
				if(random == 5||random==1)
					var/ccrandom=rand(1,15)
					if(ccrandom==4||ccrandom==10)
						var/ccgain=rand(1,3)
						if(usr.ChakraC>=100)
							usr.ChakraC=100
						else
							usr.ChakraC+=ccgain
							usr<<"[usr] you gained [ccgain] Chakra control..."
			sleep(10)
			usr.firing = 0
			usr.Frozen=0
			sleep(45)
			del(K)
			del(T)
mob/katon
	verb
		Katonheki() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Katonheki"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
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
			if(usr.chakra <= 25)
				usr<<"You dont have enough chakra!"
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
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.chakra -= 39
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR= red>Katonheki!</FONT>"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					var/obj/katonheki/E = new /obj/katonheki/
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
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					var/obj/katonheki/E = new /obj/katonheki/
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
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					var/obj/katonheki/E = new /obj/katonheki/
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
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					var/obj/katonheki/E = new /obj/katonheki/
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
