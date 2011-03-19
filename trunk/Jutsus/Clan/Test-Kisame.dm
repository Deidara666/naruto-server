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
				view()<<"<font color = blue>[usr]: Suiton No Jutsu!"
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


//Suiton: Goshokuzame
// -um tubarao gigante que paraliza o oponente
// -http://www.youtube.com/watch?v=o3ghMgEo3Sk

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

//Mizu Bunshin no Jutsu
// -Técnica que cria vários clones feitos 100% de água, que possuem 10% do poder original, mas que não podem se distanciar muito do ninja original. Dentro da água, o poder do Mizu Bunshin aumenta consideravelmente.
// - http://narutorpgplay.ativoforum.com/t53-jutsus-suiton


//Mizu Shunshin no Jutsu
// -Uma variação do Shunshin no Jutsu, na qual o usuário só se movimenta debaixo d'água.
// - http://narutorpgplay.ativoforum.com/t53-jutsus-suiton


//Doton no Jutsu
// -lança uma pedra

//Doton - Dochuu Senkou
