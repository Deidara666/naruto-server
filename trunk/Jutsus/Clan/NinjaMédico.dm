mob/medical
	verb
		InfoCards()
			set category = "Doujutsu"
			set name = "InfoCards"
			for(var/mob/M in world)
				if(usr.froze)
					usr<<"Your frozen"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(M.client&&M.z==usr.z)
					usr<<"{\icon[M][M.name],Rank - [M.rank], health - [M.health],Chakra - [M.chakra]"
					usr<<"Tai - [M.tai],Nin - [M.nin],Gen - [M.gen]"
					usr<<"Location; [M.x],[M.y]"

		Shousen_Jutsu(mob/M in view(1))
			set category = "Jutsus"
			set name = "Shousen Jutsu"
			usr.Handseals()
			if(usr.firing)
				usr<<"This cannot be done"
				return
			if(M.health >= M.maxhealth)
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
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			else
				M<<"[usr] begins to use his chakra to heal you."
				usr<<"You begin to heal [M]"
				sleep(200)
				if(M)
					M.health += M.maxhealth/2
					if(M.health > M.maxhealth)
						M.health = M.maxhealth
		Restore_Jutsu(mob/M in view(1))
			set category = "Jutsus"
			set name = "Restore Jutsu"
			usr.Handseals()
			if(usr.firing)
				usr<<"This cannot be done"
				return
			if(!usr.handseals)
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else
				M<<"[usr] begins to use his chakra to remove all conditions."
				usr<<"You begin to restore [M]"
				sleep(200)
				if(M)
					M.froze=0
					M.Frozen=0
					M.caught=0
					M.captured=0
					M.screwed=0
					M:sight &= ~BLIND
		ChakraAbsorb(mob/M in view(1))
			set category = "Jutsus"
			set name = "Absorb"
			usr.Handseals()
			if(usr.firing)
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
			if(usr.health>=usr.maxhealth*2)
				usr<<"Your at Max Health"
				return
			else
				usr<<"You start to absorb [M]"
				usr.overlays+='chakra.dmi'
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					usr.health += damage
					usr.chakra += damage
					M<<"[usr] is absorbing you."
					usr.Death(M)
					usr.overlays-='chakra.dmi'

		ChakraNoMesu()
			set category = "Jutsus"
			set name = "Chakra No Mesu"
			if(usr.firing)
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
			if(!usr.scalpel)
				usr<<"You concentrate the chakra to your hands to develop chakra scalpels."
				usr.verbs += new /mob/medical/verb/SliceTendons()
				usr.verbs += new /mob/medical/verb/ScrewNerves()
				usr.scalpel =1
				usr.gen = usr.gen*2
				mesu
				if(usr.scalpel)
					usr.chakra -=3.5
					if(usr.chakra <= 4)
						usr<<"You stop using Chakra No Mesu."
						usr.scalpel = 0
						usr.verbs -= new /mob/medical/verb/SliceTendons()
						return
					else
						sleep(4)
						goto mesu
			else if(usr.scalpel)
				usr.scalpel=0
				usr<<"You stop using Chakra No Mesu."
				usr.verbs -= new /mob/medical/verb/SliceTendons()
				usr.verbs -= new /mob/medical/verb/ScrewNerves()
				usr.gen = usr.Mgen
		SliceTendons(mob/M in get_step(src,src.dir))
			set category = "Jutsus"
			set name = "Slice Tendons"
			if(usr.firing)
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			else
				usr<<"You slice [M]'s Tendons slowing their movement!"
				M.Savedspeed = M.Move_Delay
				M.Move_Delay = 10
				sleep(1200)
				M.Move_Delay = usr.Savedspeed
				M<<"Your tendons miraculously heal!"
				usr<<"[M]'s Tendons heal"
		ScrewNerves(mob/M in get_step(src,src.dir))
			set category = "Jutsus"
			set name = "Screw Nerves"
			if(usr.firing==1)
				usr<<"Not now"
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
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			else
				usr<<"You screw [M]'s nerves messing their movement!"
				M.screwed = 1
				sleep(1200)
				if(M)
					M.screwed = 0
					M<<"Your nerves miraculously heal!"
					usr<<"[M]'s nerves heal"
