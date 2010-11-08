
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
