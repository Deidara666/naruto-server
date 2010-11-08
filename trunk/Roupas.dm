
//CHAPÉUS

obj
	HoshikageHat
		name = "Chapéu do Hoshikage"
		icon = 'HoshikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HoshikageHat.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HoshikageHat.dmi'
					usr << "Você vestiu o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Este é um chapéu oficial usado pelos Hoshikage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

obj
	KazekageHat
		name = "Chapéu do Kazekage"
		icon = 'KazekageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KazekageHat.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KazekageHat.dmi'
					usr << "Você vestiu o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Este é um chapéu oficial usado pelos Kazekage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

obj
	MizukageHat
		name = "Chapéu do Mizukage"
		icon = 'MizukageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MizukageHat.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MizukageHat.dmi'
					usr << "Você vestiu o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Este é um Chapéu oficial usado pelos Mizukage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou o [src]"

obj
	OtokageHat
		name = "Chapéu do Otokage"
		icon = 'OtokageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'OtokageHat.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'OtokageHat.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial usado pelos Otokage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	RaikageHat
		name = "Chapéu do Raikage"
		icon = 'RaikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RaikageHat.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RaikageHat.dmi'
					usr << "Você vestiu o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Este é um chapéu usado pelo Raikage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"


obj
	TsuchikageHat
		name = "Chapéu do Tsuchikage"
		icon = 'TsuchikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'TsuchikageHat.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'TsuchikageHat.dmi'
					usr << "Você vestiu o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Este é um chapéu usado pelo Tsuchikage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"


obj
	AmekageHat
		name = "Amekage Hat"
		icon = 'AmekageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AmekageHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AmekageHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Amekage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


obj
	HokageHat
		name = "Hokage Hat"
		icon = 'HokageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HokageHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HokageHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Hokage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


obj
	AKAH
		name = "Chapéu da Akatsuki"
		icon = 'AKAH.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AKAH.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AKAH.dmi'
					usr << "Você vestiu o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Este é um chapéu da Akatsuki."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

obj
	LH
		name = "Chapéu dos Lords"
		icon = 'LH.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'LH.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'LH.dmi'
					usr << "Você vestiu o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Este é um chapéu dos Lords."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"


obj
	BigHat
		name = "Chapéu Grande"
		icon = 'BigHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BigHat.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BigHat.dmi'
					usr << "Você usou o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Isto é um chapéu grande."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"























//Roupas de personagens

obj
	SasukeSuit
		name = "Roupa do Sasuke"
		icon = 'SasukeSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SasukeSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SasukeSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Isto é uma Roupa do Sasuke."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	KabutoSuit
		name = "Roupa do Kabuto"
		icon = 'KabutoSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KabutoSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KabutoSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Isto é uma roupa de Medico."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	ChojiS
		name = "Roupa do Choji"
		icon = 'ChojiS.dmi'
		worn = 0
		price = 750
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChojiS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChojiS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa do Choji."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	NaraS
		name = "Roupa do Nara"
		icon = 'NaraS.dmi'
		worn = 0
		price = 750
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NaraS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NaraS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa do Nara."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	HakuS
		name = "Roupa do Haku"
		icon = 'HakuS.dmi'
		worn = 0
		price = 750
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HakuS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HakuS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa do Haku."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	Neijisuit
		name = "Neiji suit"
		icon = 'neijisuit.dmi'
		worn = 0
		price = 4500
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'neijisuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'neijisuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Neiji suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


obj
	Narutosuit
		name = "Naruto suit"
		icon = 'Narutosuit.dmi'
		worn = 0
		price = 4500
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Narutosuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Narutosuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Naruto suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


obj
	RockLeesuit
		name = "RockLee Suit"
		icon = 'RockLeeSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RockLeeSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RockLeeSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a shirt."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


obj
	Kankuorusuit
		name = "Kankuoru Suit"
		icon = 'Kankuoru Suit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Kankuoru Suit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Kankuoru Suit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is Kankuoru 's suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


obj
	Zabuzasuit
		name = "Zabuza Suit"
		icon = 'ZabuzaSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ZabuzaSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ZabuzaSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is Zabuza's suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


obj
	SasukeShirt
		name = "Camisa do Sasuke"
		icon = 'SasukeShirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SasukeShirt.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SasukeShirt.dmi'
					usr << "Você equipou a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Isto é uma camisa."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"





















//Roupas Chunin

obj
	Snowvest
		name = "Roupa Chuunin da Vila da Neve"
		icon = 'snowvest.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'snowvest.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'snowvest.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa Chuunin da vila da Neve."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	EChuuninVest
		name = "Rock Chuunin Vest"
		icon = 'earthVest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'earthVest.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'earthVest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	LChuuninVest
		name = "Cloud Chuunin Vest"
		icon = 'lightningVest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'lightningVest.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'lightningVest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	GChuuninVest
		name = "Grass Chuunin Vest"
		icon = 'BrightGrass.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BrightGrass.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BrightGrass.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	MChuuninVest
		name = "Water Chuunin Vest"
		icon = 'waterVest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'waterVest.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'waterVest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	WChuuninVest
		name = "Waterfall Chuunin Vest"
		icon = 'waterfallvest.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'waterfallvest.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'waterfallvest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	RChuuninVest
		name = "Rain Chuunin Vest"
		icon = 'rainvest.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rainvest.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rainvest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	SChuuninVest
		name = "Sand Chuunin Vest"
		icon = 'sandvest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'sandvest.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'sandvest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	SoundChuuninVest
		name = "Sound Chuunin Vest"
		icon = 'SoundVest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SoundVest.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SoundVest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	ChuuninVest
		name = "Chuunin Vest"
		icon = 'Vest.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Vest.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Vest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to chuunins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


























//Roupas de Kage

obj
	AmekageSuit
		name = "Amekage suit"
		icon = 'AmekageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AmekageSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AmekageSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Amekage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	HokageSuit
		name = "Hokage suit"
		icon = 'HokageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HokageSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HokageSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Hokage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	HoshikageSuit
		name = "Hoshikage suit"
		icon = 'HoshikageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HoshikageSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HoshikageSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Hoshikage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	KazekageSuit
		name = "Roupa do Kazekage"
		icon = 'KazekageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KazekageSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KazekageSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial usada pelos Kazekage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	MizukageSuit
		name = "Roupa do Mizukage"
		icon = 'MizukageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MizukageSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MizukageSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial usada pelos Mizukage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	OtokageSuit
		name = "Roupa do Otokage"
		icon = 'OtokageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'OtokageSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'OtokageSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial usada pelos Otokage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	RaikageSuit
		name = "Roupa do Raikage"
		icon = 'RaikageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RaikageSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RaikageSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial usada pelos Raikage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"
obj
	TsuchikageSuit
		name = "Roupa do Tsuchikage"
		icon = 'TsuchikageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'TsuchikageSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'TsuchikageSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficia usada pelos Tsuchikage."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"



























//Roupas de Organização

obj
	SOSuit
		name = "Roupa da Organização do Som"
		icon = 'SOSuit.dmi'
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SOSuit.dmi'
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SoSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa dada aos membros da Organização do Som."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	AKAS
		name = "Roupa da Akatsuki"
		icon = 'AKAS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AKAS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AKAS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa da Akatsuki."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"






























//Roupas de Jounins

obj
	CloudSuit
		name = "Roupa Jounin da Vila da Névoa"
		icon = 'cloudjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'cloudjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'cloudjouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos Jounins da vila da névoa."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	GrassSuit
		name = "Roupa Jounin da Vila da Grama"
		icon = 'grassjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'grassjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'grassjouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos Jounins da vila da grama."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	LeafSuit
		name = "Roupa Jounin da Vila da Folha"
		icon = 'leafjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'leafjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'leafjouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos Jounins da vila da folha."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	MistSuit
		name = "Roupa Jounin da Vila da Neblina"
		icon = 'mistjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'mistjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'mistjouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos jounins da vila da neblina."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	RainSuit
		name = "Roupa Jounin da Vila da Chuva"
		icon = 'rainjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rainjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rainjouninS.dmi'
					usr << "Você vestiu uma [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos Jounins da vila da chuva."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto esta sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	RockSuit
		name = "Roupa Jounin da Vila da Pedra"
		icon = 'rockjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rockjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rockjouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"Esta é uma roupa oficial dada aos Jounins da vila da pedra."
			Drop()
				if(src:worn == 1)
					usr << "Não enquanto isto esta sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	SandSuit
		name = "Roupa Jounin da Vila da Areia"
		icon = 'SandjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SandjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SandjouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos Jounins da vila da areia."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	StarSuit
		name = "Roupa Jounin da Vila da Estrela"
		icon = 'StarSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'StarSuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'StarSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa especial dada aos Jounins da vila da estrela."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	SnowSuit
		name = "Roupa Jounin da Vila da Neve"
		icon = 'SnowjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SnowjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SnowjouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos Jounins da vila da neve."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	SoundSuit
		name = "Roupa Jounin da Vila do Som"
		icon = 'soundjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'soundjouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'soundjouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos jounins da vila do Som."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	WaterfallSuit
		name = "Roupa Jounin da Vila da Cachoeira"
		icon = 'waterfalljouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'waterfalljouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'waterfalljouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa original dada aos Jounins da vila da cachoeira."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	Jouninsuit
		name = "Roupa Jounin"
		icon = 'JouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninS.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninS.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos Jounins."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"



























//Roupas ANBU


obj
	Vest2
		name = "Roupa ANBU"
		icon = 'Vest2.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Vest2.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Vest2.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa ANBU."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	Ganbu
		name = "Máscara ANBU Verde"
		icon = 'Ganbu.dmi'
		worn = 0
		verb
			Vestir()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Ganbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Ganbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma máscara ANBU verde."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"
obj
	Banbu
		name = "Máscara ANBU Azul"
		icon = 'Banbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Banbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Banbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma máscara ANBU azul."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	Anbu
		name = "Máscara ANBU da Vila da Estrela"
		icon = 'Anbu.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma mácara ANBU da vila da Estrela."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	Ranbu
		name = "Mácara ANBU Vermelha"
		icon = 'Ranbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Ranbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Ranbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma máscara ANBU Vermelha."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"
obj
	Eanbu
		name = "Máscara ANBU da Vila da Pedra"
		icon = 'Eanbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Eanbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Eanbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma máscara ANBU da vila da Pedra."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"
obj
	Sanbu
		name = "Sand ANBU mask"
		icon = 'Sanbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Sanbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Sanbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma máscara ANBU da vila da Areia."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"
obj
	Yanbu
		name = "Mácara ANBU da Vila da Névoa"
		icon = 'Yanbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Yanbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Yanbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma máscara ANBU da vila Névoa."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"
obj
	Panbu
		name = "Máscara ANBU da Vila da Neve"
		icon = 'Panbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Panbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Panbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma máscara ANBU da vila da Neve."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	Danbu
		name = "Máscara ANBU da Vila do Som"
		icon = 'Danbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Danbu.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Danbu.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma máscara ANBU da vila do Som."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"





















//Roupa Sanin


obj
	ANBUattacksuit
		name = "Roupa Sannin"
		icon = 'ANBUattacksuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ANBUattacksuit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ANBUattacksuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos Sannin."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"






















//Outras peças de Roupa

obj
	KibaS
		name = "Suéter"
		icon = 'KibaS.dmi'
		worn = 0
		price = 750
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KibaS.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KibaS.dmi'
					usr << "Você vestiu o [src.name]."
					src.suffix = "Equipped"
			olhar()
				usr<<"Isto é um Suéter."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

obj
	Suit1
		name = "Roupa do Zuki e seus Amigos"
		icon = 'Suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Suit.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Suit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada ao Zuki e seus amigos."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	HSuit
		name = "Roupa de Caçador"
		icon = 'HSuit.dmi'
		worn = 0
		price = 2000
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HSuit.dmi'
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HSuit.dmi'
					usr << "Você vestiu a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Esta é uma roupa oficial dada aos caçadores."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"


obj
	GrassLSuit
		name = "Grass Lord suit"
		icon = 'GFL.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'GFL.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'GFL.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Grass Lord."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	SnowLSuit
		name = "Snow Lord suit"
		icon = 'SFL.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SFL.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SFL.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Snow Lord."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	WaterLSuit
		name = "Water Hero suit"
		icon = 'WFL.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'WFL.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'WFL.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Waterfall Hero."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	ShinoS
		name = "Casaco"
		icon = 'ShinoS.dmi'
		worn = 0
		price = 750
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ShinoS.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ShinoS.dmi'
					usr << "Você usou o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Isto é um Casaco."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

obj
	Shades
		name = "Oculos"
		icon = 'shades.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 158
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'shades.dmi'//temp icon
					usr << "Você removeu o [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'shades.dmi'
					usr << "Você equipou o [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Este é um oculos oficial dado aos chunins."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"

obj
	Pants
		name = "Calça"
		icon = 'pants.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'pants.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
					usr.overlays -= usr.Picon
				else
					src:worn = 1
					var/pantsred = input("Quanto de vermelho você deseja ?") as num
					var/pantsblue = input("Quanto de azul você deseja ?") as num
					var/pantsgreen = input("Quanto de verde você deseja ?") as num
					var/pantsI = 'pants.dmi'
					pantsI += rgb(pantsred,pantsgreen,pantsblue)
					usr.rpants = pantsred
					usr.gpants = pantsgreen
					usr.bpants = pantsblue
					usr.overlays += pantsI
					usr.Picon = pantsI
					usr << "Você equipou a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Isto é uma calça."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	Shirt
		name = "Camisa"
		icon = 'shirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 750
		worn = 0
		verb
			Vestir()

				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'shirt.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
					usr.overlays-= usr.shirtI
				else
					src:worn = 1
					var/shirtred = input("Quanto de vermelho você deseja ?") as num
					var/shirtblue = input("Quanto de azul você deseja ?") as num
					var/shirtgreen = input("Quanto de verde você deseja ?") as num
					usr.shirtI = 'shirt.dmi'
					usr.shirtI += rgb(shirtred,shirtgreen,shirtblue)
					usr.rshirt = shirtred
					usr.gshirt = shirtgreen
					usr.bshirt = shirtblue
					usr.overlays += usr.shirtI
					usr.SI = usr.shirtI
					usr << "Você equipou a [src.name]."
					src.suffix = "Equipped"
			Soltar()

				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"

obj
	Shoes
		name = "Sapato"
		icon = 'Cloths.dmi'//dont have a base icon so cant make weights icon!lol
		price = 100
		worn = 0
		verb
			Vestir()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'Cloths.dmi'
					usr << "Você usa o [src.name]."
					src.suffix = "Equipped"
				else
					src:worn = 0
					usr.overlays -= 'Cloths.dmi'
					usr << "Você removeu [src.name]."
					src.suffix = ""
					usr.overlays -= 'Cloths.dmi'
			Soltar()

				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"


obj
	Sandles
		name = "Sandalha"
		icon = 'Bsandels.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Usar()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Bsandels.dmi'//temp icon
					usr << "Você removeu a [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Bsandels.dmi'
					usr << "Você equipou a [src.name]."
					src.suffix = "Equipped"
			Olhar()
				usr<<"Isto é um Sandalha."
			Soltar()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma Sandalha [src]"




















//BANDANA

obj
	Headband
		name = "Bandana"
		worn = 0
		icon = 'headband.dmi'
		verb
			Vestir()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'headband.dmi'//temp icon
					usr.overlays -= 'kakashi style.dmi'
					usr.overlays -= 'bandastyle.dmi'
					usr.overlays -= 'leetype.dmi'
					usr.overlays -= 'neijihb.dmi'
					usr.overlays -= 'zabuzahb.dmi'
					usr.overlays -= 'inostyle.dmi'
					usr.overlays -= 'Leg Style.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.bandanat = 0
				else
					switch(input("Qual seu estilo de bandana ?","Estilo de bandana selecionado")in list("Regular","Lee style","Kakashi style","Bandana style","Neiji style","Zabuza style","Leg Style","Ino Style"))
						if("Zabuza style")
							src.worn = 1
							usr.overlays += 'zabuzahb.dmi'
							usr << "Você vestiu no [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Neiji style")
							src.worn = 1
							usr.overlays += 'neijihb.dmi'
							usr << "Você vestiu no [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Leg Style")
							src.worn = 1
							usr.overlays += 'Leg Style.dmi'
							usr << "Você vestiu no [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Ino Style")
							src.worn = 1
							usr.overlays += 'inostyle.dmi'
							usr << "Você vestiu no [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Regular")
							src.worn = 1
							usr.overlays += 'headband.dmi'
							usr << "Você vestiu no [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Kakashi style")
							src.worn = 1
							usr.overlays += 'kakashi style.dmi'
							usr << "Você vestiu no [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 2
						if("Bandana style")
							src.worn = 1
							usr.overlays += 'bandastyle.dmi'
							usr << "Você vestiu no [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 3
						if("Lee style")
							src.worn = 1
							usr.overlays += 'leetype.dmi'
							usr << "Você vestiu no [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 4
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma [src]"
	Bandages
		name = "Bandages"
		worn = 0
		icon = 'Bandages.dmi'
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= '1handStyle.dmi'//temp icon
					usr.overlays -= '2handStyle.dmi'
					usr.overlays -= 'LeftHandStyle.dmi'
					usr.overlays -= '1legStyle.dmi'
					usr.overlays -= '2legStyle.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					switch(input("What bandage style would you like?","Bandage style picker")in list("Right hand style","Left hand style","2 hand style","Left leg style","2 leg style"))
						if("Right hand style")
							src.worn = 1
							usr.overlays += '1handStyle.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
						if("Left hand style")
							src.worn = 1
							usr.overlays += 'LeftHandStyle.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
						if("2 hand style")
							src.worn = 1
							usr.overlays += '2handStyle.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
						if("Left leg style")
							src.worn = 1
							usr.overlays += '1legStyle.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
						if("2 leg style")
							src.worn = 1
							usr.overlays += '2legStyle.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
			Look()
				usr<<"This is a bandages."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


