mob/aburame
	verb
		KonchuuSousou()
			set category = "Jutsus"
			set name = "Konchuu Sousou"
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
				if(M.PK==0)
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
					view(usr)<<"Konchuu Sousou!"
					flick("sousou",M)
					M.overlays-='BugArmor.dmi'
					M.overlays-='BugArmor.dmi'
					usr.Chakragain()
					M.overlays-='BugArmor.dmi'
					M.health-=damage
					M.captured=0
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
						return
				else
					return
mob/aburame
	verb
		KonchuuKyuu(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Konchuu Kyuu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.firing)
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
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
			if(M.Kaiten)
				return
			if(M.captured)
				usr<<"He is already caught!"
				return
			else
				if(usr.KyuuN>=100)
					usr.chakra -= 10000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.KyuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Konchuu Kyuu!"
					M.overlays+='BugArmor.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='BugArmor.dmi'
						M.overlays-='BugArmor.dmi'
						M.overlays-='BugArmor.dmi'
						M.overlays-='BugArmor.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Konchuu Kyuu!"
						M.overlays+='BugArmor.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Konchuu Kyuu!"
						M.overlays+='BugArmor.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Konchuu Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Konchuu Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Konchuu Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0
mob/aburame
	verb
		DestroyKonchuu()
			set category = "Jutsus"
			set name = "Destroy Konchuu"
			for(var/mob/M in world)
				if(M.havekonchuu)
					M.havekonchuu=0
					M<<"A Konchuu has fallen off"
					usr<<"A Konchuu has fallen off [M]'s shoulder"

mob/aburame
	verb
		BugArmor()
			set category = "Jutsus"
			set name = "Konchuu Armor"
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
				view()<<"<font color = blue>[usr]: Konchuu Armor!"
				usr.overlays += 'BugArmor.dmi'
				usr.Barmor =1
				usr.nin = usr.Mnin*2
				sand
				if(usr.Barmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'BugArmor.dmi'
						usr.Barmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Barmor)
				usr.overlays -= 'BugArmor.dmi'
				usr.Barmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Konchuu armor."
mob/aburame
	verb
		summonkonchuu()
			set category = "Jutsus"
			set name = "Summon Konchuu"
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
				usr.Konchuu = 15
				usr<<"You now have 15 Konchuu"
mob/var/tmp/konchuuperson
mob/aburame
	verb
		Placekonchuu(mob/M in oview(2))
			set category = "Jutsus"
			set name = "Place Konchuu"
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
			if(M)
				if(M.havekonchuu)
					usr<<"Only one bug at a time."
					return
			if(usr.firing)
				return
			if(M.Kaiten||M.sphere||M.counter)
				usr << "Your Konchuu would be killed if you put it on them right now!"
				return
			if(usr.Konchuu <= 0)
				usr<<"You dont have any konchuu bugs to place!"
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
				usr<<"You place a chakra draining Konchuu on [M]!"
				usr.chakra -= 120
				usr.Konchuu -= 1
				M.havekonchuu = 1
				M.konchuuperson="[usr]"
				M.placebug()
				sleep(600)
				if(M)
					M.havekonchuu=0
					M.konchuuperson=""
					M<<"[usr]'s bug has fallen off your shoulder."
					usr<<"A bug has fallen off of [M]'s shoulder."
mob/proc/placebug()
	if(!src.havekonchuu)
		return
	else
		src.chakra -= 1000
		if(src.chakra<=0)
			src.chakra = 0
		sleep(10)
		src.placebug()
mob/var/tmp/konchdelay=0
mob/aburame
	verb
		ExplodeKonchuu()
			set category = "Jutsus"
			set name = "Explode Konchuu"
			usr.Handseals()
			if(usr.konchdelay)
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
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			for(var/mob/M in world)
				if(M.havekonchuu&&M.konchuuperson=="[usr]")
					usr.konchdelay=1
					flick("boom",M)
					var/damage = round(usr.nin*5)
					M<<"[usr]'s Konchuu explodes on your shoulder giving you [damage] damage!"
					usr<<"A Konchuu explodes on [M]'s shoulder giving them [damage] damage!"
					M.havekonchuu=0
					M.konchuuperson=null
					usr.Chakragain()
					M.health -= damage
					M.Death(usr)
			sleep(30)
			usr.konchdelay=0
