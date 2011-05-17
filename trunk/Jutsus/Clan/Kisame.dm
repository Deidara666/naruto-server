//                                                               Clan Kisame

//Jutsus-------------
// Ninjutsus----------
//  Técnicas Básicas---

//Shunshin no Jutsu  Rank: B

mob/Kisame
	verb
		ShushinNoJutsuKisame(mob/M in oview(15))
			set category = "Clan Jutsus"
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
				usr.chakra -= 400
				usr.loc = locate(M.x,M.y-1,M.z)
				usr.Chakragain()
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>S</FONT><FONT COLOR=#bebebe>h</FONT><FONT COLOR=#bbbbbb>u</FONT><FONT COLOR=#b8b8b8>s</FONT><FONT COLOR=#b5b5b5>h</FONT><FONT COLOR=#b2b2b2>i</FONT><FONT COLOR=#afafaf>n</FONT><FONT COLOR=#acacac> </FONT><FONT COLOR=#a9a9a9>N</FONT><FONT COLOR=#a2a2a2>o</FONT><FONT COLOR=#9a9a9a> </FONT><FONT COLOR=#929292>J</FONT><FONT COLOR=#8a8a8a>u</FONT><FONT COLOR=#818181>t</FONT><FONT COLOR=#797979>s</FONT><FONT COLOR=#717171>u</FONT><FONT COLOR=#696969>!</FONT>"


//Mizu no Kinobori

//Andar na água

//  Técnicas elementais--

//Suiton no Jutsu  Rank: D
mob/Kisame
	verb
		SuitonArmorKisame()
			set category = "Clan Jutsus"
			set name = "Suiton No Jutsu"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
				return
			/*if(!usr.Warmor)
				usr<<"Not now."
				return*/
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
			if(!usr.Warmor&&!usr.firing)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green>Says: <font color=red>Suiton No Jutsu!"
				usr.overlays += 'WaterStrom.dmi'
				usr.Warmor =1
				usr.nin = usr.nin*2
				fire
				if(usr.Warmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'WaterStrom.dmi'
						usr.Warmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Warmor)
				usr.overlays -= 'WaterStrom.dmi'
				usr.Warmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Suiton No Jutsu."



//Suiton: Bakusui Shouha  Rank: A
//  -cria um mar

obj/var/tmp/SuitonBakushiShouha=0
obj
	Sawarabi
		icon='Suiton.dmi'
		icon_state="BakushiShouha"
		layer = MOB_LAYER+1
mob/Kisame
	verb
		SuitonBakushiShouha()
			set category = "Clan Jutsus"
			set name = "Suiton: Bakushi Shouha"
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
			//if(usr.chakra <= 9999)
			//	usr<<"You dont have enough chakra!"
			//	return
			else // If the firing var isn't 1...
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				view()<<"[usr]: Suiton: Bakushi Shouha!"
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
					//var/damage=round(usr.tai*5)
					view()<<"[M] está preso no mar de [usr]"
					M.Move_Delay=50
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
				sleep(30)
				usr.firing=0

//Suiton: Daibakufu no Jutsu  Rank: C
// -rajada de agua na direção do oponente
// - http://www.vbox7.com/play:62eb401a?r=google
mob/Kisame
	verb
		SuitonDaibakufuNoJutsu()
			set category = "Clan Jutsus"
			set name = "Suiton: Daibakufu No Jutsu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.PK==0)
				usr<<"Zona Não PK!"
				return
			if(usr.Frozen)
				usr<<"Você está congelado"
				return
			if(usr.caught)
				usr<<"Você está capturado"
				return
			if(usr.captured)
				usr<<"Você está capturado"
				return
			if(usr.froze)
				usr<<"Você está congelado"
				return
			if(usr.resting)
				usr<<"Não enquanto descança"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.firing||usr.Kaiten||usr.sphere)
				return
			if(usr.chakra <= 15)
				usr<<"Você não possui chakra suficiente!"
				return
			else // If the firing var isn't 1...
				if(usr.SSU >= 25)
					usr.chakra -= 15
					usr.firing = 1
					usr.SSU += 1
					view()<<"[usr] Suiton: Daibakufu No Jutsu"
					var/obj/Jutsus/SuitonDaibakufuNoJutsu/K = new /obj/Jutsus/SuitonDaibakufuNoJutsu
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
									usr<<"[usr] você ganhou [ccgain] controle de chakra..."
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
									usr<<"[usr] você ganhou [ccgain] controle de chakra..."
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
						view()<<"[usr] Suiton: Daibakufu No Jutsu"
						var/obj/Jutsus/SuitonDaibakufuNoJutsu/K = new /obj/Jutsus/SuitonDaibakufuNoJutsu
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
										usr<<"[usr] você ganhou [ccgain] controle de chakra..."
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
										usr<<"[usr] você ganhou [ccgain] controle de chakra..."
						sleep(10)
						usr.firing = 0
						sleep(45)
						del(K)



//Suiton: Goshokuzame
// -um tubarao gigante que paraliza o oponente
// -http://www.youtube.com/watch?v=o3ghMgEo3Sk
mob/Kisame
	verb
		SuitonGoshokuzame(mob/M in oview(10))
			set category = "Clan Jutsus"
			set name = "Suiton: Goshokusame"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 1)
				usr<<"Not enough Chakra!"
			else
				if(usr.Kshibari)
					for(var/obj/Jutsus/shibari/K in world)
						if(K.owner==usr)
							del(K)
							usr.Kshibari=0
							usr.Frozen=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
					for(var/obj/Jutsus/shibaritrail/T in world)
						if(T.owner==usr)
							del(T)
							usr.Kshibari=0
							usr.Frozen=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
				else
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#708090>K</FONT><FONT COLOR=#707f8d>a</FONT><FONT COLOR=#6f7c89>g</FONT><FONT COLOR=#6f7a85>e</FONT><FONT COLOR=#6e7781> </FONT><FONT COLOR=#6d757d>S</FONT><FONT COLOR=#6c7379>h</FONT><FONT COLOR=#6b7075>i</FONT><FONT COLOR=#6b6e71>b</FONT><FONT COLOR=#6a6b6d>a</FONT><FONT COLOR=#696969>r</FONT><FONT COLOR=#777777>i</FONT><FONT COLOR=#848484> </FONT><FONT COLOR=#929292>N</FONT><FONT COLOR=#a0a0a0>o</FONT><FONT COLOR=#aeaeae> </FONT><FONT COLOR=#bbbbbb>J</FONT><FONT COLOR=#c9c9c9>u</FONT><FONT COLOR=#d7d7d7>t</FONT><FONT COLOR=#e5e5e5>s</FONT><FONT COLOR=#f2f2f2>u</FONT><FONT COLOR=#ffffff>!</FONT>"
					var/obj/Jutsus/shibari/K = new /obj/Jutsus/shibari
					K.loc = usr.loc
					usr.Chakragain()
					K.Move_Delay = 2
					K.gen = usr.gen
					usr.Kshibari=1
					K.owner = usr
					K.target=M
					usr.Frozen=1


		Seguir()
			set category = "Clan Jutsus"
			set name = "Seguir"
			usr.chakra -= 100
			for(var/obj/Jutsus/shibari/K in world)
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

				if(K.owner == usr)
					step_towards(K,K.target)
				if(usr.chakra<=100)
					del(K)
					usr.Kshibari=0
					usr<<"You have hold has sliped"
					for(var/obj/Jutsus/shibaritrail/T in world)
						usr.Frozen=0
						if(T.owner == usr)
							usr.Frozen=0
							del(T)

		Recuar()
			set category = "Clan Jutsus"
			set name = "Recuar"
			usr.chakra -= 500
			for(var/obj/Jutsus/shibari/K in world)
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
				K.move=1
				if(K.owner == usr)
					for(var/mob/M in K.loc)
						if(K.owner == M)
							if(K.loc == M.loc)
								del(K)
								usr.Frozen=0
								usr.Kshibari=0
								M.Frozen=0
								for(var/obj/Jutsus/shibaritrail/A in world)
									if(A.owner==usr)
										del(A)
								return
					for(var/obj/Jutsus/shibaritrail/T in oview(1,K))
						if(T.owner==usr)
							K.loc = T.loc
							K.dir=T.dir
							del(T)
						else
							del(K)
							for(var/obj/Jutsus/shibaritrail/L in world)
								if(L.owner==usr)
									del(L)
							usr.Frozen=0
							usr.kubi=0
							usr.Kshibari=0
							usr.firing=0
							del(K)

							del(T)

						for(var/mob/M in oview(11,K))
							if(M==K.target)
								if(K.loc==M.loc)
									M.Frozen=1
									M.caught=1
								else
									M.Frozen=0
									M.caught=0
									M.kubi=0
									M.overlays-='kagekubi.dmi'
									M.overlays-='kagekubi.dmi'
									M.overlays-='kagekubi.dmi'

//Suiton: Goshokusame Hengo
// -varios tubaroes sao lançados em direção a seu oponente causando uma explosão
// -http://www.youtube.com/watch?v=o3ghMgEo3Sk

		SuitonGoshokusameHengo()
			set category = "Clan Jutsus"
			set name="Suiton: Goshokusame Hengo"
			if(usr.firing)
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
			for(var/obj/Jutsus/shibari/K in world)
				if(K.owner==usr)
					for(var/mob/M in world)
						if(M.caught&&!M.kubi)
							M.kubi=1
							usr.Chakragain()
							usr.chakra-=100
							M.overlays+='kagekubi.dmi'
							var/damage=round(usr.gen*5)
							if(damage<=5)
								usr<<"Your neck bind is too weak, [M] breaks out!"
								return
							else
								ROFL
									if(usr.chakra<=5)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/Jutsus/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									if(!M.caught)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/Jutsus/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									if(!usr.Kshibari)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/Jutsus/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
									if(!M.kubi)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/Jutsus/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									else
										usr.chakra-=100
										view(usr)<<"[M] takes [damage] damage from Neck Bind"
										M.health-=damage
										if(M.health<=0)
											M.Death(usr)
											usr.Frozen=0
											usr.Kshibari=0
											usr.kubi=0
											return
										sleep(40)
										goto ROFL


//Suiton: Suishouha
// -cria um ciclone que se desfaz perto do oponente
// - http://www.youtube.com/watch?v=w_gc3bREk40

mob/Kisame
	verb
		SuitonSuishouha()
			set category = "Clan Jutsus"
			set name = "Suiton: Suishouha"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.PK==0)
				usr<<"Zona Não PK!"
				return
			if(usr.Frozen)
				usr<<"Você está congelado"
				return
			if(usr.caught)
				usr<<"Você está capturado"
				return
			if(usr.captured)
				usr<<"Você está capturado"
				return
			if(usr.froze)
				usr<<"Você está congelado"
				return
			if(usr.resting)
				usr<<"Não enquanto descança"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.firing||usr.Kaiten||usr.sphere)
				return
			//if(usr.chakra <= 15)
			//	usr<<"Você não possui chakra suficiente!"
			//	return

			else
				view()<<"[usr] Jutsu Teste"
				var/obj/Jutsus/SuitonSuishouha/K = new /obj/Jutsus/SuitonSuishouha
				K.loc = usr.loc
				usr.Chakragain()
				K.dir = usr.dir
				K.name="[usr]"
				K.Gowner=usr
				walk(K,usr.dir)
				usr.chakra-=100

//Suiton: Suisahan
// -O ninja cria várias ondas grandes de água fazendo inundar o local.

//Suiton Ninpou - Same Henge no Jutsu
// Sem Informações...

//Suiton: Suirou Same Odori no Jutsu
//Kisame após utilizar essa técnica cria uma grande explosão de água, persegue seu oponente e o segura, e solta ventosas de partes
//de seu corpo que sugam o chakra do oponente até a última gota, após ser pegue pelo mesmo não é possível escapar.

//Suiton: Suikoudan no Jutsu
// -faz com que uma coluna de água a subir a partir da água e, em seguida, atacar seus alvos.
// - http://www.youtube.com/watch?v=v2pEZDK2trA

//Suiton: Suirou no Jutsu
// -uma bolha de agua que prendendo o oponente
// - http://www.youtube.com/watch?v=t6uZmI4p6cs
obj/var/tmp/suirou=1

mob/Kisame
	verb
		SuitonSuirouNoJutsu(mob/M in oview(10))
			set category = "Clan Jutsus"
			set name = "Suiton: Suirou no Jutsu"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 1)
				usr<<"Not enough Chakra!"
				return
			if(usr.suirou==1)
				M.froze=1
				M.Frozen=1
				M.overlays += 'Warmor.dmi'
				usr<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green>Says: <font color=red>Suiton: Suirou no Jutsu!"
				M<<"Você esta preso no Suirou de [usr]"
				return

//Suiton: Suiryuudan no Jutsu
// -cria um dragao de agua que se choca contra o oponente
// - http://www.youtube.com/watch?v=FmBr4lrWEe0

//Suiton: Daikoudan
// -poucas informações sobre o jutsu mas parece ser um jutsu de substituição
// - http://br.answers.yahoo.com/question/index?qid=20091127125502AAfSBKm
mob/Kisame
	verb
		SuitonDaikoudan() // Verb used for firing the beam
			set category = "Clan Jutsus"
			set name = "Suiton: Daikoudan"
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
					usr.SDaikoudan = 1
					usr.chakra -= 5
					sleep(1)
					usr.move = 1
					var/mob/L=new/mob/MizuKawa
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
					L.icon = 'MizuKawa.dmi'
					L.icon_state= "Kawa"
					flick("smoke2",L)
					sleep(30)
					flick("smoke2",L)
					sleep(8)
					del(L)
					usr.random = rand(1,20)
					usr.ninup()
					usr.Skills()
					usr<<"<font color = blue>Seu Ninjutsu aumentou!"
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						var/list/O = usr.overlays.Copy()
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0
						usr.KawaN += 1
						usr.SDaikoudan = 1 // Disables the mob's movement
						usr.chakra -= 5
						sleep(1)
						usr.move = 1
						var/mob/L=new/mob/MizuKawa
						L.name = usr.name
						L.icon = usr.icon
						L.overlays = usr.overlays
						L.loc=locate(usr.x,usr.y,usr.z)
						usr.icon = 'invis.dmi' // Sets the mob's icon_state
						usr.overlays = usr.overlays.Remove(usr.overlays)
						sleep(52)
						usr.icon = usr.Oicon
						usr.overlays = O.Copy()
						usr.SDaikoudan = 0
						L.overlays = L.overlays.Remove(L.overlays)
						L.icon = 'MizuKawa.dmi'
						L.icon_state= "Kawa"
						flick("smoke2",L)
						sleep(30)
						flick("smoke2",L)
						sleep(8)
						del(L)
						usr.random = rand(1,20)
						usr.ninup()
						usr.Skills()
						usr<<"<font color = blue>Seu ninjutsu aumentou!"
			sleep(30)
			usr.firing =0
			usr.SDaikoudan=0
mob/var/tmp
	SDaikoudan = 0

mob
	MizuKawa
		name = "Log"
		icon = 'MizuKawa.dmi'
		icon_state= "Kawa"


//Mizu Bunshin no Jutsu
// -Técnica que cria vários clones feitos 100% de água, que possuem 10% do poder original, mas que não podem se distanciar
//muito do ninja original. Dentro da água, o poder do Mizu Bunshin aumenta consideravelmente.
// - http://narutorpgplay.ativoforum.com/t53-jutsus-suiton



//Mizu Shunshin no Jutsu
// -Uma variação do Shunshin no Jutsu, na qual o usuário só se movimenta debaixo d'água.
// - http://narutorpgplay.ativoforum.com/t53-jutsus-suiton


//Doton no Jutsu
// -lança uma pedra

//Doton - Dochuu Senkou
