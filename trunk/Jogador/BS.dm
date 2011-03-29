
world
	proc
		Geninexam()
			set background=1
			if(Genintime)
				for(var/mob/G in world)
					if(G.client&&G)
						if(G.Genintest&&G)
							if(G.score>=10&&G)
								if(G)
									G<<"<font size=4><font color=red>Parabéns, você passou no exame genin com [G.score] Pontos, vá ver o professor!"
									G.tested=1
									G.score=0
									G.move=0
							else
								if(G)
									G<<"<font size=4><font color=red>Você foi reprovado no teste genin com [G.score] Pontos! Melhor sorte da próxima vez."
									G.tested=0
									G.score=0
									G.move=0
				Genintime=0
				world<<"<font size=2><font color=red>O exame Genin acabou - Haverá outro exame Genin em breve..."
				spawn(10000) world.Geninexam()
			else
				world<<"<font size=2><font color=red>Haverá um exame Genin em 5 minutos - Vá para a academia da sua vila..."
				sleep(600)
				world<<"<font size=2><font color=red>Haverá um exame Genin em 4 minutos!"
				sleep(600)
				world<<"<font size=2><font color=red>Haverá um exame Genin em 3 minutos!"
				sleep(600)
				world<<"<font size=2><font color=red>Haverá um exame Genin em 2 minutos!"
				sleep(600)
				world<<"<font size=2><font color=red>HAVERÁ UM EXAME GENIN EM 1 MINUTO !"
				sleep(600)
				world<<"<font size=2><font color=red>O EXAME GENIN COMEÇOU , VÁ PARA A ACADEMIA DE SUA VILA FAZER! "
				Genintime=1
				spawn(1000) Geninexam()
mob
	proc
		Treinolog()
			if(usr.treinolog==0)
				if(usr.resting)
					usr<<"Não é possível treinar quando está em descanso."
					return
				if(usr.meditating)
					usr<<"Você não pode treinar quando está meditando."
				if(usr.health<5)
					usr<<"Você não pode treinar , está muito cansado , dê Rest."
					return
				if(usr.Mcap)
					usr<<"Você chegou até a Capacidade Máxima de Taijutsu."
					return
				if(!usr.doing&&usr.health >= 1)
					makeJounin()
					makeHunter()
					Skills()
					usr.Frozen = 1
					spawn(15) usr<<"Você bate no Tronco"
					spawn(60) taiup()
					spawn(60) Treinolog()

		Levelup()
			src.exp+=25
			if(src.exp>=src.level*100)
				src.exp=0
				src.level+=1
				src.levelanterior+=1
				src.max_exp+=100
				src<<"<font size = 2><b><font color = blue>Você passou de level !"
				if(src.maxhealth<=10000000)
					src.maxhealth+=rand(25,50)
				else
					usr<<"Você alcançou sua capacidade máxima de Stamina."
				if(src.Mchakra<=26000000)
					src.Mchakra+=rand(25,50)
				else
					usr<<"Você alcançou sua capacidade máxima de Chakra."
			makeHunter()
			makeJounin()
			Skills()

		taiup()
			Skills()
			makeHunter()
			makeJounin()
			Levelup()
			src.Mtai+=rand(6,10)
			src.tai=src.Mtai
			src<<"<font size = 2><b><font color = green>Seu Taijutsu aumentou !"

		ninup()
			Skills()
			makeHunter()
			makeJounin()
			Levelup()
			src.Mnin+=rand(6,10)
			src.nin=src.Mnin
			src<<"<font size = 2><b><font color = green>Seu Ninjutsu aumentou !"

		genup()
			Skills()
			makeHunter()
			makeJounin()
			Levelup()
			src.Mgen+=rand(6,10)
			src.gen=src.Mgen
			src<<"<font size = 2><b><font color = green>Seu Genjutsu aumentou !"
mob
	Stat()
		statpanel("Status")
		stat(usr)
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Informação")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Nome: [usr]")
		stat("Cla : [Clan]")
		stat("Rank: [rank]")
		stat("Vila: [Village]")
		stat("Yen: [Yen]$")
		stat("<font color = red>Kills: [kills] Missing Kills [missingkills]</font color>")
		stat("Mortes: [deaths]")
		stat("Localização: [usr.x],[usr.y],[usr.z]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("           Status")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Level: [level]")
		stat("<font color = red>HP: [health]/[maxhealth]</font color>")
		//stat("Experiência: [exp]/[level*100]"
		stat("<font color = blue>Chakra: [chakra]/[Mchakra]</font color>")
		var/ttexp=round(src.taiexp*100/src.mtaiexp)
		var/nnexp=round(src.ninexp*100/src.mninexp)
		var/ggexp=round(src.genexp*100/src.mgenexp)
		stat("<font color = green>Taijutsu: [tai] ([ttexp]%)</font color>")
		stat("Ninjutsu: [nin] ([nnexp]%)")
		stat("<font color = white>Genjutsu: [gen] ([ggexp]%)</font color>")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Habilidade com Shuriken   : [shurikenskill]")
		stat("Habilidade com Kunai        : [kunaiskill]")
		stat("Habilidade com Armadilhas: [trapskill]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Missoes:")
		stat("D: [dmission]")
		stat("C: [cmission]")
		stat("B: [bmission]")
		stat("A: [amission]")
		stat("S: [smission]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		if(src.Aburame)
			stat("Konchuu: [Konchuu]")
		if(src.Akimichi)
			stat("Calorias: [calories]")
			stat("Pilula amarela  : [pill1]")
			stat("Pilula verde     : [pill2]")
			stat("Pilula vermelha: [pill3]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		stat("Jutsus Bases:")
		stat("Bunshin No Jutsu : [BunshinN]")
		stat("Henge No Jutsu   : [hengeN]")
		stat("Kawarimi no jutsu  : [KawaN]")
		stat("--- --- --- --- --- --- --- --- --- --- --- --- ---")
		statpanel("Inventário")
		stat("",contents)
		..()
mob
	verb
		Attack()
			set category = "TaiJutsu"
			for(var/mob/M in get_step(usr,usr.dir))
				if(M.ingat||M.intank)
					return
				if(usr.battlingRC)
					return
				if(M.battlingRC)
					return
				if(M.drunk&&M.NonClan)
					view()<<"[M] dodges [usr]'s ataque"
					return
				if(!usr.canattack)
					return
				if(M.inspike)
					usr<<"<font size=1>Seu ataque foi rebatido por [usr]!"
					return
				if(M.sphere)
					usr<<"<font size=1>Seu ataque salta fora da areia!"
					return
				if(M.PK==0)
					usr<<"ZONA NÃO PK!"
					return
				if(usr.PK==0)
					usr<<"ZONA NÃO PK!"
					return
				if(M.Kaiten)
					var/damage = round(usr.tai-M.tai/4)
					if(damage <= 1)
						damage = 1
						usr <<"<font size=1>Você atacou [M] mas a sua kaiten hakkeshou reflete o dano de volta para você."
						M <<"<font size=1>Você refletiu [usr]'s ataque levando-no a se machucar."
						usr.health -= damage
						usr.Death(M)
						usr.dead = 1
						return
					else
						usr <<"<font size=1>Você atacou [M] mas a sua kaiten hakkeshou reflete o dano de volta para você."
						M <<"<font size=1>Você refletiu [usr]'s ataque levando-no a se machucar."
						usr.health -= damage
						usr.Death(M)
						src.dead = 1
						return
				if(M.ingat)
					usr << "<font size=1>Seu ataque foi rebatido por [M] porque ele esta em Gatsuuga."
					return

				else
					if(usr.Tekken&&usr.canattack)
						usr.canattack=0
						usr << "<font size=1>Você atacou [M]!"
						flick("Attack",usr)

						var/damage = round(usr.tai*1.5 + usr.swordD)
						damage+=rand(1,damage)
						if(damage <= 1)
							damage = 1
							view() << "<font size=1>[usr] atacou [M] e tirou [damage]!"
							M.health -= damage
							M.Death(usr)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
							if(istype(M,/mob/player))
								usr.random = rand(1,8)
								if(random == 5||random==1)
									usr.taiexp += rand(1,3)
									usr.exp += rand(1,2)
									usr.Levelup()
									usr.taiup()
									sleep(2)
									usr.canattack=1
								else
									sleep(2)
									usr.canattack=1
									return
							else
								usr.random = rand(1,20)
								if(random == 5||random==1)
									usr.taiexp += rand(1,3)
									usr.taiup()
									usr.exp += rand(1,2)
									usr.Levelup()
									sleep(2)
									usr.canattack=1
								else
									sleep(2)
									usr.canattack=1
									return
						else
							view() << "<font size=1>[usr] atacou [M] e tirou [damage]!"
							M.health -= damage
							M.Death(usr)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
							if(istype(M,/mob/player))
								usr.random = rand(1,8)
								if(random == 5||random==1)
									usr.taiexp += rand(1,3)
									usr.taiup()
									usr.exp += rand(1,2)
									usr.Levelup()
									sleep(2)
									usr.canattack=1
								else
									sleep(2)
									usr.canattack=1
									return
							else
								usr.random = rand(1,20)
								if(random == 5||random==1)
									usr.taiexp += rand(1,3)
									usr.taiup()
									usr.exp += rand(1,2)
									usr.Levelup()
									sleep(2)
									usr.canattack=1
								else
									sleep(2)
									usr.canattack=1
									return
					else if(usr.Jyuken&&usr.canattack)
						if(usr.chakra >= 2)
							usr.canattack =0
							usr << "<font size=1>Você atacou [M] usando o Jyuuken!"
							flick("Attack",usr)
							flick("Jyuken",usr)
							var/damage = round(usr.tai + usr.swordD)
							damage+=rand(1,damage)
							if(damage <= 1)
								damage = 1
								view() << "<font size=1>[usr] atacou [M] e tirou [damage]!"
								M.health -= damage
								M.chakra -= damage
								usr.chakra -= 2
								M.Death(usr)
								if(istype(M,/mob/enemy))
									M.killlist += src.name
								if(istype(M,/mob/player))
									usr.random = rand(1,8)
									if(random == 5||random==1)
										usr.taiexp += rand(1,3)
										usr.taiup()
										usr.exp += rand(1,2)
										usr.Levelup()
										sleep(2)
										usr.canattack=1
									else
										sleep(2)
										usr.Levelup()
										usr.canattack=1
										return
								else
									usr.random = rand(1,20)
									if(random == 5||random==1)
										usr.taiexp += rand(1,3)
										usr.taiup()
										usr.exp += rand(1,2)
										usr.Levelup()
										sleep(2)
										usr.canattack=1
									else
										sleep(2)
										usr.Levelup()
										usr.canattack=1
										return
							else
								view() << "<font size=1>[usr] atacou [M] e tirou [damage]!"
								M.health -= damage
								M.chakra -= damage
								usr.chakra -= 2
								M.Death(usr)
								if(istype(M,/mob/enemy))
									M.killlist += src.name
								if(istype(M,/mob/player))
									usr.random = rand(1,8)
									if(random == 5||random==1)
										usr.taiexp += rand(1,3)
										usr.taiup()
										usr.exp += rand(1,2)
										usr.Levelup()
										sleep(2)
										usr.canattack=1
									else
										sleep(2)
										usr.Levelup()
										usr.canattack=1
										return
								else
									usr.random = rand(1,20)
									if(random == 5||random==1)
										usr.taiexp += rand(1,3)
										usr.taiup()
										usr.exp += rand(1,2)
										usr.Levelup()
										sleep(2)
										usr.canattack=1
									else
										sleep(2)
										usr.Levelup()
										usr.canattack=1
										return
						else
							usr<<"<font size=1>Você não tem chakra o suficiente para usar o Jyuuken sendo assim você está usando agora o Tekken."
							usr.Jyuken = 0
							usr.Tekken = 1
							return
					else if(usr.Basic&&usr.canattack)
						usr.canattack =0
						usr << "<font size=1>Você atacou [M]!"
						flick("Attack",usr)
						var/damage = round(usr.tai/1.5 + usr.swordD)
						damage+=rand(1,damage)
						if(damage <= 1)
							damage = 1
							view() << "<font size=1>[usr] atacou [M] e tirou [damage]!"
							M.health -= damage
							M.Death(usr)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
							usr.random = rand(1,8)
							if(random == 5||random==1)
								usr.taiexp += rand(1,3)
								usr.taiup()
								usr.exp += rand(1,2)
								usr.Levelup()
								sleep(2)
								usr.canattack=1
							else
								sleep(2)
								usr.Levelup()
								usr.canattack=1
								return
						else
							view() << "<font size=1>[usr] atacou [M] e tirou [damage]!"
							M.health -= damage
							M.Death(usr)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
							usr.random = rand(1,8)
							if(random == 5||random==1)
								usr.taiexp += rand(1,3)
								usr.taiup()
								usr.exp += rand(1,2)
								usr.Levelup()
								sleep(2)
								usr.canattack=1
							else
								sleep(2)
								usr.Levelup()
								usr.canattack=1
								return

				usr.canattack=0
				sleep(15)
				usr.canattack=1
mob/var
	owned=0
	warning=0

mob/var/incs=0
//THESE GO IN BS
mob
	proc
		Death(mob/M)
			if(istype(src,/mob/pet)&&src.isdog&&!src.owned)
				del(src)
			else if(src.health<=0&&src.GOTCS&&!src.incs)
				src.random=rand(1,3)
				if(src.random==3)
					for(var/obj/Jutsus/shibari/K in world)
						if(K.owner==M)
							del(K)
					for(var/obj/Jutsus/DemonMirror/S in world)
						if(S.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(S)
					for(var/obj/Jutsus/DenseThing/U in world)
						if(U.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(U)
					for(var/obj/Jutsus/shibaritrail/T in world)
						if(T.owner==M)
							del(T)
					view(src)<<"[src] se enfurece e desbloqueia seu selo amaldiçoado!"
					src.Cursed_Seal()
					return
				else if(src.health <= 0)
					for(var/obj/Jutsus/shibari/K in world)
						if(K.owner==src)
							del(K)
						if(K.owner==M)
							del(K)
					for(var/obj/Jutsus/DemonMirror/S in world)
						if(S.owner==src)
							src.hyoushou=0
							M.hyoushou=0
							del(S)
						if(S.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(S)
					for(var/obj/Jutsus/DenseThing/U in world)
						if(U.owner==src)
							src.hyoushou=0
							M.hyoushou=0
							del(U)
						if(U.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(U)
					for(var/obj/Jutsus/shibaritrail/T in world)
						if(T.owner==src)
							del(T)
						if(T.owner==M)
							del(T)
					if(istype(src,/mob/enemy/Leafvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Grassvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Mistvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Snowvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Rainvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Waterfallvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Sandvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Soundvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Rockvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Cloudvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Starvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/leader))
						if(M.inmission)
							M<<"Você foi vitorioso! Aceite seu prêmio e bom trabalho!"
							M.inmission=0
							M.bmission+=1
							M.missingkills+=1
							M.loc=locate(39,68,1)
							if(M.Yen>=100000)
								M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
								del(src)
								return
							else
								M.Yen+=10000
								M<<"Você recebeu 10000 Yen"
								del(src)
								return
					if(istype(src,/mob/enemy/orochimaru))
						M<<"Você completou sua missão e voltou para casa com segurança!"
						M.inmission=0
						M.amission+=1
						M.missingkills+=1
						M.loc=locate(39,68,1)
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=20000
							M<<"Você recebeu 20000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/DosuKinuta))
						if(M.rank=="Student"||M.rank=="Genin")
							usr<<"Você é fraco para esse signo."
							return
						else
							M<<"Você aprendeu o sinal do coelho!"
							M.Orabbit=1
							M.inmission=0
							M.smission+=1
							M.missingkills+=1
							M.makeHunter()
							M.Skills()
							M.makeJounin()
							M.loc=locate(39,68,1)
							if(M.Yen>=100000)
								M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
								del(src)
								return
							else
								M.Yen+=100000
								M<<"Você recebeu 100000 Yen"
								M<<"É melhor estar no banco."
								del(src)
								return
					if(istype(src,/mob/Gamabunta))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Medium_Frog))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Bee))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Medium_Bee))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Big_Slug))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Medium_Slug))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Big_Snake))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Medium_Snake))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/enemy/rogueshinobi))
						M<<"Você derrotou um Shinobi Ladrão!"
						M.roguekills+=1
						M.missingkills+=1
						M.loc=locate(39,68,1)
						del(src)
						return
					if(src.isbunshin)
						flick("smoke2",src)
						sleep(5)
						del(src)
						return
					if(src.NPC)
						del(src)
						return
					if(src.isdog)
						for(var/mob/pet/P in world)
							if(P.owner == M)
								P.loc = P.owner
								P.health=0
								return
					src.deathforest=0
					if(src.client)
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						else
							M.Yen += src.Yen/2
							src.Yen = src.Yen/2
					if(M.Village=="None"||M.Village=="Akatsuki"||M.Village=="Sound Organization")
						src.missingkills+=1

					if(src.earthscroll)
						for(var/obj/earthscroll/S in src.contents)
							S.loc = M.loc

					if(src.heavenscroll)
						for(var/obj/heavenscroll/F in src.contents)
							F.loc = M.loc



					if(istype(M,/mob)&&M.inthewar&&warring)
						for(var/mob/E in world)
							if(E.inthewar)
								if(E.z==19&&E.Village=="Leaf"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da folha perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Mist"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Névoa perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Lightning"&&E.inthewar)
									..()
								else
									world<<"<b>A vila do Raio perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Earth"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Terra perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Grass"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Grama perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Rain"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Chuva perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Sound"&&E.inthewar)
									..()
								else
									world<<"<b>A vila do Som perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Waterfall"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Cachoeira perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Sand"&&E.inthewar)
									..()
								else
									world<<"A vila da Areia perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
					src.nin=src.Mnin
					src.tai=src.Mtai
					src.incs=0
					src.gen=src.Mgen
					src.screwed=0
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					if(src.missingnin&&!M==src)
						M.missingkills+=1
						M.kills-=1
					src.jourou=0
					M.kills+=1
					src.Move_Delay=0
					src.resting = 1
					M.kubi=0
					M.Kshibari=0
					src.Kshibari=0
					src.verbs-=typesof(/mob/cliff/verb)
					src.doing = 1
					if(src.max_exp<=0)
						src.max_exp=0
					if(src.exp<=0)
						src.exp = 0
					src.Frozen = 0
					src.verbs -= new /mob/mission/verb/Escape()
					src.verbs -= new /mob/mission/verb/Escape()
					src.Moveing = 0
					src.firing = 1
					src.kubi=0
					src.health = src.maxhealth
					src.loc=locate(0,0,0)
					src<<"Você será levado de volta para seu ponto de respawn em 5 segundos!"
					sleep(80)
					src.loc=locate(6,58,20)
			if(src.health<=0&&src.Kyuubi&&!src.inkyuubi)
				src.random=rand(1,6)
				if(src.random==4)
					for(var/obj/Jutsus/shibari/K in world)
						if(K.owner==M)
							del(K)
					for(var/obj/Jutsus/DemonMirror/S in world)
						if(S.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(S)
					for(var/obj/Jutsus/DenseThing/U in world)
						if(U.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(U)
					for(var/obj/Jutsus/shibaritrail/T in world)
						if(T.owner==M)
							del(T)
					view(src)<<"[src] enfurece e desbloqueia a Raposa de Nove Caldas em seu interior!"
					src.Kyuubi()
					return
			if(src.health<=0&&src.Shukkaku&&!src.inkaku)
				src.random=rand(1,6)
				if(src.random==4)
					for(var/obj/Jutsus/shibari/K in world)
						if(K.owner==M)
							del(K)
					for(var/obj/Jutsus/DemonMirror/S in world)
						if(S.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(S)
					for(var/obj/Jutsus/DenseThing/U in world)
						if(U.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(U)
					for(var/obj/Jutsus/shibaritrail/T in world)
						if(T.owner==M)
							del(T)
					view(src)<<"[src] enfurece e desbloqueia o Shukkaku em seu interior!"
					src.Kaku()
					return
				else if(src.health <= 0)
					for(var/obj/Jutsus/shibari/K in world)
						if(K.owner==src)
							del(K)
						if(K.owner==M)
							del(K)
					for(var/obj/Jutsus/DemonMirror/S in world)
						if(S.owner==src)
							src.hyoushou=0
							M.hyoushou=0
							del(S)
						if(S.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(S)
					for(var/obj/Jutsus/DenseThing/U in world)
						if(U.owner==src)
							src.hyoushou=0
							M.hyoushou=0
							del(U)
						if(U.owner==M)
							src.hyoushou=0
							M.hyoushou=0
							del(U)
					for(var/obj/Jutsus/shibaritrail/T in world)
						if(T.owner==src)
							del(T)
						if(T.owner==M)
							del(T)
					if(istype(src,/mob/Gamabunta))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Medium_Frog))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Bee))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Medium_Bee))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Big_Slug))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Medium_Slug))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Big_Snake))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/Medium_Snake))
						for(var/mob/A in world)
							if(src.owner==A)
								M.kuchiyoseusing=0
						del(src)
					if(istype(src,/mob/enemy/Leafvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Grassvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Mistvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Snowvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Rainvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Waterfallvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Sandvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Soundvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Rockvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Cloudvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/Starvillageshinobi))
						M<<"Você derrotou um Shinobi da vila!"
						M.roguekills+=1
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/leader))
						if(M.inmission)
							M<<"Você foi vitorioso! Aceite sua recompensa e bom trabalho!"
							M.inmission=0
							M.bmission+=1
							M.missingkills+=1
							M.loc=locate(39,68,1)
							if(M.Yen>=100000)
								M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
								del(src)
								return
							else
								M.Yen+=10000
								M<<"Você recebeu 10000 Yen"
								del(src)
								return
					if(istype(src,/mob/enemy/rogueshinobi))
						M<<"Você derrotou um Shinobi Ladrão!"
						M.roguekills+=1
						M.missingkills+=1
						M.loc=locate(39,68,1)
						del(src)
						return
					if(istype(src,/mob/enemy/orochimaru))
						M<<"Você completou sua missão e voltou para casa com segurança!"
						M.inmission=0
						M.amission+=1
						M.missingkills+=1
						M.loc=locate(39,68,1)
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=20000
							M<<"Você recebeu 20000 Yen"
							del(src)
							return
					if(istype(src,/mob/enemy/DosuKinuta))
						if(M.rank=="Student"||M.rank=="Genin")
							usr<<"Você é fraco para esse signo."
							return
						else
							M<<"Você leu o signo do Coelho!"
							M.Orabbit=1
							M.inmission=0
							M.smission+=1
							M.missingkills+=1
							M.makeHunter()
							M.Skills()
							M.makeJounin()
							M.loc=locate(39,68,1)
							if(M.Yen>=100000)
								M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
								del(src)
								return
							else
								M.Yen+=100000
								M<<"Você recebeu 100000 Yen"
								M<<"É melhor no banco."
								del(src)
								return
					if(src.isbunshin)
						flick("smoke2",src)
						sleep(5)
						del(src)
						return
					if(src.NPC)
						del(src)
						return
					if(src.isdog)
						for(var/mob/pet/P in world)
							if(P.owner == M)
								P.loc = P.owner
								P.health=0
								return
					src.deathforest=0
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."

					else
						M.Yen += src.Yen/2
						src.Yen = src.Yen/2
					if(M.Village=="None"||M.Village=="Akatsuki"||M.Village=="Sound Organization")
						src.missingkills+=1
					if(src.earthscroll)
						for(var/obj/earthscroll/S in src.contents)
							S.loc = M.loc
					if(src.heavenscroll)
						for(var/obj/heavenscroll/F in src.contents)
							F.loc = M.loc

					src.points =0
					src.deaths+=1
					src.finals=0
					src.inmission=0
					src.inthewar=0
					if(istype(M,/mob)&&M.inthewar&&warring)
						for(var/mob/E in world)
							if(E.inthewar)
								if(E.z==19&&E.Village=="Leaf"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da folha perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Mist"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Névoa perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Lightning"&&E.inthewar)
									..()
								else
									world<<"<b>A vila do Raio perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Earth"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Terra perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Grass"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Grama perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Rain"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da Chuva perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Sound"&&E.inthewar)
									..()
								else
									world<<"<b>A vila do Som perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Waterfall"&&E.inthewar)
									..()
								else
									world<<"<b>A vila da cachoeira perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
								if(E.z==19&&E.Village=="Sand"&&E.inthewar)
									..()
								else
									world<<"A vila da Areia perdeu a guerra!"
									if(E.inthewar)
										E.loc=locate(6,58,20)
										E.inthewar=0
					src.deathforest=0
					src.inkyuubi=0
					src.nin=src.Mnin
					src.tai=src.Mtai
					src.incs=0
					src.gen=src.Mgen
					src.incs=0
					src.screwed=0
					src.overlays-='kyuubi.dmi'
					src.overlays-='kyuubi.dmi'
					src.overlays-='kyuubi.dmi'
					src.overlays-='kyuubi.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs2.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='cs3.dmi'
					src.overlays-='sharingan.dmi'
					src.overlays-='sharingan.dmi'
					src.overlays-='sharingan.dmi'
					src.overlays-='sharingan.dmi'
					if(src.missingnin&&!M==src)
						M.missingkills+=1
						M.kills-=1
					src.jourou=0
					M.kills+=1
					src.Move_Delay=0
					src.resting = 1
					M.kubi=0
					M.Kshibari=0
					src.Kshibari=0
					src.verbs-=typesof(/mob/cliff/verb)
					src.doing = 1
					if(src.max_exp<=0)
						src.max_exp=0
					if(src.exp<=0)
						src.exp = 0
					src.Frozen = 0
					src.verbs -= new /mob/mission/verb/Escape()
					src.verbs -= new /mob/mission/verb/Escape()
					src.Moveing = 0
					src.firing = 1
					src.kubi=0
					src.health = src.maxhealth
					src.loc=locate(0,0,0)
					src<<"Você será levado de volta para seu ponto de respawn em 5 segundos!"
					sleep(80)
					src.loc=locate(6,58,20)
			else if(src.health <= 0)
				for(var/obj/Jutsus/shibari/K in world)
					if(src&&K.owner==src)
						del(K)
					if(M&&K.owner==M)
						del(K)
				for(var/obj/Jutsus/DemonMirror/S in world)
					if(S.owner==src)
						src.hyoushou=0
						M.hyoushou=0
						del(S)
					if(S.owner==M)
						src.hyoushou=0
						M.hyoushou=0
						del(S)
				for(var/obj/Jutsus/DenseThing/U in world)
					if(U.owner==src)
						src.hyoushou=0
						M.hyoushou=0
						del(U)
					if(U.owner==M)
						src.hyoushou=0
						M.hyoushou=0
						del(U)
				for(var/obj/Jutsus/shibaritrail/T in world)
					if(T.owner==src)
						del(T)
					if(T.owner==M)
						del(T)
				if(istype(src,/mob/enemy/Leafvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Grassvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Mistvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Snowvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Rainvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Waterfallvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Sandvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Soundvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Rockvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"You recieve 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Cloudvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/Starvillageshinobi))
					M<<"Você derrotou um Shinobi da vila!"
					M.roguekills+=1
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=10000
						M<<"Você recebeu 10000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/leader))
					if(M.inmission)
						M<<"Você foi vitorioso! Aceite seu prêmio e bom trabalho!"
						M.inmission=0
						M.bmission+=1
						M.missingkills+=1
						M.loc=locate(39,68,1)
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=10000
							M<<"Você recebeu 10000 Yen"
							del(src)
							return
				if(istype(src,/mob/enemy/orochimaru))
					M<<"Você completou sua missão e voltou para casa com segurança!"
					M.inmission=0
					M.amission+=1
					M.missingkills+=1
					M.loc=locate(39,68,1)
					if(M.Yen>=100000)
						M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
						del(src)
						return
					else
						M.Yen+=20000
						M<<"Você recebeu 20000 Yen"
						del(src)
						return
				if(istype(src,/mob/enemy/DosuKinuta))
					if(M.rank=="Student"||M.rank=="Genin")
						usr<<"Você é fraco para esse sinal."
						return
					else
						M<<"Você aprendeu o sinal do coelho!"
						M.Orabbit=1
						M.inmission=0
						M.smission+=1
						M.missingkills+=1
						M.makeHunter()
						M.Skills()
						M.makeJounin()
						M.loc=locate(39,68,1)
						if(M.Yen>=100000)
							M<<"Você já tem a capacidade máxima de Yen que se pode carregar."
							del(src)
							return
						else
							M.Yen+=100000
							M<<"Você recebeu 100000 Yen"
							M<<"É melhor no banco."
							del(src)
							return
				if(istype(src,/mob/Gamabunta))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Medium_Frog))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Bee))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Medium_Bee))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Big_Slug))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Medium_Slug))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Big_Snake))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/Medium_Snake))
					for(var/mob/A in world)
						if(src.owner==A)
							M.kuchiyoseusing=0
					del(src)
				if(istype(src,/mob/enemy/rogueshinobi))
					if(M&&src)
						M<<"Você derrotou um Shinobi Ladrão!"
						M.roguekills+=1
						M.missingkills+=1
						del(src)
						return
				if(src.isbunshin)
					flick("smoke2",src)
					sleep(5)
					del(src)
					return
				if(src.NPC)
					del(src)
					return
				if(src.isdog)
					for(var/mob/pet/P in world)
						if(P.owner == M)
							P.loc = P.owner
							P.health=0
							return
				src.deathforest=0
				if(M.Yen>=100000)
					M<<"Você já tem a capacidade máxima de Yen que se pode carregar."

				else
					M.Yen += src.Yen/2
					src.Yen = src.Yen/2
				if(M.Village=="None"||M.Village=="Akatsuki"||M.Village=="Sound Organization")
					src.missingkills+=1
				if(src.earthscroll)
					for(var/obj/earthscroll/S in src.contents)
						S.loc = M.loc
				if(src.heavenscroll)
					for(var/obj/heavenscroll/F in src.contents)
						F.loc = M.loc

				src.points =0
				src.deaths+=1
				src.finals=0
				src.inmission=0
				src.deathforest=0
				src.inkyuubi=0
				src.incs=0
				src.inthewar=0
				if(istype(M,/mob)&&M.inthewar&&warring)
					for(var/mob/E in world)
						if(E.inthewar)
							if(E.z==19&&E.Village=="Leaf"&&E.inthewar)
								..()
							else
								world<<"<b>A vila da Folha perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
							if(E.z==19&&E.Village=="Mist"&&E.inthewar)
								..()
							else
								world<<"<b>A vila da Neblina perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
							if(E.z==19&&E.Village=="Lightning"&&E.inthewar)
								..()
							else
								world<<"<b>A vila do Raio perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
							if(E.z==19&&E.Village=="Earth"&&E.inthewar)
								..()
							else
								world<<"<b>A vila da terra perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
							if(E.z==19&&E.Village=="Grass"&&E.inthewar)
								..()
							else
								world<<"<b>A vila da Grama perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
							if(E.z==19&&E.Village=="Rain"&&E.inthewar)
								..()
							else
								world<<"<b>A vila da Chuva perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
							if(E.z==19&&E.Village=="Sound"&&E.inthewar)
								..()
							else
								world<<"<b>A vila do Som perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
							if(E.z==19&&E.Village=="Waterfall"&&E.inthewar)
								..()
							else
								world<<"<b>A vila da Cachoeira perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
							if(E.z==19&&E.Village=="Sand"&&E.inthewar)
								..()
							else
								world<<"<b>A vila da Areia perdeu a guerra!"
								if(E.inthewar)
									E.loc=locate(6,58,20)
									E.inthewar=0
									warring=0
				src.nin=src.Mnin
				src.tai=src.Mtai
				src.overlays-='kyuubi.dmi'
				src.overlays-='kyuubi.dmi'
				src.overlays-='kyuubi.dmi'
				src.overlays-='cs.dmi'
				src.overlays-='cs.dmi'
				src.overlays-='cs.dmi'
				src.overlays-='cs2.dmi'
				src.overlays-='cs2.dmi'
				src.overlays-='cs2.dmi'
				src.overlays-='cs3.dmi'
				src.overlays-='cs3.dmi'
				src.overlays-='cs3.dmi'
				src.incs=0
				src.gen=src.Mgen
				src.screwed=0
				if(src.missingnin&&!M==src)
					M.missingkills+=1
					M.kills-=1
				src.jourou=0
				if(M)
					M.kills+=1
					M.kubi=0
					M.Kshibari=0
				src.Move_Delay=0
				src.resting = 1
				src.Kshibari=0
				src.verbs-=typesof(/mob/cliff/verb)
				src.doing = 1
				if(src.max_exp<=0)
					src.max_exp=0
				if(src.exp<=0)
					src.exp = 0
				src.Frozen = 0
				src.verbs -= new /mob/mission/verb/Escape()
				src.verbs -= new /mob/mission/verb/Escape()
				src.Moveing = 0
				src.firing = 1
				src.kubi=0
				src.health = src.maxhealth
				src.loc=locate(0,0,0)
				src<<"Você será levado de volta para seu ponto de respawn em 5 segundos!"
				sleep(50)
				src.loc=locate(6,58,20)
	proc/thingy()
		src.deaths+=1
		src.Frozen = 0
		src.Moveing = 0
		src.firing = 0
		src.doing = 0

mob
	proc
		DeathCheck6(mob/M)
			if(src.NPC)
				del(M)
			if (M.health <= 0)
				world << "<font size=1><b>[M] se afogou!"
				M.dead=1
				M.deathforest=0
				if(M.earthscroll==1)
					src.earthscroll=0
				if(M.heavenscroll==1)
					src.heavenscroll=0
				M.deaths+=1
				M.loc=locate(49,1,4)
				M.health = M.maxhealth
				M.chakra = M.Mchakra
				M.Frozen = 0
				M.verbs-=typesof(/mob/cliff/verb)
				M.Moveing = 0
				M.Move_Delay=0
				M.Kshibari=0
				M.kubi=0
				M.firing = 1
				M.makeHunter()
				M.Skills()
				M.makeJounin()

				if(M.max_exp<=0)
					M.max_exp=0
				if(M.exp<=0)
					M.exp = 0
				M.doing = 1
				for(var/mob/npcs/Bunshin/B)
					B.Die()
					del(B)
				for(var/mob/npcs/KBunshin/K)
					K.Die()
					del(K)
				src.loc=locate(0,0,0)
				src.resting = 0
				src.doing = 0
				src.screwed=0
				src.jourou=0
				if(src.Mountain)
					src.Mountain=0
					src.Move_Delay = 1
				if(src.Weights)
					src.Weights=0
					src.Move_Delay = 1
				src<<"Você será levado de volta para seu ponto de respawn em 5 segundos!"
				sleep(80)
				src.loc=locate(6,58,20)
				if(src.onwater)
					src.onwater=0
				if(inwar1 == 1)
					war1 -= 1
				if(inwar2 == 1)
					war2 -= 1
				if(src.puppet)
					usr.verbs -= new /mob/puppet/verb/PuppetNorth()
					usr.verbs -= new /mob/puppet/verb/PuppetSouth()
					usr.verbs -= new /mob/puppet/verb/PuppetEast()
					usr.verbs -= new /mob/puppet/verb/PuppetWest()
client
	command_text = "OOC "
mob
	DblClick()
		if(src.client)
			if(usr.seen)
				return
			usr<<"<font size=3><font color=red>[src]<font color=yellow> Informação:"
			usr<<"<font size=2><font color=blue>-----------------------------"
			usr<<"<font size=3><font color=red>Nome:<font color=yellow> [src.name]"
			usr<<"<font size=3><font color=red>Clãn:<font color=yellow> [src.Clan]"
			usr<<"<font size=3><font color=red>Rank:<font color=yellow> [src.rank]"
			usr<<"<font size=3><font color=red>Vila:<font color=yellow> [src.Village]"
			var/hpp=round(usr.health*100/usr.maxhealth)
			var/mch=round(usr.chakra*100/usr.Mchakra)
			usr<<"<font size=3><font color=red>Stamina:<font color=yellow> [src.health]/[src.maxhealth] ([hpp]%)"
			usr<<"<font size=3><font color=red>Chakra:<font color=yellow> [src.chakra]/[src.Mchakra] ([mch]%)"
			var/ttexp=round(src.taiexp*100/src.mtaiexp)
			usr<<"<font size=3><font color=red>Taijutsu:<font color=yellow> [src.tai] ([ttexp]%)"
			usr.seen=1
			sleep(60)
			if(usr)
				usr.seen=0
		else if(src.isdog)
			if(usr.seen)
				return
			if(src.owner==usr)
				usr<<"<font size=3><font color=red>[src]<font color=yellow> Informação:"
				usr<<"<font size=2><font color=blue>-----------------------------"
				usr<<"<font size=3><font color=red>Nome:<font color=yellow> [src.name]"
				usr<<"<font size=3><font color=red>Owner:<font color=yellow> [usr.name]"
				usr<<"<font size=3><font color=red>Stamina:<font color=yellow> [src.health]/[src.maxhealth]"
				usr<<"<font size=3><font color=red>Taijutsu:<font color=yellow> [src.tai]"
				usr.seen=1
				sleep(60)
				if(usr)
					usr.seen=0
			else
				usr<<"<font size=3><font color=red>[src]<font color=yellow> Informação:"
				usr<<"<font size=2><font color=blue>-----------------------------"
				usr<<"<font size=3><font color=red>Nome:<font color=yellow> [src.name]"
				for(var/mob/M in world)
					if(src.owner==M)
						usr<<"<font size=3><font color=red>Owner:<font color=yellow> [M.name]"
				usr<<"<font size=3><font color=red>Stamina:<font color=yellow> [src.health]/[src.maxhealth]"
				usr<<"<font size=3><font color=red>Taijutsu:<font color=yellow> [src.tai]"
				usr.seen=1
				sleep(60)
				if(usr)
					usr.seen=0
turf
	DEADSPAWN
		Enter()
			if(istype(usr,/mob/pet/))
				var/mob/pet/P
				var/O=P.owner
				usr.loc=O
			if(istype(usr,/mob/))
				if(usr.client)
					if(usr.ttexp>=100)
						usr.ttexp=0
					if(usr.nnexp>=100)
						usr.nnexp=0
					if(usr.ggexp>=100)
						usr.ggexp=0
					if(usr.Shukkaku==1)
						usr.CS=0
						usr.bit=0
						usr.Kyuubi=0
					if(usr.Kyuubi==1)
						usr.CS=0
						usr.bit=0
					usr.overlays-='kyuu.dmi'
					usr.inkaku=0
					usr.overlays-='kakuA.dmi'
					usr.overlays-='kaku2.dmi'
					usr.overlays -='kaku.dmi'
					usr.earthscroll=0
					usr.heavenscroll=0
					usr.overlays -='Rainarmor.dmi'
					usr.Rainarmor=0
					usr.overlays -= 'cloud.dmi'
					usr.overlays -= 'wings.dmi'
					usr.overlays -= 'peacock.dmi'
					usr.overlays-='staraura.dmi'
					usr.overlays-='WaterStrom.dmi'
					usr.overlays-='rockball.dmi'
					usr.captured=0
					usr.caught=0
					usr.froze=0
					usr.Frozen=0
					usr.aura=0
					usr.Warmor=0
					usr.overlays -= 'Wprison.dmi'
					usr.counter=0
					usr.overlays-='counter.dmi'
					usr:sight &= ~BLIND
					if(usr.Mchakra>=1000000)
						usr.Mchakra=1000000
					if(usr.maxhealth>=5000000)
						usr.maxhealth=5000000
					if(usr.taiexp>=101)
						usr.taiup()
						usr.taiexp=0
					if(usr.chakra<=usr.Mchakra)
						usr.chakra=usr.Mchakra
					if(usr.health<=usr.maxhealth)
						usr.health=usr.maxhealth
					usr.buoyu=0
					usr.tagset=0
					usr.Flight=0
					usr.density = 1
					usr.overlays -= 'wings.dmi'
					usr.overlays -= 'wings.dmi'
					usr.verbs -= new /mob/tag/verb/Explodir
					usr.verbs -= new /mob/tag/verb/Explodir
					usr.verbs -= new /mob/tag/verb/Explodir
					usr.verbs -= new /mob/tag/verb/Explodir
					usr.verbs -= new /mob/tag/verb/Explodir
					usr.stop = 0
					usr.dead=0
					usr.resting = 0
					usr.doing = 0
					usr.Frozen = 0
					usr.Moveing = 0
					usr.firing = 0
					usr.doing = 0
					usr.Mountain=0
					usr.onwater=0
					usr.makeHunter()
					usr.Skills()
					usr.makeJounin()
					usr.tagset=0
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.gen = usr.Mgen
					usr.focusing =0
					usr.shurikenskill=usr.Mshurikenskill
					usr.kunaiskill=usr.Mkunaiskill
					usr.trapskill=usr.Mtrapskill
					usr.icon = usr.Oicon
					usr.overlays -= 'Bun.dmi'
					usr.Kshibari = 0
					usr.kubi = 0
					usr.firing = 0
					usr.overlays -= 'meattank.dmi'
					usr.inspike = 0
					usr.overlays -= 'hakkeshou.dmi'
					usr.Kaiten = 0
					usr.overlays -= 'gatsuuga.dmi'
					usr.ingat = 0
					usr.overlays -= 'lotus.dmi'
					usr.gate1 = 0
					usr.overlays -= 'lotus.dmi'
					usr.gate2 = 0
					usr.overlays -= 'lotus.dmi'
					usr.gate3 = 0
					usr.overlays -= 'lotus.dmi'
					usr.gate4 = 0
					usr.overlays -= 'lotus.dmi'
					usr.gate5 = 0
					usr.overlays -= 'lotus.dmi'
					usr.gate6 = 0
					usr.overlays -= 'lotus.dmi'
					usr.gate7 = 0
					usr.overlays -= 'lotus.dmi'
					usr.gate8 = 0
					usr.overlays -= 'Marmor.dmi'
					usr.overlays -= 'mist.dmi'
					usr.Marmor = 0
					usr.overlays -= 'Larmor.dmi'
					usr.Larmor = 0
					usr.overlays -= 'Iarmor.dmi'
					usr.Iarmor = 0
					usr.overlays -= 'BeeArmor.dmi'
					usr.Barmor = 0
					usr.overlays -= 'Farmor.dmi'
					usr.Farmor = 0
					usr.overlays -= 'Zarmor.dmi'
					usr.Zarmor = 0
					usr.SHarmor = 0
					usr.overlays -= 'sharingan.dmi'
					usr.overlays -= 'Bun.dmi'
					usr.overlays -= 'Chidori.dmi'
					usr.overlays -= 'Rasengan.dmi'
					usr.overlays -= 'electricity.dmi'
					usr.overlays -= 'byakugan.dmi'
					usr.overlays -= /obj/Sphere
					usr.sphere = 0
					usr.overlays -= 'Sarmor.dmi'
					usr.Sarmor = 0
					usr.overlays -= 'uzaroo.dmi'
					usr.inbaika = 0
					usr.overlays -= 'MTS.dmi'
					usr.intank = 0
					usr.overlays -= 'Tan.dmi'
					usr.overlays -= 'white.dmi'
					usr.overlays -= 'black.dmi'
					usr.overlays -= 'blue.dmi'
					usr.overlays -= 'red.dmi'
					usr.overlays -= 'yellow.dmi'
					usr.overlays -= 'vamp.dmi'
					usr.overlays -= 'omote.dmi'
					usr.overlays -= 'ura.dmi'
					usr.overlays -= 'karasu.dmi'
					usr.doton = 0
					usr.screwed=0
					usr.points =0
					usr.deaths+=1
					usr.finals=0
					usr.inmission=0
					usr.deathforest=0
					usr.inkyuubi=0
					usr.overlays -='kyuubi.dmi'
					usr.overlays-='sharingan.dmi'
					usr.incs=0
					usr.overlays-='cs.dmi'
					usr.overlays-='cs.dmi'
					usr.overlays-='cs.dmi'
					usr.overlays-='cs2.dmi'
					usr.overlays-='cs2.dmi'
					usr.overlays-='cs2.dmi'
					usr.overlays-='cs3.dmi'
					usr.overlays-='cs3.dmi'
					usr.overlays-='cs3.dmi'
					usr.inthewar=0
					if(usr.leafS)
						usr.loc=locate(81,39,2)
					if(usr.sandS)
						usr.loc=locate(81,36,28)
					if(usr.grassS)
						usr.loc=locate(81,3,28)
					if(usr.soundS)
						usr.loc=locate(69,2,2)
					if(usr.rainS)
						usr.loc=locate(16,72,28)
					if(usr.earthS)
						usr.loc=locate(41,44,2)
					if(usr.lightningS)
						usr.loc=locate(8,97,2)
					if(usr.mistS)
						usr.loc=locate(16,3,28)
					if(usr.waterfallS)
						usr.loc=locate(39,06,29)
					if(usr.snowS)
						usr.loc=locate(28,40,28)
					if(usr.akatS)
						usr.loc=locate(62,94,10)
					if(usr.soS)
						usr.loc=locate(81,60,18)
					if(usr.starS)
						usr.loc=locate(21,47,29)
mob/var
	akatsukimember=0
	akatsukileader=0
	soundmember=0
	soundleader=0
mob/akatsuki/verb/InviteA(mob/M in world)
	set category="Oranization"
	set name="Organization Invite"
	if(M.rank=="Missing"&&M.Village=="None"&&src.recruits<=9)
		M.Village="Akatsuki"
		var/obj/AKAH/H = new()
		var/obj/AKAS/S = new()
		H.loc=M
		S.loc=M
		M.cap=AKcap
		M.akatsukimember=1
		M.squads=1
		src.recruits+=1
		M.squad="[src.squad]"
	else
		usr<<"Não pode ser feito, Ele está em uma vila."
mob/akatsuki/verb/BootA(mob/M in world)
	set category="Oranization"
	set name="Organization Boot"
	if(M.Village=="Akatsuki"&&M.akatsukimember)
		M.Village="Missing"
		for(var/obj/AKAH/H in M.contents)
			del(H)
		for(var/obj/AKAS/S in M.contents)
			del(S)
		M.cap=Jcap
		src.recruits-=1
		M.akatsukimember=0
		M.squads=0
		M.squad=""
	else
		usr<<"Não pode ser feito, Ele é tanto o lider ou não, mesmo na Akatsuki."
mob/owner/verb/MakeAkatLeader(mob/M in world)
	set category="Staff"
	M.Village="Akatsuki"
	var/obj/AKAH/H = new()
	var/obj/AKAS/S = new()
	H.loc=M
	S.loc=M
	M.akatsukileader=1
	M.akatsukimember=1
	M.cap=AKcap
	M.verbs += /mob/akatsuki/verb/InviteA
	M.verbs += /mob/akatsuki/verb/BootA
	M.verbs += /mob/hokage/verb/WAR
mob/sound/verb/InviteS(mob/M in world)
	set category="Oranization"
	set name="Organization Invite"
	if(M.rank=="Missing"&&M.Village=="None"&&src.recruits<=9)
		var/obj/SOSuit/S = new()
		M.Village="Sound Organization"
		M.soundmember=1
		S.loc=M
		M.squads=1
		src.recruits+=1
		M.cap=AKcap
		M.squad="[src.squad]"

	else
		usr<<"Não pode ser feito, Ele é mais fraco que um jounin ou é de Som."
mob/sound/verb/BootS(mob/M in world)
	set category="Oranization"
	set name="Organization Boot"
	if(M.Village=="Sound Organization"&&M.soundmember)
		M.Village="Missing"
		M.soundmember=0
		M.squads=0
		src.recruits-=1
		M.cap=Jcap
		M.squad=""
	else
		usr<<"Não pode ser feito, Ele é tanto o lider ou não, mesmo em Som"
mob/owner/verb/MakeSoundLeader(mob/M in world)
	set category="Staff"
	M.Village="Sound Organization"
	M.soundleader=1
	M.soundmember=1
	M.cap=AKcap
	M.verbs += /mob/sound/verb/InviteS
	M.verbs += /mob/sound/verb/BootS
	M.verbs += /mob/hokage/verb/WAR
mob/owner/verb/StripOrganization(mob/M in world)
	set category="Staff"
	M.Village="Missing"
	M.soundleader=0
	M.soundmember=0
	M.akatsukimember=0
	M.akatsukileader=0
	M.cap=Jcap
	for(var/obj/AKAH/H in M.contents)
		del(H)
	for(var/obj/AKAS/S in M.contents)
		del(S)
	for(var/obj/SOSuit/S in M.contents)
		del(S)