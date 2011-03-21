//                                                               Clan Kisame

//Jutsus-------------
// Ninjutsus----------
//  Técnicas Básicas---

//Shunshin no Jutsu

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

//Suiton no Jutsu
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
			if(!usr.Warmor)
				usr<<"Not now."
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



//Suiton: Bakusui Shouha
//  -cria um mar

//Suiton: Daibakufu no Jutsu
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
					var/obj/SuitonDaibakufuNoJutsu/K = new /obj/SuitonDaibakufuNoJutsu
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
						var/obj/SuitonDaibakufuNoJutsu/K = new /obj/SuitonDaibakufuNoJutsu
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
					for(var/obj/shibari/K in world)
						if(K.owner==usr)
							del(K)
							usr.Kshibari=0
							usr.Frozen=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
					for(var/obj/shibaritrail/T in world)
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
					var/obj/shibari/K = new /obj/shibari
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
			for(var/obj/shibari/K in world)
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
					for(var/obj/shibaritrail/T in world)
						usr.Frozen=0
						if(T.owner == usr)
							usr.Frozen=0
							del(T)

		Recuar()
			set category = "Clan Jutsus"
			set name = "Recuar"
			usr.chakra -= 500
			for(var/obj/shibari/K in world)
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
								for(var/obj/shibaritrail/A in world)
									if(A.owner==usr)
										del(A)
								return
					for(var/obj/shibaritrail/T in oview(1,K))
						if(T.owner==usr)
							K.loc = T.loc
							K.dir=T.dir
							del(T)
						else
							del(K)
							for(var/obj/shibaritrail/L in world)
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
			for(var/obj/shibari/K in world)
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
										for(var/obj/shibaritrail/T in world)
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
										for(var/obj/shibaritrail/T in world)
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
										for(var/obj/shibaritrail/T in world)
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
										for(var/obj/shibaritrail/T in world)
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

//Suiton: Suisahan
// -O ninja cria várias ondas grandes de água fazendo inundar o local.

//Suiton: Goshokusame Hengo
// -varios tubaroes sao lançados em direção a seu oponente causando uma explosão
// -http://www.youtube.com/watch?v=o3ghMgEo3Sk

//Suiton Ninpou - Same Henge no Jutsu
// Sem Informações...

//Suiton: Suirou Same Odori no Jutsu
//Kisame após utilizar essa técnica cria uma grande explosão de água, persegue seu oponente e o segura, e solta ventosas de partes
//de seu corpo que sugam o chakra do oponente até a última gota, após ser pegue pelo mesmo não é possível escapar.

//Suiton: Suikoudan no Jutsu
// -faz com que uma coluna de água a subir a partir da água e, em seguida, atacar seus alvos.
// - http://www.youtube.com/watch?v=v2pEZDK2trA

//Suiton: Suirou no Jutsu
// -uma bolha de agua que prendeo oponente
// - http://www.youtube.com/watch?v=t6uZmI4p6cs

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
// -Técnica que cria vários clones feitos 100% de água, que possuem 10% do poder original, mas que não podem se distanciar muito do ninja original. Dentro da água, o poder do Mizu Bunshin aumenta consideravelmente.
// - http://narutorpgplay.ativoforum.com/t53-jutsus-suiton



//Mizu Shunshin no Jutsu
// -Uma variação do Shunshin no Jutsu, na qual o usuário só se movimenta debaixo d'água.
// - http://narutorpgplay.ativoforum.com/t53-jutsus-suiton


//Doton no Jutsu
// -lança uma pedra

//Doton - Dochuu Senkou
