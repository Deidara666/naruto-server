mob/kaguyajutsu
	verb
		CreateBoneSword()//kaguya sword
			set name = "Create Bone Sword"
			set desc = ""
			set category = "Jutsus"
			if (usr.firing == 1)
				usr<<"Not right now!"
			if (usr.chakra <= 13)
				usr<<"Not enough chakra."
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
				usr.chakra -= 13
				var/obj/BoneSword/B = new/obj/BoneSword
				B.loc = usr
mob/kaguyajutsu
	verb
		CreateSpineWhip()//kaguya whip
			set name = "Create Spine Whip"
			set desc = ""
			set category = "Jutsus"
			if (usr.firing == 1)
				usr<<"Not right now!"
			if (usr.chakra <= 17)
				usr<<"Not enough chakra."
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
				usr.chakra -= 17
				var/obj/Spinewhip/B = new/obj/Spinewhip
				B.loc = usr
mob/kaguyajutsu
	verb
		TessenkaNoMai()//dance 4
			set name = "Tessenka No Mai"
			set desc = ""
			set category = "Jutsus"
			for(var/mob/M in oview(4,usr))
				if(usr.firing)
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.drunk&&M.NonClan)
					view()<<"[M] dodges [usr]'s attack"
					return
				if (!usr.spinesword)
					usr<<"You must have a spinal whip equiped to use this!"
					return
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
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
				if (M.Kaiten)
					return
					var/damage = round(usr.tai+swordD)
					usr.firing = 1
					usr <<"You attack [M] but their kaiten reflects the damage back at you."
					M <<"You reflect [usr]'s attack causing them to hurt themself."
					usr.health -= damage
					usr.Death(M)
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				else
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#d8bfd8>T</FONT><FONT COLOR=#dea5de>e</FONT><FONT COLOR=#e389e3>s</FONT><FONT COLOR=#e96ee9>s</FONT><FONT COLOR=#ef52ef>e</FONT><FONT COLOR=#f537f5>n</FONT><FONT COLOR=#fa1bfa>k</FONT><FONT COLOR=#ff00ff>a</FONT><FONT COLOR=#ed0ded> </FONT><FONT COLOR=#da1bda>N</FONT><FONT COLOR=#c728c7>o</FONT><FONT COLOR=#b535b5> </FONT><FONT COLOR=#a242a2>M</FONT><FONT COLOR=#8f508f>a</FONT><FONT COLOR=#7c5d7c>i</FONT><FONT COLOR=#696969>!</FONT>"
					usr.firing = 1
					usr << "You attack [M] with Tessenka No Mai!"
					var/damage = round(usr.tai+swordD)
					view() << "[usr] hits [M] with Tessenka No Mai for [damage] damage!"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed4
					M.health -= damage
					M.Death(usr)
					sleep(30)
					usr.firing = 0
					if(usr.Mtai <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.taiexp += rand(1,10)
							usr.taiup()
							usr.Skills()
						else
							return

mob/kaguyajutsu
	verb
		KaramatsuNoMai()//dance 3
			set name = "Karamatsu No Mai"
			set desc = ""
			set category = "Jutsus"
			for(var/mob/M in oview(1,usr))
				if(!usr.bonesword)
					usr<<"You must have a bone sword equiped to use this!"
					return
				if(M.drunk&&M.NonClan)
					view()<<"[M] dodges [usr]'s attack"
					return
				if(usr.firing)
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
				if(M.sphere)
					usr<<"Your attack bounces off of the sand!"
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
				if (M.Kaiten)
					return
					var/damage = round(usr.tai*2.5+swordD)
					usr.firing =1
					usr <<"You attack [M] but their kaiten reflects the damage back at you."
					M <<"You reflect [usr]'s attack causing them to hurt themself."
					usr.health -= damage
					usr.Death(M)
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				else					//otherwise...
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Karamatsu No Mai!"
					usr << "You attack [M] with Karamatsu No Mai!"
					usr.firing=1
					var/damage = round(usr.tai*2.5+swordD)
					view() << "[usr] hits [M] with Karamatsu No Mai for [damage] damage!"
					M.health -= damage
					M.Death(usr)
					sleep(50)
					usr.firing = 0
					if(usr.Mtai <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.taiexp += rand(1,10)
							usr.taiup()
							usr.Skills()


mob/kaguyajutsu
	verb
		YanagiNoMai()//dance 1
			set name = "Yanagi No Mai"
			set desc = ""
			set category = "Jutsus"
			for(var/mob/M in oview(1,usr))
				if(usr.firing)
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
				if(M.drunk&&M.NonClan)
					view()<<"[M] dodges [usr]'s attack"
					return
				if (!usr.bonesword)
					usr<<"You must have a sword bone equiped to use this!"
					return
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
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
				if (M.Kaiten)
					return
					var/damage = round(usr.tai*1.5+swordD)
					usr <<"You attack [M] but their kaiten reflects the damage back at you."
					M <<"You reflect [usr]'s attack causing them to hurt themself."
					usr.health -= damage
					usr.Death(M)
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				else
					view()<<"<font color = blue>[usr]:Yanagi No Mai!!"
					usr.firing = 1
					usr << "You attack [M] with Yanagi No Mai!"
					var/damage = round(usr.tai*1.5+swordD)
					view() << "[usr] hits [M] with Yanagi No Mai for [damage] damage!"
					M.health -= damage
					M.Death(usr)
					sleep(15)
					usr.firing = 0
					if(usr.Mtai <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.taiexp += rand(1,10)
							usr.taiup()
							usr.Skills()
						else
							return


mob/kaguyajutsu
	verb
		TsubakiNoMai(mob/M in oview(1))//dance 2
			set name = "Tsubaki No Mai"
			set desc = ""
			set category = "Jutsus"
			if(usr.firing)
				return
			if(M.drunk&&M.NonClan)
				view()<<"[M] dodges [usr]'s attack"
				return
			if (!usr.bonesword)
				usr<<"You must have a sword bone equiped to use this!"
				return
			if (M.sphere)
				usr<<"Your attack bounces off of the sand!"
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
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.Kaiten)
				var/damage = round(usr.tai*2+swordD)
				usr <<"You attack [M] but their kaiten reflects the damage back at you."
				M <<"You reflect [usr]'s attack causing them to hurt themself."
				usr.health -= damage
				usr.Death(M)
			else
				view()<<"<font color = blue>[usr]:Tsubaki No Mai!!"
				usr.firing = 1
				usr << "You attack [M] with Tsubaki No Mai!"
				var/damage = round(usr.tai*2+swordD)
				view() << "[usr] hits [M] with Tsubaki No Mai for [damage] damage!"
				M.health -= damage
				M.Death(usr)
				sleep(30)
				usr.firing = 0
				if(usr.Mtai <= usr.cap)
					usr.random = rand(1,6)
					if(random == 5||random==1)
						usr.taiexp += rand(1,10)
						usr.taiup()
						usr.Skills()
					else
						return

obj/var/tmp/sawarabi=0
obj
	Sawarabi
		icon='sawarabi.dmi'
		layer = MOB_LAYER+1
mob/kaguyajutsu
	verb
		Sawarabi()
			set category = "Jutsus"
			set name = "Sawarabi No Mai"
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
				view()<<"[usr]: Sawarabi No Mai!"
				var/obj/Sawarabi/F = new /obj/Sawarabi/
				var/obj/Sawarabi/G = new /obj/Sawarabi/
				var/obj/Sawarabi/H = new /obj/Sawarabi/
				var/obj/Sawarabi/I = new /obj/Sawarabi/
				var/obj/Sawarabi/J = new /obj/Sawarabi/
				var/obj/Sawarabi/L = new /obj/Sawarabi/
				var/obj/Sawarabi/A = new /obj/Sawarabi/
				var/obj/Sawarabi/B = new /obj/Sawarabi/
				var/obj/Sawarabi/M2 = new /obj/Sawarabi/
				var/obj/Sawarabi/N = new /obj/Sawarabi/
				var/obj/Sawarabi/O = new /obj/Sawarabi/
				var/obj/Sawarabi/P = new /obj/Sawarabi/
				var/obj/Sawarabi/D = new /obj/Sawarabi/
				var/obj/Sawarabi/E = new /obj/Sawarabi/
				var/obj/Sawarabi/C = new /obj/Sawarabi/
				var/obj/Sawarabi/K = new /obj/Sawarabi/
				var/obj/Sawarabi/Q = new /obj/Sawarabi/
				var/obj/Sawarabi/R = new /obj/Sawarabi/
				var/obj/Sawarabi/S = new /obj/Sawarabi/
				var/obj/Sawarabi/T = new /obj/Sawarabi/
				var/obj/Sawarabi/W = new /obj/Sawarabi/
				var/obj/Sawarabi/X = new /obj/Sawarabi/
				var/obj/Sawarabi/Y = new /obj/Sawarabi/
				var/obj/Sawarabi/Z = new /obj/Sawarabi/
				var/obj/Sawarabi/AB = new /obj/Sawarabi/
				var/obj/Sawarabi/AC = new /obj/Sawarabi/
				var/obj/Sawarabi/AD = new /obj/Sawarabi/
				var/obj/Sawarabi/AE = new /obj/Sawarabi/
				var/obj/Sawarabi/AF = new /obj/Sawarabi/
				var/obj/Sawarabi/AG = new /obj/Sawarabi/
				var/obj/Sawarabi/AH = new /obj/Sawarabi/
				var/obj/Sawarabi/AI = new /obj/Sawarabi/
				var/obj/Sawarabi/AJ = new /obj/Sawarabi/
				var/obj/Sawarabi/AK = new /obj/Sawarabi/
				var/obj/Sawarabi/AL = new /obj/Sawarabi/
				var/obj/Sawarabi/AM = new /obj/Sawarabi/
				var/obj/Sawarabi/AN = new /obj/Sawarabi/
				var/obj/Sawarabi/AO = new /obj/Sawarabi/
				var/obj/Sawarabi/AP = new /obj/Sawarabi/
				var/obj/Sawarabi/AQ = new /obj/Sawarabi/
				var/obj/Sawarabi/AR = new /obj/Sawarabi/
				var/obj/Sawarabi/AS = new /obj/Sawarabi/
				var/obj/Sawarabi/AT = new /obj/Sawarabi/
				var/obj/Sawarabi/AU = new /obj/Sawarabi/
				var/obj/Sawarabi/AV = new /obj/Sawarabi/
				var/obj/Sawarabi/AW = new /obj/Sawarabi/
				var/obj/Sawarabi/AX= new /obj/Sawarabi/
				var/obj/Sawarabi/AY = new /obj/Sawarabi/
				var/obj/Sawarabi/AZ = new /obj/Sawarabi/
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
				A.tai=usr.tai
				B.tai=usr.tai
				C.tai=usr.tai
				D.tai=usr.tai
				E.tai=usr.tai
				F.tai=usr.tai
				G.tai=usr.tai
				H.tai=usr.tai
				I.tai=usr.tai
				J.tai=usr.tai
				K.tai=usr.tai
				L.tai=usr.tai
				M2.tai=usr.tai
				N.tai=usr.tai
				O.tai=usr.tai
				P.tai=usr.tai
				Q.tai=usr.tai
				R.tai=usr.tai
				S.tai=usr.tai
				T.tai=usr.tai
				W.tai=usr.tai
				X.tai=usr.tai
				Y.tai=usr.tai
				Z.tai=usr.tai
				AB.tai=usr.tai
				AC.tai=usr.tai
				AD.tai=usr.tai
				AE.tai=usr.tai
				AF.tai=usr.tai
				AG.tai=usr.tai
				AH.tai=usr.tai
				AI.tai=usr.tai
				AJ.tai=usr.tai
				AK.tai=usr.tai
				AL.tai=usr.tai
				AM.tai=usr.tai
				AN.tai=usr.tai
				AO.tai=usr.tai
				AP.tai=usr.tai
				AQ.tai=usr.tai
				AR.tai=usr.tai
				AS.tai=usr.tai
				AV.tai=usr.tai
				AW.tai=usr.tai
				AX.tai=usr.tai
				AY.tai=usr.tai
				AZ.tai=usr.tai
				AU.tai=usr.tai
				AV.tai=usr.tai
				K.loc = locate(usr.x,usr.y,usr.z)
				K.sawarabi=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.sawarabi=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.sawarabi=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.sawarabi=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.sawarabi=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.sawarabi=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.sawarabi=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.sawarabi=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.sawarabi=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.sawarabi=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.sawarabi=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.sawarabi=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.sawarabi=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.sawarabi=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.sawarabi=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.sawarabi=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.sawarabi=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.sawarabi=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.sawarabi=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.sawarabi=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.sawarabi=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.sawarabi=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.sawarabi=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.sawarabi=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.sawarabi=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.sawarabi=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.sawarabi=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.sawarabi=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.sawarabi=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.sawarabi=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.sawarabi=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.sawarabi=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.sawarabi=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.sawarabi=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.sawarabi=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.sawarabi=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.sawarabi=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.sawarabi=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.sawarabi=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.sawarabi=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.sawarabi=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.sawarabi=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.sawarabi=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.sawarabi=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.sawarabi=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.sawarabi=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.sawarabi=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.sawarabi=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.sawarabi=1
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
					var/damage=round(usr.tai*5)
					view()<<"[M] has taken [damage] damage from [usr]'s Sawarabi No Mai"
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
mob/kaguyajutsu
	verb
		TeshiSendan()
			set category = "Jutsus"
			set name = "Teshi Sendan"
			if (usr.ingat)
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
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
			if(usr.chakra <= 15)
				usr<<"You dont have enough rocks!"
				return
			else // If the firing var isn't 1...
				usr.chakra -= 15
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				usr.DDD += 1
				view()<<"<font color = blue>[usr]:Teshi Sendan"
				var/obj/TeshiSendan/K = new /obj/TeshiSendan
				K.loc = usr.loc
				K.tai=usr.tai
				K.dir = usr.dir
				K.Move_Delay=2
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

				sleep(45)
				del(K)
				sleep(10)
				usr.firing = 0