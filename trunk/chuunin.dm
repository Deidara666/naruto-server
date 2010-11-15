mob
	proc
		makeJounin()
			if(src.jounin)
				return
			if(src.rank=="Chuunin"&&src.Mtai>=5000&&src.Mgen>=5000&&src.Mnin>=5000&&!src.jounin)
				src.seals=100
				src.cap = Jcap
				src.rank="Jounin"
				src.verbs+= new /mob/Buyou/verb/Kagebuyou
				src.jounin=1
				src.verbs -= new /mob/Enforcer/verb/Jail()
				src.verbs -= new /mob/Enforcer/verb/UnJail()
				if(src.Village=="Leaf")
					var/obj/LeafSuit/R = new/obj/LeafSuit
					R.loc=src

				if(src.Village =="Sand")
					var/obj/SandSuit/S = new/obj/SandSuit
					S.loc = src

				if(src.Village =="Sound")
					var/obj/SoundSuit/S = new/obj/SoundSuit
					S.loc = src

				if(src.Village =="Grass")
					var/obj/GrassSuit/S = new/obj/GrassSuit
					S.loc = src

				if(src.Village =="Rain")
					var/obj/RainSuit/S = new/obj/RainSuit
					S.loc = src

				if(src.Village =="Cloud")
					var/obj/CloudSuit/S = new/obj/CloudSuit
					S.loc = src

				if(src.Village =="Mist")
					var/obj/MistSuit/S = new/obj/MistSuit
					S.loc = src

				if(src.Village =="Rock")
					var/obj/RockSuit/S = new/obj/RockSuit
					S.loc = src

				if(src.Village =="Snow")
					var/obj/SnowSuit/S = new/obj/SnowSuit
					S.loc = src

				if(src.Village =="Waterfall")
					var/obj/WaterfallSuit/S = new/obj/WaterfallSuit
					S.loc = src

mob
	proc
		makeHunter()
			if(src.hunternin)
				return
			if(src.rank=="Jounin"&&src.Mtai>=10000&&src.Mgen>=7500&&src.Mnin>=7500&&src.Mchakra>=100000&&src.maxhealth>=100000&&src.missingkills>=500)
				src.cap=Hcap
				src.squad ="Hunter-Nins"
				src.squads=1
				src.verbs -= new /mob/Enforcer/verb/Jail()
				src.verbs -= new /mob/Enforcer/verb/UnJail()
				if(src.Village=="Leaf")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					var/obj/HSuit/B = new/obj/HSuit
					var/obj/Ranbu/R = new/obj/Ranbu
					B.loc=src
					R.loc=src
					src.cap = Hcap
					src.rank="Hunter-Nin"
					src.hunternin=1
				if(src.Village=="Star")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					var/obj/HSuit/B = new/obj/HSuit
					var/obj/Anbu/R = new/obj/Anbu
					B.loc=src
					R.loc=src
					src.cap = Hcap
					src.rank="Hunter-Nin"
					src.hunternin=1
				if(src.Village =="Sand")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Sanbu/R = new/obj/Sanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
				if(src.Village =="Sound")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Danbu/R = new/obj/Danbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
				if(src.Village =="Grass")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Ganbu/R = new/obj/Ganbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
				if(src.Village =="Rain")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
				if(src.Village =="Cloud")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Yanbu/R = new/obj/Yanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
				if(src.Village =="Mist")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
				if(src.Village =="Rock")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Eanbu/R = new/obj/Eanbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
				if(src.Village =="Snow")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Panbu/R = new/obj/Panbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
				if(src.Village =="Waterfall")
					src.ChakraC=100
					src.verbs+= new /mob/jutsu/verb/JourouSenbon
					src.rank="Hunter-Nin"
					src.hunternin=1
					var/obj/Banbu/R = new/obj/Banbu
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
					src.cap = Hcap
var
	Chuunintime
	Chuuninexam
mob/var
	tmp/finals=0
	jounin=0
	missingnin=0
	hunternin=0
mob/owner
	verb
		Chuuninexam()
			set category = "Staff"
			set name = "Chuunin Examination"
			if(!Chuunintime)
				usr<<"Você será teletransportado para a sala do Exame Chuunin quando começar!"
				world<<"<font size=3><font color=red>Haverá um exame Chuunin em 5 minutos - Vá para a sala Chuunin de sua vila RAPIDOO..."
				sleep(500)
				world<<"<font size=3><font color=red>Haverá um exame Chuunin em 4 minutos ..."
				sleep(500)
				world<<"<font size=3><font color=red>Haverá um exame Chuunin em 3 minutos ..."
				sleep(500)
				world<<"<font size=3><font color=red>Haverá um exame Chuunin em 2 minutos ..."
				sleep(500)
				world<<"<font size=3><font color=red>Haverá um exame Chuunin em 1 minutos ..."
				sleep(500)
				world<<"<font size=3><font color=red>O exame Chuunin já começou ..."
				Chuunintime=1
				usr.loc=locate(52,40,13)
			else
				world<<"A primeira parte do exame chunin acabou!"
				Chuunintime=0
mob/var/tmp
	testing=0
	cantest=1
var
	Bmission=1
obj/GT2
	chuunintest
	name = "Chuunin Test"
	icon = 'Test.dmi'
	verb
		TakeTest()
			set src in oview(1)
			if(Chuunintime&&usr.cantest)
				usr.testing=1
				usr.cantest=0
				switch(input("Quando você joga uma Shuriken, para qual lado ela gira?","A shuriken gira:",) in list("Sentido horário","Sentido anti-horário","Depende esquerda ou direita","Não gira"))
					if("Depende esquerda ou direita")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Que tipo de ferramenta é usada com Kugutsu no Jutsu? "," Ferramenta de Kugutsu:",) in list("Kunai","Shuriken","Tarja explosiva","Marionete"))
					if("Marionete")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Sakura aprende jutsus médicos com qual Sannin Lendário?") in list("Tsunade","Kurenai","Ino","InoJiraya","Orochimaru"))
					if("Tsunade")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Qual nome do owner desse jogo??") in list("Rafael Sanches","Cesar","Igor","Mateus","Rafael Alves"))
					if("Rafael Sanches")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Qual o objetivo de Sasuke ao escolher ficar com orochimaru ao invez de continuar em Konoha?") in list("Obter poder para derrotar Naruto","Obter poder para derrotar o Hokage","Obter poder para derrotar Uchiha Itachi","Obter poder para derrotar Gaara do Deserto"))
					if("Obter poder para derrotar Uchiha Itachi")
						usr.points += 1
					else
						usr.points += 0
				switch(input("De quem Hinta gosta?") in list("Hiashi","Neji","Sasuke","Naruto","Hanabi"))
					if("Naruto")
						usr.points += 1
					else
						usr.points += 0
				switch(input("O exame chunin tem quantas partes?",) in list("1","2","3","4","5"))
					if("3")
						usr.points += 1
					else
						usr.points += 0
				switch(input("O pai de Maria tem 05 filhas. A lalá, a lelé, a lili, a loló e a ................. ") in list("Lulú","Lulá","Tania","Lucia","Maria"))
					if("Maria")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Sasuke NPC esta em qual vila deste jogo?") in list("Grama","Konoha","Chuva","Neve"))
					if("Grama")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Qual o cargo mais alto dentro de uma vila?") in list("Jounin","Sage","Taka lider","Sage","jinchuuriki","Kage"))
					if("Kage")
						usr.points+= 1
					else
						usr.points += 0
				switch(input("Qual é o principal acessório de um ninja?","Acessório:",) in list("Kunai","Shuriken","Sua bandana da vila","Todos os itens a cima"))
					if("Todos os itens a cima")
						usr.points += 1
				if(usr.points>=9&&Chuunintime)
					usr.testing=0
					usr.cantest=1
					usr.deathforest=1
					usr.random=rand(1,2)
					if(usr.random==1)
						usr.heavenscroll=1
						var/obj/heavenscroll/B = new/obj/heavenscroll
						B.loc = usr
						usr<<"Você ganhou o pergaminho do céu. NÃO ENTRE NA TORRE sem os dois pergaminhos ou volte para a luta!"
						usr<<"Você passou na primeira parte do exame! Boa sorte na Floresta da Morte. MUASHAUHSAU..."
						usr<<"Há 16 portões e uma torre no meio do mapa. Você tem que matar alguém que tem o livro que você precisa. Então faça seu caminho até as portas da torre tão rápido quanto possivel."
						usr<<"Mesmo se você tiver dois pergaminhos e morrer antes de chegar na torre você perde! =( "
					if(usr.random==2)
						usr.earthscroll=1
						var/obj/earthscroll/B = new/obj/earthscroll
						B.loc = usr
						usr<<"Você ganhou o pergaminho da terra. NÃO ENTRE NA TORRE sem os dois pergaminhos ou volte para a luta!"
						usr<<"Você passou na primeira parte do exame! Boa sorte na Floresta da Morte. MUASHAUHSAU..."
						usr<<"Há 16 portões e uma torre no meio do mapa. Você tem que matar alguém que tem o livro que você precisa. Então faça seu caminho até as portas da torre tão rápido quanto possivel."
						usr<<"Mesmo se você tiver dois pergaminhos e morrer antes de chegar na torre você perde! =( "
					usr.PK=1
					usr.random=rand(1,16)
					if(usr.random==1)
						usr.loc=locate(1,100,30)
						return
					if(usr.random==2)
						usr.loc=locate(25,100,30)
						return
					if(usr.random==3)
						usr.loc=locate(52,100,30)
						return
					if(usr.random==4)
						usr.loc=locate(78,100,30)
						return
					if(usr.random==5)
						usr.loc=locate(100,100,30)
						return
					if(usr.random==6)
						usr.loc=locate(100,80,30)
						return
					if(usr.random==7)
						usr.loc=locate(100,52,30)
						return
					if(usr.random==8)
						usr.loc=locate(100,28,30)
						return
					if(usr.random==9)
						usr.loc=locate(100,1,30)
						return
					if(usr.random==10)
						usr.loc=locate(81,1,30)
						return
					if(usr.random==11)
						usr.loc=locate(53,1,30)
						return
					if(usr.random==12)
						usr.loc=locate(24,1,30)
						return
					if(usr.random==13)
						usr.loc=locate(1,1,30)
						return
					if(usr.random==14)
						usr.loc=locate(1,26,30)
						return
					if(usr.random==15)
						usr.loc=locate(1,51,30)
						return
					if(usr.random==16)
						usr.loc=locate(1,79,30)
						return
				else
					usr<<"O instrutor Darcksombra deixou sua mente muito confusa e você não conseguiu. Tente novamente na próxima."
					return
			else
				usr<<"Você deve aguardar o instrutor falar já seu apressado!! ¬¬' "
				return



obj
	earthscroll
		name = "Earth Scroll"
		icon = 'Earth.dmi'
		verb
			Get()
				set src in oview(1)
				if(usr.earthscroll >= 1)
					usr<<"Você já tem esse pergaminho"
				else
					src.loc = usr
					usr<<"Você pegou um [src]"
					usr.earthscroll = 1
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.earthscroll = 0
			Destroy()
			 set hidden = 1
			 del(src)
obj
	heavenscroll
		name = "Scroll Of Heaven"
		icon = 'Heaven.dmi'
		verb
			Get()
				set src in oview(1)
				if(usr.heavenscroll >= 1)
					usr<<"Você já tem esse pergaminho"
				else
					src.loc = usr
					usr<<"Você pegou um [src]"
					usr.heavenscroll = 1
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.heavenscroll = 0
			Destroy()
			 set hidden = 1
			 del(src)

obj/GT
	Genintest
	name = "Genin Test"
	icon = 'Test.dmi'
	verb
		TakeExam()
			set src in oview(1)
			set category = "Commands"
			set name = "Genin Test"
			if(usr.dir!=NORTH)
				usr<<"Sorry you need to be turned to the test..."
				return
			if(!Genintime||Genintime==null)
				usr<<"Sorry there´s no Genin exam going at the moment..."
				return
			if(usr.rank=="Genin"||usr.rank=="Chuunin"||usr.rank=="Jounin"||usr.rank=="Kage")
				usr<<"Sorry you already have done the test and already passed..."
				return
			if(usr.Genintest)
				usr<<"Sorry you are already doing the test..."
				return
			if(usr.Geninmade)
				usr<<"Sorry you just made the test you can´t do it until this one finishes and another start..."
				return
			usr.Frozen=1
			usr.Genintest=1
			usr.score=1
			if(usr.cantest&&usr.rank=="Student")
				usr.cantest=0
				switch(input("Qual e a classificação ninja mais baixa?","Rank Baixo",) in list("Academy Student","Genin","Chuunin","Jounin","Kage"))
					if("Genin")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Ataque de ilusão se refere a que estilo de luta?","Mente",) in list("Taijutsu","Genjutsu","Ninjutsu","Doujutsu"))
					if("Genjutsu")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Quem Mato o 3 Hokage","Matou",) in list("Orochimaru","Uchiha Hades","Mortinho","Baiacu da Cintra"))
					if("Orochimaru")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual o rank do Kakashi seisei","hmm",) in list("Genin","Estudante","Anbu","Jounin"))
					if("Jounin")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual clã possui o Sharigan?","Doujutsu",) in list("Aburame","Uchiha","Nagato","Hyuuga"))
					if("Uchiha")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual Maior rank ?","rank",) in list("Japa Genin Forever","Genin","Chuunin","Jounin","Kage"))
					if("Kage")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual doujutsu do clã hyuuga?","Hyuuga",) in list("Sharingan","Byakugan","Rinnegan","Zetsu","Mangekyou"))
					if("Byakugan")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual nome do papai do kakashi","Hyuuga",) in list("Japa Genin","LordBart","Canino Branco","Canino Preto","Kakashi Senpai"))
					if("Canino Branco")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Quem é a jounin organizadora do exame chunnin no anime?","Jounin",) in list("Anko","Sakura","Ino","Hinata","Tsunade"))
					if("Anko")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Quem tem uma raposa selada no seu corpo","Selo",) in list("Sasuke","Neji","Konohamaru","Naruto","Sai"))
					if("Naruto")
						usr.score += 1
					else
						usr.score += 0
				switch(input("Qual abilidade do clã Inuzuka?","Inuzuka ",) in list("Sharingan","Byakugan","Summon De Cachorros","Extender Sombra","Invadir mente"))
					if("Summon De Cachorro")
						usr.score += 1
						if(usr.score >= 9)
							usr<<"Congratulations you have passed the genin exam see the teacher!"
							usr.testing=0
							usr.Frozen=0
							usr.tested=1
							return
						else
							usr<<"You have failed the genin exam!Better luck next time."
							usr.testing=0
							usr.cantest=1
							usr.Frozen=0
							usr.tested=0
							return
					else
						usr.score += 0
						if(usr.score >= 9)
							usr<<"Congratulations you have passed the genin exam see the teacher!"
							usr.testing=0
							usr.cantest=1
							usr.Frozen=0
							usr.tested=1
							return
						else
							usr<<"You have failed the genin exam!Better luck next time."
							usr.testing=0
							usr.cantest=1
							usr.Frozen=0
							usr.tested=0

			else
				usr<<"You must wait 15 minutes after takeing the test before you can take the genin exam again."
				return