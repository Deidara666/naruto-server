mob
	verb
		Send_File(mob/m in view(usr),F as file)

			switch(alert(m,"[usr] is trying to send you [F].  Do you accept the file?","**File Transfer**","Yes","No"))
				if("Yes")
					alert(usr,"[m] accepted the file","**File Accepted**")
					m<<ftp(F)
				if("No")
					alert(usr,"[m] declined the file","**File Declined**")

mob/verb/whisper(mob/M in oview(),msg as text)

	set name = "Whisper"
	set desc = "Talk to someone on your screen(only the person you choose will hear you)."
	if(src.testing==1||src.muted == 1)
		src<<"Not right now!"
		return
	else
		msg=cuttext(msg)
		M<<"<font size=2><font color=purple><b><i>[usr] whispers-[msg]"
		usr<<"<font size=2><font color=red><b><i>You whisper to [M]-[msg]"

var
	Bugs = null//The var for the logging
	Sug = null

mob
	verb
		Villagewho()

			usr<<"<font color=blue>Online [usr.Village] Village Members -"
			for(var/mob/M in world)
				if(M.cansave==1&&M.Village == usr.Village){usr<<"<font color=green>{\icon[M][M.rank] ([M])"}

mob/verb
	Give_Cash(mob/M in oview(5))

		var/give = input("How much Yen do you wish to give [M]?")as num
		if(M==usr)
			usr<<"You cannot do that"
			return
		if(M.client)
			if(give>usr.Yen)
				usr<<"You don't have that much to give"
				return
			if(give<=0)
				usr<<"You cannot do that."
				return
			if(give>=100000000)
				usr<<"You can only give 100000000 at a time."
				return
			if(M.Yen>=100000)
				usr<<"They already have as much Yen as they can carry."
				return
			if(usr.client.address == M.client.address)
				usr<<"Nice try, Cannot give Yen to yourself."
				M<<"Nice try, Cannot give Yen to yourself."
				return
			if(give<usr.Yen)
				usr.Yen-=give
				M.Yen+=give
				usr<<"Successful transaction"
				M<<"[usr] gives you [give] Yen"
				give=0
			M.SaveK()
			usr.SaveK()
			return
var
	inwar = 0
	war1 = 0
	war2 = 0
	enemy = ""
	alli = ""
/*mob/hokage/verb/Declare_War()//a declare war verb
	var/list/villagew=list("Sand","Leaf","Sound","Grass")
	var/war = input("Which village would you like to declare war on?")in villagew
	switch(alert(src,"Are you sure you want to declare war on [war]?",,"Yes","No"))
		if("Yes")//they did so...
			if(war == src.Village)
				src << "You can't declare war upon your own village."
				return()// send em back
			else//otherwise
				world << "<b><font size = 2><font color = red>Announcement! [src.Village] has declared war on [war]"
				enemy = "[war]"
				alli = "[src.Village]"
				inwar = 1
				usr.loc = locate(97,50,11)
				war2 += 1
				usr.inwar2 = 1
				usr<<"OK you have joined the war!"
				for(var/mob/M in world)
					if(M.Village == "[war]")
						alert(M,"Go to war against [src.Village]?",,"Yes","No")
						if("Yes")
							M.loc = locate(6,55,11)
							war1 += 1
							M.inwar1 = 1
							M<<"OK you have joined the war!"
							return()
						if("No")
							usr<<"OK"
							return()
					if(M.Village == usr.Village)
						alert(M,"Go to war against [war]?",,"Yes","No")
						if("Yes")
							M.loc = locate(97,50,11)
							war2 += 1
							M.inwar2 = 1
							M<<"OK you have joined the war!"
							return()
						if("No")
							usr<<"OK"
							return()
					warcheck()
mob
	proc
		warcheck()
			sleep(100)
			for(var/mob/M in world)
				if(war1 == 0&&war2==0)
					return
				if(war1 == 0)
					world<<"<b><font size = 2><font color = red>Announcement! [alli] has defeated [enemy]!!"
					if(M.inwar2 == 1)
						M.Yen += rand(5000,6000)
						M.inwar2 = 0
						M.loc = locate(48,47,1)
					else if(M.inwar1 == 1)
						M.inwar1 = 0
						M.loc = locate(48,47,1)
						if(M.Yen >= 2000)
							M.Yen -= rand(1000,2000)
						else
							M.Yen = 0
				if(war2 == 0)
					world<<"<b><font size = 2><font color = red>Announcement! [enemy] has defeated [alli]!!"
					if(M.inwar1 == 1)
						M.Yen += rand(5000,6000)
						M.inwar1 = 0
					else if(M.inwar2 == 1)
						M.inwar2 = 0
						M.loc = locate(48,47,1)
						if(M.Yen >= 2000)
							M.Yen -= rand(1000,2000)
						else
							M.Yen = 0
				warcheck()
				*/

proc
	cuttext(msg as text)
		if(msg)
			if(length(msg)>400)
				msg = copytext(msg,1,400) + "...."
		return msg

mob
	verb
		Waterwalk()
			set category="Training"
			set name = "Water Walk"
			if(usr.waterwalk==0||usr.waterwalk==null)
				usr.waterwalk=1
				usr<<"You are now able to walk on water"
			else
				usr.waterwalk=0
				usr<<"You are now incapable of walking on water"
mob/verb/Help()

	set name ="HELP"
	set category = "HELP"
	switch(input("What do you need?","HELP",) in list("Credits","Training","Jutsus","NPCs","Fix Me!","Change Face Icon","Server Information","Huds","Screen Size","Cancel"))
		if("Training")
			switch(input("What do you need help on?","Help",) in list("Ninjutsu","Genjutsu","Taijutsu","Cancel"))
				if("Ninjutsu")
					usr.Ninjutsu()
				if("Genjutsu")
					usr.Genjutsu()
				if("Taijutsu")
					usr.Taijutsu()
		if("NPCs")
			usr.NPCs()
		if("Jutsus")
			usr.Techniques()
		if("Credits")
			usr.Credits()
		if("Change Face Icon")
			switch(input("What sex are you?", "Face Icon",text) in list("Male","Female"))
				if("Male")
					switch(input("What icon do you want to use?", "Icon Choose") in list ("Naruto","Sasuke","Lee","Neiji","Kakashi","Gaara","Zabuza","Haku","Shino","Choji","Kiba","Shikamaru","Jiraiya","Iruka","Orochimaru","Gai","Kubuto","Kimimaro","Akahosh","Obito","Asuma","Sasori","Sai","4th"))
						if("Sasori")
							usr.faceicon = 'sasoriF.bmp'
						if("Asuma")
							usr.faceicon = 'asumaF.bmp'
						if("Sai")
							usr.faceicon = 'saiF.bmp'
						if("4th")
							usr.faceicon = 'FourthHokageF.bmp'
						if("Obito")
							usr.faceicon = 'obitoF.bmp'
						if("Akahosh")
							usr.faceicon = 'akahoshF.bmp'
						if("Kimimaro")
							usr.faceicon = 'Kimimarof.bmp'
						if("Naruto")
							usr.faceicon = 'narutoF.bmp'
						if("Sasuke")
							usr.faceicon = 'sasukeF.bmp'
						if("Lee")
							usr.faceicon = 'leeF.bmp'
						if("Neiji")
							usr.faceicon = 'neijiF.bmp'
						if("Kakashi")
							usr.faceicon = 'kakashiF.bmp'
						if("Gaara")
							usr.faceicon = 'gaaraF.bmp'
						if("Zabuza")
							usr.faceicon = 'zabuzaF.bmp'
						if("Shino")
							usr.faceicon = 'shinoF.bmp'
						if("Haku")
							usr.faceicon = 'hakuF.bmp'
						if("Shikamaru")
							usr.faceicon = 'ShikamaruF.bmp'
						if("Choji")
							usr.faceicon = 'ChojiF.bmp'
						if("Jiraiya")
							usr.faceicon = 'JirF.bmp'
						if("Orochimaru")
							usr.faceicon = 'OroF.bmp'
						if("Gai")
							usr.faceicon = 'GaiF.bmp'
						if("Kubuto")
							usr.faceicon = 'KubutoF.bmp'
						if("Kiba")
							usr.faceicon = 'KibaF.bmp'
						if("Iruka")
							usr.faceicon = 'IrukaF.bmp'


				if("Female")
					switch(input("What icon do you want to use?", "Icon Choose") in list ("Sakura","Hinata","Ino","Tenten","Anko","Aoi","Tsunade","Temari","Tayuya"))
						if("Tayuya")
							usr.faceicon = 'tayuyaF.bmp'
						if("Sakura")
							usr.faceicon = 'sakuraF.bmp'
						if("Anko")
							usr.faceicon = 'ankoF.bmp'
						if("Aoi")
							usr.faceicon = 'aoiF.bmp'
						if("Hinata")
							usr.faceicon = 'hinataF.bmp'
						if("Ino")
							usr.faceicon = 'inoF.bmp'
						if("Tenten")
							usr.faceicon = 'tentenF.bmp'
						if("Tsunade")
							usr.faceicon = 'tsunadeF.bmp'
						if("Temari")
							usr.faceicon = 'TemariF.bmp'
		if("Fix Me!")
			switch(input("What do you need to be Fixed?","Help",) in list("Black Screen!","Icon is Messed!","Cancel"))
				if("Black Screen!")
					if(usr.loc==null)
						usr.loc=locate(6,29,2)
						usr<<"Fixed"
					else
						usr<< "You don't have a Black Screen"
				if("Icon is Messed!")
					usr.overlays = null
					usr.icon_state = ""
					usr.underlays = null
					switch(input("What genger are you?", text) in list ("Male","Female"))
						if("Male")
							switch(input("Choose a skin color", text) in list ("Pale","Tan","Vamp","Black","Red","Blue","Yellow"))
								if("Pale")
									usr.icon='Base white.dmi'
									usr.Oicon='Base white.dmi'
									usr.baseselected=1
								if("Tan")
									usr.icon='BaseT.dmi'
									usr.Oicon='BaseT.dmi'
									usr.baseselected=1
								if("Vamp")
									usr.icon='BaseVamp.dmi'
									usr.Oicon='BaseVamp.dmi'
									usr.baseselected=1
								if("Black")
									usr.icon='BaseBlack.dmi'
									usr.Oicon='BaseBlack.dmi'
									usr.baseselected=1
								if("Red")
									usr.icon='BaseRed.dmi'
									usr.Oicon='BaseRed.dmi'
									usr.baseselected=1
								if("Blue")
									usr.icon='BaseBlue.dmi'
									usr.Oicon='BaseBlue.dmi'
									usr.baseselected=1
								if("Yellow")
									usr.icon='BaseYellow.dmi'
									usr.Oicon='BaseYellow.dmi'
									usr.baseselected=1
						if("Female")
							switch(input("Choose a skin color", text) in list ("Pale","Tan","Vamp","Black","Red","Blue","Yellow"))
								if("Pale")
									usr.icon='Female white.dmi'
									usr.Oicon='Female white.dmi'
									usr.baseselected=1
								if("Tan")
									usr.icon='FemaleT.dmi'
									usr.Oicon='FemaleT.dmi'
									usr.baseselected=1
								if("Vamp")
									usr.icon='FemaleVamp.dmi'
									usr.Oicon='FemaleVamp.dmi'
									usr.baseselected=1
								if("Black")
									usr.icon='FemaleBlack.dmi'
									usr.Oicon='FemaleBlack.dmi'
									usr.baseselected=1
								if("Red")
									usr.icon='FemaleRed.dmi'
									usr.Oicon='FemaleRed.dmi'
									usr.baseselected=1
								if("Blue")
									usr.icon='FemaleBlue.dmi'
									usr.Oicon='FemaleBlue.dmi'
									usr.baseselected=1
								if("Yellow")
									usr.icon='FemaleYellow.dmi'
									usr.Oicon='FemaleYellow.dmi'
									usr.baseselected=1
		if("Server Information")
			var/calcLag = abs(world.cpu - 100)
			usr << "<strong>Server Hosted On: [world.system_type]</strong>"
			usr << "<strong>Server Efficiency: [calcLag]%</strong>"
			usr << "<strong>Server Port: [world.port]</strong>"
		if("Huds")
			switch(input("Do you want to turn on/off the Menus in your game screen","Menus Options",) in list("ON","OFF"))
				if("ON")
					if(usr.menus==1)
						alert("Sorry it´s already on...")
						return
					usr.menus=1
					usr.menu()
				if("OFF")
					if(usr.menus==0)
						alert("Sorry it´s already off...")
						return
					usr.menus=0
					usr.menu2()
		if("Screen Size")
			alert("Your current view is [client.view]. The default view is 5.")//**NOTE**:'5' is the closest to the default view as you can get, IF you don't want to get into fractions.
			switch(input("What Screen size do you want?","Choose your screen size!",) in list("1","2","3","4","5","6","7","8","9","10","Cancel"))
				if("1")
					if(client.view == 1)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 1
						usr.view=1
				if("2")
					if(client.view == 2)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 2
						usr.view=2
				if("3")
					if(client.view == 3)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 3
						usr.view=3
				if("4")
					if(client.view == 4)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 4
						usr.view=4
				if("5")
					if(client.view == 5)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 5
						usr.view=5
				if("6")
					if(client.view == 6)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 6
						usr.view=6
				if("7")
					if(client.view == 7)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 7
						usr.view=7
				if("8")
					if(client.view == 8)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 8
						usr.view=8
				if("9")
					if(client.view == 9)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 9
						usr.view=9
				if("10")
					if(client.view == 10)
						usr << "You are on this size ([client.view]) already..."
					else
						client.view = 10
						usr.view=10
				if("Cancel")
					return()

//------------------------------------------------------------------------------------------------------------------
mob/proc/RankCaps()
	var/RankCapstext = {"
		<html>
		<STYLE>BODY {font-family: Verdana;font-size: 10px}</STYLE>
		<head>
		<BODY>
		<title>Ranks and Caps</title>
		</head>
		<body bgcolor=#000000 text=#f5f5f5>
		<center><h2>Caps<br></h2>
		<strong>Student-500</strong><br>
		<strong>Genin-1000</strong><br>
		<strong>Chuunin-2500</strong><br>
		<strong>Anbu-5000-1 Custom Jutsu</strong><br>
		<strong>(acts as village guards/cops)</strong><br>
		<strong>Jounin-7500</strong><br>
		<strong>(in charge of training genin to chuunin)</strong><br>
		<strong>Hunter-10000</strong><br>
		<strong>(job is to hunt down and make all who leave there village regreat it)</strong><br>
		<strong>Sannin-9000-2 Custom Jutsu</strong><br>
		<strong>(Kages personl body guards and 2nd in command)</strong><br>
		<strong>Kage-10000-2 Custom Jutsu</strong><br>
		<strong>(controls the whole village)</strong><br>
		<strong>Missing-7500</strong><br>
		<strong>Akat-9000</strong><br>
		<strong>SO-9000</strong><br>

		<strong><b><u>The best thing to do is go Genin, Chuunin, Jounin, Hunter, Anbu or Sannin or Missing.</b></u></strong><br>
		<strong><b><i>Piss off your Kage and you risk being jumped right to missing and missing out on alot of rare jutsu learning.</b></i></strong><br>

		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(RankCapstext)
//--------------------------------------------------------------------------------------------------------
mob/proc/NPCs()
	var/NPCstext = {"
		<html>
		<STYLE>BODY {font-family: Verdana;font-size: 10px}</STYLE>
		<head>
		<BODY>
		<title>NPCs</title>
		</head>
		<body bgcolor=#000000 text=#f5f5f5>
		<center><h2>NPCs<br></h2>

		<strong>Naruto</strong>- Teaches Tiger Sign<br>
		<strong>Sakura</strong>- Teaches Dog Sign<br>
		<strong>Sasuke</strong>- Teaches Dragon Sign<br>
		<strong>Lee</strong>- Teaches Horse Sign<br>
		<strong>Neiji</strong>- Teaches Ram Sign & Hyuuga Clan Jutsu's<br>
		<strong>Kakashi</strong>- Teaches Ox Sign<br>
		<strong>Jiraiya</strong>- Teaches Rat Sign & Gives you Frog Summoning<br>
		<strong>Tsunade</strong>- Gives you Slug Summoning<br>
		<strong>Legendary Sanin</strong>- Gives you Snake Summoning<br>
		<strong>Gaara</strong>- Teaches Boar Sign<br>
		<strong>Zabuza</strong>- Teaches Monkey Sign<br>
		<strong>Shino</strong>- Teaches Snake Sign<br>
		<strong>Itachi</strong>- Teaches Bird Sign<br>
		<strong>Dosu Kinuta</strong>- Teaches Rabbit Sign<br>
		<strong>Summon Seller</strong>- Sells Summoning Scrolls<br>
		<strong>Jounin Squad Assignment NPC</strong>- Jounins can make squads here<br>
		<strong>Scroll Seller</strong>- Sells Jutsu Scrolls<br>
		<strong>Sword Seller</strong>- Sell swords<br>
		<strong>Ninja Weapon Seller</strong>- Sells all weapons what ninja need<br>
		<strong>Orochimaru</strong>- If he bites you you'll receive cursed seal<br>
		<strong>Spawn Helpers</strong>- Resets your spawn in that village<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(NPCstext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Credits()
	var/credittext = {"
		<html>
		<head>
		<title>Naruto: Destiny ninja</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><h2>Naruto Legend Of Shinobi Tacticss</h2></center><hr>
		<p><strong>Owner/Mapper:</strong>Bakura-BaKuRa <br>
		<strong>Mapping:</strong> Bakura-BaKuRa<br>
		<strong>GFX Artist:</strong>Looking<br>
		<strong>Web Admin :</strong>Looking<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(credittext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Taijutsu()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Training</title>
		</head>
		<body bgcolor=#f5f5f5 text=#000000>
		<center><h2>Taijutsu</h2></center><hr>
		<p><strong>Logs:</strong> Logs are scattered about, You lose Stamina per log hit and gain Taijutsu randomly, New! - Shuriken and Kunai can be thrown at logs as a Taijutsu and Ninjutsu training method, Also to increase your Shuriken Skill or Kunai skill to learn a Jutsu for that weapon.<br>
		<strong>Mountain Climbing:</strong> This is a form of Stamina and Taijutsu training.<br>
		<strong>
		:</strong> Trains All Stats a bit.<br>

		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Genjutsu()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Training</title>
		</head>
		<body bgcolor=#f5f5f5 text=#000000>
		<center><h2>Genjutsu</h2></center><hr>
		<strong>Gen</strong> Use Bunshin No Jutsu<br>
		<strong>Level Up:</strong> Trains All Stats a bit.<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Ninjutsu()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Training</title>
		</head>
		<body bgcolor=#f5f5f5 text=#000000>
		<center><h2>Ninjutsu</h2></center><hr>
		<strong>Nin</strong> Use Kage Bunshins No Jutsu<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Techniques()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana;font-size: 10px}</STYLE>
		<head>
		<BODY>
		<title>Techniques</title>
		</head>
		<body bgcolor=#000000 text=#f5f5f5>
		<center><h2>Techniques<br></h2>
		<centerLast Updated 8/30/06<br>
		<p>(A new Jutsu is triggered by a level up if you have the required Nin, Gen, and Tai.)<br>

	<center><h2>Uchiha Info-</h2>

		See Sasuke at Uchiha clan house in Grass for otheres<br>

		<center><h2>Hyuuga Info-<br></h2>

		See Neiji at Hyuuga house in Leaf<br>

		<center><h2>Haku Info-<br></h2>

		See Haku at Haku house in Snow<br>

		<center><h2>Akimichi Info-<br></h2>

		See Choji at Akimichi house in Waterfall<br>

		<center><h2>Nara Info-<br></h2>

		See Shikamaru at Nara house in Mist<br>

		<center><h2>Kaguya-<br></h2>

		See Kimimaro at Kaguya house in Sound<br>

		<center><h2>Aburame Info-<br></h2>

		See Shino at Aburame house in Rain<br>

		<center><h2>Inuzuka Info-<br></h2>

		See Kiba at Inuzuka house at Cloud<br>

		<center><h2>Rock Lee-<br></h2>

		See Lee at Lee house in Rock<br>

		<center><h2>Gaara-<br></h2>

		See Gaara in Gaara house at Sand<br>

		<center><h2>Kamizuri-<br></h2>

		See Bee Keeper in Kamizuri house at Rock<br>

		<center><h2>Tenten-<br></h2>

		See Tenten in Tenten house at Grass<br>

		<center><h2>Uzumaki-<br></h2>

		See Naruto in Uzumaki house at Rain<br>

		<center><h2>Medic-<br></h2>

		See Kabuto at Medic house in Leaf<br>

		<center><h2>Missing-</h2><br>
		Bakuretsu Bunshin - Become Missing Nin<br>

		<center><h2>Hunter-</h2><br>
		Jourou Senbon - Become Hunter Nin<br>

		<center><h2>Jounin-</h2><br>
		Kage Konaha Buyou - Become Jounin Nin<br>

		<center><h2>ALL Village Jutsu are hidden find a sensi to learn them!:<br></h2>

		<strong>Leaf-</strong><br>
		1.Katon Goukakyuu No Jutsu<br>
		2.Katon Housenka No Jutsu<br>
		3.Katon Ryuukano No Jutsu<br>
		4.Katon No Jutsu<br>
		5.Katon Karyuu Endan<br>
		<br>
		<strong>Grass-</strong><br>
		1.Katon No Jutsu<br>
		2.Karyuudan<br>
		3.Katon Goukakyuu<br>
		4.Katon Housenka<br>
		5.Katonheki<br>
		<br>
		<strong>Mist-</strong><br>
		1.Suiton Suiryuudan No Jutsu<br>
		2.Suirou No Jutsu<br>
		3.Suiton Suikoudan No Jutsu<br>
		4.Kirigakure<br>
		5.Mist No Jutsu<br>
		<br>
		<strong>Rain-</strong><br>
		1.Daibakufu No Jutsu<br>
		2.Jouro Senban<br>
		3.Rain No Jutsu<br>
		4.Suiton Bunshin<br>
		5.Suiton Doryuudan<br>
		<br>
		<strong>Waterfall-</strong><br>
		1.Suishouha<br>
		2.Suiton No Jutsu<br>
		3.Suiton Suishouha<br>
		4.Suiton Kyuu<br>
		5.Suiton Sousou<br>
		<br>
		<strong>Rock-</strong><br>
		1.Doton Doryo Dango<br>
		2.Doton Doryuuheki<br>
		3.Doton Kyuu<br>
		4.Doton Sousou<br>
		5.Doroudorno<br>
		<br>
		<strong>Sand-</strong><br>
		1.Fuuton Kaze Dangan No Jutsu<br>
		2.Fuuton Renkuudan No Jutsu<br>
		3.Fuuton Daitoppa No Jutsu<br>
		4.Fly<br>
		5.Ninpou Kamaitachi<br>
		<br>
		<strong>Cloud-</strong><br>
		1.Raikyuu No Jutsu<br>
		2.Rairyuu No Tatsumaki<br>
		3.Rai No Jutsu<br>
		4.Ikazuchi No Kiba<br>
		5.Summon Cloud<br>
		<br>
		<strong>Sound-</strong><br>
		1.Zankuuha<br>
		2.Zankyokukuuha<br>
		3.Zan No Jutsu<br>
		4.Kyoumeisen<br>
		5.Sen'eijashu<br>
		<br>
		<strong>Snow-</strong><br>
		1.Makyou Armor<br>
		2.Futagoza No Jutsu<br>
		3.Makyou Hyoushou<br>
		4.Makyou Suiryuudan<br>
		5.Makyou Suikoudan<br>
		<br>
		<strong>Everyone-</strong><br>
		Sennen Goroshi - Genin<br>
		Kage Bunshin No Jutsu - 200 Bunshin uses, Genin, and a scroll.<br>
		Shushin No Jutsu - 100 Kawa uses & 2Ox<br>
		Mei Mei No Jutsu - 100 Henge uses & 2Snake<br>
		Chidori - Hidden<br>
		Rensengan - Hidden<br>
		<br>
		<strong>Demons and seals-</strong><br>
		Kyuubi - you get it when you first time start the game<br>
		Cs - Give Orochimaru bite your neck in forest<br>
		Shukkaku - Start game with Gaara clan<br>
		i work on anoter demons and seals<br>
		YOU MAY HAVE ONLY ONE SEAL OR DEMON!<br>
		<br>
		To get akimichi pills talk to owner or gm
		<br>
		<strong>Summons-</strong><br>
		Frog - Tai based<br>
		Slug - Nin based<br>
		Snake - Gen based<br>
		Puppet - Tai based<br>

		YOU MAY ONLY HAVE ONE SUMMONING!
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob
	proc
		WATER()
			if(src.onwater)
				var/tc = rand(1,4)
				src.used=tc
				if(src.ChakraC <= 99)
					if(used >= 3)
						if(src.chakra < src.used)
							src.health -= src.used
							var/random = rand(1,10)
							if(random==3)
								if(src.Mchakra<=1000000)
									src<<"Your chakra raised!"
									src.Mchakra += rand(2,5)
							var/random2=rand(1,8)
							if(random2==1||random2==3)
								var/random3=rand(1,10)
								if(random3==2)
									src<<"<font size=1><font name=courier new><font color=green>You control your chakra better!"
									src.ChakraC+=1
								if(src.health<=0)
									src.DeathCheck6(src)
									src.onwater = 0
									return
						else
							src.chakra -= src.used
					if(src.used < 3)
						if(src.chakra<src.used)
							if(src.chakra<src.used)
								src.health -= src.used
								if(src.health<=0)
									src.DeathCheck6(src)
							else
								src.chakra -= 1
				if(src.ChakraC >= 50)
					if(src.chakra >= 3)
						src.chakra -= 3
						var/random = rand(1,10)
						if(random==3)
							if(src.Mchakra<=1000000)
								src<<"Your chakra raised!"
								src.Mchakra += rand(2,5)
								if(src.health <= 0)
									src.DeathCheck6(src)
									src.onwater = 0
									return
					else
						src.health -= 3
						var/random = rand(1,10)
						if(random==3)
							if(src.Mchakra<=1000000)
								src<<"Your chakra raised!"
								src.Mchakra += rand(2,5)
								if(src.health<=0)
									src.DeathCheck6(src)
									src.onwater = 0
									return

var
	worldC=1
mob/var/OOC=0
mob/verb/OOC(msg as text)

	set desc = "Say something to everyone in the game"
	var/list/L
	L = list("font size","font color")
	for(var/H in L)
		if(findtext(msg,H))
			alert("No HTML in text!")
			return
	if(!usr.OOC)
		alert("You are muted!")
		return
	if(!worldC)
		alert("An admin has turned off world chat.")
		return
	if(length(msg) >= 100)
		alert("Message is too long")
		return
	if(filter(msg,tags) == TRUE)	 //if the msg has profanity in it
		usr.html() // call the proc
		return
	else //if it checks out
		if(spamcheck == TRUE)//if the player is spamming
			usr << "Spam rate exceeded please wait a moment and try again!"//tell him to wait for a second
			return //stop it from sending
		else//if the message is ok to send
			usr.spamcheck()//check for spam
			msg=cuttext(msg)
			if(log)//if logging is turned on
				text2file("(((((OOC)))))[time2text(world.realtime)]:[usr] says, [msg]","log.txt") // add it to the log
	for(var/mob/M in world)
		if(M.OOC&&M.OOCC)
			M << "<font size=1><font face=verdana><B><font color=red>([usr.Village])-<font color = silver>([usr.Clan])-<font color = blue>[usr.squad]-[usr]<font color=green>: [msg]"
mob/verb/VillageSay(msg as text)

	set desc = "Say something to everyone in your village"
	var/list/L
	L = list("font size","font color")
	for(var/H in L)
		if(findtext(msg,H))
			alert("No HTML in text!")
			return
	if(!usr.OOC)
		alert("You are muted!")
		return
	if(length(msg) >= 400)
		alert("Message is too long")
		return
	for(var/mob/M in world)
		if(usr.Village == M.Village)
			M << "<font size=1><font face=verdana><B><font color=white>(Village Say)([usr.Clan])[usr.squad]-<IMG CLASS=icon SRC=\ref[usr.faceicon]><font size = 1>[usr]<font color=yellow>: [msg]"
mob
	verb
		Say(msg as text)

			if(!usr.OOC)
				return
			if(usr.testing)
				usr<<"Not right now!"
				return
			if(filter(msg,tags) == TRUE)	 //if the msg has profanity in it
				usr.html() // call the proc
				return
			else //if it checks out
				if(spamcheck == TRUE)//if the player is spamming
					usr << "Spam rate exceeded please wait a moment and try again!"//tell him to wait for a second
					return //stop it from sending
				else//if the message is ok to send
					usr.spamcheck()//check for spam
					msg=cuttext(msg)
					view(usr) << "<font size=1><font face=verdana><b><font color=white><IMG CLASS=icon SRC=\ref[usr.faceicon]><font size = 1>[usr]<font color= red> Says: [msg]"
					if(log)//if logging is turned on
						text2file("[time2text(world.realtime)]:<IMG CLASS=icon SRC=\ref[usr.faceicon]><font size = 1>[usr] says, [msg]","log.txt") // add it to the log
mob
	verb
		Emote(msg as text)

			if(!usr.OOC)
				return
			if(!worldC)
				alert("An admin has turned off world chat.")
				return
			if(usr.testing)
				usr<<"Not right now!"
				return
			if(filter(msg,tags) == TRUE)	 //if the msg has profanity in it
				usr.html() // call the proc
				return
			if(filter(msg,profane) == TRUE)	 //if the msg has profanity in it
				usr.profane() // call the proc
				return //stop it from sending
			if(filter(msg,bannedwords) == TRUE) // if the msg has banned words in it
				usr.bannedwords() //call the proc
				return
			else //if it checks out
				if(spamcheck == TRUE)//if the player is spamming
					usr << "Spam rate exceeded please wait a moment and try again!"//tell him to wait for a second
					return //stop it from sending
				else//if the message is ok to send
					usr.spamcheck()//check for spam
					msg=cuttext(msg)
					view(usr) << "<font color=yellow>*<font color=red> [usr] [msg] <font color=yellow>*"
					if(log)//if logging is turned on
						text2file("[time2text(world.realtime)]:[usr] says, [msg]","log.txt") // add it to the log
mob/verb/Who()

	var/tmp/C = 0
	for(var/mob/M in world)
		if(M.client)
			C += 1
			usr << "<font size=1><b><font color=silver>[M.name]: <font color=green>(Key: [M.key]) Rank:[M.rank] Clan: [M.Clan] Village: [M.Village]"
			if(M.GM)
				usr << "<font size=1><b><font color=yellow>[M.name] (Key: [M.key]) (GM)"
	usr << "<font size=1>[C] Players Online!"
mob/var/wartoggle=1
mob
	verb
		War_Toggle()
			set hidden =1

			if(usr.wartoggle)
				usr.wartoggle=0
				usr<<"You turn off village warring"
			else
				usr.wartoggle=1
				usr<<"You turn on village warring"

mob
	verb
		LeaveVillage()
			set category="Commands"
			switch(input("Are you sure you want to do this there is no going back!!!", text) in list ("Yes","No"))
				if("Yes")
					if(src.rank=="Student")
						usr<<"You not stong enough to go out on your own yet!"
						return
					else
						usr.Village="None"
						usr.rank="Missing"
						usr.soundleader=0
						usr.soundmember=0
						usr.akatsukimember=0
						usr.akatsukileader=0
						usr.cap = Jcap
						usr.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
						for(var/obj/AKAH/H in src.contents)
							del(H)
						for(var/obj/AKAS/S in src.contents)
							del(S)
						for(var/obj/SOSuit/S in src.contents)
							del(S)


				if("No")
					usr<<"Smart choice it's rough on your own."
mob/Squads
	verb
		Invite(mob/M in view(10))
			set category="Squad"
			switch(input("Are you sure you want to teach them?!", text) in list ("Yes","No"))
				if("Yes")
					if(M.Village == usr.Village&&usr.recruits<=2)
						M.squads=1
						M.squad="[src.squad]"
						usr.recruits+=1

					else
						usr<<"There not from your village or you already have 3 in your squad"
				else
					usr<<"Understood"
		Boot(mob/M in world)
			set category="Squad"
			switch(input("Are you sure you want to kick them out?", text) in list ("Yes","No"))
				if("Yes")
					if(M.squad==usr.squad)
						M.squads=0
						M.squad=""
						usr.recruits-=1

					else
						usr<<"There not from your squad"
				else
					usr<<"Understood."
mob
	verb
		SquadSay(msg as text)
			set desc = "Say something to everyone in your squad"
			var/list/L
			L = list("font size","font color")
			for(var/H in L)
				if(findtext(msg,H))
					alert("No HTML in text!")
					return
			if(length(msg) >= 400)
				alert("Message is too long")
				return
			for(var/mob/M in world)
				if(usr.squad == M.squad&&M.squads==1)
					M << "<font size=1><font face=verdana><B><font color=white>(Squad Say)([usr.Clan]}-[usr]<font color=red>: [msg]"

mob
	verb
		LeaveSquad()
			switch(input("You sure you wish to betray your sensi?",text)in list("Yes","No"))
				if("Yes")
					usr.squads=0
					usr.squad=""
				else
					usr<<"Good idea to be sure its best."
mob
	verb
		AFK()
			if(src.firing)
				src<<"Not right now."
				return
			if(src.AFK)
				world << "[src] Is Back."
				src.AFK = 0
				src.overlays -= 'AFK.dmi'
				src.firing =1
				sleep(30)
				src.firing =0
			else
				world << "[src] Is Now AFK."
				src.AFK = 1
				src.overlays += 'AFK.dmi'
				src.firing=1
				sleep(30)
				src.firing =0
mob
	verb
		OOC_OnOff()
			if(usr.OOCC==1)
				usr<< "[src] You turn off OOC."
				usr.OOCC = 0

			else
				usr<< "[src] You turn on OOC."
				usr.OOCC = 1

mob
    verb
   		MusicStop()
			set name = "Parar Música"
			set category = "Commands"
			view(src) << sound(null)
			view(src) << "[src.name] parou a música!"

mob
    verb
		MusicPlay(S as sound)
			set name = "Tocar Música"
			set category = "Host"
			view(src) << sound(S,0)
			view(src) << "[src.name] execuções [S] para nós!"

mob
	verb
		Challenge(mob/M in world)
			set category = "Arena"
			set name = "ARENA-Challenge"
			if (M.Village=="")
				usr << "You cannot challenge a NPC!"
				return
			if(M == usr)
				usr<<"You can not challenge yourself."
				return
			if(usr.jailed==1)
				usr<<"Not while your jailed."
				return
			else
				usr.challenge = 1
				M.challenged = 1
				world << "<b>Arena:</b>[M] has been challenged by [usr]! You have 1 minute to respond!"
				(M) << sound(null)
				M<<'The raising fighting spirit.mid'
				(usr) << sound(null)
				usr<<'The raising fighting spirit.mid'
				sleep(600)
				M<<"Chicken"
				usr<<"They chickened out."
				M.challenged = 0
				usr.challenge = 0


		Accept(mob/M in world)
			set category = "Arena"
			set name = "ARENA-Accept"
			if(M == usr)
				usr<<"You can not challenge yourself."
				return
			if(usr.jailed==1)
				usr<<"Not while your jailed."
				return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena:</b>[usr] has accepted [M]'s challenge!"
					M.loc = locate(52,11,18)
					usr.loc = locate(96,11,18)
					M.PK = 1
					usr.PK = 1
					M.challenged = 0
					usr.challenge = 0
					(M) << sound(null)
					M<<'The raising fighting spirit.mid'
					(usr) << sound(null)
					usr<<'The raising fighting spirit.mid'
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"


		Decline(mob/M in world)
			set category = "Arena"
			set name = "ARENA-Decline"
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena:</b>[usr] has declined [M]'s challenge!"
					usr.challenged = 0
					M.challenge = 0
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"

mob
	verb
		Power_up()
			set category = "NinJutsu"
			set name = "POWER-UP"
			if(usr.rank =="Student")
				usr<<"You must be Genin or higher to use this option."
				return
			if(usr.Kyuubi==1)
				if(usr.Kyuubi==1)
					usr.Kyuubi()
					return
			else
				usr<<"You do not have 9tails."

			if(usr.bit==1)
				if(usr.bit==1)
					usr.Cursed_Seal()
					return
			else
				usr<<"You do not have Curse Seal."

			if(usr.Shukkaku==1)
				if(usr.Shukkaku==1)
					usr.Kaku()
					return
			else
				usr<<"You do not have Shukkaku."

mob
	verb
		Page_GM(mob/M in world,msg as text)
			set category = "HELP"
			set name = "Page GM"
			if(M.GM==1)
				alert("DO NOT PAGE GMs UNLESS IT IS IMPORTANT OR RISK JAIL!")
				M<<"<font size = 3><b><u>[usr] is pageing for a GM!"
				msg=cuttext(msg)
				M<<"<font size=3><font color=red><b><i>[usr] PAGES-[msg]"
				usr<<"<font size=3><font color=red><b><i>You PAGE to [M]-[msg]"
			else
				usr<<"There not a GM"
				return