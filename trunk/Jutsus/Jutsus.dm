obj/var/tmp
	walk = 0
	walkm = 7
	Owner
	haveowner = 0
	speeding
	Move_Delay = 0

obj/Move()
	if(!src.move)
		return
	if(src.speeding <= 0)
		src.speeding = 1
		..()
		sleep(src.Move_Delay)
		src.speeding = 0
mob
	var/tmp
		target=""
		Oover
		handseals=0
mob/var

	sealtime=28
mob
	proc
		Handseals()
			if(src.Kaiten||src.sphere||src.ingat)
				return
			if(src.froze)
				src<<"Você está freezado"
				return
			if(src.Frozen)
				src<<"Você está freezado"
				return
			if(src.captured)
				src<<"Você foi capturado"
				return
			if(src.caught)
				src<<"Você foi capturado"
				return
			if(src.resting)
				src<<"Não enquanto estiver descansando"
				return
			if(src.meditating)
				src<<"Não enquanto estiver meditando"
				return
			if(src.firing)
				return
			if(src.handseals)
				return
			if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
				src.overlays+='sealsv.dmi'
			if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
				src.overlays+='seals.dmi'
			if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
				src.overlays+='seals.dmi'
			if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
				src.overlays+='sealsb.dmi'
			if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
				src.overlays+='sealsbu.dmi'
			if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
				src.overlays+='sealsr.dmi'
			if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
				src.overlays+='sealsy.dmi'
			if(src.seals<=5&&src.seals>=0)
				src.random=rand(1,10)
				if(src.random==3)
					usr.firing=1
					src<<"<b><font size=1>You begin to perform your neccessary hand seals"
					sleep(sealtime)
					usr.firing=0
					src.handseals=1
					if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
						src.overlays-='sealsy.dmi'
					sleep(50)
					src.handseals=0
					src.firing=0
					src.Frozen=0
					src.random=rand(1,5)
					if(src.random==4)
						if(src.seals<=51)
							src<<"<font size=1>Your accuracy with seals increase."
							src.seals+=rand(1,2)
						else
							return
					if(src.random==2)
						if(src.sealtime>=11)
							src<<"<font size=1>Your speed with seals increase."
							src.sealtime-=1
				else
					if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
						src.overlays-='sealsy.dmi'
					usr.firing=1
					src<<"<b><font size=1>Your hand slipped"
					sleep(10)
					usr.firing=0
			if(src.seals<=30&&src.seals>=6)
				src.random=rand(1,4)
				if(src.random==4)
					usr.firing=1
					src<<"<b><font size=1>You begin to perform your neccessary hand seals"
					sleep(sealtime)
					usr.firing=0
					src.handseals=1
					if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
						src.overlays-='sealsy.dmi'
					sleep(50)
					usr.firing=0
					src.handseals=0
					src.Frozen=0
					src.random=rand(1,5)
					if(src.random==4)
						if(src.seals<=51)
							src<<"<font size=1>Your accuracy with seals increase."
							src.seals+=rand(1,2)
						else
							return
					if(src.random==2)
						if(src.sealtime>=11)
							src<<"<font size=1>Your speed with seals increase."
							src.sealtime-=1
				else
					if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
						src.overlays-='sealsy.dmi'
					usr.firing=1
					src<<"<b><font size=1>Your hand slipped"
					sleep(10)
					usr.firing=0
			if(src.seals<=60&&src.seals>=31)
				src.random=rand(1,3)
				if(src.random==2)
					usr.firing=1
					src<<"<b><font size=1>You begin to perform your neccessary hand seals"
					sleep(sealtime)
					usr.firing=0
					src.handseals=1
					if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
						src.overlays-='sealsy.dmi'
					sleep(50)
					usr.firing=0
					src.handseals=0
					src.Frozen=0
					src.random=rand(1,11)
					if(src.random==4)
						if(src.seals<=51)
							src<<"<font size=1>Your accuracy with seals increase."
							src.seals+=rand(1,2)
						else
							return
					if(src.random==2)
						if(src.sealtime>=11)
							src<<"<font size=1>Your speed with seals increase."
							src.sealtime-=1
				else
					if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
						src.overlays-='sealsy.dmi'
					usr.firing=1
					src<<"<b><font size=1>Your hand slipped"
					sleep(10)
					usr.firing=0
			if(src.seals<=99&&src.seals>=61)
				src.random=rand(1,2)
				if(src.random==1)
					usr.firing=1
					src<<"<b><font size=1>You begin to perform your neccessary hand seals"
					sleep(sealtime)
					usr.firing=0
					src.handseals=1
					if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
						src.overlays-='sealsy.dmi'
					sleep(50)
					usr.firing=0
					src.handseals=0
					src.Frozen=0
					src.random=rand(1,11)
					if(src.random==4)
						if(src.seals<=51)
							src<<"<font size=1>Your accuracy with seals increase."
							src.seals+=rand(1,2)
						else
							return
					if(src.random==2)
						if(src.sealtime>=11)
							src<<"<font size=1>Your speed with seals increase."
							src.sealtime-=1

			if(src.seals>=100)
				usr.firing=1
				src<<"<b><font size=1>You begin to perform your neccessary hand seals"
				sleep(sealtime)
				usr.firing=0
				src.handseals=1
				if(src.icon=='BaseVamp.dmi'||usr.icon=='vamp.dmi'||usr.icon=='FemaleVamp.dmi')
					src.overlays-='sealsv.dmi'
				if(src.icon=='base white.dmi'||usr.icon=='white.dmi'||usr.icon=='Female White.dmi')
					src.overlays-='seals.dmi'
				if(src.icon=='BaseT.dmi'||usr.icon=='Tan.dmi'||usr.icon=='FemaleT.dmi')
					src.overlays-='seals.dmi'
				if(src.icon=='BaseBlack.dmi'||usr.icon=='black.dmi'||usr.icon=='FemaleBlack.dmi')
					src.overlays-='sealsb.dmi'
				if(src.icon=='BaseBlue.dmi'||usr.icon=='blue.dmi'||usr.icon=='FemaleBlue.dmi')
					src.overlays-='sealsbu.dmi'
				if(src.icon=='BaseRed.dmi'||usr.icon=='red.dmi'||usr.icon=='FemaleRed.dmi')
					src.overlays-='sealsr.dmi'
				if(src.icon=='BaseYellow.dmi'||usr.icon=='yellow.dmi'||usr.icon=='FemaleYellow.dmi')
					src.overlays-='sealsy.dmi'
				sleep(50)
				usr.firing=0
				src.handseals=0
				src.Frozen=0
				src.random=rand(1,10)
				if(src.random==2)
					if(src.sealtime>=11)
						src<<"<font size=1>Your speed with seals increase."
						src.sealtime-=1
			return
		Chakragain()
			src.random=rand(1,5)
			if(src.random==4)
				if(src.Mchakra<=1000000)
					src<<"Your base chakra rises!"
					src.Mchakra+=rand(25,50)

mob/Uchiha
	verb
		SeloAmaldicoado()
			set category ="Jutsus"
			set name ="Selo Amaldiçoado"
			if(usr.selo==1)
				view<<"<font color = blue>Você sente seu corpo ferver e uma enorme energia se expandindo dentro de você!"
				src.chakra=src.Mchakra*3
				src.tai = usr.Mtai*2
				src.gen = usr.Mgen*2
				src.nin = usr.Mnin*3
				usr.shurikenskill = usr.shurikenskill*2
				usr.kunaiskill = usr.kunaiskill*2
				usr.trapskill = usr.trapskill*2
				usr.selo=1
				usr.overlays += 'staraura.dmi'
				return
			else
				usr<<"Seu poder diminuiu."
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr.kunaiskill = usr.Mkunaiskill
				usr.trapskill = usr.Mtrapskill
				usr.selo=0
				usr.overlays -= 'staraura.dmi'
				return
mob/Buyou
	verb
		Kagebuyou(mob/M in view(10))
			set category = "Jutsus"
			set name = "Kage Konoha Buyou"
			if(usr.buoyu)
				return
			if(M==usr)
				return
			if(usr.froze)
				usr<<"Your frozen"
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
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.chakra<5)
				usr<<"You don´t have enough chakra."
				return
			if(M.PK==0)
				usr<<"NONPK ZONE."
				return
			if(usr.PK==0)
				usr<<"NONPK ZONE"
				return
			var/nz = M.z
			var/nx = M.x
			var/ny = M.y
			usr.buoyu=1
			var/turf/T=locate(nx,ny+1,nz)
			var/turf/T2=locate(nx,ny-1,nz)
			var/turf/T3=locate(nx+1,ny,nz)
			var/turf/T4=locate(nx-1,ny,nz)
			if(T&&T2&&T3&&T4&&T.density&&T2.density&&T3.density&&T4.density)
				usr<<"Sorry you can´t go neither any sides of [M]"
				return
				usr.genup()
				usr.Levelup()
			usr.chakra-=5
			if(M.dir==SOUTH)
				if(T.density==1)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx,ny+1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==NORTH)
				if(T2.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx,ny-1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==WEST)
				if(T3.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx+1,ny,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==WEST)
				if(T4.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx-1,ny,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==SOUTHWEST)
				if(T.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx+1,ny+1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==SOUTHEAST)
				if(T.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx-1,ny+1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==NORTHWEST)
				if(T.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx+1,ny-1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==NORTHEAST)
				if(T.density==00)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx-1,ny-1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			usr.buoyu=0
mob
	verb
		HengeNoJutsu(mob/M in oview(6))
			set category = "Jutsus"
			set name = "Henge No Jutsu"
			usr.Handseals()
			if(usr.Henge)
				return
			if(usr.firing)
				return
			if(usr.Kaiten)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.inso)
				return
			if(!usr.handseals)
				return
			if(M&&M.kuchiyose)
				usr<<"Cannot Henge that."
				return
			else
				if(usr.hengeN>=100)
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Henge!"
					var/list/O = usr.overlays.Copy()
					usr.firing = 1
					usr.move = 0
					usr.chakra -= 10
					usr.Henge=1
					usr.Chakragain()
					usr.hengeN += 1
					usr.firing = 0
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon = M.icon
					flick("smoke2",usr)
					usr.overlays += M.overlays
					XD
						sleep(170)
						switch(input("Do you wish to revert from Henge?","Henge",) in list("Yes","No"))
							if("Yes")
								usr.overlays = null
								usr.Henge = 0
								usr.firing=0
								usr.overlays = O.Copy()
								usr.icon = usr.Oicon
								usr.genup()
								usr.Skills()
								return
							if("No")
								usr.chakra-=20
								usr.genup()
								usr.Chakragain()
								usr.Skills()
								goto XD
				else
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Henge!"
					var/list/O = usr.overlays.Copy()
					usr.firing = 1
					usr.move = 0
					usr.chakra -= 10
					usr.Henge=1
					usr.hengeN += 1
					usr.move = 1
					usr.firing = 0
					usr.overlays = usr.overlays.Remove(usr.overlays)
					if(M)
						usr.icon = M.icon
					flick("smoke2",usr)
					usr.overlays += M.overlays
					sleep(170)
					usr.overlays = null
					usr.overlays += usr.hair
					usr.Henge = 0
					usr.overlays = O.Copy()
					usr.icon = usr.Oicon
					usr.random = rand(1,15)
					usr.genup()
					usr.Skills()

mob/var/tmp/goingmange=0

mob/mist
	verb
		MistArmor()
			set category = "Jutsus"
			set name = "Mist No Jutsu"

			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Marmor == 1)
				usr<<"Not now."
				return
			if(usr.caught)
				usr<<"Your captured"
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
			else
				var/list/O = usr.overlays.Copy()
				view()<<"<font color=silver><b><font face=verdana>[usr]: Mist No Jutsu!!"
				usr.gen = usr.gen*2
				usr.icon = 'mist.dmi'
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.Marmor = 1
				usr.chakra -= 20
				usr.Chakragain()
				sleep(300)
				usr.gen = usr.Mgen
				usr<<"You take down the Mist No Jutsu."
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				usr.Marmor =0


mob/sound
	verb
		ZanArmor()
			set category = "Jutsus"
			set name = "Zan No Jutsu"
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
			if(!usr.Zarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Zan No Jutsu!"
				usr.Zarmor =1
				usr.overlays += 'Zarmor.dmi'
				usr.gen = usr.gen*2
				fire
				if(usr.Zarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.Zarmor = 0
						usr.overlays -= 'Zarmor.dmi'
						usr.gen = usr.Mgen
						return
					else
						sleep(4)
						goto fire
			else if(usr.Zarmor)
				usr.Zarmor =0
				usr.overlays -= 'Zarmor.dmi'
				usr.gen = usr.Mgen
				usr<<"You take down the Zan No Jutsu."








mob/var/tmp/illuminating=0

//Tsukiyomi
mob
	verb
		Kawariminojutsu() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Kawarimi no jutsu"
			usr.Handseals()
			if(usr.firing||usr.kawa||usr.Kaiten||usr.counter)
				return
			if(usr.inso)
				usr<<"Not while in Soutourou!"
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
			if(usr.chakra <= 5)
				usr<<"Not enough chakra."
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
			else
				if(usr.KawaN >= 12)
					var/list/O = usr.overlays.Copy()
					usr.firing = 1
					usr.KawaN += 1
					usr.move = 0
					usr.kawa = 1
					usr.chakra -= 5
					sleep(1)
					usr.move = 1
					var/mob/L=new/mob/Klog
					L.name = usr.name
					L.icon = usr.icon
					L.dir=usr.dir
					L.health=99999999999
					L.overlays = usr.overlays
					L.loc=locate(usr.x,usr.y,usr.z)
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon = 'invis.dmi'
					usr.Chakragain()
					sleep(52)
					usr.icon = usr.Oicon
					usr.overlays = O.Copy()
					usr.overlays-='Bun.dmi'
					usr.overlays-='Bun.dmi'
					usr.overlays-='Bun.dmi'
					usr.overlays-='Bun.dmi'
					usr.overlays-='Bun.dmi'
					usr.kawa = 0
					L.overlays = L.overlays.Remove(L.overlays)
					L.icon = 'Landscapes.dmi'
					L.icon_state="Log"
					flick("smoke2",L)
					sleep(30)
					flick("smoke2",L)
					sleep(8)
					del(L)
					usr.random = rand(1,20)
					usr.ninup()
					usr.Skills()
					usr<<"<font color = blue>Your nin increased!"
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						var/list/O = usr.overlays.Copy()
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0
						usr.KawaN += 1
						usr.kawa = 1 // Disables the mob's movement
						usr.chakra -= 5
						sleep(1)
						usr.move = 1
						var/mob/L=new/mob/Klog
						L.name = usr.name
						L.icon = usr.icon
						L.overlays = usr.overlays
						L.loc=locate(usr.x,usr.y,usr.z)
						usr.icon = 'invis.dmi' // Sets the mob's icon_state
						usr.overlays = usr.overlays.Remove(usr.overlays)
						sleep(52)
						usr.icon = usr.Oicon
						usr.overlays = O.Copy()
						usr.kawa = 0
						L.overlays = L.overlays.Remove(L.overlays)
						L.icon= 'Landscapes.dmi'
						L.icon_state = "Log"
						flick("smoke2",L)
						sleep(30)
						flick("smoke2",L)
						sleep(8)
						del(L)
						usr.random = rand(1,20)
						usr.ninup()
						usr.Skills()
						usr<<"<font color = blue>Your nin increased!"
			sleep(30)
			usr.firing =0
			usr.kawa=0
mob/var/tmp
	kawa = 0

mob
	Klog
		name = "Log"
		icon = 'Landscapes.dmi'
		icon_state= "Log"
mob
	verb/BunshinNoJutsu()
		set name = "Bunshin no jutsu"
		set desc = "Create a clone"
		set category = "Jutsus"
		usr.Handseals()
		if(usr.firing)
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
		if(usr.chakra <= 10)
			usr << "Not enough chakra!"
			return
		if(usr.inso)
			return
		if(usr.Kaiten||usr.counter)
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
		if(usr.gate1)
			return
		if(usr.gate2)
			return
		if(usr.gate3)
			return
		if(usr.gate4)
			return
		if(usr.gate5)
			return
		if(usr.gate6)
			return
		if(usr.gate7)
			return
		if(usr.gate8)
			return
		if(!usr.handseals)

			return
		else
			if(usr.BunshinN >= 50)
				view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>B</FONT><FONT COLOR=#b2b1ba>u</FONT><FONT COLOR=#a3a0b4>n</FONT><FONT COLOR=#9490ad>s</FONT><FONT COLOR=#857fa6>h</FONT><FONT COLOR=#756f9f>i</FONT><FONT COLOR=#665e99>n</FONT><FONT COLOR=#574e92> </FONT><FONT COLOR=#483d8b>N</FONT><FONT COLOR=#4d468c>o</FONT><FONT COLOR=#524e8d> </FONT><FONT COLOR=#57578d>J</FONT><FONT COLOR=#5d5f8e>u</FONT><FONT COLOR=#62688f>t</FONT><FONT COLOR=#677090>s</FONT><FONT COLOR=#6c7990>u</FONT><FONT COLOR=#708090>!</FONT>"
				usr.firing = 1
				usr.KillBunshin()
				var/mob/npcs/Bunshin/A = new /mob/npcs/Bunshin
				var/mob/npcs/Bunshin/B = new /mob/npcs/Bunshin
				var/mob/npcs/Bunshin/C = new /mob/npcs/Bunshin
				usr.BunshinN += 1
				usr.Chakragain()
				usr.bunshin += 3
				if(A)
					A.original = usr
					A.icon = usr.icon
					A.name = "[usr]"
					A.overlays += usr.overlays
					A.loc = locate(usr.x+1, usr.y, usr.z)
					flick("smoke2",A)
					A.max_exp = 2
					A.exp = 2
					A.health = 1
				sleep(5)
				if(B)
					B.original = usr
					B.icon = usr.icon
					B.name = "[usr]"
					B.overlays += usr.overlays
					B.loc = locate(usr.x+2, usr.y, usr.z)
					flick("smoke2",B)
					B.max_exp = 2
					B.exp = 2
					B.health = 1
				sleep(5)
				if(C)
					C.original = usr
					C.icon = usr.icon
					C.name = "[usr]"
					C.overlays += usr.overlays
					C.loc = locate(usr.x+3, usr.y, usr.z)
					flick("smoke2",C)
					C.max_exp = 2
					C.exp = 2
					C.health = 1
				sleep(15)
				usr.firing=0
				usr.chakra -= 10
				usr.random = rand(1,3)
				if(usr.random == 1)
					usr.genexp += rand(7,10)
					usr.Skills()
					usr.genup()
				if(usr.random == 3)
					usr.Mgen += rand(1,20)
					usr.gen = usr.Mgen
					usr.Skills()
					usr<<"<font color = blue>Your genjutsu increased!"
			if(usr.BunshinN <= 50)
				usr.random = rand (1,4)
				if(usr.random == 1||usr.random == 4)
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>B</FONT><FONT COLOR=#b2b1ba>u</FONT><FONT COLOR=#a3a0b4>n</FONT><FONT COLOR=#9490ad>s</FONT><FONT COLOR=#857fa6>h</FONT><FONT COLOR=#756f9f>i</FONT><FONT COLOR=#665e99>n</FONT><FONT COLOR=#574e92> </FONT><FONT COLOR=#483d8b>N</FONT><FONT COLOR=#4d468c>o</FONT><FONT COLOR=#524e8d> </FONT><FONT COLOR=#57578d>J</FONT><FONT COLOR=#5d5f8e>u</FONT><FONT COLOR=#62688f>t</FONT><FONT COLOR=#677090>s</FONT><FONT COLOR=#6c7990>u</FONT><FONT COLOR=#708090>!</FONT>"
					usr.firing = 1
					var/mob/npcs/Bunshin/A = new /mob/npcs/Bunshin
					var/mob/npcs/Bunshin/B = new /mob/npcs/Bunshin
					usr.KillBunshin()
					usr.BunshinN += 1
					usr.Chakragain()
					usr.bunshin += 2
					if(A)
						A.original = usr
						A.icon = usr.icon
						A.name = "[usr]"
						A.overlays += usr.overlays
						A.loc = locate(usr.x+1, usr.y, usr.z)
						flick("smoke2",A)
						A.max_exp = 2
						A.exp = 2
						A.health = 1
					sleep(5)
					if(B)
						B.original = usr
						B.icon = usr.icon
						B.name = "[usr]"
						B.overlays += usr.overlays
						B.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",B)
						B.max_exp = 2
						B.exp = 2
						B.health = 1
					sleep(15)
					usr.firing=0
					usr.chakra -= 10
					usr.random = rand(1,3)
					if(usr.random == 1)
						usr.genexp += rand(5,7)
						usr.Skills()
						usr.genup()
					if(usr.random == 2)
						usr.Mgen += 1
						usr.gen += 1
						usr.Skills()
						usr<<"<font color = blue>Your genjutsu increased!"

obj
	bunshins
		KageBunshinnojutsu//being worked on dont use
			verb/KageBunshinNoJutsu()
				set name = "Kage Bunshin no jutsu"
				set desc = "Create a clone that can attack"
				set category = "Jutsus"
				usr.Handseals()
				if(usr.firing)
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
				if(usr.chakra <= 15)
					usr << "Not enough chakra!"
					return
				if(usr.inso)
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
				if(usr.Kaiten||usr.counter)
					return
				if(usr.gate1)
					return
				if(usr.gate2)
					return
				if(usr.gate3)
					return
				if(usr.gate4)
					return
				if(usr.gate5)
					return
				if(usr.gate6)
					return
				if(usr.gate7)
					return
				if(usr.gate8)
					return
				if(!usr.handseals)

					return
				else
					if(usr.KbunshinN >= 50)
						usr.firing = 1
						usr.KillBunshin()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#ff4f00>a</FONT><FONT COLOR=#ff5800>g</FONT><FONT COLOR=#ff6200>e</FONT><FONT COLOR=#ff6c00> </FONT><FONT COLOR=#ff7600>B</FONT><FONT COLOR=#ff7f00>u</FONT><FONT COLOR=#ff8900>n</FONT><FONT COLOR=#ff9300>s</FONT><FONT COLOR=#ff9c00>h</FONT><FONT COLOR=#ffa500>i</FONT><FONT COLOR=#f3a30d>n</FONT><FONT COLOR=#e69f1a> </FONT><FONT COLOR=#d99c28>N</FONT><FONT COLOR=#cc9835>o</FONT><FONT COLOR=#bf9542> </FONT><FONT COLOR=#b1914f>J</FONT><FONT COLOR=#a48e5c>u</FONT><FONT COLOR=#978a69>t</FONT><FONT COLOR=#8a8777>s</FONT><FONT COLOR=#7d8384>u</FONT><FONT COLOR=#708090>!</FONT>"
						var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/L = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/M = new /mob/npcs/KBunshin
						var/mob/npcs/Bunshin/N = new /mob/npcs/KBunshin
						usr.KbunshinN += 1
						usr.bunshin += 4
						usr.Chakragain()
						if(K)
							K.name = "[usr.name]"
							K.original = usr
							K.icon = usr.icon
							K.overlays += usr.overlays
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.exp = 2
							K.tai = usr.tai/2
							K.health = 1
						sleep(5)
						if(L)
							L.name = "[usr.name]"
							L.original = usr
							L.icon = usr.icon
							L.overlays += usr.overlays
							L.loc = locate(usr.x-2, usr.y, usr.z)
							flick("smoke2",L)
							L.max_exp = 2
							L.exp = 2
							L.tai = usr.tai/2
							L.health = 1
						sleep(5)
						if(M)
							M.name = "[usr.name]"
							M.original = usr
							M.icon = usr.icon
							M.overlays += usr.overlays
							M.loc = locate(usr.x+1, usr.y, usr.z)
							flick("smoke2",M)
							M.max_exp = 2
							M.exp = 2
							M.tai = usr.tai/2
							M.health = 1
						sleep(5)
						if(N)
							N.name = "[usr.name]"
							N.original = usr
							N.icon = usr.icon
							N.overlays += usr.overlays
							N.loc = locate(usr.x+2, usr.y, usr.z)
							flick("smoke2",N)
							N.max_exp = 2
							N.exp = 2
							N.tai = usr.tai/2
							N.health = 1
						sleep(14)
						usr.firing=0
						usr.chakra -= 15
						usr.Mnin+=rand(10,50)
						usr.nin=usr.Mnin
						usr.Skills()
						usr.ninup()
						usr<<"<font color = blue>Your ninjutsu increased!"
						sleep(500)
						del(K)
						del(L)
						del(M)
						del(N)
					else
						usr.random = rand (1,4)
						if(usr.random == 1||usr.random == 4)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#ff4f00>a</FONT><FONT COLOR=#ff5800>g</FONT><FONT COLOR=#ff6200>e</FONT><FONT COLOR=#ff6c00> </FONT><FONT COLOR=#ff7600>B</FONT><FONT COLOR=#ff7f00>u</FONT><FONT COLOR=#ff8900>n</FONT><FONT COLOR=#ff9300>s</FONT><FONT COLOR=#ff9c00>h</FONT><FONT COLOR=#ffa500>i</FONT><FONT COLOR=#f3a30d>n</FONT><FONT COLOR=#e69f1a> </FONT><FONT COLOR=#d99c28>N</FONT><FONT COLOR=#cc9835>o</FONT><FONT COLOR=#bf9542> </FONT><FONT COLOR=#b1914f>J</FONT><FONT COLOR=#a48e5c>u</FONT><FONT COLOR=#978a69>t</FONT><FONT COLOR=#8a8777>s</FONT><FONT COLOR=#7d8384>u</FONT><FONT COLOR=#708090>!</FONT>"
							usr.firing = 1
							usr.KillBunshin()
							var/mob/npcs/Bunshin/K = new /mob/npcs/KBunshin
							var/mob/npcs/Bunshin/M = new /mob/npcs/KBunshin
							usr.KbunshinN += 1
							usr.Chakragain()
							usr.bunshin += 2
							sleep(5)
							if(K)
								K.name = "[usr.name]"
								K.original = usr
								K.icon = usr.icon
								K.overlays += usr.overlays
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.exp = 2
								K.tai = usr.tai/2
								K.health = 1
							sleep(5)
							if(M)
								M.name = "[usr.name]"
								M.original = usr
								M.icon = usr.icon
								M.overlays += usr.overlays
								M.loc = locate(usr.x+1, usr.y, usr.z)
								flick("smoke2",M)
								M.max_exp = 2
								M.exp = 2
								M.tai = usr.tai/2
								M.health = 1
							sleep(14)
							usr.firing=0
							usr.chakra -= 15
							usr.Mnin+=rand(1,25)
							usr.nin=usr.Mnin
							usr.Skills()
							usr.ninup()
							usr<<"<font color = blue>Your ninjutsu increased!"

							sleep(500)
							del(K)
							del(M)
obj/var/tmp
	Gowner=""
	moved=0
	total=6
	nin=0



mob
	verb
		Basic()
			set category = "Jutsus"
			set name = "Basic"
			set desc = "The basic fighting style."
			if(!usr.Basic)
				usr<<"Your now useing the basic fighting style."
				usr.Jyuken = 0
				usr.Tekken = 0
				usr.Basic = 1
				return
			if(usr.Basic)
				usr<<"Your already useing the basic fighting style."
				return

obj
	kriga
		icon = 'mist.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999999999999

mob/mist
	verb
		KirigakurenoJutsu(mob/M in oview(11)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Kirigakure no Jutsu"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.caught)
				usr<<"Your captured"
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
			if(usr.chakra <= 10)
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
			else // If the firing var isn't 1...
				var/list/O = usr.overlays.Copy()
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				M.Frozen = 1 // Disables the mob's movement
				usr.chakra -= 10
				usr.Chakragain()
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.icon = 'mist.dmi'
				view()<<"[usr] creates a shroud of mist around [M]!"
				var/obj/kriga/F = new /obj/kriga/
				var/obj/kriga/G = new /obj/kriga/
				var/obj/kriga/H = new /obj/kriga/
				var/obj/kriga/I = new /obj/kriga/
				var/obj/kriga/J = new /obj/kriga/
				var/obj/kriga/L = new /obj/kriga/
				var/obj/kriga/A = new /obj/kriga/
				var/obj/kriga/B = new /obj/kriga/
				var/obj/kriga/M2 = new /obj/kriga/
				var/obj/kriga/N = new /obj/kriga/
				var/obj/kriga/MT = new /obj/kriga/
				var/obj/kriga/P = new /obj/kriga/
				var/obj/kriga/D = new /obj/kriga/
				var/obj/kriga/E = new /obj/kriga/
				var/obj/kriga/C = new /obj/kriga/
				var/obj/kriga/K = new /obj/kriga/
				var/obj/kriga/Q = new /obj/kriga/
				var/obj/kriga/R = new /obj/kriga/
				var/obj/kriga/S = new /obj/kriga/
				var/obj/kriga/T = new /obj/kriga/
				var/obj/kriga/W = new /obj/kriga/
				var/obj/kriga/X = new /obj/kriga/
				var/obj/kriga/Y = new /obj/kriga/
				var/obj/kriga/Z = new /obj/kriga/
				var/obj/kriga/AB = new /obj/kriga/
				var/obj/kriga/AC = new /obj/kriga/
				var/obj/kriga/AD = new /obj/kriga/
				var/obj/kriga/AE = new /obj/kriga/
				var/obj/kriga/AF = new /obj/kriga/
				var/obj/kriga/AG = new /obj/kriga/
				var/obj/kriga/AH = new /obj/kriga/
				var/obj/kriga/AI = new /obj/kriga/
				var/obj/kriga/AJ = new /obj/kriga/
				var/obj/kriga/AK = new /obj/kriga/
				var/obj/kriga/AL = new /obj/kriga/
				var/obj/kriga/AM = new /obj/kriga/
				var/obj/kriga/AN = new /obj/kriga/
				var/obj/kriga/AO = new /obj/kriga/
				var/obj/kriga/AP = new /obj/kriga/
				var/obj/kriga/AQ = new /obj/kriga/
				var/obj/kriga/AR = new /obj/kriga/
				var/obj/kriga/AS = new /obj/kriga/
				var/obj/kriga/AT = new /obj/kriga/
				var/obj/kriga/AU = new /obj/kriga/
				var/obj/kriga/AV = new /obj/kriga/
				var/obj/kriga/AW = new /obj/kriga/
				var/obj/kriga/AX= new /obj/kriga/
				var/obj/kriga/AY = new /obj/kriga/
				var/obj/kriga/AZ = new /obj/kriga/
				K.loc = locate(M.x,M.y,M.z)
				A.loc = locate(M.x+1,M.y,M.z)
				C.loc = locate(M.x-1,M.y,M.z)
				B.loc = locate(M.x,M.y+1,M.z)
				D.loc = locate(M.x,M.y-1,M.z)
				E.loc = locate(M.x+1,M.y+1,M.z)
				F.loc = locate(M.x-1,M.y-1,M.z)
				G.loc = locate(M.x-1,M.y+1,M.z)
				H.loc = locate(M.x+1,M.y-1,M.z)
				I.loc = locate(M.x+2,M.y,M.z)
				J.loc = locate(M.x-2,M.y,M.z)
				L.loc = locate(M.x,M.y+2,M.z)
				M2.loc = locate(M.x,M.y-2,M.z)
				N.loc = locate(M.x+2,M.y+2,M.z)
				MT.loc = locate(M.x-2,M.y-2,M.z)
				P.loc = locate(M.x-2,M.y+2,M.z)
				Q.loc = locate(M.x+2,M.y-2,M.z)
				R.loc = locate(M.x+3,M.y,M.z)
				S.loc = locate(M.x-3,M.y,M.z)
				T.loc = locate(M.x,M.y+3,M.z)
				W.loc = locate(M.x,M.y-3,M.z)
				X.loc = locate(M.x+3,M.y+3,M.z)
				Y.loc = locate(M.x-3,M.y-3,M.z)
				Z.loc = locate(M.x-3,M.y+3,M.z)
				AB.loc = locate(M.x-3,M.y-2,M.z)
				AC.loc = locate(M.x+3,M.y+2,M.z)
				AD.loc = locate(M.x+3,M.y-2,M.z)
				AE.loc = locate(M.x-3,M.y+2,M.z)
				AF.loc = locate(M.x+2,M.y+3,M.z)
				AG.loc = locate(M.x-2,M.y-3,M.z)
				AH.loc = locate(M.x-2,M.y+3,M.z)
				AI.loc = locate(M.x+2,M.y-3,M.z)
				AJ.loc = locate(M.x-1,M.y-2,M.z)
				AK.loc = locate(M.x+1,M.y+2,M.z)
				AL.loc = locate(M.x+1,M.y-2,M.z)
				AM.loc = locate(M.x-1,M.y+2,M.z)
				AN.loc = locate(M.x+2,M.y+1,M.z)
				AO.loc = locate(M.x-2,M.y-1,M.z)
				AP.loc = locate(M.x-2,M.y+1,M.z)
				AQ.loc = locate(M.x+2,M.y-1,M.z)
				AR.loc = locate(M.x-1,M.y-3,M.z)
				AS.loc = locate(M.x+1,M.y+3,M.z)
				AT.loc = locate(M.x+1,M.y-3,M.z)
				AU.loc = locate(M.x-1,M.y+3,M.z)
				AV.loc = locate(M.x+3,M.y+1,M.z)
				AW.loc = locate(M.x-3,M.y-1,M.z)
				AX.loc = locate(M.x-3,M.y+1,M.z)
				AY.loc = locate(M.x+3,M.y-1,M.z)
				AZ.loc = locate(M.x+3,M.y-3,M.z)
				sleep(600)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				del(K)
				del(A)
				del(B)
				del(C)
				del(D)
				del(E)
				del(F)
				del(G)
				del(H)
				del(I)
				del(J)
				del(L)
				del(M2)
				del(N)
				del(MT)
				del(P)
				del(Q)
				del(R)
				del(S)
				del(T)
				del(W)
				del(X)
				del(Y)
				del(Z)
				del(AB)
				del(AC)
				del(AD)
				del(AE)
				del(AF)
				del(AG)
				del(AH)
				del(AI)
				del(AJ)
				del(AK)
				del(AL)
				del(AM)
				del(AN)
				del(AO)
				del(AP)
				del(AQ)
				del(AR)
				del(AS)
				del(AT)
				del(AU)
				del(AV)
				del(AW)
				del(AX)
				del(AY)
				del(AZ)
				if(M)
					M.Frozen = 0
				sleep(100)
				usr.firing=0
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

mob/pain
	verb
		SennenGoroshi()
			set name = "Sennen Goroshi"
			set desc = ""
			set category = "Jutsus"
			for(var/mob/M in get_step(usr,usr.dir))
				if(M.ingat)
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.firing)
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
				if (M.intank)
					return
				if (usr.Kaiten)
					return
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
					return
				if (M.Kaiten||M.counter)
					var/damage = round(usr.Mtai)
					usr <<"You attack [M] but their kaiten reflects the damage back at you."
					usr.firing = 1
					M <<"You reflect [usr]'s attack causing them to hurt themselfs."
					usr.health -= damage
					usr.Death(M)
				else					//otherwise...
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#808080>F</FONT><FONT COLOR=#888888>o</FONT><FONT COLOR=#8f8f8f>r</FONT><FONT COLOR=#979797>b</FONT><FONT COLOR=#9e9e9e>i</FONT><FONT COLOR=#a6a6a6>d</FONT><FONT COLOR=#adadad>d</FONT><FONT COLOR=#b5b5b5>e</FONT><FONT COLOR=#bcbcbc>n</FONT><FONT COLOR=#c4c4c4> </FONT><FONT COLOR=#cbcbcb>J</FONT><FONT COLOR=#d3d3d3>u</FONT><FONT COLOR=#dadada>t</FONT><FONT COLOR=#e2e2e2>s</FONT><FONT COLOR=#e9e9e9>u</FONT><FONT COLOR=#f1f1f1>:</FONT><FONT COLOR=#f8f8f8> </FONT><FONT COLOR=#ffffff>1</FONT><FONT COLOR=#f8f9fa>0</FONT><FONT COLOR=#f0f2f4>0</FONT><FONT COLOR=#e8ebee>0</FONT><FONT COLOR=#e0e4e8> </FONT><FONT COLOR=#d8dde2>Y</FONT><FONT COLOR=#d0d6dc>e</FONT><FONT COLOR=#c8cfd6>a</FONT><FONT COLOR=#c0c8d0>r</FONT><FONT COLOR=#b7c0c9>s</FONT><FONT COLOR=#afb9c3> </FONT><FONT COLOR=#a7b2bd>O</FONT><FONT COLOR=#9fabb7>f</FONT><FONT COLOR=#97a4b1> </FONT><FONT COLOR=#8f9dab>P</FONT><FONT COLOR=#8796a5>a</FONT><FONT COLOR=#7f8f9f>i</FONT><FONT COLOR=#778899>n</FONT>"
					usr << "You attack [M] with Sennen Goroshi!"
					usr.firing = 1
					var/damage = round(usr.Mtai)
					view() << "[usr] hits [M] with Sennen Goroshi for [damage] damage!"
					M.health -= damage
					M.Death(usr)
					usr.random = rand(1,6)
					if(random == 5||random==1)
						usr.taiexp += rand(1,10)
						usr.taiup()
						usr.Skills()
						sleep(30)
						usr.firing = 0
					else
						sleep(30)
						usr.firing = 0
						return
					sleep(30)
					usr.firing=0

mob/Bump(mob/src)
	..()
	if(istype(src,/turf))//if it's turf...
		return//return...
	if(istype(src,/obj))//if it's obj...
		return
	if(src.PK==0)
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
	if(usr.captured)
		usr<<"Your captured"
		return
	if(usr.caught)
		usr<<"Your captured"
		return
	if(usr.meditating)
		usr<<"Not while meditating"
		return
	if(usr.Rasenganon)
		if(src.Rasenganon)
			if(usr.dir==NORTH)
				step(usr,SOUTH)
			if(usr.dir==SOUTH)
				step(usr,NORTH)
			if(usr.dir==WEST)
				step(usr,EAST)
			if(usr.dir==EAST)
				step(usr,WEST)
			if(src.dir==NORTH)
				step(src,SOUTH)
			if(src.dir==SOUTH)
				step(src,NORTH)
			if(src.dir==WEST)
				step(src,EAST)
			if(src.dir==EAST)
				step(src,WEST)
			usr.firing=0
			src.firing=0
			usr.Rasenganon=0
			src.Rasenganon=0
			return
		if(src.Chidorion&&!usr.battlingRC)
			usr.battlingRC=1
			src.battlingRC=1
			usr.Frozen=1
			src.Frozen=1
			usr.firing=1
			src.firing=1
			usr.overlays+='rasenganover.dmi'
			src.overlays+='chidoriover.dmi'
			sleep(10)
			if(usr.dir==NORTH&&src.dir==SOUTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RasenganD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRC=0
						usr.battlingRC=0
						src.overlays-='chidoriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Chidori for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRC=0
					usr.battlingRC=0
					src.overlays-='chidoriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==SOUTH&&src.dir==NORTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RasenganD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRC=0
						usr.battlingRC=0
						src.overlays-='chidoriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Chidori for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRC=0
					usr.battlingRC=0
					src.overlays-='chidoriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==WEST&&src.dir==EAST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RasenganD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRC=0
						usr.battlingRC=0
						src.overlays-='chidoriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Chidori for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRC=0
					usr.battlingRC=0
					src.overlays-='chidoriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==EAST&&src.dir==WEST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RasenganD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRC=0
						usr.battlingRC=0
						src.overlays-='chidoriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Chidori for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRC=0
					usr.battlingRC=0
					src.overlays-='chidoriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
		else
			if(!src.Rasenganon&&!src.Chidorion)
				view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
				src.health -= usr.RasenganD
				usr.battlingRC=0
				src.battlingRC=0
				usr.firing=0
				usr.Rasenganon = 0
				usr.RasenganD = 0
				src.Death(usr)
				return
	if(usr.Chidorion)
		if(src.Chidorion)
			if(usr.dir==NORTH)
				step(usr,SOUTH)
			if(usr.dir==SOUTH)
				step(usr,NORTH)
			if(usr.dir==WEST)
				step(usr,EAST)
			if(usr.dir==EAST)
				step(usr,WEST)
			if(src.dir==NORTH)
				step(src,SOUTH)
			if(src.dir==SOUTH)
				step(src,NORTH)
			if(src.dir==WEST)
				step(src,EAST)
			if(src.dir==EAST)
				step(src,WEST)
			usr.firing=0
			src.firing=0
			usr.Chidorion=0
			src.Chidorion=0
			return
		if(src.Rasenganon&&!usr.battlingRC)
			usr.battlingRC=1
			src.battlingRC=1
			usr.Frozen=1
			src.Frozen=1
			usr.firing=1
			src.firing=1
			src.overlays+='rasenganover.dmi'
			usr.overlays+='chidoriover.dmi'
			sleep(10)
			if(usr.dir==NORTH&&src.dir==SOUTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.ChidoriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRC=0
						usr.battlingRC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRC=0
					usr.battlingRC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==SOUTH&&src.dir==NORTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.ChidoriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRC=0
						usr.battlingRC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRC=0
					usr.battlingRC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==WEST&&src.dir==EAST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.ChidoriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRC=0
						usr.battlingRC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRC=0
					usr.battlingRC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==EAST&&src.dir==WEST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.ChidoriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRC=0
						usr.battlingRC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRC=0
					usr.battlingRC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			else
				usr<<"It cancels out!"
				src<<"They cancel out!"
				return
		else
			if(!src.Rasenganon&&!src.Chidorion)
				view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
				src.health -= usr.ChidoriD
				usr.battlingRC=0
				src.battlingRC=0
				usr.firing=0
				usr.ChidoriD = 0
				usr.Chidorion = 0
				src.Death(usr)
				return
 if(istype(src,/turf))//if it's turf...
  return//return...
 if(istype(src,/obj))//if it's obj...
  return//return..
 else if(usr.ingat)//GATSUUGA
  if(src.isdog)
   return
  if(src==usr.owner)
   return
  var/Damage = round(usr.tai*2)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Tsuuga for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else
   if(src==usr.owner)
    return
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Tsuuga for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)
 else if(usr.intank == 1)//MEAT TANK
  var/Damage = round(usr.tai*2)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Nikudan Sensha for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Nikudan Sensha for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)
 else if(usr.ingar)//GAROUGA
  var/Damage = round(usr.tai*5)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their garouga for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their garouga for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)
 else if(usr.inspike == 1)//SPIKES MEAT TANK
  var/Damage = round(usr.tai*5)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Nikudan Hari Sensha for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Nikudan Hari Sensha for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)

obj
	KaryHead
		icon='karyhead.dmi'
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	KaryTail
		icon='karytail.dmi'
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
obj
	GoukakyuuHead
		icon='goukakyuuthing.dmi'
		icon_state="head"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuTail
		icon='goukakyuuthing.dmi'
		icon_state="tail"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	middle
		icon='goukakyuuthing.dmi'
		icon_state="1"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	topleft
		icon='goukakyuuthing.dmi'
		icon_state="2"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	topright
		icon='goukakyuuthing.dmi'
		icon_state="3"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

	bottomleft
		icon='goukakyuuthing.dmi'
		icon_state="4"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)
	bottomright
		icon='goukakyuuthing.dmi'
		icon_state="5"
		layer = MOB_LAYER+1
		New()
			..()
			spawn(34)
			del(src)

mob/jutsu
	verb
		ShushinNoJutsu(mob/M in oview(10))
			set category = "Jutsus"
			set name = "Shushin No Jutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.hyoushou)
				return
			if(usr.chakra <= 100)
				usr<<"Not enough Chakra!"
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
			else // If the firing var isn't 1.
				usr.chakra -= 100
				usr.loc = locate(M.x,M.y-1,M.z)
				usr.Chakragain()
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>S</FONT><FONT COLOR=#bebebe>h</FONT><FONT COLOR=#bbbbbb>u</FONT><FONT COLOR=#b8b8b8>s</FONT><FONT COLOR=#b5b5b5>h</FONT><FONT COLOR=#b2b2b2>i</FONT><FONT COLOR=#afafaf>n</FONT><FONT COLOR=#acacac> </FONT><FONT COLOR=#a9a9a9>N</FONT><FONT COLOR=#a2a2a2>o</FONT><FONT COLOR=#9a9a9a> </FONT><FONT COLOR=#929292>J</FONT><FONT COLOR=#8a8a8a>u</FONT><FONT COLOR=#818181>t</FONT><FONT COLOR=#797979>s</FONT><FONT COLOR=#717171>u</FONT><FONT COLOR=#696969>!</FONT>"
mob/jutsu
	verb
		MieMie()
			set category = "Jutsus"
			set name = "Mei Mei no Jutsu"
			usr.Handseals()
			if (usr.ingat)
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
			if(usr.firing)
				return
			if (usr.sphere)
				usr<<"Not while useing sand of sphere"
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
			if (usr.inMei)
				usr<<"You cant use Mei Mei no jutsu right now!"
				return
			if(usr.chakra <= 20)
				usr<<"Not enough chakra!"
				return
			if(!usr.handseals)
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else
				var/list/O = usr.overlays.Copy()
				view()<<"<font color=silver><b><font face=verdana>[usr]: Mei Mei no jutsu!!"
				usr.icon = 'invis.dmi'
				usr.firing=1
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.inMei = 1
				usr.chakra -= 20
				usr.Chakragain()
				sleep(100)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				sleep(10)
				usr.inMei = 0
				usr.firing=0


/*dance of the camellia
dance of the willows
dance of the pines
dance of the clematis
dance of the seedling ferns
*/

obj/var/tmp
	tai=0
	gen=0
	Rowner=""
	Jowner=""
	Zowner=""
	GownerB=""


mob/jutsu
	verb
		Rasengan()
			set category = "Jutsus"
			set name = "Rasengan"
			if (usr.ingat)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
			if (usr.sphere)
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
			if(usr.inso)
				return
			if (usr.firing)
				return
			if(Rasenganon)
				usr <<"Your already using Rasengan!"
				return
			else
				var/damage = input("How much chakra would you like to put in?")as num
				if(usr.RasenganU >= 30)
					if(damage <= 4999)
						usr<<"You must put at least 5000 chakra into it!!"
						return
					if(damage >= usr.chakra)
						usr<<"You put to much energy into the rasengan and lose control of it!"
						return
					else
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#00bfff>R</FONT><FONT COLOR=#30c0f0>a</FONT><FONT COLOR=#61c0e0>s</FONT><FONT COLOR=#91c0d0>e</FONT><FONT COLOR=#c0c0c0>n</FONT><FONT COLOR=#bdc1c8>g</FONT><FONT COLOR=#b9c3d0>a</FONT><FONT COLOR=#b4c4d7>n</FONT><FONT COLOR=#b0c4de>!</FONT>"
						usr.RasenganU += 1
						usr.chakra -= damage
						usr.RasenganD = damage*1.5
						usr.Rasenganon = 1
						usr.firing = 1
						usr.Chakragain()
						usr.overlays += 'Rasengan.dmi'
						usr.icon_state = "run"
						RD
							if(!usr.battlingRC)
								RasenganD -= rand(1000,2000)
							if(usr.RasenganD <= 1&&!usr.battlingRC)
								usr << "Your Rasengan runs out of energy"
								usr.RasenganD = 0
								usr.Rasenganon = 0
								usr.overlays -= 'Rasengan.dmi'
								usr.overlays -= 'Rasengan.dmi'
								usr.overlays -= 'Rasengan.dmi'
								usr.overlays -= 'Rasengan.dmi'
								usr.overlays -= 'Rasengan.dmi'
								usr.firing = 0
								return
							else
								sleep(6)
								goto RD
				else
					usr.random = rand (1,3)
					if(usr.random == 1||usr.random == 2)
						if(damage <= 4999)
							usr<<"You must put at least 5000 chakra into it!!"
							return
						if(damage >= usr.chakra)
							usr<<"You put to much energy into the rasengan and lose control of it!"
							return
						else
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#00bfff>R</FONT><FONT COLOR=#30c0f0>a</FONT><FONT COLOR=#61c0e0>s</FONT><FONT COLOR=#91c0d0>e</FONT><FONT COLOR=#c0c0c0>n</FONT><FONT COLOR=#bdc1c8>g</FONT><FONT COLOR=#b9c3d0>a</FONT><FONT COLOR=#b4c4d7>n</FONT><FONT COLOR=#b0c4de>!</FONT>"
							usr.Rasenganon = 1
							usr.RasenganU += 1
							usr.chakra -= damage
							usr.RasenganD = damage*1.5
							usr.Chakragain()
							usr.firing = 1
							usr.overlays += 'Rasengan.dmi'
							usr.icon_state = "run"
							RD
								if(!usr.battlingRC)
									RasenganD -= rand(1000,2000)
								if(usr.RasenganD <= 1)
									usr << "Your Rasengan runs out of energy"
									usr.RasenganD = 0
									usr.overlays -= 'Rasengan.dmi'
									usr.overlays -= 'Rasengan.dmi'
									usr.overlays -= 'Rasengan.dmi'
									usr.overlays -= 'Rasengan.dmi'
									usr.overlays -= 'Rasengan.dmi'
									usr.Rasenganon = 0
									return
								else
									sleep(6)
									goto RD
					else
						usr<<"You fail to use rasengan!"
						usr.chakra -= damage
						return

mob/sound
	verb
		Kyoumeisen(mob/M in get_step(src,src.dir))
			set category = "Jutsus"
			set name = "Kyoumeisen"
			usr.Handseals()
			if(usr.firing)
				usr<<"Not now"
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
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(!usr.handseals)
				return
			else
				usr<<"You send Vibrating sound waves through [M]'s body slowing their movement!"
				M.Move_Delay = 10
				sleep(600)
				if(M)
					M.Move_Delay = 1
					M<<"Your body recovers from the Kyoumeisen!"
					usr<<"[M]'s Kyoumeisen ends"
mob/sound
	verb
		Zankyokukuuha(mob/m in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Zankyokukuuha"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
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
			if(m.counter)
				usr<<"They copy and reflect it back at you."
				m<<"You copy and reflect it back at them."
				usr.health -= m.Mnin/5
				Death(usr)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(m.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 20)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.random = rand (1,4)
				if(usr.random == 1||usr.random == 4)
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.chakra -= 20
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Zankyokukuuha!"
					var/obj/Zanyokukuuha/D = new /obj/Zanyokukuuha
					var/obj/Zanyokukuuha/S = new /obj/Zanyokukuuha
					var/obj/Zanyokukuuha/K = new /obj/Zanyokukuuha
					usr.target=m
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=2
					K.Zowner=usr
					walk_towards(K,m)
					sleep(5)
					D.loc = usr.loc
					D.nin=usr.nin
					D.name="[usr]"
					D.Move_Delay=2
					D.Zowner=usr
					walk_towards(D,m)
					sleep(5)
					S.loc = usr.loc
					S.nin=usr.nin
					S.Move_Delay=2
					S.name="[usr]"
					S.Zowner=usr
					walk_towards(S,m)
					sleep(1)
					usr.move = 1
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					if (target == null)
						del(D)
						del(S)
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
				usr<<"You failed to use Zankyokukuuha"

mob/sound
	verb
		Zankuuha() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Zankuuha"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return

			else // If the firing var isn't 1...
				usr.chakra -= 15
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Zankuuha!"
				var/obj/Zankuuha/K = new /obj/Zankuuha
				K.loc = usr.loc
				K.nin=usr.nin
				K.dir = usr.dir
				K.Move_Delay=2
				usr.Chakragain()
				K.name="[usr]"
				K.Zowner=usr
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

mob/var/tmp/canmed=0


obj
	katonheki
		icon = 'katonheki.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Katonheki for [damage] damage!!"
					M.Death(M)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/
mob/wind
	verb
		KazeNoYaiba()//dance 3
			set name = "Kaze No Yaiba"
			set desc = ""
			set category = "Jutsus"
			usr.Handseals()
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
			if(usr.PK==0)
				usr<<"NONPK ZONE!"
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
			for(var/mob/M in oview(2))
				if (M.ingat == 1||M.intank == 1||usr.Kaiten == 1)				.
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
				if (M.sphere == 1)
					usr<<"Your attack bounces off of the sand!"
				if (usr.firing == 1)
					usr<<"Not right now!"
				if(M.hit == 1)
					..()
				if (M.Kaiten == 1)
					var/damage = round(usr.tai/4)
					usr <<"You attack [M] but their kaiten reflects the damage back at you."
					M <<"You reflect [usr]'s attack causing them to hurt themself."
					usr.health -= damage
					usr.Death(M)
				else					//otherwise...
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Kaze No Yaiba!"
					usr << "You attack [M] with Kaze No Yaiba!"
					var/damage = round(usr.tai)
					view() << "[usr] hits [M] with Kaze No Yaiba for [damage] damage!"
					M.health -= damage
					M.Death(usr)
					M.hit = 1
					if(usr.Mtai <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.taiexp += rand(1,10)
							usr.taiup()
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
//RENKUUDAN IS THE SECOND OF THE FUUTON JUTSUS
mob/needle
	verb
		Needle_Jutsu(mob/m in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Kage Needle No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(m.counter)
				usr<<"They copy and reflect it back at you."
				m<<"You copy and reflect it back at them."
				usr.health -= m.Mnin/5
				Death(usr)
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
			if(m.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 20)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(usr.Fuuton3N >= 40)
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Fuuton3N += 1
					usr.chakra -= 20
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=grey> Says: Kage Needle No Jutsu!"
					var/obj/Needle/D = new /obj/Needle
					var/obj/Needle/S = new /obj/Needle
					var/obj/Needle/K = new /obj/Needle
					usr.target=m
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=2
					K.Gowner=usr
					walk_towards(K,m)
					sleep(5)
					D.loc = usr.loc
					D.nin=usr.nin
					D.Move_Delay=2
					D.name="[usr]"
					D.Gowner=usr
					walk_towards(D,m)
					sleep(5)
					S.loc = usr.loc
					S.nin=usr.nin
					S.Move_Delay=2
					S.name="[usr]"
					S.Gowner=usr
					walk_towards(S,m)
					sleep(1)
					usr.move = 1
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					if (target == null)
						del(D)
						del(S)
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
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.chakra -= 20
						usr.Fuuton3N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=grey> Says: Kage Needle No Jutsu!"
						var/obj/Needle/D = new /obj/Needle
						var/obj/Needle/S = new /obj/Needle
						var/obj/Needle/K = new /obj/Needle
						usr.target=m
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Move_Delay=2
						K.Gowner=usr
						walk_towards(K,m)
						sleep(5)
						D.loc = usr.loc
						usr.Chakragain()
						D.nin=usr.nin
						D.Move_Delay=2
						D.name="[usr]"
						D.Gowner=usr
						walk_towards(D,m)
						sleep(5)
						S.loc = usr.loc
						S.nin=usr.nin
						S.Move_Delay=2
						S.name="[usr]"
						S.Gowner=usr
						walk_towards(S,m)
						sleep(1)
						usr.move = 1
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						if (target == null)
							del(D)
							del(S)
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
					usr<<"You failed to use Kage Needle No Jutsu"




//RAIKYUU IS THE FIRST OF THE RAI JUTSUS
obj
	DemonMirror
		icon='mirror.dmi'
		icon_state=""
		density=1
obj
	DenseThing
		density=1
mob/var/tmp/hyoushou=0

mob/var
	KyuuN=0
	tmp/captured=0



obj
	bunshins
		SunaBunshinnojutsu
			verb/SunaBunshinNoJutsu()
				set name = "Suna Bunshin no jutsu"
				set desc = "Create a clone of sand that can attack"
				set category = "Jutsus"
				usr.Handseals()
				if(usr.chakra <= 17)
					usr << "Not enough chakra!"
					return
				if (usr.firing)
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
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(!usr.handseals)
					return
				else
					usr.KillBunshin()
					usr.firing=1
					view() << "<font color=silver><b><font face=verdana>[usr] says:Suna Bunshin No Jutsu!!"
					var/mob/npcs/KBunshin/S = new /mob/npcs/KBunshin
					usr.sunaU += 1
					usr.Chakragain()
					usr.Sbunshin += 1
					if(S)
						S.original = usr
						S.name = "[usr.name]"
						S.icon = usr.icon
						S.overlays += usr.overlays
						S.loc = locate(usr.x, usr.y - 1, usr.z)
						S.tai = usr:tai/8
						S.health = 1
						usr.chakra -= 17
					sleep(20)
					usr.firing=0
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
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
obj
	bunshins
		KekkaiKonchuuBunshinnoJutsu
			verb/KekkaiKonchuuBunshinnoJutsu()
				set name = "Kekkai Konchuu Bunshin no jutsu"
				set desc = "Create a clone out of bugs"
				set category = "Jutsus"
				usr.Handseals()
				if(usr.Konchuu <= 10)
					usr << "Not enough bugs!"
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
				if(usr.chakra <= 25)
					usr << "Not enough chakra!"
					return
				if (usr.firing)
					return
				if(!usr.handseals)

					return
				else
					usr.KillBunshin()
					view() << "<font color=silver><b><font face=verdana>[usr] says:Kekkai Konchuu Bunshin No Jutsu!!"
					usr.firing = 1
					var/mob/npcs/KBunshin/S = new /mob/npcs/KBunshin
					usr.KKbunshin += 1
					usr.Chakragain()
					usr.Konchuu -= 5
					if(S)
						S.original = usr
						S.name = "[usr.name]"
						S.icon = usr.icon
						S.overlays += usr.overlays
						S.loc = locate(usr.x, usr.y - 1, usr.z)
						S.tai = usr.Mtai/2
						S.health = usr.maxhealth/2
						usr.chakra -= 17
					sleep(30)
					usr.firing = 0
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,5)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.ninup()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						usr.random = rand(1,7)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."

mob/var/tmp/jourou=0
mob/jutsu
	verb
		JourouSenbon(mob/M in oview(3))
			set category="Jutsus"
			set name="Jourou Senbon"
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra>=50)
				usr.firing=1
				sleep(10)
				usr.random=rand(1,4)
				if(usr.random==1)
					var/damage=usr.tai
					usr<<"You hit [M]'s leg with Jourou Senbon ([damage] damage)"
					M<<"Your leg has been hit by [usr]'s Jourou Senbon slowing your movements ([damage] damage)!"
					M.Move_Delay=10
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
						usr.firing=0
						return
					usr.firing=0
					sleep(300)
					M.Move_Delay=0
					return
				if(usr.random==2)
					var/damage=usr.tai*2
					usr<<"You hit [M]'s torso with Jourou Senbon causing significant damage ([damage] damage)!"
					M<<"Your torso has been hit by [usr]'s Jourou Senbon causing significant damage ([damage] damage)!"
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
						usr.firing=0
						return
					usr.firing=0
					sleep(300)
					return
				if(usr.random==4)
					var/damage=usr.tai*5
					usr<<"You hit [M]'s eyes with Jourou Senbon causing coordination loss ([damage] damage)!"
					M<<"Your eyes have been hit by [usr]'s Jourou Senbon causing coordination loss ([damage] damage)!"
					M.screwed=1
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
						usr.firing=0
						return
					usr.firing=0
					sleep(300)
					M.screwed=0
					return
				else
					usr.firing=1
					usr<<"You missed!"
					sleep(20)
					usr.firing=0
					return
			else
				usr<<"Not enough Chakra"
				return
mob/var
	bakuretsuN=0
	bakuretsuuse=0
mob/jutsu
	verb
		BakuretsuBunshin()
			set category = "Jutsus"
			set name="Bakuretsu Kage Bunshin"
			usr.Handseals()
			if(usr.firing)
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
			if(!usr.handseals)
				return
			if(usr.bakuretsuuse)
				return
			for(var/mob/npcs/Bunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*5
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*5
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*5
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npcs/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*10
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return



obj
	shibari
		icon = 'kagemane.dmi'
		icon_state = "head"
		density=1
		Move()
			..()
			var/obj/shibaritrail/T = new /obj/shibaritrail
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == NORTHWEST)
				T.loc = src.loc
				T.y = src.y-1
				T.x = src.x+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == NORTHEAST)
				T.loc = src.loc
				T.y = src.y-1
				T.x = src.x-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTHWEST)
				T.loc = src.loc
				T.x = src.x+1
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTHEAST)
				T.loc = src.loc
				T.x = src.x-1
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
		Bump(A)
			var/mob/O = src.owner
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
				src.loc=M.loc
				for(var/mob/C in src.loc)
					if(C == src.target)
						src.move=0
						C.Frozen=1
						C.caught=1
						LOL
							if(O.chakra<=5&&O.Kshibari)
								C.Frozen=0
								O.Frozen=0
								C.caught=0
								C.overlays-='kagekubi.dmi'
								C.overlays-='kagekubi.dmi'
								C.overlays-='kagekubi.dmi'
								C.kubi=0
								for(var/obj/shibaritrail/T in world)
									if(T.owner==O)
										del(T)
										O.Frozen=0
										C.caught=0
										C.overlays-='kagekubi.dmi'
										C.overlays-='kagekubi.dmi'
										C.overlays-='kagekubi.dmi'
										C.kubi=0
								del(src)
							else
								O.chakra-=170
								sleep(10)
								goto LOL
			if(O.chakra<=5)
				del(src)
				O<<"You have run out of chakra"
				for(var/obj/shibaritrail/T in world)
					O.Frozen=0
					if(T.owner == O)
						O.Frozen=0
						del(T)
						return
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					for(var/obj/shibaritrail/B in world)
						if(B.owner==src.owner)
							del(B)
					del(src)
			if(istype(A,/obj/))
				for(var/obj/shibaritrail/B in world)
					if(B.owner==src.owner)
						del(B)
					del(src)
				del(src)
obj
	shibaritrail
		icon = 'kagemane.dmi'
		icon_state="trail"
obj/var
	delay = 0
mob/var/tmp
	caught = 0

	freeztime=0

obj/var/tmp
	target=""
	move=1


obj
	snakeG
		icon = 'snakes.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by  Sen'eijashu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	SuitonDaib
		icon = 'suitons.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suiton Daibakufu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Suishouha
		icon = 'WATERBLAST.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suishouha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	SSuishouha
		icon = 'Warmor.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suishouha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Ninpou
		icon = 'ninpou.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suishouha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Suiryedan
		icon = 'suiryedan.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.7)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suiton Suiryuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	SSuiryedan
		icon = 'StarDragon.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*10)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Kujaku Myouhou Agouny for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	MSuiryedan
		icon = 'IceDragon.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.7)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Makyou Suiryuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	KRyuuka
		icon = 'Ryuuka.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*2.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Katon Ryuuka for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	AMA
		icon = 'ama.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*50)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Amaterasu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	DotonDD
		icon = 'dotons.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Doton Doryo Dango for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	TeshiSendan
		icon = 'bonebullets.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.tai*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Bone Bullets for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	SuitonSuikoudan
		icon = 'suiryedan.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*2.8)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suiton Suikoudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	MakyouSuikoudan
		icon = 'IceDragon.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*2.8)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Makyou Suikoudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Zanyokukuuha
		icon = 'daitoppa.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Zanyokukuuha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Zankuuha
		icon = 'daitoppa.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was by Zankuuha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Doryuudan5
		icon = 'doryuumissle.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was by Doryuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	FuutonRenkuudan
		icon = 'fuuton.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Renkuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Fdaitoppa
		icon = 'daitoppa.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Daitoppa for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Needle
		icon = 'daitoppa.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Needles for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	kazedangan
		icon = 'kazedangan.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was by Kaze Dangan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Ikazuchi
		icon = 'bolt.dmi'
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Ikazuchi No Kiba for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Raikyuu
		icon = 'rai.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Raikyuu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	RairyuuTatsumaki
		icon = 'rairyuu.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Rairyuu No Tatsumaki for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Sensatsu
		icon = 'needles.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.tai/2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Sensatsu Suishou for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Sshuriken
		icon = 'SShuriken.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suna Shuriken for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Ice1
		icon='juvenile ice.dmi'
		icon_state="Ice2"
		density=1

obj
	Ice2
		icon='juvenile ice.dmi'
		icon_state="Ice"
		density=1


obj
	FutagozaNoJutsu
		icon = 'juvenile ice.dmi'
		icon_state = "Ice3"
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Futagoza No Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)










mob/flight
	verb
		Fly()
			set category = "Jutsus"
			set name = "Flight"
			if(usr.PK==0)
				usr<<"NONPK AREA!"
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
			if(usr.Flight == 1)
				usr.density = 1
				usr.overlays -= 'Flight.dmi'
				usr.Flight = 0
			else
				usr.overlays+= 'Flight.dmi'
				usr.density = 0
				usr.Flight = 1
mob/flight
	verb
		Cloud()
			set category = "Jutsus"
			set name = "Summon Cloud"
			if(usr.PK==0)
				usr<<"NONPK AREA!"
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
			if(usr.Flight == 1)
				usr.density = 1
				usr.overlays -= 'Cloud.dmi'
				usr.Flight = 0
			else
				usr.overlays+= 'Cloud.dmi'
				usr.density = 0
				usr.Flight = 1
mob/Beeflight
	verb
		Fly()
			if(usr.PK==0)
				usr<<"NONPK AREA!"
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
			if(usr.Flight == 1)
				set name = "Bee Wings"
				set category = "NinJutsu"
				usr.density = 1
				usr.overlays -= 'wings.dmi'
				usr.Flight = 0
			else
				set category = "NinJutsu"
				set name = "Bee Wings"
				usr.overlays+= 'wings.dmi'
				usr.density = 0
				usr.Flight = 1
obj/var/tmp/senban=0
obj
	Senban
		icon='daitoppa.dmi'
		layer = MOB_LAYER+1
mob/rain
	verb
		JouroSenban()
			set category = "Jutsus"
			set name = "Jouro Senban"
			if(usr.firing) // If the mob's firing var is one...
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
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 9999)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				view()<<"[usr]: Jouro Senban!"
				var/obj/Senban/F = new /obj/Senban/
				var/obj/Senban/G = new /obj/Senban/
				var/obj/Senban/H = new /obj/Senban/
				var/obj/Senban/I = new /obj/Senban/
				var/obj/Senban/J = new /obj/Senban/
				var/obj/Senban/L = new /obj/Senban/
				var/obj/Senban/A = new /obj/Senban/
				var/obj/Senban/B = new /obj/Senban/
				var/obj/Senban/M2 = new /obj/Senban/
				var/obj/Senban/N = new /obj/Senban/
				var/obj/Senban/O = new /obj/Senban/
				var/obj/Senban/P = new /obj/Senban/
				var/obj/Senban/D = new /obj/Senban/
				var/obj/Senban/E = new /obj/Senban/
				var/obj/Senban/C = new /obj/Senban/
				var/obj/Senban/K = new /obj/Senban/
				var/obj/Senban/Q = new /obj/Senban/
				var/obj/Senban/R = new /obj/Senban/
				var/obj/Senban/S = new /obj/Senban/
				var/obj/Senban/T = new /obj/Senban/
				var/obj/Senban/W = new /obj/Senban/
				var/obj/Senban/X = new /obj/Senban/
				var/obj/Senban/Y = new /obj/Senban/
				var/obj/Senban/Z = new /obj/Senban/
				var/obj/Senban/AB = new /obj/Senban/
				var/obj/Senban/AC = new /obj/Senban/
				var/obj/Senban/AD = new /obj/Senban/
				var/obj/Senban/AE = new /obj/Senban/
				var/obj/Senban/AF = new /obj/Senban/
				var/obj/Senban/AG = new /obj/Senban/
				var/obj/Senban/AH = new /obj/Senban/
				var/obj/Senban/AI = new /obj/Senban/
				var/obj/Senban/AJ = new /obj/Senban/
				var/obj/Senban/AK = new /obj/Senban/
				var/obj/Senban/AL = new /obj/Senban/
				var/obj/Senban/AM = new /obj/Senban/
				var/obj/Senban/AN = new /obj/Senban/
				var/obj/Senban/AO = new /obj/Senban/
				var/obj/Senban/AP = new /obj/Senban/
				var/obj/Senban/AQ = new /obj/Senban/
				var/obj/Senban/AR = new /obj/Senban/
				var/obj/Senban/AS = new /obj/Senban/
				var/obj/Senban/AT = new /obj/Senban/
				var/obj/Senban/AU = new /obj/Senban/
				var/obj/Senban/AV = new /obj/Senban/
				var/obj/Senban/AW = new /obj/Senban/
				var/obj/Senban/AX= new /obj/Senban/
				var/obj/Senban/AY = new /obj/Senban/
				var/obj/Senban/AZ = new /obj/Senban/
				usr.chakra -= 10000
				A.owner=usr
				B.owner=usr
				C.owner=usr
				D.owner=usr
				E.owner=usr
				F.owner=usr
				G.owner=usr
				H.owner=usr
				I.owner=usr
				J.owner=usr
				K.owner=usr
				L.owner=usr
				M2.owner=usr
				N.owner=usr
				O.owner=usr
				P.owner=usr
				Q.owner=usr
				R.owner=usr
				S.owner=usr
				T.owner=usr
				W.owner=usr
				X.owner=usr
				Y.owner=usr
				Z.owner=usr
				AB.owner=usr
				AC.owner=usr
				AD.owner=usr
				AE.owner=usr
				AF.owner=usr
				AG.owner=usr
				AH.owner=usr
				AI.owner=usr
				AJ.owner=usr
				AK.owner=usr
				AL.owner=usr
				AM.owner=usr
				AN.owner=usr
				AO.owner=usr
				AP.owner=usr
				AQ.owner=usr
				AR.owner=usr
				AS.owner=usr
				AV.owner=usr
				AW.owner=usr
				AX.owner=usr
				AY.owner=usr
				AZ.owner=usr
				AU.owner=usr
				AV.owner=usr
				A.nin=usr.nin
				B.nin=usr.nin
				C.nin=usr.nin
				D.nin=usr.nin
				E.nin=usr.nin
				F.nin=usr.nin
				G.nin=usr.nin
				H.nin=usr.nin
				I.nin=usr.nin
				J.nin=usr.nin
				K.nin=usr.nin
				L.nin=usr.nin
				M2.nin=usr.nin
				N.nin=usr.nin
				O.nin=usr.nin
				P.nin=usr.nin
				Q.nin=usr.nin
				R.nin=usr.nin
				S.nin=usr.nin
				T.nin=usr.nin
				W.nin=usr.nin
				X.nin=usr.nin
				Y.nin=usr.nin
				Z.nin=usr.nin
				AB.nin=usr.nin
				AC.nin=usr.nin
				AD.nin=usr.nin
				AE.nin=usr.nin
				AF.nin=usr.nin
				AG.nin=usr.nin
				AH.nin=usr.nin
				AI.nin=usr.nin
				AJ.nin=usr.nin
				AK.nin=usr.nin
				AL.nin=usr.nin
				AM.nin=usr.nin
				AN.nin=usr.nin
				AO.nin=usr.nin
				AP.nin=usr.nin
				AQ.nin=usr.nin
				AR.nin=usr.nin
				AS.nin=usr.nin
				AV.nin=usr.nin
				AW.nin=usr.nin
				AX.nin=usr.nin
				AY.nin=usr.nin
				AZ.nin=usr.nin
				AU.nin=usr.nin
				AV.nin=usr.nin
				K.loc = locate(usr.x,usr.y,usr.z)
				K.senban=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.senban=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.senban=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.senban=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.senban=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.senban=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.senban=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.senban=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.senban=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.senban=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.senban=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.senban=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.senban=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.senban=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.senban=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.senban=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.senban=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.senban=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.senban=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.senban=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.senban=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.senban=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.senban=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.senban=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.senban=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.senban=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.senban=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.senban=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.senban=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.senban=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.senban=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.senban=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.senban=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.senban=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.senban=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.senban=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.senban=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.senban=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.senban=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.senban=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.senban=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.senban=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.senban=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.senban=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.senban=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.senban=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.senban=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.senban=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.senban=1
				flick("rise",A)
				flick("rise",B)
				flick("rise",C)
				flick("rise",D)
				flick("rise",E)
				flick("rise",F)
				flick("rise",G)
				flick("rise",H)
				flick("rise",I)
				flick("rise",J)
				flick("rise",K)
				flick("rise",L)
				flick("rise",M2)
				flick("rise",N)
				flick("rise",O)
				flick("rise",P)
				flick("rise",Q)
				flick("rise",R)
				flick("rise",S)
				flick("rise",T)
				flick("rise",W)
				flick("rise",X)
				flick("rise",Y)
				flick("rise",Z)
				flick("rise",AB)
				flick("rise",AC)
				flick("rise",AD)
				flick("rise",AE)
				flick("rise",AF)
				flick("rise",AG)
				flick("rise",AH)
				flick("rise",AI)
				flick("rise",AJ)
				flick("rise",AK)
				flick("rise",AL)
				flick("rise",AM)
				flick("rise",AN)
				flick("rise",AO)
				flick("rise",AP)
				flick("rise",AQ)
				flick("rise",AR)
				flick("rise",AS)
				flick("rise",AT)
				flick("rise",AU)
				flick("rise",AV)
				flick("rise",AW)
				flick("rise",AX)
				flick("rise",AY)
				flick("rise",AZ)
				for(var/mob/M in oview(3,usr))
					var/damage=round(usr.nin*5)
					view()<<"[M] has taken [damage] damage from [usr]'s Jouro Senban"
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
				sleep(100)
				del(K)
				del(A)
				del(B)
				del(C)
				del(D)
				del(E)
				del(F)
				del(G)
				del(H)
				del(I)
				del(J)
				del(L)
				del(M2)
				del(N)
				del(O)
				del(P)
				del(Q)
				del(R)
				del(S)
				del(T)
				del(W)
				del(X)
				del(Y)
				del(Z)
				del(AB)
				del(AC)
				del(AD)
				del(AE)
				del(AF)
				del(AG)
				del(AH)
				del(AI)
				del(AJ)
				del(AK)
				del(AL)
				del(AM)
				del(AN)
				del(AO)
				del(AP)
				del(AQ)
				del(AR)
				del(AS)
				del(AT)
				del(AU)
				del(AV)
				del(AW)
				del(AX)
				del(AY)
				del(AZ)
				sleep(100)
				usr.firing=0
mob/Makyou
	verb
		MakyouSuiryuudannoJutsu(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Makyou Suiryuudan no Jutsu"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#a1d7ee>Makyou Suiryuudan No Jutsu!</FONT>"
					var/obj/MSuiryedan/K = new /obj/MSuiryedan
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
						usr.move = 0 // Disables the mob's movement
						usr.SS += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#a1d7ee>Makyou Suiryuudan No Jutsu!</FONT>"
						var/obj/MSuiryedan/K = new /obj/MSuiryedan
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
						if(usr.Mnin <= usr.cap)
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

mob/Makyou
	verb
		MakyouSuikoudannoJutsu(mob/m in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Makyou Suikoudan no Jutsu"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#a1d7ee>Makyou Suikoudan No Jutsu!</FONT>"
					var/obj/MakyouSuikoudan/K = new /obj/MakyouSuikoudan
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
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#a1d7ee>Makyou Suikoudan No Jutsu!</FONT>"
						var/obj/MakyouSuikoudan/K = new /obj/MakyouSuikoudan
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
obj
	bunshins
		SuitonBunshinnojutsu
			verb/SuitonBunshinNoJutsu()
				set name = "Suiton Bunshin no jutsu"
				set desc = "Create a clone of water that can attack"
				set category = "Jutsus"
				usr.Handseals()
				if(usr.chakra <= 17)
					usr << "Not enough chakra!"
					return
				if (usr.firing)
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
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(!usr.handseals)
					return
				else
					usr.KillBunshin()
					usr.firing=1
					view() << "<font color=silver><b><font face=verdana>[usr] says:Suiton Bunshin No Jutsu!!"
					var/mob/npcs/KBunshin/S = new /mob/npcs/KBunshin
					usr.sunaU += 1
					usr.Chakragain()
					usr.Sbunshin += 1
					if(S)
						S.original = usr
						S.name = "[usr.name]"
						S.icon = usr.icon
						S.overlays += usr.overlays
						S.loc = locate(usr.x, usr.y - 1, usr.z)
						S.tai = usr:tai/8
						S.health = 1
						usr.chakra -= 17
					sleep(20)
					usr.firing=0
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
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."



mob/star
	verb
		Aura()
			set category ="Jutsus"
			set name ="Aura"
			if(usr.aura==0)
				view<<"<font color = blue>Star Power!"
				src.chakra=src.Mchakra*3
				src.tai = usr.Mtai*2
				src.gen = usr.Mgen*2
				src.nin = usr.Mnin*3
				usr.shurikenskill = usr.shurikenskill*2
				usr.kunaiskill = usr.kunaiskill*2
				usr.trapskill = usr.trapskill*2
				usr.aura=1
				usr.overlays += 'staraura.dmi'
				return
			else
				usr<<"You Power down."
				usr.tai = usr.Mtai
				usr.nin = usr.Mnin
				usr.gen = usr.Mgen
				usr.shurikenskill = usr.Mshurikenskill
				usr.kunaiskill = usr.Mkunaiskill
				usr.trapskill = usr.Mtrapskill
				usr.aura=0
				usr.overlays -= 'staraura.dmi'
				return

mob/star
	verb
		StarDragon(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Kujaku Myouhou Agouny"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
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

			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return

			else // If the firing var isn't 1...
				if(usr.SS >= 52)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.SS += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Kujaku Myouhou Agouny!</FONT>"
					var/obj/SSuiryedan/K = new /obj/SSuiryedan
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
						usr.move = 0 // Disables the mob's movement
						usr.SS += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Kujaku Myouhou Agouny!</FONT>"
						var/obj/SSuiryedan/K = new /obj/SSuiryedan
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
						if(usr.Mnin <= usr.cap)
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
mob/star
	verb
		Peacock() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Kujaku Myouhou"
			if(usr.chakra <= 5)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.Kaiten&&!usr.firing)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>Kujaku Myouhou!</FONT>"
				usr.firing = 1
				usr.overlays += 'peacock.dmi'
				usr.Kaiten =1
				OMG
				if(usr.Kaiten)
					usr.chakra -=2
					if(usr.chakra <= 2)
						usr.firing = 0
						usr.overlays -= 'peacock.dmi'
						usr.Kaiten = 0
					else
						sleep(4)
						goto OMG
			else if(usr.Kaiten)
				usr.firing = 0
				usr.overlays -= 'peacock.dmi'
				usr.Kaiten =0
				usr<<"You release Kujaku Myouhou."

mob/sound
	verb
		Seneijashu() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Sen'eijashu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||usr.counter)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 20)
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
			else
				if(usr.Katon2N >= 40)
					if(usr.dir==NORTHWEST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==SOUTHWEST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==NORTHEAST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==SOUTHEAST)
						usr<<"You can't face a diagnol and use this move"
						return
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.SnakeH += 1
					usr.chakra -= 100
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500> Sen'eijashu!</FONT>"
					var/obj/snakeG/D = new /obj/snakeG
					var/obj/snakeG/S = new /obj/snakeG
					var/obj/snakeG/K = new /obj/snakeG
					var/obj/snakeG/L = new /obj/snakeG
					usr.Chakragain()
					var/obj/snakeG/N = new /obj/snakeG
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Move_Delay=1.4
						K.Gowner=usr
						walk(K,usr.dir)
					sleep(6)
					if(D)
						D.loc = usr.loc
						if(usr.dir==NORTH)
							D.x-=1
						if(usr.dir==SOUTH)
							D.x+=1
						if(usr.dir==WEST)
							D.y+=1
						if(usr.dir==EAST)
							D.y-=1
						D.nin=usr.nin
						D.name="[usr]"
						D.Move_Delay=1.4
						D.Gowner=usr
						walk(D,usr.dir)
					sleep(6)
					if(L)
						L.loc = usr.loc
						if(usr.dir==NORTH)
							L.x+=1
						if(usr.dir==SOUTH)
							L.x-=1
						if(usr.dir==WEST)
							L.y-=1
						if(usr.dir==EAST)
							L.y+=1
						L.Move_Delay=1.4
						L.nin=usr.nin
						L.name="[usr]"
						L.Gowner=usr
						walk(L,usr.dir)
					sleep(13)
					if(S)
						S.loc = usr.loc
						if(usr.dir==NORTH)
							S.x+=1
						if(usr.dir==SOUTH)
							S.x-=1
						if(usr.dir==WEST)
							S.y-=1
						if(usr.dir==EAST)
							S.y+=1
						S.Move_Delay=1.4
						S.nin=usr.nin
						S.name="[usr]"
						S.Gowner=usr
						walk(S,usr.dir)
					sleep(5)
					if(N)
						N.loc = usr.loc
						if(usr.dir==NORTH)
							N.x-=1
						if(usr.dir==SOUTH)
							N.x+=1
						if(usr.dir==WEST)
							N.y+=1
						if(usr.dir==EAST)
							N.y-=1
						N.Move_Delay=1.4
						N.nin=usr.nin
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					del(L)
					del(N)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
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
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
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
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.dir==NORTHWEST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==SOUTHWEST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==NORTHEAST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==SOUTHEAST)
							usr<<"You can't face a diagnol and use this move"
							return
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.chakra -= 20
						usr.SnakeH += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500> Sen'eijashu!</FONT>"
						var/obj/snakeG/D = new /obj/snakeG
						var/obj/snakeG/S = new /obj/snakeG
						var/obj/snakeG/K = new /obj/snakeG
						var/obj/snakeG/L = new /obj/snakeG
						usr.Chakragain()
						var/obj/snakeG/N = new /obj/snakeG
						if(K)
							K.loc = usr.loc
							K.nin=usr.nin
							K.name="[usr]"
							K.Move_Delay=1.4
							K.Gowner=usr
							walk(K,usr.dir)
						sleep(6)
						if(D)
							D.loc = usr.loc
							if(usr.dir==NORTH)
								D.x-=1
							if(usr.dir==SOUTH)
								D.x+=1
							if(usr.dir==WEST)
								D.y+=1
							if(usr.dir==EAST)
								D.y-=1
							D.nin=usr.nin
							D.name="[usr]"
							D.Move_Delay=1.4
							D.Gowner=usr
							walk(D,usr.dir)
						sleep(6)
						if(L)
							L.loc = usr.loc
							if(usr.dir==NORTH)
								L.x+=1
							if(usr.dir==SOUTH)
								L.x-=1
							if(usr.dir==WEST)
								L.y-=1
							if(usr.dir==EAST)
								L.y+=1
							L.Move_Delay=1.4
							L.nin=usr.nin
							L.name="[usr]"
							L.Gowner=usr
							walk(L,usr.dir)
						sleep(13)
						if(S)
							S.loc = usr.loc
							if(usr.dir==NORTH)
								S.x+=1
							if(usr.dir==SOUTH)
								S.x-=1
							if(usr.dir==WEST)
								S.y-=1
							if(usr.dir==EAST)
								S.y+=1
							S.Move_Delay=1.4
							S.nin=usr.nin
							S.name="[usr]"
							S.Gowner=usr
							walk(S,usr.dir)
						sleep(5)
						if(N)
							N.loc = usr.loc
							if(usr.dir==NORTH)
								N.x-=1
							if(usr.dir==SOUTH)
								N.x+=1
							if(usr.dir==WEST)
								N.y+=1
							if(usr.dir==EAST)
								N.y-=1
							N.Move_Delay=1.4
							N.nin=usr.nin
							N.name="[usr]"
							N.Gowner=usr
							walk(N,usr.dir)
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						del(L)
						del(N)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,5)
							if(random == 5||random==1)
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
								return
						else
							usr.random = rand(1,5)
							if(random == 5||random==1)
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
								return
					usr<<"You failed to use Sen'eijashu"


mob/pain
	verb
		Slash()
