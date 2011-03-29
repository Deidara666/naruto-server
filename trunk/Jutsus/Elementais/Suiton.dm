mob/suiton
	verb
		SuitonArmor()
			set category = "Jutsus"
			set name = "Suiton No Jutsu"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
				return
			if(!usr.Warmor)
				usr<<"Not now."
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
			if(!usr.Warmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Suiton No Jutsu!"
				usr.overlays += 'WaterStrom.dmi'
				usr.Warmor =1
				usr.nin = usr.nin*2
				fire
				if(usr.Warmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'WaterStrom.dmi'
						usr.Warmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Warmor)
				usr.overlays -= 'WaterStrom.dmi'
				usr.Warmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Suiton No Jutsu."

mob/Suiton
	verb
		SuitonDaibakufunoJutsu() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Suiton Daibakufu no Jutsu"
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
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 25
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>D</FONT><FONT COLOR=#d4eaf3>a</FONT><FONT COLOR=#dcedf3>i</FONT><FONT COLOR=#e5f0f4>b</FONT><FONT COLOR=#edf3f5>a</FONT><FONT COLOR=#f5f5f5>k</FONT><FONT COLOR=#e3f6f6>u</FONT><FONT COLOR=#d0f7f7>f</FONT><FONT COLOR=#bdf8f8>u</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
					var/obj/Jutsus/SuitonDaib/K = new /obj/Jutsus/SuitonDaib
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					K.Move_Delay=3
					K.Move_Delay=2
					usr.Chakragain()
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
							usr.ChakraC+=ccgain
							if(usr.ChakraC>100)
								usr.ChakraC=100
							usr<<"[usr] you gained [ccgain] Chakra control..."

					sleep(10)
					usr.firing = 0
					usr.Move_Delay = usr.Savedspeed
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 25
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.SN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>D</FONT><FONT COLOR=#d4eaf3>a</FONT><FONT COLOR=#dcedf3>i</FONT><FONT COLOR=#e5f0f4>b</FONT><FONT COLOR=#edf3f5>a</FONT><FONT COLOR=#f5f5f5>k</FONT><FONT COLOR=#e3f6f6>u</FONT><FONT COLOR=#d0f7f7>f</FONT><FONT COLOR=#bdf8f8>u</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
						var/obj/Jutsus/SuitonDaib/K = new /obj/Jutsus/SuitonDaib
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
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
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)
mob/Suiton
	verb
		SuitonSuiryuudannoJutsu(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Suiton Suiryuudan no Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
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
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			else // If the firing var isn't 1...
				if(usr.SS >= 52)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.SS += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>Su</FONT><FONT COLOR=#d4eaf3>i</FONT><FONT COLOR=#dcedf3>r</FONT><FONT COLOR=#e5f0f4>y</FONT><FONT COLOR=#edf3f5>u</FONT><FONT COLOR=#f5f5f5>u</FONT><FONT COLOR=#e3f6f6>d</FONT><FONT COLOR=#d0f7f7>a</FONT><FONT COLOR=#bdf8f8>n</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
					var/obj/Jutsus/Suiryedan/K = new /obj/Jutsus/Suiryedan
					usr.target=M
					usr.Chakragain()
					K.loc = usr.loc
					K.nin=usr.nin
					K.Move_Delay=2
					K.name="[usr]"
					K.Gowner=usr
					walk_towards(K,M)
					sleep(1)
					usr.move = 1
					sleep(8)
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
						usr.SS += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>Su</FONT><FONT COLOR=#d4eaf3>i</FONT><FONT COLOR=#dcedf3>r</FONT><FONT COLOR=#e5f0f4>y</FONT><FONT COLOR=#edf3f5>u</FONT><FONT COLOR=#f5f5f5>u</FONT><FONT COLOR=#e3f6f6>d</FONT><FONT COLOR=#d0f7f7>a</FONT><FONT COLOR=#bdf8f8>n</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
						var/obj/Jutsus/Suiryedan/K = new /obj/Jutsus/Suiryedan
						usr.target=M
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Gowner=usr
						K.Move_Delay=2
						walk_towards(K,M)
						usr.Chakragain()
						sleep(1)
						usr.move = 1
						sleep(8)
						usr.firing = 0
						sleep(21)
						del(K)
						if (target == null)
							del(K)
						usr.random = rand(1,6)
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

mob/Suiton
	verb
		SuitonSuikoudannoJutsu(mob/m in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Suiton Suikoudan no Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(m.PK==0)
				usr<<"NON PK ZONE!"
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
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			if(m.counter)
				usr<<"They copy and reflect it back at you."
				m<<"You copy and reflect it back at them."
				usr.health -= m.Mnin/5
				Death(usr)
				return
			else // If the firing var isn't 1...
				if(usr.SS3 >= 52)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.SS3 += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>Su</FONT><FONT COLOR=#d4eaf3>i</FONT><FONT COLOR=#dcedf3>r</FONT><FONT COLOR=#e5f0f4>y</FONT><FONT COLOR=#edf3f5>u</FONT><FONT COLOR=#f5f5f5>u</FONT><FONT COLOR=#e3f6f6>d</FONT><FONT COLOR=#d0f7f7>a</FONT><FONT COLOR=#bdf8f8>n</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
					var/obj/Jutsus/SuitonSuikoudan/K = new /obj/Jutsus/SuitonSuikoudan
					usr.target=m
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=2
					K.Gowner=usr
					walk_towards(K,m)
					sleep(8)
					usr.firing = 0
					sleep(21)
					del(K)
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
						usr.SS3 += 1
						view()<<view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: SUIKOUDAN"
						var/obj/Jutsus/SuitonSuikoudan/K = new /obj/Jutsus/SuitonSuikoudan
						usr.target=m
						K.loc = usr.loc
						K.nin=usr.nin
						K.Move_Delay=2
						K.name="[usr]"
						usr.Chakragain()
						K.Gowner=usr
						walk_towards(K,m)
						sleep(8)
						usr.firing = 0
						sleep(21)
						del(K)
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

mob/suiton
	verb
		SuirouNoJutsu(mob/M in oview(1)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Suirou no Jutsu"
			if(usr.firing)
				return
			if(M.PK==0)
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M)
				if(M.froze)
					usr << "Their already froze.."
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
				M<<"Your frozen by [usr]'s Suirou."
				usr<<"You froze [M] with your Suirou"
				var/Sleeptime = round(usr.gen/10)
				if(Sleeptime <= 1)
					Sleeptime = 55
					M.overlays += 'Wprison.dmi'
					M.Frozen = 1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Suirou freeze."
						M.overlays -= 'Wprison.dmi'
						usr<<"[M] is free from your Suirou!"
						M.froze = 0
					sleep(8)
				else
					M.overlays += 'Wprison.dmi'
					M.Frozen=1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Suirou freeze."
						M.overlays -= 'Wprison.dmi'
						usr<<"[M] is free from your Suirou!"
						M.froze = 0
					sleep(8)
				sleep(100)
				if(M)
					M.froze=0

mob/suiton
	verb
		SuitonSuishouha() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Suiton Suishouha"
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
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 25
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suiton Suishouha!</FONT>"
					var/obj/Jutsus/Suishouha/K = new /obj/Jutsus/Suishouha
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					K.Move_Delay=3
					K.Move_Delay=2
					usr.Chakragain()
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
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(10)
					usr.firing = 0
					usr.Move_Delay = usr.Savedspeed
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 25
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.SN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suiton Suishouha!</FONT>"
						var/obj/Jutsus/Suishouha/K = new /obj/Jutsus/Suishouha
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
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
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)

mob/suiton
	verb
		Suishouha() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Suishouha"
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
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 25
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suishouha!</FONT>"
					var/obj/Jutsus/SSuishouha/K = new /obj/Jutsus/SSuishouha
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					K.Move_Delay=3
					K.Move_Delay=2
					usr.Chakragain()
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
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(10)
					usr.firing = 0
					usr.Move_Delay = usr.Savedspeed
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 25
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.SN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suishouha!</FONT>"
						var/obj/Jutsus/SSuishouha/K = new /obj/Jutsus/SSuishouha
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
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
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)
mob/suiton
	verb
		SuitonSousou()
			set category = "Jutsus"
			set name = "Suiton Sousou"
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
					view(usr)<<"Suiton Sousou!"
					flick("sousou",M)
					M.overlays-='WaterStrom.dmi'
					M.overlays-='WaterStrom.dmi'
					usr.Chakragain()
					M.overlays-='WaterStrom.dmi'
					M.health-=damage
					M.captured=0
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
						return
				else
					return
mob/suiton
	verb
		SuitonKyuu(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Suiton Kyuu"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Suiton Kyuu!"
					M.overlays+='WaterStrom.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Suiton Kyuu!"
						M.overlays+='WaterStrom.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Suiton Kyuu!"
						M.overlays+='WaterStrom.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Suiton Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Bee Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Bee Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0

mob/suiton
	verb
		RainArmor()
			set category = "Jutsus"
			set name = "Rain Armor"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
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
			if(!usr.Rainarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Rain Armor!"
				usr.overlays += 'Rainarmor.dmi'
				usr.Rainarmor =1
				usr.nin = usr.nin*2
				sand
				if(usr.Rainarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Rainarmor.dmi'
						usr.Rainarmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else
				usr.overlays -= 'Rainarmor.dmi'
				usr.Sarmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the rain armor."

mob/suiton
	verb
		SuitonDoryuudan() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Suiton Doryuudan"
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
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says:<font color=blue>Suiton Doryuudan!"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					var/obj/doryuudan/E = new /obj/doryuudan/
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					var/obj/doryuudan/E = new /obj/doryuudan/
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					var/obj/doryuudan/E = new /obj/doryuudan/
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					var/obj/doryuudan/E = new /obj/doryuudan/
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
