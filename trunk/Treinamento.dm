
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
			if(usr.meditating)
				usr.meditating=0

				usr.icon_state=null
				src.overlays -= 'electricity.dmi'
				usr.canmed=1
				usr << "You Stop Meditating."
				spawn(100)
					usr.canmed=0
			else
				usr.meditating=1

				usr << "You Meditate."
				src.overlays += 'electricity.dmi'
				usr.icon_state="rest"
				while(usr.meditating)
					sleep(pick(100,120,110))
					if(prob(80))
						if(usr.chakra > 5)
							usr.random=rand(1,3)
							if(usr.random==1)
								if(usr.Mchakra<=1000000)
									usr<<"Your Chakra increases."
									usr.chakra-=rand(50,100)
									usr.Mchakra+=rand(100,500)
								else
									usr<<"You have reached you Chakra cap."
							if(usr.random==2)
								if(usr.maxhealth<=5000000)
									usr<<"Your HP increases."
									usr.chakra-=rand(50,100)
									usr.maxhealth+=rand(100,500)
								else
									usr<<"You have reached your Stam cap."
					if(usr.chakra <= 5)
						usr<<"You Stop Meditating"
						usr.meditating=0
						usr.icon_state=null
						usr.canmed=1
						usr.move=1
						spawn(100)
							usr.canmed=0



mob
	proc
		rest()
			rest
			if(usr.resting)
				if(usr.health < usr.maxhealth || usr.chakra < usr.Mchakra)
					usr.health += usr.maxhealth/25
					usr.chakra += usr.Mchakra/25
					if(usr.health>usr.maxhealth)
						usr.health=usr.maxhealth
					if(usr.chakra>usr.Mchakra)
						usr.chakra=usr.Mchakra
					if(usr.health==usr.maxhealth&&usr.chakra==usr.Mchakra)
						usr.resting = 0
						usr.Frozen = 0
						usr.icon_state = ""
						usr<<"You have finish resting..."
						return
					usr.Frozen = 1
					sleep(10)
					goto rest
				else
					sleep(20)
					usr.resting = 0
					usr.Frozen = 0
					usr.icon_state = ""
					usr<<"You have finish resting..."
					if(usr.health>usr.maxhealth)
						usr.health=usr.maxhealth
					if(usr.chakra>usr.Mchakra)
						usr.chakra=usr.Mchakra



mob
	verb
		Rest()
			set category="Treino"
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
