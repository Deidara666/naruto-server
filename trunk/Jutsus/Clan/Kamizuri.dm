mob/Kamizuri
	verb
		BeeSabakuSousou()
			set category = "Jutsus"
			set name = "Bee Sousou"
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
					view(usr)<<"Bee Sousou!"
					flick("sousou",M)
					M.overlays-='BeeArmor.dmi'
					M.overlays-='BeeArmor.dmi'
					usr.Chakragain()
					M.overlays-='BeeArmor.dmi'
					M.health-=damage
					M.captured=0
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
						return
				else
					return
mob/Kamizuri
	verb
		BeeSabakuKyuu(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Bee Kyuu"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Bee Kyuu!"
					M.overlays+='BeeArmor.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='BeeArmor.dmi'
						M.overlays-='BeeArmor.dmi'
						M.overlays-='BeeArmor.dmi'
						M.overlays-='BeeArmor.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Bee Kyuu!"
						M.overlays+='BeeArmor.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Bee Kyuu!"
						M.overlays+='BeeArmor.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Bee Kyuu"
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

mob/Kamizuri
	verb
		BeeArmor()
			set category = "Jutsus"
			set name = "Bee Armor"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
				usr<<"Not now."
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
			if(!usr.Barmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Bee Armor!"
				usr.overlays += 'BeeArmor.dmi'
				usr.Barmor =1
				usr.nin = usr.nin*2
				sand
				if(usr.Barmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'BeeArmor.dmi'
						usr.Barmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Barmor)
				usr.overlays -= 'BeeArmor.dmi'
				usr.Barmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the bee armor."
mob/Kamizuri
	verb
		Destroybee()
			set category = "Jutsus"
			set name = "Destroy Bee"
			for(var/mob/M in world)
				if(M.havebee)
					M.havebee=0
					M<<"A Bee has fallen off"
					usr<<"A Bee has fallen off [M]'s shoulder"
mob/Kamizuri
	verb
		summonbees()
			set category = "Jutsus"
			set name = "Summon Bees"
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
			if(usr.chakra <= 10)
				usr<<"Not enough Chakra!"
			else
				usr.chakra -= 15
				usr.Bees = 15
				usr<<"You now have 15 Bees"
mob/var/tmp/beeperson
mob/Kamizuri
	verb
		Placebee(mob/M in oview(2))
			set category = "Jutsus"
			set name = "Place Bee"
			if(M)
				if(M.havebee)
					usr<<"Only one bee at a time."
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
			if(usr.firing)
				return
			if(M.Kaiten||M.sphere||M.counter)
				usr << "Your Bee would be killed if you put it on them right now!"
				return
			if(usr.Bees <= 0)
				usr<<"You dont have any Bees to place!"
				return
			if(usr.chakra <= 12)
				usr<<"Not enough Chakra!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			else
				usr<<"You place a chakra draining Bee on [M]!"
				usr.chakra -= 120
				usr.Bees -= 1
				M.havebee = 1
				M.beeperson="[usr]"
				M.placebug()
				sleep(600)
				if(M)
					M.havebee=0
					M.beeperson=""
					M<<"[usr]'s bee has fallen off your shoulder."
					usr<<"A bee has fallen off of [M]'s shoulder."
mob/proc/placebee()
	if(!src.havebee)
		return
	else
		src.chakra -= 1000
		if(src.chakra<=0)
			src.chakra = 0
		sleep(10)
		src.placebee()
mob/var/tmp/beedelay=0
mob/Kamizuri
	verb
		ExplodeBee()
			set category = "Jutsus"
			set name = "Explode Bee"
			usr.Handseals()
			if(usr.konchdelay)
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
			if(!usr.handseals)
				return
			for(var/mob/M in world)
				if(M.havebee&&M.beeperson=="[usr]")
					usr.beedelay=1
					flick("boom",M)
					var/damage = round(usr.nin*5)
					M<<"[usr]'s Bee explodes on your shoulder giving you [damage] damage!"
					usr<<"A Bee explodes on [M]'s shoulder giving them [damage] damage!"
					M.havebee=0
					M.beeperson=null
					usr.Chakragain()
					M.health -= damage
					M.Death(usr)
			sleep(30)
			usr.beedelay=0
