mob/rai
	verb
		Raikyuu() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Raikyuu No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(!usr.handseals)
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
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(usr.Rai1N >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Rai1N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Raikyuu!"
					var/obj/Raikyuu/K = new /obj/Raikyuu
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.Move_Delay=2
					K.name="[usr]"
					K.Gowner=usr
					usr.Chakragain()
					walk(K,usr.dir)
					if (target == null)
						del(K)
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
						usr.random = rand(1,20)
						if(random == 5||random==1)
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
						usr.chakra -= 15
						usr.Rai1N += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Raikyuu!"
						var/obj/Raikyuu/K = new /obj/Raikyuu
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
						K.Move_Delay=2
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
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
							usr.random = rand(1,20)
							if(random == 5||random==1)
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
mob/rai
	verb
		Ikazuchi_No_Kiba() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Izazuchi No Kiba"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
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
			else // If the firing var isn't 1...
				if(usr.Rai3N >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Rai3N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Ikazuchi No Kiba!"
					var/obj/Ikazuchi/K = new /obj/Ikazuchi
					K.loc = usr.loc
					usr.Chakragain()
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
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
						usr.random = rand(1,20)
						if(random == 5||random==1)
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
						usr.chakra -= 15
						usr.Rai3N += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Ikazuchi No Kiba!"
						var/obj/Ikazuchi/K = new /obj/Ikazuchi
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						usr.Chakragain()
						K.name="[usr]"
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
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
							usr.random = rand(1,20)
							if(random == 5||random==1)
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
mob/rai
	verb
		RairyuuNoTatsumaki(mob/m in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Rairyuu No Tatsumaki"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
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
			if(m.counter)
				usr<<"They copy and reflect it back at you."
				m<<"You copy and reflect it back at them."
				usr.health -= m.Mnin/5
				Death(usr)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(m.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)

				return
			else // If the firing var isn't 1...
				if(usr.Rai2N >= 52)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Rai2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Rairyuu No Tatsumaki!"
					var/obj/RairyuuTatsumaki/R = new /obj/RairyuuTatsumaki
					usr.target=m
					R.loc = usr.loc
					R.nin=usr.nin
					R.name="[usr]"
					usr.Chakragain()
					R.Gowner=usr
					walk_towards(R,m)
					sleep(1)
					usr.move = 1
					sleep(8)
					usr.firing = 0
					sleep(21)
					del(R)
					if (target == null)
						del(R)
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
						usr.chakra -= 15
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.Rai2N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Rairyuu No Tatsumaki!"
						var/obj/RairyuuTatsumaki/R = new /obj/RairyuuTatsumaki
						usr.target=m
						R.loc = usr.loc
						R.nin=usr.nin
						R.name="[usr]"
						usr.Chakragain()
						R.Gowner=usr
						walk_towards(R,m)
						sleep(1)
						usr.move = 1
						sleep(8)
						usr.firing = 0
						sleep(21)
						del(R)
						if (target == null)
							del(R)
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

mob/rai
	verb
		RaiArmor()
			set category = "Jutsus"
			set name = "Rai No Jutsu"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
				usr<<"Not now."
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
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.Larmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Rai No Jutsu!"
				usr.overlays += 'Larmor.dmi'
				usr.Larmor =1
				usr.nin = usr.nin*2
				fire
				if(usr.Larmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Larmor.dmi'
						usr.Larmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Larmor)
				usr.overlays -= 'Larmor.dmi'
				usr.Larmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Rai No Jutsu."

mob/jutsu
	verb
		Chidori()
			set category = "Jutsus"
			set name = "Chidori"
			usr.Handseals()
			if (usr.ingat)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
			if (usr.sphere)
				return
			if(usr.inso)
				return
			if (usr.firing)
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
			if(Chidorion)
				usr <<"Your already using Chidori!"
				return
			if(!usr.handseals)

				return
			else
				var/damage = input("How much chakra would you like to put in?")as num
				if(usr.ChidoriU >= 30)
					if(damage <= 4999)
						usr<<"You must put at least 5000 chakra into it!!"
						return
					if(damage >= usr.chakra)
						usr<<"You put to much energy into the Chidori and lose control of it!"
						return
					else
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#4682b4>C</FONT><FONT COLOR=#6f97b8>h</FONT><FONT COLOR=#98acbd>i</FONT><FONT COLOR=#c0c0c0>d</FONT><FONT COLOR=#a1abc9>o</FONT><FONT COLOR=#8195d1>r</FONT><FONT COLOR=#617fda>i</FONT><FONT COLOR=#4169e1>!</FONT>"
						usr.ChidoriU += 1
						usr.chakra -= damage
						usr.ChidoriD = damage*1.4
						usr.Chakragain()
						usr.Chidorion = 1
						usr.firing = 1
						usr.overlays += 'Chidori.dmi'
						usr.icon_state = "run"
						RD
							if(!usr.battlingRC)
								ChidoriD -= rand(1000,2000)
							if(usr.ChidoriD <= 1)
								usr << "Your Chidori runs out of energy"
								usr.ChidoriD = 0
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.Chidorion = 0
								usr.firing = 0
								return
							else
								sleep(6)
								goto RD
				else
					usr.random = rand (1,3)
					if(usr.random == 1||usr.random == 2)
						if(damage <= 4999)
							usr<<"You must put at least 5000 chakra into it!!"
							return
						if(damage >= usr.chakra)
							usr<<"You put to much energy into the chidori and lose control of it!"
							return
						else
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#4682b4>C</FONT><FONT COLOR=#6f97b8>h</FONT><FONT COLOR=#98acbd>i</FONT><FONT COLOR=#c0c0c0>d</FONT><FONT COLOR=#a1abc9>o</FONT><FONT COLOR=#8195d1>r</FONT><FONT COLOR=#617fda>i</FONT><FONT COLOR=#4169e1>!</FONT>"
							usr.Chidorion = 1
							usr.ChidoriU += 1
							usr.chakra -= damage
							usr.Chakragain()
							usr.ChidoriD = damage*1.5
							usr.firing = 1
							usr.overlays += 'Chidori.dmi'
							usr.icon_state = "run"
							RD
								if(!usr.battlingRC)
									ChidoriD -= rand(1000,2000)
								if(usr.ChidoriD <= 1&&!usr.battlingRC)
									usr << "Your Chidori runs out of energy"
									usr.ChidoriD = 0
									usr.Chidorion = 0
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.firing = 0
									return
								else
									sleep(6)
									goto RD
					else
						usr<<"You fail to use Chidori!"
						usr.chakra -= damage
						return
