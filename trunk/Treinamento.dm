
mob
	verb
		Waterwalk()
			set category="Treino"
			set name = "Andar sobre a �gua"
			if(usr.waterwalk==0||usr.waterwalk==null)
				usr.waterwalk=1
				usr<<"Agora voc� pode andar sobre a �gua."
			else
				usr.waterwalk=0
				usr<<"Agora voc� n�o pode andar sobre a �gua."


obj
	trest
		icon='menus.dmi'
		icon_state="Rest"
		screen_loc="1,6"
		Click()
			if(usr.resting)
				usr.resting=0
				usr<<"Voc� parou de descansar..."
				usr.Frozen = 0
				usr.icon_state = ""
				return
			else
				if(usr.health == usr.maxhealth && usr.chakra == usr.Mchakra)
					usr<<"Voc� n�o precisa descansar..."
					return
				if(usr.meditating||usr.onwater)
					return
				usr<<"Voc� come�ou a descansar..."
				usr.resting=1
				usr.Frozen = 1
				usr.rest()


obj
	meditate
		icon='meditate.dmi'
		icon_state=""
