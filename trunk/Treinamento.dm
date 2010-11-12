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
						usr<<"Voc� parou de bater no Tronco"
						usr.treinolog=3
					else
						usr<<"Voc� tem que esperar para voltar a treinar"
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
					usr<<"Voc� precisa ser Chunin ou mais para treinar nesse Tronco."
				else
					if(usr.rank=="Guenin")
						usr<<"Voc� precisa ser Chunin ou mais para treinar nesse Tronco."
					else
						if(usr.treinolog==1)
							usr.treinolog=0
							usr.Treinolog()
						else
							if(usr.treinolog==0)
								usr.Frozen=0
								usr<<"Voc� parou de bater no Tronco"
								usr.treinolog=3
							else
								usr<<"Voc� tem que esperar para voltar a treinar"
								spawn(120) usr.treinolog=1


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
					usr << "Voc� parou de treinar seu genjutsu."
					spawn(100)
					usr.canmed=0
				else
					usr.meditating=0
					usr << "Voc� treina seu genjutsu."
					src.overlays += 'electricity.dmi'
					usr.icon_state="rest"
					spawn(15) usr<<"Voc� treina seu genjutsu."
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
						usr<<"Voc� terminou de descan�ar..."
						return
					usr.Frozen = 1
					sleep(10)
					goto rest
				else
					sleep(20)
					usr.resting = 0
					usr.Frozen = 0
					usr.icon_state = ""
					usr<<"Voc� terminou de descan�ar..."
					if(usr.health>usr.maxhealth)
						usr.health=usr.maxhealth
					if(usr.chakra>usr.Mchakra)
						usr.chakra=usr.Mchakra



mob
	verb
		Rest()
			set category="Treino"
			set name="Descan�ar"
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
					usr<<"You don�t need to Rest..."
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
