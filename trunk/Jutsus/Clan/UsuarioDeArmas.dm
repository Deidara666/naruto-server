mob/Tenten
	verb
		HomingShuriken(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Homing Shuriken"
			if(usr.firing)
				return
			if(usr.weaponthrow)
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
				usr<<"NONPK ZONE!"
				return
			if(M.PK==0)
				usr<<"NONPK ZONE!"
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			var/obj/Shuriken/L = new()
			L.loc=usr.loc
			usr.weaponthrow=1
			L.tai=usr.shurikenskill
			L.dir = usr.dir
			L.Move_Delay=1.5
			L.Gowner=usr
			walk_towards(L,M)
			for(var/obj/Shuriken/O in usr.contents)
				O.ammount-=1
				if(O.ammount<=0)
					del(O)
			sleep(8)
			usr.weaponthrow=0
			sleep(30)
	Bump(A)
		if(istype(A,/obj/Log))
			for(var/obj/Log/L in oview(3))
				if(L)
					usr<<"You cannot be that close to the log"
					usr.weaponthrow=0
					del(src)
					return
			usr.random=rand(1,3)
			if(usr.random==3)
				if(usr.Mshurikenskill<=usr.cap)
					usr<<"Your shuriken skill increases!"
					usr.Mshurikenskill+=15
					usr.shurikenskill=usr.Mshurikenskill
				else
					usr<<"You have reached your shuriken cap."
			if(usr.random==1)
				if(usr.Mshurikenskill<=usr.cap)
					usr<<"Your shuriken skill increases!"
					usr.Mshurikenskill+=20
					usr.shurikenskill=usr.Mshurikenskill
				else
					usr<<"You have reached your shuriken cap."
		if(ismob(A))
			var/mob/M = A
			if(M.Kaiten||M.sphere)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			var/damage = round(src.tai)
			if(damage >= 1)
				M.health -= damage
				view(M) << "[M] was hit by [usr]'s Shuriken for [damage] damage!!"
				M.Death(M)
			del(src)
		if(istype(A,/turf/))
			var/turf/T = A
			if(T.density)
				del(src)
		if(istype(A,/obj/))
			del(src)



mob/Tenten
	verb
		HomingKunai(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Homing Kunai"
			if(usr.firing)
				return
			if(usr.weaponthrow)
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
				usr<<"NONPK ZONE!"
				return
			var/obj/Kunai/L = new()
			L.loc=usr.loc
			usr.weaponthrow=1
			L.tai=usr.kunaiskill
			L.dir = usr.dir
			L.Move_Delay=1.5
			L.Gowner=usr
			walk_towards(L,M)
			for(var/obj/Kunai/O in usr.contents)
				O.ammount-=1
				if(O.ammount<=0)
					del(O)
			sleep(8)
			usr.weaponthrow=0
			sleep(30)
	Bump(A)
		if(istype(A,/obj/Log))
			for(var/obj/Log/L in oview(3))
				if(L)
					usr<<"You cannot be that close to the log"
					usr.weaponthrow=0
					del(src)
					return
			usr.random=rand(1,3)
			if(usr.random==3)
				if(usr.Mkunaiskill<=usr.cap)
					usr<<"Your kunai skill increases!"
					usr.Mkunaiskill+=15
					usr.kunaiskill=usr.Mkunaiskill
				else
					usr<<"You have reached your kunai cap."
			if(usr.random==1)
				if(usr.Mkunaiskill<=usr.cap)
					usr<<"Your kunai skill increases!"
					usr.Mkunaiskill+=20
					usr.kunaiskill=usr.Mkunaiskill
				else
					usr<<"You have reached your kunai cap."

		if(ismob(A))
			var/mob/M = A
			if(M.Kaiten||M.sphere)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			var/damage = round(src.tai)
			if(damage >= 1)
				M.health -= damage
				view(M) << "[M] was hit by [usr]'s Kunai for [damage] damage!!"
				M.Death(M)
			del(src)
		if(istype(A,/turf/))
			var/turf/T = A
			if(T.density)
				del(src)
		if(istype(A,/obj/))
			del(src)

mob/Tenten
	verb
		HomingWindmill(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Homing Windmill"
			if(usr.firing)
				return
			if(usr.weaponthrow)
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
				usr<<"NONPK ZONE!"
				return
			var/obj/Windmill/L = new()
			usr.weaponthrow=1
			usr.windmills-=1
			L.loc=usr.loc
			L.nin=usr.shurikenskill
			L.dir = usr.dir
			L.Move_Delay=1.5
			L.Gowner=usr
			walk_towards(L,M)
			sleep(30)
			del(L)
			src.loc=locate(usr.x,usr.y,usr.z)
			sleep(3)
			usr.weaponthrow=0

	Bump(A)
		if(istype(A,/obj/Log))
			for(var/obj/Log/L in oview(3))
				if(L)
					usr<<"You cannot be that close to the log"
					return
			usr.random=rand(1,3)
			if(usr.random==3)
				if(usr.Mshurikenskill<=usr.cap)
					usr<<"Your shuriken skill increases!"
					usr.Mshurikenskill+=3
					usr.shurikenskill=usr.Mshurikenskill
				else
					usr<<"You have reached your shuriken cap."
		if(ismob(A))
			var/mob/M = A
			if(M.Kaiten||M.sphere)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			var/damage = round(src.nin*2)
			if(damage >= 1)
				M.health -= damage
				view(M) << "[M] was hit by [usr]'s Windmill for [damage] damage!!"
				M.Death(M)
		if(istype(A,/turf/))
			var/turf/T = A
			if(T.density)
				del(src)
		if(istype(A,/obj/))
			del(src)


mob/Tenten
	verb
		Focus()
			set category = "Jutsus"
			set name = "Focus"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing&&!usr.focusing)
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
			if(!usr.focusing&&!usr.firing)
				view()<<"<font color = blue>[usr]: Focus!"
				usr.overlays += 'byakugan.dmi'
				usr.focusing =1
				usr.shurikenskill = usr.shurikenskill*2
				usr.kunaiskill = usr.kunaiskill*2
				usr.trapskill = usr.trapskill*2
				fire
				if(usr.focusing)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'byakugan.dmi'
						usr.focusing = 0
						usr.shurikenskill = usr.Mshurikenskill
						usr.kunaiskill = usr.Mkunaiskill
						usr.trapskill = usr.Mtrapskill
						return
					else
						sleep(4)
						goto fire
			else if(usr.focusing)
				usr.overlays -= 'byakugan.dmi'
				usr.focusing =0
				usr.shurikenskill = usr.Mshurikenskill
				usr.kunaiskill = usr.Mkunaiskill
				usr.trapskill = usr.Mtrapskill
				usr<<"You stop focusing."
