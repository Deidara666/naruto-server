mob/gaara
	verb
		SabakuSousou()
			set category = "Jutsus"
			set name = "Sabaku Sousou"
			usr.Handseals()
			if(!usr.handseals)
				return
			for(var/mob/M in oview(10,usr))
				if(usr.sphere)
					return
				if(src.Kaiten)
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
					view(usr)<<"Sabaku Sousou!"
					flick("sousou",M)
					M.overlays-='kyuu.dmi'
					M.overlays-='kyuu.dmi'
					usr.Chakragain()
					M.overlays-='kyuu.dmi'
					M.health-=damage
					M.captured=0
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
				else
					return
mob/gaara
	verb
		SabakuKyuu(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Sabaku Kyuu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.firing)
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
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
			if(usr.froze)
				usr<<"Your frozen"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Sabaku Kyuu!"
					M.overlays+='kyuu.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='kyuu.dmi'
						M.overlays-='kyuu.dmi'
						M.overlays-='kyuu.dmi'
						M.overlays-='kyuu.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Sabaku Kyuu!"
						M.overlays+='kyuu.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Sabaku Kyuu!"
						M.overlays+='kyuu.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Sabaku Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Sabaku Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Sabaku Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0

mob/gaara
	verb
		SunaShuriken()
			set category = "Jutsus"
			set name = "Suna Shuriken"
			usr.Handseals()
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
			if(usr.firing||usr.Kaiten||usr.sphere)
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(usr.SSU >= 25)
					usr.chakra -= 15
					usr.firing = 1
					usr.SSU += 1
					view()<<"[usr] Suna Shuriken!!!"
					var/obj/Sshuriken/K = new /obj/Sshuriken
					K.loc = usr.loc
					K.nin=usr.nin
					usr.Chakragain()
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
						usr.firing = 1
						usr.SSU += 1
						view()<<"[usr] Suna Shuriken!!!"
						var/obj/Sshuriken/K = new /obj/Sshuriken
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
mob/gaara
	verb
		SunaShushinNoJutsu(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Suna Shushin No Jutsu"
			if(usr.firing||usr.Kaiten == 1||usr.sphere == 1)
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
			if(usr.chakra <= 17)
				usr<<"Not enough Chakra!"
			else
				usr.overlays += 'Sshushin.dmi'
				usr.chakra -= 17
				usr.loc = locate(M.x,M.y-1,M.z)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Suna Shushin No Jutsu!!"
				sleep(8)
				usr.overlays -= 'Sshushin.dmi'
				usr.overlays -= 'Sshushin.dmi'
				usr.overlays -= 'Sshushin.dmi'
				usr.overlays -= 'Sshushin.dmi'
mob/gaara
	verb
		SandSphere()
			set category = "Jutsus"
			set name = "Sand Sphere"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing&&!usr.sphere)
				usr<<"Not now."
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.sphere&&!usr.firing)
				view()<<"<font color = blue>[usr]: Sand Sphere!"
				usr.Frozen=1
				usr.firing = 1
				usr.overlays += 'testing.dmi'
				sleep(2)
				usr.overlays -= 'testing.dmi'
				usr.overlays += 'testing2.dmi'
				sleep(2)
				usr.overlays -= 'testing2.dmi'
				usr.overlays += 'testing3.dmi'
				sleep(2)
				usr.overlays -= 'testing3.dmi'
				usr.overlays += 'testing4.dmi'
				sleep(2)
				usr.overlays -= 'testing4.dmi'
				usr.overlays += 'testing5.dmi'
				sleep(2)
				usr.overlays -= 'testing5.dmi'
				usr.overlays += 'testing6.dmi'
				sleep(2)
				usr.overlays -= 'testing6.dmi'
				usr.overlays += 'testing7.dmi'
				sleep(2)
				usr.overlays -= 'testing7.dmi'
				usr.overlays += 'testing8.dmi'
				sleep(2)
				usr.overlays -= 'testing8.dmi'
				usr.overlays += /obj/Sphere1
				usr.verbs += new /mob/gaara2/verb/AttackNorth()
				usr.verbs += new /mob/gaara2/verb/AttackSouth()
				usr.verbs += new /mob/gaara2/verb/AttackEast()
				usr.verbs += new /mob/gaara2/verb/AttackWest()
				usr.sphere =1
				sand
				if(usr.sphere)
					usr.chakra -=4
					if(usr.chakra <= 4)
						usr.Frozen=0
						usr.firing = 0
						usr.overlays -= /obj/Sphere1
						usr.overlays -= /obj/Sphere
						usr.sphere = 0
						usr.verbs -= new /mob/gaara2/verb/AttackNorth()
						usr.verbs -= new /mob/gaara2/verb/AttackSouth()
						usr.verbs -= new /mob/gaara2/verb/AttackEast()
						usr.verbs -= new /mob/gaara2/verb/AttackWest()
						return
					else
						sleep(4)
						goto sand
			else if(usr.sphere)
				usr.Frozen=0
				usr.firing = 0
				usr.overlays -= /obj/Sphere1
				usr.overlays -= /obj/Sphere
				usr.sphere =0
				usr<<"You take down the sand sphere."
				usr.verbs -= new /mob/gaara2/verb/AttackNorth()
				usr.verbs -= new /mob/gaara2/verb/AttackSouth()
				usr.verbs -= new /mob/gaara2/verb/AttackEast()
				usr.verbs -= new /mob/gaara2/verb/AttackWest()

mob/gaara
	verb
		SandArmor()
			set category = "Jutsus"
			set name = "Sand Armor"
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
			if(!usr.Sarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Sand Armor!"
				usr.overlays += 'Sarmor.dmi'
				usr.Sarmor =1
				usr.nin = usr.nin*2
				sand
				if(usr.Sarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Sarmor.dmi'
						usr.Sarmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Sarmor)
				usr.overlays -= 'Sarmor.dmi'
				usr.Sarmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the sand armor."


mob/gaara2
	verb
		AttackNorth()
			set category = "Sphere"
			set name = "Attack north"
			for(var/mob/M in get_step(usr,NORTH))
				if(M.ingat||M.intank)				.
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.Kaiten||M.counter)
					return
				if(M.sphere)
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				var/damage = usr.nin
				usr.chakra -= 10
				M.overlays += 'up.dmi'
				M.health -= damage
				sleep(3)
				M.overlays -= 'up.dmi'
				if(M.health <=0)
					M.Death(usr)

		AttackSouth()
			set category = "Sphere"
			set name = "Attack south"
			for(var/mob/M in get_step(usr,SOUTH))
				if(M.ingat||M.intank)				.
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(M.Kaiten||M.counter)
					return
				if(M.sphere)
					return
				var/damage = usr.nin
				usr.chakra -= 10
				M.overlays += 'sandd.dmi'
				M.health -= damage
				sleep(3)
				M.overlays -= 'sandd.dmi'
				if(M.health <=0)
					M.Death(usr)
		AttackWest()
			set category = "Sphere"
			set name = "Attack west"
			for(var/mob/M in get_step(usr,WEST))
				if(M.ingat||M.intank)				.
					return
				if(M.Kaiten||M.counter)
					return
				if(M.sphere)
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
				var/damage = usr.nin
				usr.chakra -= 10
				M.overlays += 'sandw.dmi'
				M.health -= damage
				sleep(3)
				M.overlays -= 'sandw.dmi'
				if(M.health <=0)
					M.Death(usr)
		AttackEast()
			set category = "Sphere"
			set name = "Attack east"
			for(var/mob/M in get_step(usr,EAST))
				if(M.ingat||M.intank)				.
					return
				if(M.Kaiten||M.counter)
					return
				if(M.sphere)
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
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
				var/damage = usr.nin
				usr.chakra -= 10
				M.overlays += 'sande.dmi'
				M.health -= damage
				sleep(3)
				M.overlays -= 'sande.dmi'
				if(M.health <=0)
					M.Death(usr)
