

turf/Finished
	density=1
	Click()
		switch(input("Qual seu g�nero?", "�cone da face",text) in list("Masculino","Feminino","Outro"))
			if("Masculino")
				switch(input("Qual �cone voc� quer usar?", "Escolha o �cone") in list ("Naruto","Sasuke","Itachi","Kankuro","Lee","Kimimaro","Neiji","Kakashi","Gaara","Zabuza","Haku","Shino","Choji","Kiba","Shikamaru","Jiraiya","Iruka","Orochimaru","Gai","Kubuto","Kimimaro","Akahosh","Obito","Asuma","Sasori","Sai","4th"))
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

			if("Feminino")
				switch(input("Qual �cone voc� deseja usar?", "Escolha o �cone") in list ("Sakura","Hinata","Ino","Tenten","Anko","Aoi","Tsunade","Temari","Tayuya"))
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

			if("Outro")
				usr.faceicon = 'kingenmaF.bmp'

		if(usr.villageselected&&usr.baseselected)
			usr.loc=locate(6,58,20)
			usr.cansave=1
			usr.AutoSave()
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
			usr<<"Voc� deve escolher uma aldeia e um �cone de base!"
turf/Skincolorselect
	density=1
	Click()
		usr.baseselected=0
		switch(input("Qual seu g�nero?", text) in list ("Masculino","Feminino"))
			if("Masculino")
				switch(input("Escolha uma cor de skin", text) in list ("Branco","Negro"))
					if("Branco")
						usr.icon='Base white.dmi'
						usr.Oicon='Base white.dmi'
						usr.baseselected=1
					if("Negro")
						usr.icon='BaseBlack.dmi'
						usr.Oicon='BaseBlack.dmi'
						usr.baseselected=1
			if("Feminino")
				switch(input("Escolha uma cor de skin", text) in list ("Branca","Negra"))
					if("Branca")
						usr.icon='Base white.dmi'
						usr.Oicon='Base white.dmi'
						usr.baseselected=1
					if("Negra")
						usr.icon='BaseBlack.dmi'
						usr.Oicon='BaseBlack.dmi'
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
				var/sure=alert(src,"Voc� tem certeza que deseja deletar seu personagem?","Confirma��o","N�o","Sim")
				if(sure=="Sim")
					sleep(0)
					fdel("players/[src.key].sav")
					src << "Personagem deletado"
				else
					src << "Deleta��o cancelada '[src.key].sav'"
			else
				src << "Voc� n�o tem uma conta nesse server."
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
		alert("Lembre-se que cada aldeia tem seus pr�prios Jutsus exclusivos.")
		switch(input("Gostaria de nascer em qual vilarejo?", text) in list ("Folha","Areia","Som","Grama","Chuva","N�voa","Pedra","Nuvem","Cachoeira","Neve"))
			if("Folha")
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
			if("Areia")
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
			if("Som")
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
			if("Chuva")
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
			if("Grama")
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
			if("Pedra")
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
			if("Nuvem")
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
			if("N�voa")
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
			if("Cachoeira")
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
			if("Neve")
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
		switch(input("Masculino ou Feminino?", text)in list ("Masculino","Feminino"))
			if("Masculino")
				switch(input("Qual estilo de cabelo voc� deseja?", text) in list ("Naruto","Sasuke","Gaara","Shikamaru","Kakashi","Kabuto","Rock Lee","Itachi","Neiji","Kimimaro","Yondaime","Orochimaru","Jiraiya","Careca"))
					if("Jiraiya")
						usr.hair = "Jiraiya"
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
						var/hairover = 'YondaimeH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Careca")
						usr.hair = "Bald"
						usr.hairselected=1
					if("Naruto")
						usr.hair = "Naruto"
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
						var/hairover = 'leeH.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1

			if("Feminino")
				switch(input("Which hair style would you like?", text) in list ("Sakura","Hinata","Ino","Bald"))
					if("Sakura")
						usr.hair = "Sakura Hair"
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
						var/hairred = input("Quanto de vermelho voc� deseja no seu cabelo?") as num
						var/hairblue = input("Quanto de azul voc� gostaria no seu cabelo?") as num
						var/hairgreen = input("Quanto de verde voc� gostaria no seu cabelo?") as num
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
		switch(input("Tem certeza que voc� gostaria de ser Uzumaki?", "Uzumaki") in list ("N�o","Sim"))
			if("Sim")
				usr.clany = 1
				usr<<"Agora voc� � um especialista em Clone!"
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
			if("N�o")
				usr.clany = 0
				return

turf/SPIDERCLAN
	density = 1
	Click()
		if(usr.clany)
			return
		switch(input("Tem certeza que voc� gostaria de ser Spider Mutant?", "SpiderClan") in list ("N�o","Sim"))
			if("Sim")
				usr.clany = 1
				usr<<"Voc� � agora uma cria��o do poder de Orochimaru!"
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
			if("N�o")
				usr.clany = 0
				return

turf/TENTEN
	density = 1
	Click()
		if(usr.clany)
			return
		switch(input("Tem certeza que voc� gostaria de ser Tenten?", "Tenten") in list ("N�o","Sim"))
			if("Sim")
				usr.clany = 1
				usr<<"Voc� � agora um especialista em arremessos!"
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
			if("N�o")
				usr.clany = 0
				return
turf/LEE
	density = 1
	Click()
		if(usr.clany)
			return
		switch(input("Tem certeza que voc� gostaria de ser Lee?", "Lee") in list ("N�o","Sim"))
			if("Sim")
				usr.clany = 1
				usr<<"Voc� � agora um especialista em Taijutsu!"
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
			if("N�o")
				usr.clany = 0
				return
turf/GAARA
	density=1
	Click()
		if(usr.clany)
			return
		switch(input("Tem certeza que voc� gostaria de ser Gaara?", "Gaara") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Agora voc� pode manipular areia!"
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
			if("N�o")
				usr.clany=0
				return
turf/MEDIC
	density=1
	Click()
		if(usr.clany)
			return
		switch(input("Tem certeza que voc� gostaria de ser um m�dico?", "Medic") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Agora voc� � um especialista em jutsu m�dico!"
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
			if("N�o")
				usr.clany=0
				return

turf/KAMIZURI
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Tem certeza que voc� gostaria de ser Kamizuri?", "Kamizuri") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Kamizuri!"
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
			if("N�o")
				usr.clany = 0
				return
turf/UCHIHA
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Tem certeza que voc� gostaria de ser Uchiha?", "Uchiha") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Uchiha!"
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
			if("N�o")
				usr.clany = 0
				return
turf/KISAME
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Tem certeza que voc� gostaria de ser Hoshigaki?", "Hoshigaki") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Hoshigaki!"
				usr.Kisame=1
				usr.Realplayer = 1
				usr.human = 1
				usr.Clan = "Hoshigaki"
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
			if("N�o")
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
		switch(input("Tem certeza que voc� gostaria de ser Kaguya?", "Kaguya") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Kaguya!"
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
			if("N�o")
				usr.clany = 0
				return



turf/Hyuuga
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Tem certeza que voc� gostaria de ser Hyuuga?", "Hyuuga") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Hyuuga!"
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
			if("N�o")
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
		switch(input("Tem certeza que voc� gostaria de ser RockLee Non-Clan?", "Lee") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o RockLee Non-Clan!"
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
			if("N�o")
				usr.clany = 0
				return

turf/Akimichi
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Tem certeza que voc� gostaria de ser Akimichi?", "Akimichi") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Akimichi!"
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
			if("N�o")
				usr.clany = 0
				return

turf/Aburame
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Tem certeza que voc� gostaria de ser Aburame?", "Aburame") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Aburame!"
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
			if("N�o")
				usr.clany = 0
				return

turf/Inuzuka
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Tem certeza que voc� gostaria de ser Inuzuka?", "Inuzuka") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Inuzuka!"
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
			if("N�o")
				usr.clany = 0
				return

turf/Nara
	density = 1
	Click()
		if(usr.clany)
			return
		usr.clany = 1
		switch(input("Tem certeza que voc� gostaria de ser Nara?", "Nara") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� escolheu o cl� Nara!"
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
			if("N�o")
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
		switch(input("Tem certeza que voc� gostaria de ser Haku?", "Haku") in list ("N�o","Sim"))
			if("Sim")
				usr<<"Voc� agora herdou a linhagem de Haku!"
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
			if("N�o")
				usr.clany = 0
				return