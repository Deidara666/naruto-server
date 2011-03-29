//---  Hyouton (Gelo) - Água + Vento  ---

mob/ice
	verb
		IceArmor()
			set category = "Jutsus"
			set name = "Makyou Armor"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
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
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.Iarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Makyou Armor!"
				usr.overlays += 'Iarmor.dmi'
				usr.Iarmor =1
				usr.nin = usr.nin*2
				fire
				if(usr.Iarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Iarmor.dmi'
						usr.Iarmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Iarmor)
				usr.overlays -= 'Iarmor.dmi'
				usr.Iarmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Makyou Armor."

mob/Juvenile_Ice
	verb
		FutagozaNoJutsu() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Futagoza No Jutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			if(usr.chakra <= 1000)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 1000
					usr.firing = 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>F</FONT><FONT COLOR=#0040ff>u</FONT><FONT COLOR=#0080ff>t</FONT><FONT COLOR=#00c0ff>a</FONT><FONT COLOR=#00ffff>g</FONT><FONT COLOR=#00c0ff>o</FONT><FONT COLOR=#0080ff>z</FONT><FONT COLOR=#0040ff>a</FONT><FONT COLOR=#0000ff> </FONT><FONT COLOR=#0033ff>N</FONT><FONT COLOR=#0066ff>o</FONT><FONT COLOR=#009aff> </FONT><FONT COLOR=#00cdff>J</FONT><FONT COLOR=#00ffff>u</FONT><FONT COLOR=#00c0ff>t</FONT><FONT COLOR=#0080ff>s</FONT><FONT COLOR=#0040ff>u</FONT><FONT COLOR=#0000ff>!</FONT></FONT>"
					var/obj/Jutsus/FutagozaNoJutsu/K = new()
					var/obj/Jutsus/Ice1/A = new()
					var/obj/Jutsus/Ice2/B = new()
					A.dir=usr.dir
					B.dir=usr.dir
					usr.Chakragain()
					if(A.dir==NORTH)
						A.pixel_y=-32
					if(A.dir==SOUTH)
						A.pixel_y=32
					if(A.dir==WEST)
						A.pixel_x=32
					if(A.dir==EAST)
						A.pixel_x=-32
					if(B.dir==NORTH)
						B.pixel_y=-64
					if(B.dir==SOUTH)
						B.pixel_y=64
					if(B.dir==WEST)
						B.pixel_x=64
					if(B.dir==EAST)
						B.pixel_x=-64
					K.loc = usr.loc
					K.nin=usr.nin
					K.overlays+=A
					K.overlays+=B
					K.dir = usr.dir
					K.name="[usr]"
					K.Move_Delay=1.9
					K.Gowner=usr
					walk(K,usr.dir)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(5,10)
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
						usr.random = rand(1,15)
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
						usr.chakra -= 100
						usr.firing = 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>F</FONT><FONT COLOR=#0040ff>u</FONT><FONT COLOR=#0080ff>t</FONT><FONT COLOR=#00c0ff>a</FONT><FONT COLOR=#00ffff>g</FONT><FONT COLOR=#00c0ff>o</FONT><FONT COLOR=#0080ff>z</FONT><FONT COLOR=#0040ff>a</FONT><FONT COLOR=#0000ff> </FONT><FONT COLOR=#0033ff>N</FONT><FONT COLOR=#0066ff>o</FONT><FONT COLOR=#009aff> </FONT><FONT COLOR=#00cdff>J</FONT><FONT COLOR=#00ffff>u</FONT><FONT COLOR=#00c0ff>t</FONT><FONT COLOR=#0080ff>s</FONT><FONT COLOR=#0040ff>u</FONT><FONT COLOR=#0000ff>!</FONT></FONT>"
						var/obj/Jutsus/FutagozaNoJutsu/K = new()
						var/obj/Jutsus/Ice1/A = new()
						var/obj/Jutsus/Ice2/B = new()
						usr.Chakragain()
						A.dir=usr.dir
						B.dir=usr.dir
						if(A.dir==NORTH)
							A.pixel_y=-32
						if(A.dir==SOUTH)
							A.pixel_y=32
						if(A.dir==WEST)
							A.pixel_x=32
						if(A.dir==EAST)
							A.pixel_x=-32
						if(B.dir==NORTH)
							B.pixel_y=-64
						if(B.dir==SOUTH)
							B.pixel_y=64
						if(B.dir==WEST)
							B.pixel_x=64
						if(B.dir==EAST)
							B.pixel_x=-64
						K.loc = usr.loc
						K.nin=usr.nin
						K.overlays+=A
						K.overlays+=B
						K.dir = usr.dir
						K.name="[usr]"
						K.Move_Delay=1.9
						K.Gowner=usr
						walk(K,usr.dir)
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
						sleep(20)
						usr.firing = 0
						sleep(45)
						del(K)

