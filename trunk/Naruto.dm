world
	New()
		..()
		spawn(2000) Geninexam()
		spawn(600) AutoRepop()

world
	hub = "Naruto destiny ninja"
	hub_password = ""
	name = "Naruto destiny ninja"
	status = "<font size=1><font face=verdana><font color=Purple>Have fun XD"
	view=6
	loop_checks=0



mob
	Move()
		if(src.Moveing || src.Frozen )
			return
		else
			src.Moveing = 1
			..()
			if(src.onwater)
				src.WATER()
			sleep(src.Move_Delay)
			src.Moveing = 0
			if(!src.Mountain)
				if(src.Weights)
					usr.Move_Delay=10
					if(src.health<2)
						src<<"Você não pode se mover, porque você está muito cansado!"
						src.Frozen=1
						return
					src.health -= 2
					src.Skills()
					if(src.maxhealth<=50000000000000000)
						src<<"Sua estamina aumentou! ="
						src.maxhealth += rand(1,5)
					else
						usr<<"Você chegou a Capacidade Maxima de Estamina."
					if(src.health <= 0)
						src.Death(src)
						src.dead=1

mob/var/Kyuubiget=0

mob
	var{L2=0;L3=0;L4=0;L5=0;L6=0;L7=0;L8=0;L9=0;L10=0;L11=0;L12=0;L13=0;L14=0;L15=0;L16=0}
	proc
		Skills()
			src.SE()




		SE()
			if(!src.L8)
				if(src.rank == "Student")
					return
				if(src.Mtai >=50)
					src << "<B><font color = blue>Você aprendeu o Sennen Goroshi!"
					src.verbs += new /mob/pain/verb/SennenGoroshi()
					src.L8 = 1
			else ..()



mob/var/list
	V
mob
	proc
		AutoSave()
			if(src.cansave)
				src.SaveK()
				spawn(600)
				src.AutoSave()
mob
	proc
		SaveK()
			if(src.cansave)
				var/savefile/F = new("players/[src.key].sav")
				src.V = src.verbs
				src.xco = src.x
				src.yco = src.y
				src.zco = src.z
				Write(F)
				src << "<font color=Blue><b>O seu jogo foi Salvo!"


mob
	verb
		Savenow()
			set name ="Save"
			if(usr.cansave)
				var/savefile/F = new("players/[usr.key].sav")
				usr.V = usr.verbs
				usr.xco = usr.x
				usr.yco = usr.y
				usr.zco = usr.z
				Write(F)
				spawn(10) usr << "<font color=Green><b>O seu jogo foi Salvo!"
mob
	proc
		LoadPlayer()
			if(fexists("players/[src.key].sav"))
				var/savefile/F = new("players/[src.key].sav")
				Read(F)
				for(var/stuff in src.V)
					src.verbs += stuff
				world<<"<font size=1><font color=Yellow><B>Info: <font color=white>[src]([src.key]) has logged in..."
				src.loc = locate(xco,yco,zco)
				client.view=6
				src.OOC = 1
				src.cansave=1
				src.Frozen = 0
				src.AutoSave()
				src.logincrap()

mob
	proc
		logincrap()
			if(src.hasdog)
				for(var/mob/pet/P in src.contents)
					if(P)
						P.owner=src
						if(P.owner==src)
							P.owned=1
							P.name=src.dogname
							P.tai=src.dogtai
							P.maxhealth=src.dogmaxhealth
							P.health=P.maxhealth
							P.named=1
			for(var/obj/shibari/K in world)
				if(K.owner==src)
					del(K)
			for(var/obj/shibaritrail/T in world)
				if(T.owner==src)
					del(T)
			if(src.taiexp>=1000)
				src.taiexp=0
			if(src.ninexp>=100)
				src.ninexp=0
			if(src.genexp>=100)
				src.genexp=0
			if(src.Shukkaku==1)
				src.CS=0
				src.bit=0
				src.Kyuubi=0
			if(src.Kyuubi==1)
				src.CS=0
				src.bit=0
			src.overlays-='kyuu.dmi'
			src.inkaku=0
			src.overlays -='kaku.dmi'
			src.earthscroll=0
			src.heavenscroll=0
			src.overlays -= 'peacock.dmi'
			src.overlays -='Rainarmor.dmi'
			src.Rainarmor=0
			src.overlays -= 'cloud.dmi'
			src.overlays -= 'flight.dmi'
			src.overlays-='staraura.dmi'
			src.overlays-='WaterStrom.dmi'
			src.overlays-='rockball.dmi'
			src.captured=0
			src.caught=0
			src.froze=0
			src.Frozen=0
			src.aura=0
			src.Warmor=0
			src.overlays -= 'Wprison.dmi'
			src.counter=0
			src.overlays-='counter.dmi'
			src:sight &= ~BLIND
			if(src.Mchakra>=10000000)
				src.Mchakra=10000000
			if(src.maxhealth>=50000000)
				src.maxhealth=50000000
			if(src.taiexp>=101)
				src.taiup()
				src.taiexp=0
			if(src.chakra<=src.Mchakra)
				src.chakra=src.Mchakra
			if(src.health<=src.maxhealth)
				src.health=src.maxhealth
			src.buoyu=0
			src.tagset=0
			src.Flight=0
			src.density = 1
			src.overlays -= 'Flight.dmi'
			src.overlays -= 'wings.dmi'
			src.verbs -= new /mob/tag/verb/Explodir
			src.verbs -= new /mob/tag/verb/Explodir
			src.verbs -= new /mob/tag/verb/Explodir
			src.verbs -= new /mob/tag/verb/Explodir
			src.verbs -= new /mob/tag/verb/Explodir
			src.stop = 0
			src.dead=0
			src.resting = 0
			src.doing = 0
			src.Frozen = 0
			src.Moveing = 0
			src.firing = 0
			src.doing = 0
			src.Mountain=0
			src.onwater=0
			src.makeHunter()
			src.Skills()
			src.makeJounin()
			src.tagset=0
			src.tai = src.Mtai
			src.nin = src.Mnin
			src.gen = src.Mgen
			src.focusing =0
			src.shurikenskill=src.Mshurikenskill
			src.kunaiskill=src.Mkunaiskill
			src.trapskill=src.Mtrapskill
			src.icon = src.Oicon
			src.overlays -= 'Bun.dmi'
			src.Kshibari = 0
			src.kubi = 0
			src.firing = 0
			src.overlays -= 'meattank.dmi'
			src.inspike = 0
			src.overlays -= 'hakkeshou.dmi'
			src.Kaiten = 0
			src.overlays -= 'gatsuuga.dmi'
			src.ingat = 0
			src.overlays -= 'lotus.dmi'
			src.gate1 = 0
			src.overlays -= 'lotus.dmi'
			src.gate2 = 0
			src.overlays -= 'lotus.dmi'
			src.gate3 = 0
			src.overlays -= 'lotus.dmi'
			src.gate4 = 0
			src.overlays -= 'lotus.dmi'
			src.gate5 = 0
			src.overlays -= 'lotus.dmi'
			src.gate6 = 0
			src.overlays -= 'lotus.dmi'
			src.gate7 = 0
			src.overlays -= 'lotus.dmi'
			src.gate8 = 0
			src.overlays -= 'Marmor.dmi'
			src.overlays -= 'mist.dmi'
			src.Marmor = 0
			src.overlays -= 'Larmor.dmi'
			src.Larmor = 0
			src.overlays -= 'Iarmor.dmi'
			src.Iarmor = 0
			src.overlays -= 'BeeArmor.dmi'
			src.Barmor = 0
			src.overlays -= 'Farmor.dmi'
			src.Farmor = 0
			src.overlays -= 'Zarmor.dmi'
			src.Zarmor = 0
			src.SHarmor = 0
			src.overlays -= 'sharingan.dmi'
			src.overlays -= 'Bun.dmi'
			src.overlays -= 'Chidori.dmi'
			src.overlays -= 'Rasengan.dmi'
			src.overlays -= 'electricity.dmi'
			src.overlays -= 'byakugan.dmi'
			src.overlays -= /obj/Sphere
			src.sphere = 0
			src.overlays -= 'Sarmor.dmi'
			src.Sarmor = 0
			src.overlays -= 'uzaroo.dmi'
			src.inbaika = 0
			src.overlays -= 'MTS.dmi'
			src.intank = 0
			src.overlays -= 'Tan.dmi'
			src.overlays -= 'white.dmi'
			src.overlays -= 'black.dmi'
			src.overlays -= 'blue.dmi'
			src.overlays -= 'red.dmi'
			src.overlays -= 'yellow.dmi'
			src.overlays -= 'vamp.dmi'
			src.overlays -= 'omote.dmi'
			src.overlays -= 'ura.dmi'
			src.overlays -= 'karasu.dmi'
			src.doton = 0
			src.screwed=0
			src.points =0
			src.deaths+=1
			src.finals=0
			src.inmission=0
			src.deathforest=0
			src.inkyuubi=0
			src.overlays -='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.incs=0
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs3.dmi'
			src.inthewar=0
			for(var/mob/puppet/F in src.contents)
				del(F)
			for(var/obj/earthscroll/F in src.contents)
				del(F)
			for(var/obj/heavenscroll/F in src.contents)
				del(F)
			src.icon = src.Oicon
			src.icon_state = ""
			src.SaveK()

mob/var/tmp
	controling=0


client
	North()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,NORTH)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain&&!usr.Weights)
					step(usr,NORTH)
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,SOUTHWEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,NORTH)
					if(usr.random == 2)
						step(usr,NORTH)
					if(usr.random == 4)
						step(usr,NORTH)
					if(usr.random == 3)
						step(usr,NORTHWEST)
				else
					step(usr,NORTH)
			else
				..()

		else
			return 0
	South()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,SOUTH)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain&&!usr.Weights)
					step(usr,SOUTH)
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,WEST)
					if(usr.random == 2)
						step(usr,SOUTHEAST)
					if(usr.random == 3)
						step(usr,NORTHWEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,SOUTH)
					if(usr.random == 2)
						step(usr,SOUTH)
					if(usr.random == 4)
						step(usr,SOUTH)
					if(usr.random == 3)
						step(usr,SOUTHEAST)
				else
					step(usr,SOUTH)
			else
				..()

		else
			return 0
	East()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,EAST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,WEST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,SOUTHWEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,EAST)
					if(usr.random == 4)
						step(usr,EAST)
					if(usr.random == 3)
						step(usr,NORTHEAST)
				else
					step(usr,EAST)
			else
				..()

		else
			return 0
	West()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,WEST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain&&!usr.Weights)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,NORTH)
					if(usr.random == 2)
						step(usr,SOUTHEAST)
					if(usr.random == 3)
						step(usr,NORTHEAST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,WEST)
					if(usr.random == 2)
						step(usr,WEST)
					if(usr.random == 4)
						step(usr,WEST)
					if(usr.random == 3)
						step(usr,SOUTHWEST)
				else
					step(usr,WEST)
			else
				..()
		else
			return 0
	Northeast()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,NORTHEAST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,NORTH)
					if(usr.random == 3)
						step(usr,SOUTH)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,NORTHEAST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,NORTH)
					if(usr.random == 4)
						step(usr,NORTHEAST)
				else
					step(usr,NORTHEAST)
			else
				..()

		else
			return 0
	Northwest()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,NORTHWEST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,WEST)
					if(usr.random == 3)
						step(usr,NORTH)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,NORTHWEST)
					if(usr.random == 2)
						step(usr,NORTHWEST)
					if(usr.random == 4)
						step(usr,NORTHWEST)
					if(usr.random == 3)
						step(usr,WEST)
				else
					step(usr,NORTHWEST)
			else
				..()

		else
			return 0
	Southeast()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,SOUTHEAST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,SOUTHWEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,SOUTHEAST)
					if(usr.random == 2)
						step(usr,SOUTHEAST)
					if(usr.random == 4)
						step(usr,SOUTHEAST)
					if(usr.random == 3)
						step(usr,SOUTH)
				else
					step(usr,SOUTHEAST)
			else
				..()

		else
			return 0
	Southwest()
		if(usr.controling)
			for(var/mob/puppet/P in view(25))
				if(!P.Frozen)
					step(P,SOUTHWEST)
					return
		if(!usr.Moveing)
			if(!usr.Frozen)
				if(usr.Mountain)
					return
				if(usr.screwed&&!usr.drunk)
					usr.random = rand(1,3)
					if(usr.random == 1)
						step(usr,EAST)
					if(usr.random == 2)
						step(usr,NORTHEAST)
					if(usr.random == 3)
						step(usr,WEST)
				if(usr.drunk&&!usr.screwed)
					usr.random = rand(1,4)
					if(usr.random == 1)
						step(usr,SOUTHWEST)
					if(usr.random == 2)
						step(usr,SOUTHWEST)
					if(usr.random == 4)
						step(usr,SOUTHWEST)
					if(usr.random == 3)
						step(usr,WEST)
				else
					step(usr,SOUTHWEST)
			else
				..()
		else
			return 0
world/proc
	AutoReboot()
		set background=1
		world << "<center><b><font size=3><font color=blue>World Auto Rebooting in 30 seconds. Save!"
		sleep(250)
		world << "<center><b><font size=3><font color=blue>Reboot in 5"
		sleep(10)
		world << "<center><b><font size=3><font color=blue>4"
		sleep(10)
		world << "<center><b><font size=3><font color=blue>3"
		sleep(10)
		world << "<center><b><font size=3><font color=blue>2"
		sleep(10)
		world << "<center><b><font size=3><font color=blue>1"
		sleep(10)
		world.Reboot()
		spawn(36000)
			src.AutoReboot()

world/proc
	AutoRepop()
		set background=1
		world.Repop()
		spawn(600)
			world.AutoRepop()
mob/var
	WarringV1=""
	WarringV2=""
world/proc
	WarCheck1()
		set background=1
		for(var/mob/E in world)
			if(E.war==1&&E.inwar1==1)
				E.WarringV1="[E.Village]"
			if(E.war==1&&E.inwar2==1)
				E.WarringV2="[E.Village]"
				world<<"<b><font size=2>[E.WarringV1] is fighting [E.WarringV1]"
				spawn(600)
					WarCheck1()

world/proc
	WarCheck2()
		set background=1
		for(var/mob/E in world)
			if(E.z==19&&E.WarringV1>>E.WarringV2)
				world<<"<b> <font size=2>[E.WarringV1] has defeated [E.WarringV2]"
				spawn(600)
					WarCheck2()
			if(E.z==19&&E.WarringV1<<E.WarringV2)
				world<<"<b><font size=2> [E.WarringV2] has defeated [E.WarringV1]"
				spawn(600)
					WarCheck2()

