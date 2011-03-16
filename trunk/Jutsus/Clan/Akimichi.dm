//Baika no Jutsu    Bubun Baika no Jutsu
mob/Akimichi
	verb
		BaikaNoJutsu() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Baika No Jutsu"
			usr.Handseals()
			if(usr.Henge)
				return
			if(usr.firing)
				return
			if(usr.Kaiten)
				return
			if(usr.chakra <= 11)
				return
			if(usr.calories <= 1000)
				return
			if(!usr.handseals)
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
			if(usr.inbaika==0)
				view()<<"<font color=silver><b><font face=verdana>[usr]: Baika No Jutsu!!"
				usr.chakra -= 11
				usr.calories -= 1000
				usr.inbaika = 1
				usr.tai = usr.tai*2
				usr.Chakragain()
				if(usr.icon=='BaseVamp.dmi')
					usr.overlays+='vamp.dmi'
				if(usr.icon=='base white.dmi')
					usr.overlays+='white.dmi'
				if(usr.icon=='BaseT.dmi')
					usr.overlays+='Tan.dmi'
				if(usr.icon=='BaseBlack.dmi')
					usr.overlays+='black.dmi'
				if(usr.icon=='BaseBlue.dmi')
					usr.overlays+='blue.dmi'
				if(usr.icon=='BaseRed.dmi')
					usr.overlays+='red.dmi'
				if(usr.icon=='BaseYellow.dmi')
					usr.overlays+='yellow.dmi'
			else
				usr.tai = usr.Mtai
				usr.inbaika = 0
				if(usr.icon=='BaseVamp.dmi')
					usr.overlays-='vamp.dmi'
				if(usr.icon=='base white.dmi')
					usr.overlays-='white.dmi'
				if(usr.icon=='BaseT.dmi')
					usr.overlays-='Tan.dmi'
				if(usr.icon=='BaseBlack.dmi')
					usr.overlays-='black.dmi'
				if(usr.icon=='BaseBlue.dmi')
					usr.overlays-='blue.dmi'
				if(usr.icon=='BaseRed.dmi')
					usr.overlays-='red.dmi'
				if(usr.icon=='BaseYellow.dmi')
					usr.overlays-='yellow.dmi'
obj
	babunarm
		density=1
		icon='babun.dmi'
		icon_state="arm"
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj
	babunfist
		density=1
		icon='babun.dmi'
		icon_state="fist"
		Move()
			..()
			var/obj/babunarm/T = new /obj/babunarm
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					del(src)
					return
				if(M.PK==0)
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
				var/damage = round(src.tai*10)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Babun Baika No Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Akimichi
	verb
		BabunBaikaNoJutsu()
			set category = "Jutsus"
			set name = "Bubun Baika No Jutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
				return
			if(usr.intank)
				return
			if(usr.chakra <= 500)
				return
			if(usr.calories <= 1000)
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
			else
				usr.firing=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Bubun Baika No Jutsu!!"
				usr.chakra -= 500
				usr.calories -= 1000
				var/obj/babunfist/B = new /obj/babunfist
				B.Gowner=usr
				B.tai = usr.tai
				B.loc = usr.loc
				B.Move_Delay=1.5
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(10)
				usr.firing=0
				sleep(15)
				del(B)
mob/Akimichi
	verb
		NikudanHariSensha()
			set category = "Jutsus"
			set name = "Nikudan Hari Sensha"
			usr.kunai=0
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
			for(var/obj/kunai in usr.contents)
				usr.kunai+=1
			if(usr.kunai < 5)
				usr<<"<font color=silver><b><font face=verdana>You must have atleast 5 kunais!"
				if(usr.kunai<=0)
					usr.kunai=0
				return
			if(!usr.inbaika)
				usr<<"<font color=silver><b><font face=verdana>You must first use baika no jutsu!"
				return
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			else .
				if(usr.SpikeN >= 34)
					var/list/O = usr.overlays.Copy()
					view()<<"<font color=blue><b><font face=verdana>[usr]:Nikudan Hari Sensha!"
					usr.SpikeN += 1
					usr.inspike = 1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon='meattank.dmi'
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					usr.firing = 1
					sleep(300)
					usr.icon = usr.Oicon
					usr.overlays = O.Copy()
					usr.inspike = 0
					usr.Move_Delay = usr.Savedspeed
					usr.firing = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						view()<<"<font color=blue><b><font face=verdana>[usr]:Nikudan Hari Sensha"
						usr.MN += 1
						usr.inspike= 1
						usr.icon='meattank.dmi'
						usr.Savedspeed = usr.Move_Delay
						usr.Move_Delay = usr.Speed2
						usr.firing = 1
						usr.overlays += 'meattank.dmi'
						sleep(300)
						usr.icon = usr.Oicon
						usr.inspike = 0
						usr.overlays -= 'meattank.dmi'
						usr.Move_Delay = usr.Savedspeed
						usr.firing = 0
mob/Akimichi
	verb
		NikudanSensha()
			set category = "Jutsus"
			set name = "Nikudan Sensha"
			if(usr.inbaika == 0)
				usr<<"<font color=silver><b><font face=verdana>You must first use baika no jutsu!"
			if(usr.ingat == 1||usr.Kaiten == 1||usr.intank == 1||usr.firing)
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

			else .
				if(usr.MN >= 34)
					var/list/O = usr.overlays.Copy()
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Nikudan Sensha!"
					usr.MN += 1
					usr.intank = 1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon='MTS.dmi'
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed3
					usr.firing = 1
					sleep(300)
					usr.icon = usr.Oicon
					usr.overlays = O.Copy()
					usr.intank = 0
					usr.Move_Delay = usr.Savedspeed
					usr.firing = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Nikudan Sensha!"
						usr.MN += 1
						usr.intank = 1
						usr.icon='MTS.dmi'
						usr.Savedspeed = usr.Move_Delay
						usr.Move_Delay = usr.Speed3
						usr.firing = 1
						usr.overlays += 'MTS.dmi'
						sleep(300)
						usr.icon = usr.Oicon
						usr.intank = 0
						usr.overlays -= 'MTS.dmi'
						usr.Move_Delay = usr.Savedspeed
						usr.firing = 0
