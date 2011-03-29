mob/uchiha
	verb
		Tsukiyomi(mob/M in oview(1)) // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Tsukiyomi"
			if(usr.firing)
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(M.froze)
				return
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				usr.overlays+='Tsukiyomi.dmi'
				sleep(8)
				usr.overlays-='Tsukiyomi.dmi'
				usr.overlays+='tsukiyomistill.dmi'
				usr.overlays += 'sharingan.dmi'
				usr.froze=1
				M<<"Your frozen by [usr]'s Tsukiyomi."
				usr<<"You froze [M] with your Tsukiyomi"
				var/Sleeptime = round(usr.gen -M.gen/2)
				if(Sleeptime <= 1)
					Sleeptime = 1
					M.Frozen=1
					M.firing=1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						usr.overlays-='tsukiyomistill.dmi'
						usr.overlays -= 'sharingan.dmi'
						M.move=1
						M<<"You break out of [usr]'s Tsukiyomi."
						usr<<"[M] is free from your Tsukiyomi!"
						M.froze = 0
						M.Frozen=0
						M.firing=0
						sleep(20)
						var/damage = round(usr.gen*3)
						M.health -= damage
						view(usr)<<"[M] has recieved [damage] damage from Tsukiyomi"
						M.firing=0
						if(M.health <=0)
							M.Death(usr)
				else
					M.Frozen=1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						M<<"You break out of [usr]'s Tsukiyomi."
						usr<<"[M] is free from your Tsukiyomi!"
						usr.overlays-='tsukiyomistill.dmi'
						usr.overlays -= 'sharingan.dmi'
						M.froze = 0
						M.Frozen=0
						sleep(20)
						var/damage = round(usr.gen*3)
						M.health -= damage
						view(usr)<<"[M] recebeu [damage] de dano do Tsukiyomi"
						if(M.health <=0)
							M.Death(usr)
						usr.froze = 0
				sleep(100)
				usr.froze=0


mob/uchiha
	verb
		Sharinganilluminate() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Illuminate"
			if(usr.illuminating)
				return
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			usr.illuminating=1
			for(var/mob/npcs/Bunshin/B in world)
				if(usr.Mnin <= 25&&usr.Mgen <= 15&&usr.Mtai <= 20)
					usr << "Desculpa, não é forte o suficiente ..."
					return
				else
					var/image/I = image('Bun.dmi',B,"googa")
					src << I
					usr.illu = 1
			for(var/mob/npcs/KBunshin/K in world)
				if(usr.Mnin <= 100&&usr.Mgen <= 111&&usr.Mtai <= 100)
					usr << "não......"
					return
				else
					var/image/I = image('Bun.dmi',K,"googa")
					src << I
					usr.illu = 1
			for(var/mob/M in oview(10))
				M.invisibility = 0
				M.overlays += 'Bun.dmi'
				sleep(30)
				M.overlays -= 'Bun.dmi'
				if(M.kawa)
					M.overlays += 'Bun.dmi'
					sleep(30)
					M.overlays -= 'Bun.dmi'
			sleep(30)
			usr.illuminating=0

mob/proc/stoptsuki()
	hurt
		if(usr.froze)
			usr<<"Você está freezado"
			return
		if(usr.resting)
			usr<<"Not while resting"
			return
		if(usr.meditating)
			usr<<"Não enquanto medita"
			return
		if(usr.Frozen)
			usr<<"Você está freezado"
			return
		if(usr.caught)
			usr<<"Você foi capturado"
			return
		if(usr.captured)
			usr<<"Você foi capturado"
			return
		if(src.stop == 0)
			src.health -= times
			src<<"[dude] tsukiyomi does [times] damage."
			dude<<"tsukiyomi does [times]."
			usr.overlays-='tsukiyomistill.dmi'
			usr.overlays -= 'sharingan.dmi'
			sleep(20)
			goto hurt
		else
			return


mob/uchiha
	verb
		Sharinganfreeze(mob/M in oview(1)) // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Sharingan Freeze"
			if(usr.firing)
				return
			if(M.PK==0)
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M)
				if(M.froze)
					usr << "Their already froze.."
					return
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the firing var isn't 1...
				M<<"Você foi freezado pelo [usr]'s Sharingan."
				usr<<"Você freezo [M] com seu Sharingan"
				var/Sleeptime = round(usr.gen/10)
				if(Sleeptime <= 1)
					Sleeptime = 55
					M.Frozen = 1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						M.Frozen=0
						M<<"Você saiu do [usr]'s Sharingan freeze."
						usr<<"[M] está livre do seu Sharingan!"
						M.froze = 0
					sleep(8)
				else
					M.Frozen=1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						M.Frozen=0
						M<<"Você saiu do [usr]'s Sharingan freeze."
						usr<<"[M] está livre do seu Sharingan!"
						M.froze = 0
					sleep(8)
				sleep(100)
				if(M)
					M.froze=0


mob/uchiha
	verb
		Sharingan() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Sharingan"
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(!usr.shari&&usr.sharingan1&&!usr.ST) // If the mob's firing var is one...
				usr.overlays+='sharinganthing.dmi'
				usr.icon_state="1"
				usr.overlays += 'sharingan.dmi'
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s suas pupilas dilatam para dar forma ao 1° stagio do Sharingan"
				usr.shari=1
				usr.ST=1
				usr.Suses += 1
				usr.verbs += /mob/uchiha/verb/Sharinganilluminate
				usr.see_invisible = 1
				sleep(15)
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				if(usr.Mnin>=500&&usr.Suses>=50)
					usr.sharingan2=1
					usr.sharingan1=0
				return
			if(!usr.shari&&usr.sharingan2&&!usr.ST) // If the firing var isn't 1...
				usr.overlays+='sharinganthing.dmi'
				usr.overlays += 'sharingan.dmi'
				usr.icon_state="2"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s suas pupilas dilatam para dar forma ao 2° stagio do Sharingan"
				usr.shari=1
				usr.ST=1
				usr.Suses += 1
				usr.verbs += /mob/uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/uchiha/verb/Sharinganfreeze
				usr.see_invisible = 1
				sleep(15)
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				if(usr.Mnin>=700&&usr.Mgen>=400&&usr.Suses>=70)
					usr.sharingan3=1
					usr.sharingan2=0
				return
			if(!usr.shari&&usr.sharingan3&&!usr.ST) // If the firing var isn't 1...
				usr.overlays+='sharinganthing.dmi'
				usr.overlays += 'sharingan.dmi'
				usr.icon_state="3"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s suas pupilas dilatam para dar forma ao 3° stagio do Sharingan"
				usr.Suses += 1
				usr.shari=1
				usr.ST=1
				usr.Move_Delay=0
				usr.nin=usr.nin*1.2
				usr.verbs += /mob/uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/uchiha/verb/Sharinganfreeze
				usr.verbs += /mob/uchi/verb/Counter
				usr.see_invisible = 1
				sleep(15)
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				if(usr.Mnin>=1000&&usr.Mgen>=700&&usr.Suses>=100&&usr.kills>=150)
					usr.sharingan3=0
					usr.mangekyou=1
				return
			if(!usr.shari&&usr.mangekyou&&!usr.ST&&usr.goingmange)
				usr.overlays+='sharinganthing.dmi'
				usr.overlays += 'sharingan.dmi'
				usr.icon_state="mangekyou"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#696969>M</FONT><FONT COLOR=#766065>a</FONT><FONT COLOR=#835760>n</FONT><FONT COLOR=#904d5b>g</FONT><FONT COLOR=#9d4456>e</FONT><FONT COLOR=#a93a50>k</FONT><FONT COLOR=#b6314b>y</FONT><FONT COLOR=#c32746>o</FONT><FONT COLOR=#d01e41>u</FONT><FONT COLOR=#dc143c> </FONT><FONT COLOR=#d41337>S</FONT><FONT COLOR=#ca1131>h</FONT><FONT COLOR=#c10f2b>a</FONT><FONT COLOR=#b80d25>r</FONT><FONT COLOR=#af0b1f>i</FONT><FONT COLOR=#a50818>n</FONT><FONT COLOR=#9c0612>g</FONT><FONT COLOR=#93040c>a</FONT><FONT COLOR=#890206>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s suas pupilas dilatam para dar forma ao Legendary Mangekyou Sharingan"
				usr.Suses += 1
				usr.shari=1
				usr.gen=usr.gen*1.2
				usr.ST=1
				usr.sharingan3=1
				usr.verbs += /mob/uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/uchiha/verb/Sharinganfreeze
				usr.verbs += /mob/uchi/verb/Counter
				usr.verbs += /mob/uchiha/verb/Amateratsu
				usr.verbs += /mob/uchiha/verb/Tsukiyomi
				usr.see_invisible = 1
				sleep(15)
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				return
			else if(usr.shari)
				usr<<"You release your Sharingan."
				usr.overlays -= 'sharingan.dmi'
				usr.overlays -= 'sharingan.dmi'
				usr.overlays -= 'sharingan.dmi'
				usr.overlays -= 'sharingan.dmi'
				usr.see_invisible = 0
				usr.nin=usr.Mnin
				usr.gen=usr.Mgen
				usr.goingmange=0
				usr.verbs -= /mob/uchiha/verb/Sharinganilluminate
				usr.verbs -= /mob/uchiha/verb/Sharinganfreeze
				usr.verbs -= /mob/uchiha/verb/Amateratsu
				usr.verbs -= /mob/uchiha/verb/Tsukiyomi
				usr.shari = 0
				sleep(50)
				usr.ST=0
				return



mob/uchiha
	verb
		MangekyouPrep()
			set category="Doujutsu"
			set name = "Use Mangekyou"
			if(usr.firing)
				return
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Não enquanto descansa"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			usr.goingmange=1
			usr.sharingan3=0
			if(usr.Suses<=100)
				usr.Suses=101
			usr<<"Now use Sharingan"
			sleep(100)
			usr.goingmange=0
			usr.sharingan3=1

mob/uchiha
	verb
		Amateratsu() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Amaterasu"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				usr << "You must wait before using this."
				return
			if(usr.chakra <= 1500&&usr.health >= 20000)
				usr<<"You dont have enough power!"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(!usr.handseals)
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
			else // If the firing var isn't 1...
				if(usr.AmaN >= 1000)
					usr.chakra -= 10000
					usr.health -= 21456
					if(usr.health<=0)
						usr.Death(usr)
					if(usr.chakra<=0)
						usr.chakra = 0
					AmaN += 1
					usr.firing = 1
					var/obj/Jutsus/AMA/K = new /obj/Jutsus/AMA
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					usr.Chakragain()
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					sleep(600)
					usr.firing = 0
					usr.Move_Delay = usr.Savedspeed
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
						usr.chakra -= 10000
						usr.health -= 25199
						if(usr.health<=0)
							usr.Death(usr)
						if(usr.chakra<=0)
							usr.chakra=0
						AmaN += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						var/obj/Jutsus/AMA/K = new /obj/Jutsus/AMA
						K.loc = usr.loc
						usr.Chakragain()
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						walk(K,usr.dir)
						sleep(600)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
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
						usr<<"You failed to use Amaterasu."

mob/uchi
	verb
		Counter() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Sharingan Counter"
			if(usr.firing)
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.counter==0)
				usr.counter=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Counter!!"
				usr.overlays += 'counter.dmi'
				sleep(30)
				usr.counter=0
				usr.overlays -= 'counter.dmi'
			else
				usr<<"Counter is already active."
