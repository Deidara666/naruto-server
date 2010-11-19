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
					usr<<"Você precisa ser Chunnin ou mais para treinar nesse Tronco."
				else
					if(usr.rank=="Guenin")
						usr<<"Você precisa ser Chunnin ou mais para treinar nesse Tronco."
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
		TreinarGenjutsu()
			set category ="Treino"
			set name="Treinar Genjutsu"
			if(usr.firing)
				return
			if(usr.resting)
				return
			if(usr.froze)
				usr<<"Você está paralizado"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.resting)
				usr<<"Não enquanto está Descansando"
				return
			if(usr.canmed)
				return
			if(treinargenjutsu==1)
				treinargenjutsu=0
				usr.treinogen()
				src.overlays += 'TreinarGen.dmi'
			else
				if(treinargenjutsu==3)
					usr<<"Você tem que esperar para voltar a treinar"
					spawn(120) treinargenjutsu=1
				if(treinargenjutsu==0)
					treinargenjutsu=3
					usr << "Você parou de treinar seu genjutsu."
					src.overlays -= 'TreinarGen.dmi'
					return


mob
	proc
		treinogen()
			if(treinargenjutsu==0)
				spawn(15) usr<<"Você treina seu genjutsu."
				spawn(60) genup()
				spawn(60) treinogen()


mob
	proc
		treinonin()
			if(treinarninjutsu==0)
				spawn(15) usr<<"Você treina seu ninjutsu."
				spawn(60) ninup()
				spawn(60) treinonin()


mob
	verb
		TreinarNin()
			set category ="Treino"
			set name="Treinar Ninjutsu"
			if(usr.firing)
				return
			if(usr.resting)
				return
			if(usr.froze)
				usr<<"Você está paralizado"
				return
			if(usr.caught)
				usr<<"Você foi capturado!"
				return
			if(usr.captured)
				usr<<"Você foi capturado!"
				return
			if(usr.resting)
				usr<<"Não enquanto está Descansando"
				return
			if(usr.canmed)
				return
			if(treinarninjutsu==1)
				treinarninjutsu=0
				usr.treinonin()
			else
				if(treinarninjutsu==0)
					treinarninjutsu=3
					usr << "Você parou de treinar seu ninjutsu."
				else
					usr<<"Você tem que esperar para voltar a treinar"
					spawn(120) treinarninjutsu=1



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
						usr.parardescancar=3
						return
					usr.Frozen = 1
					sleep(10)
					goto rest

mob
	verb
		Rest()
			set category="Treino"
			set name="Descançar"
			if(usr.Kaiten)
				usr<<"Está louco? Você está girando para desviar ataques. Como você descansa?"
				return
			if(usr.battlingRC)
				return
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.meditating)
				usr<<"Não enquanto meditar"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.firing)
				return
			if(usr.hyoushou)
				return
			if(usr.parardescancar==1)
				if(usr.health < usr.maxhealth || usr.chakra < usr.Mchakra)
					usr.parardescancar=0
					usr.Frozen=1
					usr<<"Você começa a descançar..."
					usr.resting=1
					usr.icon_state = "rest"
					overlays+='elec.dmi'
					usr.rest()
					overlays-='elec.dmi'
				else
					usr<<"Você não precisa descançar"
			else
				if(usr.parardescancar==0)
					usr.Frozen=0
					usr.parardescancar=3
					usr.resting=0
					usr<<"Você parou de descançar..."
					usr.Frozen = 0
					usr.icon_state = ""
					overlays -= 'elec.dmi'
				else
					usr<<"Você tem que esperar para voltar a descançar"
					spawn(120) usr.parardescancar=1

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
									src<<"Seu chakra se elevou!"
									src.Mchakra += rand(2,5)
							var/random2=rand(1,8)
							if(random2==1||random2==3)
								var/random3=rand(1,10)
								if(random3==2)
									src<<"<font size=1><font name=courier new><font color=green>Você controla seu chakra melhor!"
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
								src<<"Seu chakra se elevou!"
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
								src<<"Seu chakra se elevou!"
								src.Mchakra += rand(2,5)
								if(src.health<=0)
									src.DeathCheck6(src)
									src.onwater = 0
									return

mob
	cliff
		verb
			climbup()
				set name="Escalar Acima"
				set category = "Training"
				var/obj/mountain2/C
				if(usr.climbing)
					return
				if(usr.firing)
					return
				if(usr.resting)
					usr<<"Você não pode escalar e descançar ao mesmo tempo."
					return
				if(usr.health<=5)
					for(C in get_step(usr,SOUTH))
						if(C)
							usr << "<b>[usr.name] atinge o limite!</b>"
							usr.loc=locate(usr.x,usr.y-1,usr.z)
							return
					for(C in get_step(usr,NORTH))
						if(C)
							usr << "<b>Você está muito cansado para continuar subindo!</b>"
				else
					for(C in get_step(usr,NORTH))
						if(C)
							if(prob(95))
								usr << "<b>Você escala a montanha.</b>"
								usr.climbing=1
								var/minus=pick(prob(70); 5,prob(30); rand(1,3))
								minus=pick(prob(60); 5,prob(30); rand(1,50))
								usr.health-=minus
								usr.y+=1
								if(usr.health<=0)
									Death(usr)
								sleep(10)
								usr.climbing=0
								if(usr.maxhealth<100000)
									switch(rand(1,5))
										if(1)
											taiexp+=rand(1,4)
											taiup()
										if(2)
											if(usr.Weights)
												if(usr.maxhealth<=5000000)
													maxhealth+=rand(1,20)
													usr<<"Você sente sua força aumentar."
													taiexp+=rand(1,3)
													taiup()
												else
													usr<<"Você já está muito forte."
										if(3)
											if(usr.maxhealth<=5000000)
												maxhealth+=rand(1,20)
												usr<<"Você sente sua força aumentar."
											else
												usr<<"Você já está muito forte."
										if(4)
											if(usr.maxhealth<=5000000)
												maxhealth+=rand(1,15)
												usr<<"Você sente sua força aumentar."
											else
												usr<<"Você já está muito forte."
										if(5)
											if(usr.maxhealth<=5000000)
												taiexp+=rand(1,6)
												taiup()
											else
												usr<<"Você já está muito forte."
								else
									switch(rand(1,5))
										if(1)
											if(usr.maxhealth<=5000000)
												maxhealth+=rand(1,5)
												usr<<"Você sente sua força aumentar."
											else
												usr<<"Você já está muito forte."
										if(2)
											taiexp+=rand(1,3)
											taiup()
							else
								if(prob(10))
									usr.loc=locate(src.x,src.y-rand(1,2),src.z)
									usr << "<b>Você escorregou!</b>"

			climbdown()
				set name="Escalar Abaixo"
				set category = "Training"
				var/obj/mountain2/C
				if(usr.climbing)
					return
				for(C in get_step(usr,SOUTH))
					if(C)
						usr.climbing=1
						usr.loc=locate(src.x,src.y-1,src.z)
						usr << "<b>Você desce a montanha.</b>"
						spawn(5) usr.climbing=0