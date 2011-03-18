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

//Suiton: Goshokuzame

//Suiton: Suishouha

//Suiton: Suisahan

//Suiton: Goshokusame Hengo

//Suiton Ninpou - Same Henge no Jutsu

//Suiton: Suirou Same Odori no Jutsu

//Suiton: Suikoudan no Jutsu

//Suiton: Suirou no Jutsu

//Suiton: Suiryuudan no Jutsu

//Suiton: Daikoudan

//Mizu Bunshin no Jutsu

//Mizu Shunshin no Jutsu

//Doton no Jutsu

//Doton - Dochuu Senkou
