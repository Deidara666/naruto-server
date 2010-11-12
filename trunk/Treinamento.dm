obj
	Log
		icon = 'trainlog.dmi'
		density = 1
		name="Tronco"
		verb
			Punch()
				set name = "Treinar no Tronco"
				set category = "Treino"
				set src in oview(1)
				if(usr.treinolog==1)
					usr.treinolog=0
					usr.Treinolog()
				else
					if(usr.treinolog==0)
						usr.Frozen=0
						usr<<"Você parou de bater no Tronco"
						usr.treinolog=3
					else
						usr<<"Você tem que esperar para voltar a treinar"
						spawn(120) usr.treinolog=1

obj
	Log2
		icon = 'trainlog.dmi'
		density = 1
		name="Tronco Chunin +"
		verb
			Punch()
				set name = "Treinar no Tronco"
				set category = "Treino"
				set src in oview(1)
				if(usr.rank=="Student")
					usr<<"Você precisa ser Chunin ou mais para treinar nesse Tronco."
				else
					if(usr.rank=="Guenin")
						usr<<"Você precisa ser Chunin ou mais para treinar nesse Tronco."
					else
						if(usr.treinolog==1)
							usr.treinolog=0
							usr.Treinolog()
						else
							if(usr.treinolog==0)
								usr.Frozen=0
								usr<<"Você parou de bater no Tronco"
								usr.treinolog=3
							else
								usr<<"Você tem que esperar para voltar a treinar"
								spawn(120) usr.treinolog=1


mob
	verb
		Waterwalk()
			set category="Treino"
			set name = "Andar sobre a água"
			if(usr.waterwalk==0||usr.waterwalk==null)
				usr.waterwalk=1
				usr<<"Agora você pode andar sobre a água."
			else
				usr.waterwalk=0
				usr<<"Agora você não pode andar sobre a água."


mob
	verb
		Meditate()
			set category ="Treino"
			set name="Treinar Genjutsu"
			if(usr.firing)
				return
			if(usr.resting)
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
			if(usr.canmed)
				return
			while(usr.meditating)
				if(usr.meditating==0)
					usr.meditating=1
					usr.icon_state=null
					src.overlays -= 'electricity.dmi'
					usr.canmed=1
					usr << "Você parou de treinar seu genjutsu."
					spawn(100)
					usr.canmed=0
				else
					usr.meditating=0
					usr << "Você treina seu genjutsu."
					src.overlays += 'electricity.dmi'
					usr.icon_state="rest"
					spawn(15) usr<<"Você treina seu genjutsu."
					spawn(60) genup()
					spawn(60) Meditate()


mob
	proc
		rest()
			rest
			if(usr.resting)
				if(usr.health < usr.maxhealth || usr.chakra < usr.Mchakra)
					usr.health += 25
					usr.chakra += 25
					if(usr.health>usr.maxhealth)
						usr.health=usr.maxhealth
					if(usr.chakra>usr.Mchakra)
						usr.chakra=usr.Mchakra
					if(usr.health==usr.maxhealth&&usr.chakra==usr.Mchakra)
						usr.resting = 0
						usr.Frozen = 0
						usr.icon_state = ""
						usr<<"Você terminou de descançar..."
						return
					usr.Frozen = 1
					sleep(10)
					goto rest
				else
					sleep(20)
					usr.resting = 0
					usr.Frozen = 0
					usr.icon_state = ""
					usr<<"Você terminou de descançar..."
					if(usr.health>usr.maxhealth)
						usr.health=usr.maxhealth
					if(usr.chakra>usr.Mchakra)
						usr.chakra=usr.Mchakra



mob
	verb
		Rest()
			set category="Treino"
			set name="Descançar"
			if(usr.Kaiten)
				usr<<"You nuts? You're spinning deflecting attacks. How do you Rest? o_O"
				return
			if(usr.battlingRC)
				return
			if(usr.froze)
				usr<<"Your frozen"
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
			if(usr.firing)
				return
			if(usr.hyoushou)
				return
			if(usr.resting)
				sleep(500)
				usr.resting=0
				usr<<"You stop resting..."
				usr.Frozen = 0
				usr.icon_state = ""
				overlays -= 'elec.dmi'
				return
			else
				if(usr.health == usr.maxhealth && usr.chakra == usr.Mchakra)
					usr<<"You don´t need to Rest..."
					return
				if(usr.meditating||usr.onwater)
					return
				usr<<"You begin to Rest..."
				usr.resting=1
				usr.Frozen = 1
				usr.icon_state = "rest"
				overlays+='elec.dmi'
				usr.rest()
				overlays-='elec.dmi'
				return


obj
	trest
		icon='menus.dmi'
		icon_state="Rest"
		screen_loc="1,6"
		Click()
			if(usr.resting)
				usr.resting=0
				usr<<"Você parou de descansar..."
				usr.Frozen = 0
				usr.icon_state = ""
				return
			else
				if(usr.health == usr.maxhealth && usr.chakra == usr.Mchakra)
					usr<<"Você não precisa descansar..."
					return
				if(usr.meditating||usr.onwater)
					return
				usr<<"Você começou a descansar..."
				usr.resting=1
				usr.Frozen = 1
				usr.rest()


obj
	meditate
		icon='meditate.dmi'
		icon_state=""
