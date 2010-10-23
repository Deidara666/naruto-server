
mob/proc/menu()
	if(src.menus)
		src.client.screen+=new/obj/tchat
		src.client.screen+=new/obj/trest
		src.client.screen+=new/obj/tsave

mob/proc/menu2()
	if(!src.menus)
		src.client.screen=null
turf/Customization
	density = 1
	icon = 'naruto1.bmp'
turf/Full
	density = 1
	layer = 999
	icon = 'naruto_itachi.bmp'
turf/START
	density = 1
	layer = 999
	Click()
		usr.loc = locate(52,37,30)
		var/name = input("","Name") as text|null
		if(length(name) < 2)
			alert("Your name must be longer than 2 letters!")
			return
		if(length(name) > 20)
			alert("Your name can not be longer then 20 letters!")
			return
		usr.name="[html_encode(name)]"
		usr.loc = locate(94,94,20)
turf/Load
	density = 1
	layer = 999
	Click()
		usr.LoadPlayer()
turf/Quit
	density = 1
	layer = 999
	Click()
		del(usr)
client
	Del()
		..()
		del(mob)
		return ..()
turf/Finished
	density=1
	Click()
		switch(input("What genger are you?", "Face Icon",text) in list("Male","Female","Other"))
			if("Male")
				switch(input("What icon do you want to use?", "Icon Choose") in list ("Naruto","Sasuke","Itachi","Kankuro","Lee","Kimimaro","Neiji","Kakashi","Gaara","Zabuza","Haku","Shino","Choji","Kiba","Shikamaru","Jiraiya","Iruka","Orochimaru","Gai","Kubuto","Kimimaro","Akahosh","Obito","Asuma","Sasori","Sai","4th"))
					if("Sai")
						usr.faceicon = 'saiF.bmp'
					if("Itachi")
						usr.faceicon = 'itachiF.bmp'
					if("4th")
						usr.faceicon = 'FourthHokageF.bmp'
					if("Obito")
						usr.faceicon = 'obitoF.bmp'
					if("Akahosh")
						usr.faceicon = 'akahoshF.bmp'
					if("Kimimaro")
						usr.faceicon = 'Kimimarof.bmp'
					if("Sasuke")
						usr.faceicon = 'sasukeF.bmp'
					if("Lee")
						usr.faceicon = 'leeF.bmp'
					if("Kankuro")
						usr.faceicon ='kankurof.bmp'
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
					if("Sasori")
						usr.faceicon = 'sasoriF.bmp'
					if("Asuma")
						usr.faceicon = 'asumaF.bmp'

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

			if("Other")
				usr.faceicon = 'kingenmaF.bmp'

		if(usr.villageselected&&usr.baseselected)
			usr.loc=locate(6,58,20)
			usr.cansave=1
			usr.OOC=1
			usr.random=rand(1,2)
			if(usr.Clan=="Gaara")
				return
			if(usr.Clan=="Uzumaki")
				return
			if(usr.random==1)
				usr.CS=1
				usr.bit=1
				return
			if(usr.random==2)
				usr.Kyuubi=1
				return

		else
			usr<<"You must choose a village and a base icon!"
turf/Skincolorselect
	density=1
	Click()
		usr.baseselected=0
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
turf/Delete
	density = 1
	layer=999
	Click()
		usr.DeleteChar()

mob
	proc
		DeleteChar()
			if(fexists("players/[src.key].sav"))
				var/sure=alert(src,"Are you sure you want to delete your character?","Confirmation","No","Yes")
				if(sure=="Yes")
					sleep(0)
					fdel("players/[src.key].sav")
					src << "Character Deleted"
				else
					src << "Canceled deleting '[src.key].sav'"
			else
				src << "You do not have a character saved on this server."
mob/var
	hairselected=0
	villageselected=0
	baseselected=0
turf/Villageselect
	density=1
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.lightningS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		alert("Remember that each village has their own unique Jutsus.")
		switch(input("Which Village would you like to be born in?", text) in list ("Leaf","Sand","Sound","Grass","Rain","Cloud","Mist","Rock","Waterfall","Snow"))
			if("Leaf")
				usr.leafS=1
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Leaf"
				usr.waterfallS=0
			if("Sand")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=1
				usr.soundS=0
				usr.earthS=0
				usr.waterfallS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Sand"
			if("Sound")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=0
				usr.soundS=1
				usr.earthS=0
				usr.waterfallS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Sound"
			if("Rain")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.sandS=0
				usr.earthS=0
				usr.rainS=1
				usr.waterfallS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Rain"
			if("Grass")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.waterfallS=0
				usr.rainS=0
				usr.grassS=1
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Grass"
			if("Rock")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.sandS=0
				usr.earthS=1
				usr.rainS=0
				usr.waterfallS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Rock"
			if("Cloud")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.waterfallS=0
				usr.grassS=0
				usr.lightningS=1
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Cloud"
			if("Mist")
				usr.leafS=0
				usr.mistS=1
				usr.sandS=0
				usr.soundS=0
				usr.earthS=0
				usr.rainS=0
				usr.grassS=0
				usr.waterfallS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Mist"
			if("Waterfall")
				usr.leafS=0
				usr.mistS=0
				usr.waterfallS=1
				usr.sandS=0
				usr.soundS=0
				usr.earthS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Waterfall"
			if("Snow")
				usr.leafS=0
				usr.mistS=0
				usr.waterfallS=0
				usr.sandS=0
				usr.snowS=1
				usr.soundS=0
				usr.earthS=0
				usr.rainS=0
				usr.grassS=0
				usr.lightningS=0
				usr.snowS=1
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Snow"


turf/Hairselect
	density=1
	Click()
		usr.overlays=null
		usr.hairselected=0
		switch(input("Male or Female?", text)in list ("Male","Female"))
			if("Male")
				switch(input("Which hair style would you like?", text) in list ("Naruto","Sasuke","Gaara","Shikamaru","Kakashi","Kabuto","Rock Lee","Itachi","Neiji","Kimimaro","Yondaime","Orochimaru","Jiraiya","Bald"))
					if("Jiraiya")
						usr.hair = "Jiraiya"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'jiraiyaH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kabuto")
						usr.hair = "Kabuto"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'KabutoH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Orochimaru")
						usr.hair = "Orochimaru"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'OrochimaruH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kimimaro")
						usr.hair = "Kimimaro"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'KimimaroH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Yondaime")
						usr.hair = "Yondaime"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'YondaimeH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Bald")
						usr.hair = "Bald"
						usr.hairselected=1
					if("Naruto")
						usr.hair = "Naruto"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'narutoH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Neiji")
						usr.hair = "Neiji"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'neijih.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Itachi")
						usr.hair = "Itachi"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'itachiH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Gaara")
						usr.hair = "Gaara"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'gaaraH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kakashi")
						usr.hair = "Kakashi"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'KakashiH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Sasuke")
						usr.hair = "Sasuke Hair"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'SasukeH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Rock Lee")
						usr.hair = "Lee Hair"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'leeH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1

			if("Female")
				switch(input("Which hair style would you like?", text) in list ("Sakura","Hinata","Ino","Bald"))
					if("Sakura")
						usr.hair = "Sakura Hair"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'SakuraH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Ino")
						usr.hair = "Ino"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'inoH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Hinata")
						usr.hair = "Hinata"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'Hinata Hair.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Bald")
						usr.hair = "Bald"
						usr.hairselected=1

turf/UZUMAKI
	density = 1
	Click()
		if(usr.clany)
			return
		switch(input("Are you sure you would like to be Uzumaki?", "Uzumaki") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr.clany = 1
				usr<<"You are now a Clone specialist!"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Uzumaki"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=1
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=1
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return

turf/SPIDERCLAN
	density = 1
	Click()
		if(usr.clany)
			return
		switch(input("Are you sure you would like to be Spider Mutant?", "SpiderClan") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr.clany = 1
				usr<<"You are now a creation of Orochimaru's power!"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 0
				usr.Spiderclan = 1
				usr.Clan = "Spider Mutant"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=1
				usr.CS=1
				usr.bit=0
				usr.Kyuubi=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return

turf/TENTEN
	density = 1
	Click()
		if(usr.clany)
			return
		switch(input("Are you sure you would like to be Tenten?", "Tenten") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr.clany = 1
				usr<<"You are now a Throwing specialist!"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Tenten"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Uzumaki=0
				usr.Tenten=1
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return
turf/LEE
	density = 1
	Click()
		if(usr.clany)
			return
		switch(input("Are you sure you would like to be Lee?", "Lee") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr.clany = 1
				usr<<"You are now a Taijutsu specialist!"
				usr.NonClan=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Lee"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return
turf/GAARA
	density=1
	Click()
		if(usr.clany)
			return
		switch(input("Are you sure you would like to be Gaara?", "Gaara") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You can now manipulate sand!"
				usr.Gaaraclan=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Gaara"
				usr.Inuzuka=0
				usr.Kaguya=0
				usr.Medical=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.Shukkaku=1
				var/obj/Gourd/B = new/obj/Gourd
				B.loc = usr
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany=0
				return
turf/MEDIC
	density=1
	Click()
		if(usr.clany)
			return
		switch(input("Are you sure you would like to be a Medic?", "Medic") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You are now a Medical jutsu specialist!"
				usr.NonClan=0
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Medical"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.Medical=1
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Kamizuri=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany=0
				return

turf/KAMIZURI
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Kamizuri?", "Kamizuri") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Kamizuri clan"
				usr.Kamizuri= 1
				usr.Aburame=0
				usr.Realplayer = 1
				usr.Konchuu = 10
				usr.human = 1
				usr.Clan ="Kamizuri"
				usr.Haku = 0
				usr.Akimichi=0
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return
turf/UCHIHA
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Uchiha?", "Uchiha") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Uchiha clan!"
				usr.Uchiha=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Uchiha"
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return
turf/choosescreen
	icon = 'Logingscreen.bmp'
	density = 1

turf/KAGUYA

	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Kaguya?", "Kaguya") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Kaguya clan!"
				usr.Kaguya=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Kaguya"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.chosen = 1
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return



turf/Hyuuga
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Hyuuga?", "Hyuuga") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Hyuuga clan!"
				usr.Hyuuga=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Hyuuga"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.chosen = 1
				usr.Nara=0
				usr.Kamizuri=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.Uzumaki=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return
mob/var
	chosen=0
turf/Lee
	density = 1

	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Lee Non-Clan?", "Lee") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Rock Lee Non-Clan!"
				usr.NonClan=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Non-Clan"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Uzumaki=0
				usr.Hyuuga=0
				usr.chosen = 1
				usr.Nara=0
				usr.Kamizuri=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return

turf/Akimichi
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Akimichi?", "Akimichi") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Akimichi clan!"
				usr.Akimichi=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Akimichi"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.chosen = 1
				usr.Kaguya=0
				usr.Uzumaki=0
				usr.Hyuuga=0
				usr.Kamizuri=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Tenten=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return

turf/Aburame
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Aburame?", "Aburame") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Aburame clan"
				usr.Aburame=1
				usr.Realplayer = 1
				usr.Konchuu = 10
				usr.human = 1
				usr.Clan ="Aburame"
				usr.Haku = 0
				usr.Akimichi=0
				usr.Inuzuka=0
				usr.chosen = 1
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Uzumaki=0
				usr.Kamizuri=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Tenten=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return

turf/Inuzuka
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Inuzuka?", "Inuzuka") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Inuzuka clan!"
				usr.Inuzuka=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Inuzuka"
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.Nara=0
				usr.NonClan=0
				usr.chosen = 1
				usr.Kamizuri=0
				usr.Uchiha=0
				usr.Uzumaki=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return

turf/Nara
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Nara?", "Nara") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You have chosen the Nara clan!"
				usr.Nara=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Nara"
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.chosen = 1
				usr.Kamizuri=0
				usr.Uzumaki=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Akimichi = 0
				usr.Tenten=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return
mob/var/tmp
	clany = 0
turf/Haku
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Are you sure you would like to be Haku?", "Haku") in list ("No","No","Yes","No","No"))
			if("Yes")
				usr<<"You now have inherited the bloodline of Haku!"
				usr.Haku=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Haku"
				usr.Akimichi=0
				usr.Uzumaki=0
				usr.Inuzuka=0
				usr.Gaaraclan=0
				usr.Kamizuri=0
				usr.Kaguya=0
				usr.Hyuuga=0
				usr.chosen = 1
				usr.Nara=0
				usr.NonClan=0
				usr.Uchiha=0
				usr.Aburame=0
				usr.Tenten=0
				usr.loc = locate(94,7,20)
			if("No")
				usr.clany = 0
				return
