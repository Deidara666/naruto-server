mob/npc/Banker//the new banker!
	name = "Banqueiro"
	icon = 'Banker.dmi'
	PK = 0
	health = 9999999999999999999999999999999999999999999999
	verb
		Depositar()
			set src in oview(3)
			set category = "Banco"
			var/heh = input("Você tem [usr.Yen] Yen. Quanto você pretende depositar?","Depósito") as num
			if (heh < 0)
				alert("Não tente me enganar!","Guardar no banco")
				return()
			if (heh > usr.Yen)
				alert("Você não tem muitos Yen!", "Depósito")
				return()

			usr << "Você depositou [heh] Yen."
			usr.Yen -= heh
			usr.goldinbank += heh
			return()

		Retirar()
			set src in oview(3)
			set category = "Banco"
			var/heh = input("Você tem [usr.goldinbank] Yen no banco. Quanto você deseja retirar?","Pegar") as num
			if (heh < 0)
				alert("Você não pode retirar menos de 1 Yen!","Guardar no banco")
				return()
			if (heh > usr.goldinbank)
				alert("Você não tem muitos Yen!", "Guardar no banco")
				return()
			if(usr.Yen>=100000)
				alert("Você não pode carregar mais Yen.")
				return
			usr << "Você retirou [heh] Yen."
			usr.Yen += heh
			usr.goldinbank -= heh
			return()

		CheckBalance()
			set src in oview(3)
			set category = "Banco"
			set name = "Checar conta"
			usr << "Você tem [usr.goldinbank] Yen no banco."
mob/npc/Vet
	name = "Veterinário"
	icon = 'Banker.dmi'
	PK = 0
	health = 999999999999999999999999999999999999
	verb
		Curar()
			set src in oview(3)
			set category = "Cachorro"
			if(usr.Yen <= 1999)
				usr << "você precisa de 2000 Yen para curar seu cachorro!"
			else
				for(var/mob/pet/P in usr.contents)
					if(P.owner==usr&&usr.hasdog)
						usr.Yen-=2000
						P.health = P.maxhealth
						P.overlays=null
						usr << "Tudo feito"
						return
					else
						usr << "Você não é dono de um cachorro OU Ele precisa ser apanhado."
						return
		CachorroFujiu()
			set src in oview(3)
			set name = "Cachorro fujiu"
			set category = "Cachorro"
			for(var/mob/pet/P in world)
				if(P.owner==usr)
					del(P)
			usr.hasdog=0
			usr << "Vai criar um novo animal de estimação."

mob
	var/tmp
		NPC = 0
		original
		moving=0
		getingready=0
		bowner
		hairPrefix
		enemy
		statePrefix
		lowner
		sowner
		wowner
mob
	npcs
		KBunshin
			human = 1
			NPC = 1

			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == bowner||M == src.original||M.name==src.name)
						return
					else
						if(src.firing)
							return
						var/mob/P = M
						var/Damage = src.tai
						src.firing=1
						if(P.Kaiten)
							del(src)
						if(P.drunk&&P.NonClan)
							view()<<"[M] atacou [src]'s atacou"
							sleep(13)
							src.firing=0
							return
						P.health -= Damage
						view() << "O [src] atacou [M] e tirou [Damage]!"
						P.Death(src)
						sleep(10)
						src.firing=0
		KKBunshin
			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == lowner||M == src.original||M.name==src.name)
						return
					else
						if(!src.firing)
							src.firing=1
							var/mob/P = M
							var/Damage = src.tai
							if(P.Kaiten)
								del(src)
							if(P.drunk&&P.NonClan)
								view()<<"[M] dodges [src]'s atacou"
								sleep(13)
								src.firing=0
								return
							P.health -= Damage // Takes the players health
							view() << "<font size=1>O [src] atacou [M] e tirou [Damage]!"
							P.Death(src)
						sleep(5)
						src.firing=0
		SBunshin
			human = 1
			NPC = 1

			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == sowner||M == src.original||M.name==src.name)
						return
					else
						if(!src.firing)
							src.firing=1
							var/mob/P = M
							var/Damage = src.tai
							if(P.Kaiten)
								del(src)
							if(P.drunk&&P.NonClan)
								view()<<"[M] dodges [src]'s atacou"
								sleep(13)
								src.firing=0
								return
							P.health -= Damage // Takes the players health
							view() << "<font size=1>O [src] atacou [M] e tirou [Damage]!"
							P.Death(src)
						sleep(5)
						src.firing=0
		Bunshin
			human = 1
			NPC = 1

			proc/Die()
				flick("smoke2",src)
				del(src)



mob
	proc/CheckAction()
		return

proc/Name2Mob(var/mName as text)
	for(var/mob/i in world)
		if("[lowertext(i.name)]" == "[lowertext(mName)]")
			return i

obj
	var/tmp
		price

mob/npc
	Merchant2
		name = "Loja de armas ninja"
		icon = 'Banker.dmi'
		PK = 0
		health = 9999999999999999999999999999999999999999999999
		verb/Buy()
			set src in oview(3)
			switch(input("O que você gostaria de comprar hoje?")in list("Shuriken - 200","Hyourougan - 500","Kunai - 400","Exploding Tag - 1000","Windmill - 50000","Trikunai - 50000","Nada"))
				if("Shuriken - 200")
					var/give = input("Quantas Shurikens você deseja comprar?")as num
					if(usr.Shurcounter<=99)
						if(usr.Yen >= give*200&&give>0)
							usr.Yen -= give*200
							usr << "Você comprou [give] shuriken."
							for(var/obj/Shuriken/O in usr.contents)
								Shurcounter+=1
							if(Shurcounter<=0)
								var/obj/Shuriken/B = new/obj/Shuriken
								B.loc = usr
								B.ammount+=give
								B.name= "[B.name] ([B.ammount])"
							else
								for(var/obj/Shuriken/O in usr.contents)
									O.ammount+=give
									O.name= "[O.name] ([O.ammount])"
						else
							if(usr.Yen <= 199)
								usr<<"Você não tem dinheiro o suficiente!"
					else
						usr<<"Você só pode carregar 100 de uma vez."
				if("Kunai - 400")
					var/give = input("Quantas Kunai você deseja comprar?")as num
					if(usr.Kucounter<=99)
						if(usr.Yen >= give*400&&give>0)
							usr.Yen -= give*400
							for(var/obj/Kunai/O in usr.contents)
								Kucounter+=1
							if(Kucounter<=0)
								var/obj/Kunai/B = new/obj/Kunai
								B.loc = usr
								B.ammount+=give
								B.name= "[B.name] ([B.ammount])"
							else
								for(var/obj/Kunai/O in usr.contents)
									O.ammount+=give
									O.name= "[O.name] ([O.ammount])"
						else
							if(usr.Yen <= 399)
								usr<<"Você não tem dinheiro o suficiente!"
					else
						usr<<"Você só pode carregar 100 de uma vez."
				if("Exploding Tag - 1000")
					var/give = input("Quantas Exploding Tags você deseja comprar?")as num
					if(Tagcounter<=9)
						if(usr.Yen >= give*1000&&give>0)
							usr.Yen -= give*1000
							for(var/obj/ExplodingTag/O in usr.contents)
								Tagcounter+=1

							if(Tagcounter<=0)
								var/obj/ExplodingTag/B = new/obj/ExplodingTag
								B.loc = usr
								B.ammount+=give
								B.name= "[B.name] ([B.ammount])"
							else
								for(var/obj/ExplodingTag/O in usr.contents)
									O.ammount+=give
									O.name= "[O.name] ([O.ammount])"
						else
							if(usr.Yen <= 999)
								usr<<"Você não tem dinheiro o suficiente!"
					else
						usr<<"Você só pode carregar 100 de uma vez."
				if("Windmill - 50000")
					if(usr.windmills<=1)
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.windmills+=1
							var/obj/Windmill/R = new/obj/Windmill
							R.loc = usr
						else
							usr<<"Você não tem dinheiro o suficiente!"
					else
						usr<<"Você só pode carregar 2 de uma vez."
				if("Trikunai - 50000")
					if(usr.trikunai<=1)
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.trikunai+=1
							var/obj/Trikunai/R = new/obj/Trikunai
							R.loc = usr
						else
							if(usr.Yen <= 49999)
								usr<<"Você não tem dinheiro o suficiente!"
					else
						usr<<"Você só pode carregar 2 de uma vez."
				if("Hyourougan - 500")
					var/give = input("Quantas Pílulas você deseja comprar?")as num
					if(usr.Kucounter<=99)
						if(usr.Yen >= give*500&&give>0)
							usr.Yen -= give*500
							for(var/obj/pill/O in usr.contents)
								Kucounter+=1
							if(Kucounter<=0)
								var/obj/B = new/obj/pill
								B.loc = usr
								B.ammount+=give
								B.name= "[B.name] ([B.ammount])"
							else
								for(var/obj/pill/O in usr.contents)
									O.ammount+=give
									O.name= "[O.name] ([O.ammount])"
						else
							if(usr.Yen <= 499)
								usr<<"Você não tem dinheiro o suficiente!"
					else
						usr<<"Você só pode carregar 10 de uma vez."
				if("Nada")
					usr<<"Volte sempre."
					return
mob/npc
	Food_Vender
		name = "Chef de cozinha"
		icon = 'Banker.dmi'
		PK = 0
		health = 9999999999999999999999999999999999999999999999
		verb
			Buy()
				set src in oview(3)
				switch(input("O que você gostaria de comprar hoje?")in list("Ramen - 350","Vegetable Soup - 320","Sake - 1500","Nada"))
					if("Ramen - 350")
						if(usr.Yen >= 350)
							usr.Yen -= 350
							var/obj/Ramen/R = new/obj/Ramen
							R.loc = usr
							usr<<"Você comprou um Ramen."
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Vegetable Soup - 320")
						if(usr.Yen >= 320)
							usr.Yen -= 320
							var/obj/Soup/S = new/obj/Soup
							S.loc = usr
							usr<<"Você comprou uma Vegetable Soup"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Sake - 1500")
						if(usr.Yen >= 1500)
							usr.Yen -= 1500
							var/obj/Sake/L = new/obj/Sake
							L.loc = usr
							usr<<"Você comprou um Sake"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Nada")
						return
mob/npc
	Merchant
		name = "(NPC)Sales person"
		icon = 'Banker.dmi'
		PK = 0
		health = 9999999999999999999999999999999999999999999999
		verb/Buy()
			set src in oview(3)
			switch(input("What would you like to buy today??")in list("Weights - 7000","Bandages - 5000","Big Hat - 5000","Shino Coat - 1000","Nara Shirt - 4500","Sasuke Suit - 4500","Kabuto Suit - 4500","Kankuoru Suit - 4500","Choji Suit - 4500","Kiba Sweater - 2000","Pants - 600","Shirt - 1000","Shoes - 150","Sandles - 150","Shades - 390","Sasuke Shirt - 4500","Naruto Suit - 4500","Neiji Suit - 4500","RockLee Suit - 4500","Zabuza Suit - 4500","Nothing"))
				if("Big Hat - 5000")
					if(usr.Yen >= 5000)
						usr.Yen -= 5000
						var/obj/BigHat/B = new/obj/BigHat
						B.loc = usr
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Bandages - 5000")
					if(usr.Yen >= 5000)
						usr.Yen -= 5000
						var/obj/Bandages/B = new/obj/Bandages
						B.loc = usr
						usr<<"Você comprou uma Bandages"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Weights - 7000")
					if(usr.Yen >= 7000)
						usr.Yen -= 7000
						var/obj/Weights/B = new/obj/Weights
						B.loc = usr
						usr<<"Você comprou um Weights"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Sasuke Shirt - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/SasukeShirt/B = new/obj/SasukeShirt
						B.loc = usr
						usr<<"Você comprou um Sasuke Shirt"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Kankuoru Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Kankuorusuit/B = new/obj/Kankuorusuit
						B.loc = usr
						usr<<"Você comprou um Kankuoro Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Sasuke Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/SasukeSuit/B = new/obj/SasukeSuit
						B.loc = usr
						usr<<"Você comprou uma Sasuke Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Kabuto Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/KabutoSuit/B = new/obj/KabutoSuit
						B.loc = usr
						usr<<"Você comprou uma Kabuto Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Nara Shirt - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/NaraS/B = new/obj/NaraS
						B.loc = usr
						usr<<"Você comprou uma Nara Shirt"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Choji Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/ChojiS/B = new/obj/ChojiS
						B.loc = usr
						usr<<"Você comprou uma Choji Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Naruto Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Narutosuit/B = new/obj/Narutosuit
						B.loc = usr
						usr<<"Você comprou uma Naruto Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Neiji Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Narutosuit/B = new/obj/Neijisuit
						B.loc = usr
						usr<<"Você comprou uma Neiji Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("RockLee Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/RockLeesuit/B = new/obj/RockLeesuit
						B.loc = usr
						usr<<"Você comprou uma RockLee Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Zabuza Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Zabuzasuit/B = new/obj/Zabuzasuit
						B.loc = usr
						usr<<"Você comprou uma Zabuza Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Haku Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/HakuS/B = new/obj/HakuS
						B.loc = usr
						usr<<"Você comprou uma Haku Suit"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Pants - 600")
					if(usr.Yen >= 600)
						usr.Yen -= 600
						var/obj/Pants/B = new/obj/Pants
						B.loc = usr
						usr<<"Você comprou uma Pants"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Shirt - 1000")
					if(usr.Yen >= 1000)
						usr.Yen -= 1000
						var/obj/Shirt/B = new/obj/Shirt
						B.loc = usr
						usr<<"Você comprou uma Shirt"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Shades - 390")
					if(usr.Yen >= 390)
						usr.Yen -= 390
						var/obj/Shades/B = new/obj/Shades
						B.loc = usr
						usr<<"Você comprou uma Shades"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Shino Coat - 1000")
					if(usr.Yen >= 1000)
						usr.Yen -= 1000
						var/obj/ShinoS/B = new/obj/ShinoS
						B.loc = usr
						usr<<"Você comprou uma Shino Coat"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Kiba Sweater - 2000")
					if(usr.Yen >= 2000)
						usr.Yen -= 2000
						var/obj/KibaS/B = new/obj/KibaS
						B.loc = usr
						usr<<"Você comprou uma Kiba Sweater"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Shoes - 150")
					if(usr.Yen >= 150)
						usr.Yen -= 150
						var/obj/Shoes/B = new/obj/Shoes
						B.loc = usr
						usr<<"Você comprou uma Shoes"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Sandles - 150")
					if(usr.Yen >= 150)
						usr.Yen -= 150
						var/obj/Sandles/B = new/obj/Sandles
						B.loc = usr
						usr<<"Você comprou uma Sandles"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Markings - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Markings/B = new/obj/Markings
						B.loc = usr
						usr<<"Você comprou uma Markings"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Nada")
					return

mob/npc
	Merchant3
		name = "Vendedor de espadas"
		icon = 'salesmen.dmi'
		PK = 0
		health = 9999999999999999999999999999999999999999999999
		verb/Buy()
			set src in oview(3)
			switch(input("O que você deseja comprar hoje?")in list("Zabuza Sword - 100000","Mondai Sword - 100000","Kisame Sword - 100000","Nada"))
				if("Zabuza Sword - 100000")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/Zabuzasword/B = new/obj/Zabuzasword
						B.loc = usr
						usr<<"Você comprou uma Zabuza Sword"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Mondai Sword - 100000")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/Mondaisword/B = new/obj/Mondaisword
						B.loc = usr
						usr<<"Você comprou uma Mondai Sword"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Kisame Sword - 100000")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/Kisamesword/B = new/obj/Kisamesword
						B.loc = usr
						usr<<"Você comprou uma Kisame Sword"
					else
						usr<<"Você não tem dinheiro o suficiente!"
				if("Nada")
					return


mob/npc
	tailor
		//name = "Cabeleleiro"
		icon = 'Haircuter.dmi'
		PK = 0
		health = 9999999999999999999999999999999999999999999999
		verb
			Talk()
				set src in oview(2)
				set category ="Corte de cabelo"
				switch(input("Would you like me to work magic to that ragged hair??", text) in list ("Sim","Não"))
					if("Yes")
						usr.overlays-=usr.hair
						switch(input("Masculino ou Feminino?", text)in list ("Masculino","Feminino"))
							if("Masculino")
								switch(input("Qual estilo de cabolo você mais gosta?", text) in list ("Naruto","Sasuke","Gaara","Shikamaru","Kakashi","Kabuto","Rock Lee","Itachi","Neiji","Kimimaro","Yondaime","Orochimaru","Jiraiya","Bald"))
									if("Jiraiya")
										usr.hair = "Jiraiya"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'jiraiyaH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Kabuto")
										usr.hair = "Kabuto"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'KabutoH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Orochimaru")
										usr.hair = "Orochimaru"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'OrochimaruH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Kimimaro")
										usr.hair = "Kimimaro"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'KimimaroH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Yondaime")
										usr.hair = "Yondaime"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'YondaimeH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Bald")
										usr.hair = "Bald"
									if("Naruto")
										usr.hair = "Naruto"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'narutoH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Neiji")
										usr.hair = "Neiji"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'neijih.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Itachi")
										usr.hair = "Itachi"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'itachiH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Gaara")
										usr.hair = "Gaara"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'gaaraH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Kakashi")
										usr.hair = "Kakashi"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'KakashiH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Sasuke")
										usr.hair = "Sasuke Hair"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'SasukeH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Rock Lee")
										usr.hair = "Lee Hair"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'leeH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair



							if("Feminino")
								switch(input("Which hair style would you like?", text) in list ("Sakura","Hinata","Ino","Temari","Careca"))
									if("Temari")
										usr.hair = "Temari Hair"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'temariH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Sakura")
										usr.hair = "Sakura Hair"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'SakuraH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Ino")
										usr.hair = "Ino"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'inoH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Hinata")
										usr.hair = "Hinata"
										var/hairred = input("Quanto de vermelho você deseja no seu cabelo?") as num
										var/hairblue = input("Quanto de azul você deseja no seu cabelo?") as num
										var/hairgreen = input("Quanto de verde você deseja no seu cabelo?") as num
										var/hairover = 'Hinata Hair.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
									if("Careca")
										usr.hair = "Bald"
mob
	proc
		NPCAI() //name of proc
			var/mob/player/M //variable M has to be mob/usr
			while(src) //while src is stil kickin
				if(M in oview(5)) //if M is in oview(5)
					if(M.name in src.killlist) //now if M.name is in src.killlist, this has it only attack if attacked!
						walk_to(src,M,1,4) //src walks to M until 1 block away, moving 4/10ths of a second
						if(M in oview(1)) //if M is in oview(1)
							step_towards(src,M) //src steps toward M
					else //if usr.name isnt in src.killlist
						sleep(15)//pauses for 1 and 1/2 seconds
						step_rand(src) //step randomly on the field
						break //breaks out of the while loop
				else //if M isnt in oview(5)
					for(M in view(src)) //for all Ms in view(src)
						break //breaks out of the while loop
				sleep(5) //pauses 1/2 second before redoing loop
			spawn(2) // pauses 2/10 of second before redoing proc
				NPCAI()

mob
	proc
		MONATTACK(mob/M in get_step(src,src.dir))
			if(M.drunk&&M.NonClan)
				view(M)<<"[M] dodges [src]'s atacou."
				return
			if(src.orochimaru&&src.canattack)
				if(!M.bit)
					var/damage = round(src.tai/1.6)
					if(damage <= 1)
						damage = 1
						view() << "[src] atacou [M] e tirou [damage]!"
						M.health -= damage
						if(M.health <= 0)
							src.killlist = ""
							M.Death(src)
						if(istype(M,/mob/enemy))
							M.killlist += src.name
					else
						view() << "[src] atacou [M] e tirou [damage]!"
						M.health -= damage
						if(M.health <= 0)
							src.killlist = ""
							M.Death(src)
						if(istype(M,/mob/enemy))
							M.killlist += src.name
				else
					if(M.CS==1&&!src.GOTCS)
						src.canattack=1
						view(src)<<"Orochimaru: Você está interessado?."
						sleep(10)
						view(src)<<"Orochimaru: I will give you the gift the curse mark."
						sleep(10)
						view(M)<<"Orochimaru bites the neck of [M]."
						M<<"You begin to feel an extreme powerfull!"
						M.firing=1
						M.GettingCurseSeal()
						sleep(40)
						view(M)<<"Orochimaru: Você deve me procurar quando for mais forte, Até mais [M]"
						del(src)
						sleep(40)
						M.inmission=0
						M.loc=locate(6,58,20)
						M<<"You have been brought back to your village."
						M.verbs -= new /mob/mission/verb/Escape()
						M.verbs -= new /mob/mission/verb/Escape()
						M.verbs -= new /mob/mission/verb/Escape()
			else
				if(M.ingat||M.intank||M.NPC)				.
					return
				if(M.Kaiten)
					var/damage = round(usr.tai)
					if(damage <= 1)
						damage = 1
						M <<"Você refletiu o ataque de [src]'s causing them to hurt themselfs."
						src.health -= damage
						if(src.health <= 0)
							src.killlist = ""
							src.Death(M)
						return
					else
						M <<"Você refletiu o ataque de [src]'s attack causing them to hurt themselfs."
						src.health -= damage
						if(src.health <= 0)
							src.killlist = ""
							src.Death(M)
						return
				if (M.ingat == 1)
					return
				else					//otherwise...
					if(src.Tekken&&src.canattack)
						var/damage = round(src.tai)
						if(damage <= 1)
							damage = 1
							view() << "[src] atacou [M] e tirou [damage]!"
							M.health -= damage
							if(M.health <= 0)
								src.killlist = ""
								M.Death(src)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
						else
							view() << "[src] atacou [M] e tirou [damage]!"
							M.health -= damage
							if(M.health <= 0)
								src.killlist = ""
								M.Death(src)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
					else if(src.Jyuken == 1&&src.canattack == 1)
						if(src.chakra >= 2)
							src.canattack =0
							var/damage = round(src.tai)
							if(damage <= 1)
								damage = 1
								view() << "[src] atacou [M] e tirou [damage]!"
								M.health -= damage
								src.chakra -= 2
								if(M.health <= 0)
									src.killlist = ""
									M.Death(src)
								if(istype(M,/mob/enemy))
									M.killlist += src.name
							else
								view() << "[src] atacou [M] e tirou [damage]!"
								M.health -= damage
								src.chakra -= 2
								if(M.health <= 0)
									src.killlist = ""
									M.Death(src)
								if(istype(M,/mob/enemy))
									M.killlist += src.name
						else
							src.Jyuken = 0
							src.Tekken = 1
							return

mob/proc/GettingCurseSeal()
	XD
		if(src.CS)
			src.health-=150
			if(src.health<=0)
				src.Death(src)
			src.random=rand(1,40)
			if(src.random==3)
				src.GOTCS=1
				src.firing=0
				src<<"Your pain stops."
				return
			else
				sleep(12)
				goto XD
		else
			return
mob/var/waterfallS=0
mob/var
	bit=0
	CS=0
	GOTCS=0
mob/PARTYdude
   icon = 'Spawn.dmi'
   name = "(NPC)PARTY"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
mob/StarSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Star Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Star!"
         usr.starS=1
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.lightningS = 0
         usr.mistS = 0
mob/SnowSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Snow Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Snow!"
         usr.akatS = 0
         usr.soS = 0
         usr.starS=0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 1
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.lightningS = 0
         usr.mistS = 0
mob/AKATSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)AKAT Spawn Helper"
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Akat base!"
         usr.akatS = 1
         usr.soS = 0
         usr.starS=0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.lightningS = 0
         usr.mistS = 0
mob/SOSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)SO Spawn Helper"
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The SO base!"
         usr.akatS = 0
         usr.soS = 1
         usr.leafS = 0
         usr.starS=0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.lightningS = 0
         usr.mistS = 0
mob/LeafSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Leaf Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Leaf!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 1
         usr.starS=0
         usr.snowS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.waterfallS=0
         usr.mistS = 0
         usr.lightningS = 0
mob/SoundSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Sound Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Sound!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.starS=0
         usr.snowS = 0
         usr.soundS = 1
         usr.rainS = 0
         usr.waterfallS=0
         usr.earthS = 0
         usr.mistS = 0
         usr.lightningS = 0
mob/WaterfallSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Waterfall Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Waterfall!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 0
         usr.starS=0
         usr.soundS = 0
         usr.waterfallS=1
         usr.rainS = 0
         usr.earthS = 0
         usr.mistS = 0
         usr.lightningS = 0
mob/RainSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Rain Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Rain!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.waterfallS=0
         usr.sandS = 0
         usr.snowS = 0
         usr.starS=0
         usr.soundS = 0
         usr.rainS = 1
         usr.earthS = 0
         usr.mistS = 0
         usr.lightningS = 0
mob/SandSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Sand Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Sand!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 1
         usr.starS=0
         usr.snowS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.lightningS = 0
         usr.mistS = 0
mob/GrassSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Grass Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Grass!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 1
         usr.sandS = 0
         usr.starS=0
         usr.snowS = 0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.lightningS = 0
         usr.waterfallS=0
         usr.mistS = 0
mob/EarthSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Rock Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Earth!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.starS=0
         usr.grassS = 0
         usr.waterfallS=0
         usr.sandS = 0
         usr.snowS = 0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 1
         usr.lightningS = 0
         usr.mistS = 0
mob/mistSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Mist Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Mist!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.starS=0
         usr.sandS = 0
         usr.soundS = 0
         usr.waterfallS=0
         usr.rainS = 0
         usr.snowS = 0
         usr.earthS = 0
         usr.lightningS = 0
         usr.mistS = 1
mob/LightningSpawndude
   icon = 'Spawn.dmi'
   name = "(NPC)Cloud Spawn Helper"
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Earth!"
         usr.akatS = 0
         usr.soS = 0
         usr.starS=0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.snowS = 0
         usr.earthS = 0
         usr.lightningS = 1
         usr.mistS = 0
mob
	proc
		ShuriThrow()
			src.firing = 1
			var/obj/Shuriken/K = new /obj/Shuriken
			K.loc = src.loc
			K.tai=src.tai
			K.dir = src.dir
			K.name="[src]"
			K.Gowner=src
			walk(K,usr.dir)
			usr.firing = 0
			sleep(45)
			del(K)
mob
	proc
		KunaiThrow()
			src.firing = 1
			var/obj/Kunai/K = new /obj/Kunai
			K.loc = src.loc
			K.tai=src.tai
			K.dir = src.dir
			K.name="[src]"
			K.Gowner=src
			walk(K,usr.dir)
			usr.firing = 0
			sleep(45)
			del(K)

mob
	proc//core procs for the system


		ai_random_wander()//random wander if no mobs are in range to attack
			if(src.key)//if the source is human
				return//don't call the rest
			if(!src.weaknin&&!src.orochimaru&&!src.kyuubinpc&&!src.guard)
				return
			else
				walk_rand(src,10)//walk randomly with 5 lag
				src.ai_run_away()
				spawn(10)//delay for one tick
					ai_random_wander()//wander some more

		ai_run_away()//used for checking to see if it should run or attack
			if(src.client)
				return
			else
				for(var/mob/M in oview(7,src))//loops over all mobs within 5 tiles of the monster
					if(M.client)//if the mob is human
						if(get_dist(src,M) <= 5)//if the player is close
							if(src.weaknin||M.NPC)
								return
							else
								src:random = rand(1,5)
								if(src:random == 5)
									src.jutsu()
									src.ai_walk_to()
								else
									src.ai_walk_to()
						else
							src.jutsu()//calls the walk_to (for attacking) proc
					else
						return

		ai_walk_to()
			if(src.client)
				return 0
			else
				for(var/mob/M in oview(15,src))
					if(M.client)
						if(src.guard==1&&M.Village=="[src.Village]")//|| (src.isdog==1 && src.owner)
							return
						if(get_dist(src,M) <= 10)//within 10 tiles
							walk_to(src,M,1,10)//walk to the player
							ai_check_dist(src,M)//checks distance
							break//stops the loop
						else
							continue
					else
						continue

		ai_check_dist(mob/attacker,mob/defender)
			for(var/mob/M in oview(15,src))
				if(attacker.client)
					return
				else
					if(src.guard==1&&M.Village=="[src.Village]"||M.rank=="Student"||M.rank=="Genin")
						return
					if(get_dist(attacker,defender) <= 1 && defender.NPC==0)//if the monster is one tile away from the player
						attacker.MONATTACK(defender)//attack!
					else
						return

		jutsu()
			for(var/mob/M in oview(10,src))
				if(src.weaknin&&get_dist(src,M) >= 10)
					src.firing = 1
					var/obj/Shuriken/K = new /obj/Shuriken
					K.loc = src.loc
					K.tai=src.tai
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1.5
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(10)
					del(K)
				if(src.orochimaru&&get_dist(src,M) >= 10)
					src.firing = 1
					view(src)<<"Orochimaru: Katon Karyuu Endan!"
					var/obj/katonEndan/K = new /obj/katonEndan
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1.7
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(10)
					del(K)
				if(src.guard==1&&M.Village=="[src.Village]"||M.rank=="Student"||M.rank=="Genin")
					return
				if(src.guard)
					src.firing = 1
					var/obj/Windmill/K = new /obj/Windmill
					K.loc = src.loc
					K.nin=src.shurikenskill
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1.5
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(10)
					del(K)

mob
	enemy//..attack
		Leafvillageshinobi
			name= "Shinobi do Vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Leaf/Grass"
			Village="Leaf"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Grassvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Leaf/Grass"
			Village="Grass"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Mistvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Snow/Mist/Rain/Water"
			Village="Mist"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Snowvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Snow/Mist/Rain/Water"
			Village="Snow"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Rainvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Snow/Mist/Rain/Water"
			Village="Rain"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Waterfallvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Snow/Mist/Rain/Water"
			Village="Waterfall"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Cloudvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Cloud"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Rockvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Rock"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Sandvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Rock/Sand/Cloud"
			Village="Sand"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Soundvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Sound/Star"
			Village="Sound"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		Starvillageshinobi
			name= "Shinobi do vilarejo"
			icon = 'Guards.dmi'
			icon_state="Guard Sound/Star"
			Village="Star"
			guard = 1
			Tekken = 1
			maxhealth=1000000
			health = 1000000
			tai = 10000
			nin = 10000
			gen = 10000
			shurikenskill=10000
			NPC=1
		rogueshinobi
			name= "(NPC)Rogue Shinobi(Jounin Rank)"
			icon = 'sandnin.dmi'
			weaknin = 1
			Tekken = 1
			maxhealth=18000
			health = 18000
			tai = 800
			nin = 700
			gen = 400
			NPC=1
		henchmen
			name= "(NPC)Henchmen(Chuunin Rank)"
			icon = 'soundnin.dmi'
			weaknin = 1
			Tekken = 1
			maxhealth=4000
			health = 4000
			tai = 250
			nin = 200
			gen = 230
			shurikenskill=1000
			NPC=1
		bodyguards
			name= "(NPC)BodyGuard(Jounin Rank)"
			icon = 'sandnin.dmi'
			weaknin = 1
			Tekken = 1
			maxhealth=10000
			health = 10000
			tai = 450
			nin = 400
			gen = 530
			shurikenskill=1000
			NPC=1
		leader
			name= "(NPC)Leader(Missing-NiN)"
			icon = 'waternin.dmi'
			weaknin = 1
			Tekken = 1
			maxhealth=20000
			health = 20000
			tai = 700
			nin = 800
			gen = 900
			shurikenskill=1000
			NPC=1
		orochimaru
			name= "Orochimaru"
			icon = 'orochimaru.dmi'
			orochimaru = 1
			Tekken = 1
			maxhealth=180000
			health = 180000
			tai = 6200
			nin = 7000
			gen = 4000
			shurikenskill=5000
			NPC=1
		DosuKinuta
			name= "Dosu Kinuta"
			icon = 'Dosu Kinuta.dmi'
			weaknin = 1
			Tekken = 1
			maxhealth=200000
			health = 200000
			tai = 15000
			nin = 15000
			gen = 15000
			shurikenskill=15000
			NPC=1

mob/var
	kyuubinpc=0
	orochimaru=0
mob
	New()//when a mob is created
		..()
		sleep(20)
		if(isnull(src.client))//if it's not human
			ai_random_wander()//wander
			return..()//continue on with normal New() (create and whatnot)
		else
			return..()
mob/npc
	Summon_Vender
		name = "Vendedor de pergaminhos de summon"
		icon = 'Banker.dmi'
		PK = 0
		health = 9999999999999999999999999999999999999999999999
		verb
			Buy()
				set src in oview(3)
				switch(input("Qual pergaminho você deseja comprar hoje?")in list("Snake Summon - 100k","Slug Summon - 100k","Frog Summon - 100k","Puppet Summon - 50k","Nada"))
					if("Snake Summon - 100k")
						if(usr.Yen >= 100000)
							usr.Yen -= 100000
							usr.contents += new /obj/Big_Snake_Scroll
							usr<<"Você comprou um pergaminho de Snake Summon"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Slug Summon - 100k")
						if(usr.Yen >= 100000)
							usr.Yen -= 100000
							usr.contents += new /obj/Slug_Summoning_Scroll
							usr<<"Você comprou um pergaminho de Slug Summon"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Frog Summon - 100k")
						if(usr.Yen >= 100000)
							usr.Yen -= 100000
							usr.contents += new /obj/Frog_Summoning_Scroll
							usr<<"Você comprou um pergaminho de Frog Summon"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Puppet Summon - 50k")
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.contents += new /obj/Doll_Summoning_Scroll
							usr<<"Você comprou um pergaminho de Puppet Summon"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Nada")
						return
mob/npc
	Scroll_Vender
		name = "Vendedor de pergaminhos de jutsus"
		icon = 'Banker.dmi'
		PK = 0
		health = 9999999999999999999999999999999999999999999999
		verb
			Buy()
				set src in oview(3)
				switch(input("Qual pergaminho você deseja comprar hoje?")in list("Kaze Dangan No Jutsu - 50k","Kage Bunshin No Jutsu - 5k","Renkuudan No Jutsu - 60k","Daitoppa No Jutsu - 50k","Doton Doryo Dango - 40k","Doton Doryuuheki - 50k","Raikyuu No Jutsu - 40k","Rairyuu No Tatsumaki - 40k","Katon Goukakyuu - 40k","Katon Housenka no jutsu - 40k","Nada"))
					if("Kaze Dangan No Jutsu - 50k")
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.contents += new /obj/Scroll_Fuuton1
							usr<<"Você comprou um pergaminho de Kaze Dangan No Jutsu"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Renkuudan No Jutsu - 60k")
						if(usr.Yen >= 60000)
							usr.Yen -= 60000
							usr.contents += new /obj/Scroll_Fuuton2
							usr<<"Você comprou um pergaminho de Renkuudan No Jutsu"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Daitoppa No Jutsu - 50k")
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.contents += new /obj/Scroll_Fuuton3
							usr<<"Você comprou um pergaminho de Daitoppa No Jutsu"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Doton Doryo Dango - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Doton1
							usr<<"Você comprou um pergaminho de Doton Doryo Dango"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Doton Doryuuheki - 50k")
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.contents += new /obj/Scroll_Doton2
							usr<<"Você comprou um pergaminho de Doton Doryuuheki"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Raikyuu No Jutsu - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Rai1
							usr<<"Você comprou um pergaminho de Raikyuu No Jutsu"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Rairyuu No Tatsumaki - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Rai2
							usr<<"Você comprou um poergaminho de Rairyuu No Tatsumaki"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Katon Goukakyuu - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Katon1
							usr<<"Você comprou um pergaminho de Katon Goukakyuu"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Katon Housenka no jutsu - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Katon2
							usr<<"Você comprou um pergaminho de Katon Housenka no jutsu"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Kage Bunshin No Jutsu - 5k")
						if(usr.Yen >= 5000)
							usr.Yen -= 5000
							usr.contents += new /obj/KagebunshinS
							usr<<"Você comprou um pergaminho de Kage Bunshin No Jutsu"
						else
							usr<<"Você não tem dinheiro o suficiente!"
					if("Nada")
						return
mob/var/talkedto=0
mob/var/itachitalked=0
mob/npc/Naruto
	name = "Naruto"
	icon = 'npcs.dmi'
	icon_state = "Naruto"
	PK = 0
	health = 9999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category ="Naruto"
			switch(input("Hey will you do me a favor? I'll show you the Tiger sign it's really cool.") in list ("Yes","No","I'm Uzumaki too!","Get Lost"))
				if("Yes")
					if(usr.tiger==2)
						usr<<"Wow you really really did it? Thanks watch closely now."
						usr<<"You have learned how to do the Tiger sign"
						usr.Otiger=1
					if(usr.dogs==1)
						usr<<"What really? How mean. Fine tell her I won't write another one but don't think it's because she sent you see if I show you any more hand signs."
						usr.dogs=2
					else
						usr<<"Really thanks! Take this note to Sakura for me. I'll show you a hand sign when you return."
						usr.tiger=1
				if("No")
					usr<<"Fine then I didn't really need your help any ways."
				if("I'm Uzumaki too!")
					if(usr.Uzumaki == 1)
						usr<<"Hello fellow Uzumaki, welcome to our house."
						if(usr.rank == "Student")
							return
						if(usr.Uzumaki&&usr.Mgen >=250)
							usr << "<B><font color = blue>You Learned Oiroke No Jutsu!!"
							usr.verbs += new /mob/jutsu/verb/Sexy()
						else
							usr<<"You need 250 Gen to learn Oiroke No Jutsu."
						if(usr.Uzumaki&&usr.shurikenskill >=250)
							usr << "<B><font color = blue>You Learned Kage Shuriken!!"
							usr.verbs += new /mob/shurikenmove/verb/KageShuriken()
						else
							usr<<"You need 250 Shuriken Skill to learn Kage Shuriken."
						if(usr.Uzumaki&&usr.kunaiskill >=250)
							usr << "<B><font color = blue>You Learned Kage Kunai!!"
							usr.verbs += new /mob/shurikenmove/verb/KageKunai()
						else
							usr<<"You need 250 Kunai Skill to learn Kage Kunai."
						if(usr.Uzumaki&&usr.Mnin >=500)
							usr << "<B><font color = blue>You learned Tajuu Kage Bunshin No Jutsu!!"
							usr.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
						else
							usr<<"You need 500 Nin to learn Tajuu Kage Bunshin No Jutsu."
						if(usr.Uzumaki&&usr.Mnin>=1000)
							usr << "<B><font color = blue>You learned Nisen Rendan!!"
							usr.verbs += new /mob/jutsu/verb/NisenRendan()
						else
							usr<<"You need 1000 Nin to learn Nisen Rendan."
						if(usr.Uzumaki&&usr.Mnin>=5000)
							usr << "<B><font color = blue>You learned Frog Summons!!"
							usr.contents += new /obj/Frog_Summoning_Scroll
						else
							usr<<"You need 5000 Nin to learn Frog Summons."

					else
						usr<<"Lier leave the Uzumaki house NOW!"

mob/npc/Sakura
	name = "(NPC)Sakura"
	icon = 'npcs.dmi'
	icon_state = "Sakura"
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Sakura"
			switch(input("Hello how may I help you?") in list ("Can you show me a hand sign now?","Nevermind"))
				if("Can you show me a hand sign now?")
					if(usr.dogs==2)
						usr<<"Thank you I hope this time he listens. Sasuke is the only one for me, though your kinda cute too. Ok pay attention."
						usr<<"You have learned how to do the Dog sign"
						usr.Odog=1
					if(usr.tiger==1)
						usr<<"What you have a letter for me? Thank you."
						usr.tiger=2
					else
						usr<<"Take this letter back to Naruto and tell him never to even think about writeing another one and then I'll show the dog sign."
						usr.dogs=1

mob/npc/Sasuke
	name = "Sasuke"
	icon = 'npcs.dmi'
	icon_state = "Sasuke"
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Sasuke"
			switch(input("What? Can't you see I'm busy training? Let me guess you want to learn a jutsu hand sign right?",text) in list ("Yes","No","I'm Uchiha too!","Forget it"))
				if("Yes")
					if(usr.dragon == 2)
						usr<<"It's about time I was almost out. Now watch I don't have time to waste showing you this twice."
						usr<<"You have learned how to do the Dragon sign"
						usr.Odragon=1
					else
						usr<<"I thought so. I'm running low on shurikens and I left some at the shop. Just grab them for me and bring them too me and I'll show you the Dragon sign."
						usr.dragon=1
				if("No")
					usr<<"Then stop bothering me your interrupting my training."
				if("I'm Uchiha too!")
					if(usr.Uchiha == 1)
						usr<<"Hello fellow Uchiha, welcome to our house."
						if(usr.Uchiha&&usr.Mnin >=200&&usr.Mgen >= 100)
							usr << "<B><font color = blue>Your sharingan has activated!!"
							usr.verbs += new /mob/uchiha/verb/Sharingan()
						else
							usr<<"You need 200 Nin&Gen to activate Sharingan."
						if(usr.Uchiha&&usr.Mnin >=1000&&usr.Mgen>=700&&usr.kills>=150&&usr.Suses>=100)
							usr << "<B><font color = blue>You learned Mangekyou Sharingan!"
							usr.verbs += new /mob/uchiha/verb/MangekyouPrep()
						else
							usr<<"You need 1000 all stats and 150 kills along with 100 Uses to activate Mangekyou."
					else
						usr<<"Lier leave the Uchiha house NOW!"


mob/npc/Haku
	name = "Haku"
	icon = 'haku.dmi'
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Haku"
			switch(input("Hello *smiles* are you from my clan?",text) in list ("Yes","Forget it"))
				if("Yes")
					if(usr.Haku == 1)
						usr<<"Hello fellow clan memeber, welcome to our house."
						if(usr.Haku&&usr.Mnin >=250&&usr.Mtai>=250)
							usr << "<B><font color = blue>You have learned Sensatsu Suishou!"
							usr.verbs += new /mob/haku/verb/SensatsuSuishou()
						else
							usr<<"You need 250 Nin&Tai to learn Sensatsu Suishou."
						if(usr.Haku&&usr.Mnin >=500)
							usr<<"<b><font color=blue> You have learned Kage Needle No Jutsu!"
							usr.verbs += new /mob/needle/verb/Needle_Jutsu()
						else
							usr<<"You need 500 Nin to learn Kage Needle No Jutsu."
						if(usr.Haku&&usr.Mnin >=750)
							usr << "<B><font color = blue>You learned Makyou Hyoushou!"
							usr.verbs += new /mob/haku/verb/MakyouHyoushou()
						else
							usr<<"You need 750 Nin to learn Mirrors."
						if(usr.Haku&&usr.Mnin>=500)
							usr<<"<b><font color=blue> You have learned Ice Armor!"
							usr.verbs += new /mob/ice/verb/IceArmor()
						else
							usr<<"You need 500 Nin to learn Ice Armor."
						if(usr.Haku&&usr.Mgen >=1000&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You have learned Teleport!"
							usr.verbs += new /mob/nara/verb/kageteleport()
						else
							usr<<"You need 1000 Nin&Gen to learn Teleport."
					else
						usr<<"Lier leave my house NOW!"
				if("Forget it")
					usr<<"Ohh ok do you have a dream?"



mob/npc/Choji
	name = "Choji"
	icon = 'Choji.dmi'
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Choji"
			switch(input("Hello this is the Akimichi house",text) in list ("I'm Akimichi too!","Forget it"))
				if("I'm Akimichi too!")
					if(usr.Akimichi == 1)
						usr<<"Hello, welcome to our house."
						if(usr.Akimichi&&usr.Mtai >=250)
							usr << "<B><font color = blue>You learned Nikudan Sensha!!"
							usr.verbs += new /mob/Akimichi/verb/NikudanSensha()
						else
							usr<<"You need 250 Tai to learn Nikudan Sensha."
						if(usr.Akimichi&&usr.Mnin >=500)
							usr << "<B><font color = blue>You learned Baika No Jutsu!"
							usr.verbs += new /mob/Akimichi/verb/BaikaNoJutsu()
						else
							usr<<"You need 500 Nin to learn Baika No Jutsu."
						if(usr.Akimichi&&usr.Mtai >=1000)
							usr << "<B><font color = blue>You learned Nikudan Hari Sensha!"
							usr.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
						else
							usr<<"You need 1000 tai to learn Nikudan Hari Sensha."
						if(usr.Akimichi&&usr.Mnin >=750&&usr.calories>=750&&usr.Mtai>=750)
							usr << "<B><font color = blue>You learned Babun Baika No Jutsu!"
							usr.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
						else
							usr<<"You need 750 Tai&Nin&Calories to learn Babun Baika No Jutsu."

					else
						usr<<"Lier leave the Akimichi house NOW!"
						return
				if("Forget it")
					usr<<"Ohh ok do you have some food?"
mob/npc/Nara
	name = "Shikamaru"
	icon = 'Nara.dmi'
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Shikamaru"
			switch(input("How boring this is, this is the Nara house",text) in list ("I'm Nara too!","Forget it"))
				if("I'm Nara too!")
					if(usr.Nara == 1)
						usr<<"Hello, welcome to our house."
						if(usr.Nara&&usr.Mgen >=500)
							usr << "<B><font color = blue>You learned Kage Shibari No Jutsu!"
							usr.verbs += new /mob/nara/verb/kageshibari()
							usr.verbs += new /mob/nara/verb/ExtendShadow()
							usr.verbs += new /mob/nara/verb/RetractShadow()
						else
							usr<<"You need 500 Gen to learn Kage Shibari No Jutsu."
						if(usr.Nara&&usr.Mgen >=500&&usr.Mnin>=500)
							usr << "<B><font color = blue>You learned Kage Kubi Shibaru!"
							usr.verbs += new /mob/nara/verb/KageKubiShibaru()
						else
							usr<<"You need 500 Nin&Gen to learn Kage Kubi Shibaru."
						if(usr.Nara&&usr.Mgen >=750&&usr.Mnin>=750)
							usr<<"<b><font color=blue>You have learned Kage Blinding No Jutsu!"
							usr.verbs += new /mob/nara/verb/kageblind()
						else
							usr<<"You need 750 Nin&Gen to learn Kage Blinding No Jutsu."
						if(usr.Nara&&usr.Mgen >=1000&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You have learned Teleport!"
							usr.verbs += new /mob/nara/verb/kageteleport()
						else
							usr<<"You need 1000 Nin&Gen to learn Teleport."
						if(usr.Nara&&usr.Mnin>=5000)
							usr<<"<b><font color=blue>You learned Shadow No Jutsu"
							usr.verbs += new /mob/nara/verb/ShadowNoJutsu()
						else
							usr<<"You need 5000 Nin to learn Shadow No Jutsu."
					else
						usr<<"Lier leave the Nara house NOW!"
						return
				if("Forget it")
					usr<<"What a drag"

mob/npc/Kamizuri
	name = "Bee Keeper"
	icon = 'BeeArmor.dmi'
	PK = 0
	health = 9999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Bee Keeper"
			switch(input("What do you want I'm beezy.",text) in list ("I'm Kamizuri too!","Forget it"))
				if("I'm Kamizuri too!")
					if(usr.Kamizuri == 1)
						usr<<"Hello, welcome to our house."
						if(usr.Kamizuri&&usr.Mnin >=250)
							usr << "<B><font color = blue>You learned your Bee options!"
							usr.verbs += new /mob/Kamizuri/verb/summonbees()
							usr.verbs += new /mob/Kamizuri/verb/Placebee()
							usr.verbs += new /mob/Kamizuri/verb/Destroybee()
						else
							usr<<"You need 250 Nin to learn how to use Bees."
						if(usr.Kamizuri&&usr.Mnin >=500&&usr.Mgen>=200)
							usr << "<B><font color = blue>You learned how to explode your Bees!"
							usr.verbs += new /mob/Kamizuri/verb/ExplodeBee()
						else
							usr<<"You need 500 Nin to learn how to Explode Bees"
						if(usr.Kamizuri&&usr.Mnin >=300)
							usr << "<B><font color = blue>You learned Bee Armor!"
							usr.verbs += new /mob/Kamizuri/verb/BeeArmor()
						else
							usr<<"You need 300 Nin to learn Bee Armor."
						if(usr.Kamizuri&&usr.Mnin >=750&&usr.Mchakra>=10000)
							usr << "<B><font color = blue>You learned Bee Kyuu!"
							usr.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
						else
							usr<<"You need 750 Nin & 10000 Chakra to learn Bee Kyuu."
						if(usr.Kamizuri&&usr.Mnin >=1000&&usr.Mchakra>=11000)
							usr << "<B><font color = blue>You learned Bee Sousou!"
							usr.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
						else
							usr<<"You need 1000 Nin & 11000 Chakra to learn Bee Sousou."
						if(usr.Kamizuri&&usr.Mnin >= 2500)
							usr<<"<b><font color=blue>You learned Bee Wings."
							usr.verbs += new /mob/Beeflight/verb/Fly()
						else
							usr<<"You need 2500 Nin to learn Bee Wings."
						if(usr.Kamizuri&&usr.Mnin >=5000&&usr.Mchakra>=10000)
							usr << "<B><font color = blue>You learned Bee summons!"
							usr.contents += new /obj/Bee_Summoning_Scroll
						else
							usr<<"You need 5000 Nin & 10000 Chakra to learn Bee summons."
					else
						usr<<"Lier leave the Kamizuri house NOW!"
						return
				if("Forget it")
					usr<<"Bee gone!"

mob/npc/Kabuto
	name = "Kabuto"
	icon = 'Kabuto.dmi'
	PK = 0
	health = 9999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Kabuto"
			switch(input("What do you want I'm working on my cards.",text) in list ("Can you heal me?","INFO Cards","I'm a Medic too!","Forget it"))
				if("I'm a Medic too!")
					if(usr.Medical == 1)
						usr<<"Hello, welcome to our house."
						if(usr.Medical&&usr.Mgen >=500)
							usr << "<B><font color = blue>You have acquired Shousen Jutsu!!"
							usr.verbs += new /mob/medical/verb/Shousen_Jutsu()
						else
							usr<<"You need 500 Gen to learn Shousen Jutsu."
						if(usr.Medical&&usr.Mnin >=1000&&usr.Mgen >= 1000)
							usr << "<B><font color = blue>You have acquired Chakra No Mesu!!"
							usr.verbs += new /mob/medical/verb/ChakraNoMesu()
						else
							usr<<"You need 1000 Nin&Gen to learn Chakra No Mesu."
						if(usr.Medical&&usr.Mnin >=750&&usr.Mtai >= 750)
							usr.verbs += new /mob/medical/verb/SliceTendons()
							usr<<"You have learned Slice Tendons."
						else
							usr<<"You need 750 Nin&Tai to learn Slice Tendons."
						if(usr.Medical&&usr.Mnin >=500&&usr.Mtai >= 500)
							usr.verbs += new /mob/medical/verb/ScrewNerves()
							usr<<"You have learned Screw Nerves."
						else
							usr<<"You need 500 Nin&Tai to learn Screw Nerves."
						if(usr.Medical&&usr.Mgen >= 100)
							usr.verbs += /mob/medical/verb/InfoCards
							usr<<"You have learned Info Cards."
						else
							usr<<"Hit a log noob."
						if(usr.Medical&&usr.Mgen >= 1000)
							usr << "<B><font color = blue>You have acquired Restore!!"
							usr.verbs += new /mob/medical/verb/Restore_Jutsu()
						else
							usr<<"You need 1000 Gen to learn Restore."
						if(usr.Medical&&usr.Mnin >= 5000)
							usr << "<B><font color = blue>You have acquired Chakra Absorb!!"
							usr.verbs += new /mob/medical/verb/ChakraAbsorb()
						else
							usr<<"You need 5000 Nin to learn Chakra Absorb."
					else
						usr<<"Lier leave the Medic house NOW!"
						return
				if("Can you heal me?")
					usr<<"Ok then."
					usr.health=usr.maxhealth
					usr.chakra=usr.Mchakra
					usr<<"There you go good as new."
				if("INFO Cards")
					for(var/mob/M in world)
						if(M.client&&M.z==usr.z)
							usr<<"{\icon[M][M.name],Rank - [M.rank], health - [M.health],Chakra - [M.chakra]"
							usr<<"Tai - [M.tai],Nin - [M.nin],Gen - [M.gen]"
							usr<<"Location; [M.x],[M.y]"
				if("Forget it")
					usr<<"Ok then back to my cards."

mob/npc/Kaguya
	name = "Kimimaro"
	icon = 'Kaguya.dmi'
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Kimimaro"
			switch(input("What, this is the Kaguya house",text) in list ("I'm Kaguya too!","Forget it"))
				if("I'm Kaguya too!")
					if(usr.Kaguya == 1)
						usr<<"Hello."
						if(usr.Kaguya&&src.Mtai >=100)
							usr << "<B><font color = blue>You learned how to develop a sword out of your arm bone!"
							usr.verbs += new /mob/kaguyajutsu/verb/CreateBoneSword()
						else
							usr<<"You need 100 Tai to learn Bone Sword No Jutsu."
						if(usr.Kaguya&&usr.Mtai >=500)
							usr << "<B><font color = blue>You learned how to develop a whip out of your spinal column!"
							usr.verbs += new /mob/kaguyajutsu/verb/CreateSpineWhip()
						else
							usr<<"You need 500 Tai to learn Spine Wipe."
						if(usr.Kaguya&&usr.Mtai >=100)
							usr << "<B><font color = blue>You learned Yanagi No Mai!"
							usr.verbs += new /mob/kaguyajutsu/verb/YanagiNoMai()
						else
							usr<<"You need 100 Tai to learn Yanagi No Mai."
						if(usr.Kaguya&&usr.Mtai >=250)
							usr << "<B><font color = blue>You learned Tsubaki No Mai!"
							usr.verbs += new /mob/kaguyajutsu/verb/TsubakiNoMai()
						else
							usr<<"You need 250 Tai to learn Tsubaki No Mai."
						if(usr.Kaguya&&usr.Mtai >=300)
							usr << "<B><font color = blue>You learned Karamatsu No Mai!"
							usr.verbs += new /mob/kaguyajutsu/verb/KaramatsuNoMai()
						else
							usr<<"You need 300 Tai to learn Karamatsu No Mai."
						if(usr.Kaguya&&usr.Mtai >=750)
							usr << "<B><font color = blue>You learned Tessenka No Mai!"
							usr.verbs += new /mob/kaguyajutsu/verb/TessenkaNoMai()
						else
							usr<<"You need 750 Tai to learn Tessenka No Mai."
						if(usr.Kaguya&&usr.Mtai >=180&&usr.Mnin>=100)
							usr << "<B><font color = blue>You learned Teshi Sendan!"
							usr.verbs += new /mob/kaguyajutsu/verb/TeshiSendan()
						else
							usr<<"You need 200 Tai&Nin to learn Teshi Sendan."
						if(usr.Kaguya&&usr.Mtai >=1000&&usr.Mchakra>=10000)
							usr << "<B><font color = blue>You learned Sawarabi No Mai!"
							usr.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
						else
							usr<<"You need 1000 Tai & 10000 Chakra to learn Sawarabi No Mai."
					else
						usr<<"Lier leave the Kaguya house NOW!"
						return
				if("Forget it")
					usr<<"Fine"
					return

mob/npc/Kiba
	name = "Kiba"
	icon = 'Kiba.dmi'
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Kiba"
			switch(input("Ya, this is the Inuzuka house what do you want?",text) in list ("I'm Inuzuka too!","Forget it"))
				if("I'm Inuzuka too!")
					if(usr.Inuzuka == 1)
						usr<<"Hello."
						if(usr.Mtai >=50&&usr.Clan=="Inuzuka")
							usr << "<B><font color = blue>You learned how to Tame Dogs!"
							usr.verbs += new /mob/inuzuka/verb/Tame()
						else
							usr<<"Hit a log noob."
						if(usr.Inuzuka&&usr.Mtai >=500)
							usr << "<B><font color = blue>You learned Tsuuga!!"
							usr.verbs += new /mob/Inuzuka/verb/Gatsuuga()
						else
							usr<<"You need 500 Tai to learn Tsuuga."
						if(usr.Inuzuka&&usr.Mnin >=250)
							usr << "<B><font color = blue>You learned Juujin Bunshin!!"
							usr.verbs += new /mob/Inuzuka/verb/JuujinBunshin()
						else
							usr<<"You need 250 Tai to learn Juujin Bunshin."
						if(usr.Inuzuka&&usr.Mtai >=1000&&usr.Mnin >= 1000)
							usr << "<B><font color = blue>You learned Soutourou!!"
							usr.verbs += new /mob/Inuzuka/verb/Soutourou()
						else
							usr<<"You need 1000 Nin&Tai to learn Soutourou."
						if(usr.Inuzuka&&usr.Mtai >=750&&usr.Mnin >= 750)
							usr << "<B><font color = blue>You learned Garouga!!"
							usr.verbs += new /mob/Inuzuka/verb/Garouga()
						else
							usr<<"You need 750 Nin&Tai to learn Garouga."
						if(usr.Inuzuka&&usr.Mtai >=800)
							usr << "<B><font color = blue>You learned Gatsuuga!"
							usr.verbs += new /mob/Inuzuka/verb/Gatsuuga1()
						else
							usr<<"You need 800 Tai to learn Gatsuuga."
					else
						usr<<"Lier leave the Inuzuka house NOW!"
				if("Forget it")
					usr<<"Forgoten"
					return
mob/npc/Lee
	name = "Rock Lee"
	icon = 'npcs.dmi'
	icon_state ="Lee"
	PK = 0
	health = 99999999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Lee"
			switch(input("Hello you enjoy climbing too I see. Hey would you do me a huge favor?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.horse == 2)
						usr<<"Thanks man I hope they weren't too heavy. Here let me show you that sign."
						usr<<"You have learned how to do the Horse sign"
						usr.Ohorse=1
					else
						usr<<"I left my weights by a tree at the bottom of the mountain. If you get them for me and bring them to me I'll show you the Horse sign."
						usr.horse=1
				if("No")
					usr<<"Ok your loss"

mob/npc/Neiji
	name = "(NPC)Neiji"
	icon = 'npcs.dmi'
	icon_state = "Neiji"
	PK = 0
	health = 99999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Neiji"
			switch(input("What is it?",text) in list ("Can you show me a hand sign?","I am weaker then you","Nothen","I'm hyuuga too!"))
				if("Can you show me a hand sign?")
					usr<<"Admit that you are weaker then me"
					return
				if("I am weaker then you")
					usr<<"That's right and you can never change who you are. Now watch weak one."
					usr.Oram=1
					usr<<"You have learned the Ram sign"
				if("I'm hyuuga too!")
					if(usr.Hyuuga == 1)
						usr<<"Hello fellow Hyuuga, welcome to our house."
						if(usr.rank == "Student")
							return
						if(usr.knowK == 0&&usr.Mtai >=350)
							usr<<"You have become very strong [usr]..I think it is time to teach you Hakkeshou Kaiten,the Hyuuga ultimate defense jutsu. Use it wisely."
							usr.knowK = 1
							usr.verbs += new /mob/hyuuga/verb/HakkeshouKaiten()
						if(usr.knowJ == 0&&usr.Mtai >=200)
							usr<<"It is time that you learn our clan's fighting style, Jyuuken."
							usr.knowJ = 1
							usr.verbs += new /mob/hyuuga/verb/Jyuken()
						if(usr.knowKK == 0&&usr.Mtai >=500)
							usr<<"I will now teach you Hakke Kuushou."
							usr.knowJ = 1
							usr.verbs += new /mob/hyuuga/verb/HakkeKuusho()
						if(usr.Hyuuga&&usr.Mtai >=250&&usr.Mnin >= 250)
							usr << "<B><font color = blue>Your byakugan has activated!!"
							usr.verbs += new /mob/hyuuga/verb/Byakugan()
						else
							usr<<"You need 250 Nin&Tai to activate your Byakugan."
					else
						usr<<"Lier leave the Hyuuga house NOW!"
						return

mob/npc/Kakashi
	name = "Kakashi"
	icon = 'npcs.dmi'
	icon_state = "Kakashi"
	PK = 0
	health = 999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Kakashi"
			switch(input("Come to the great copy ninja to learn a hand sign have we?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.ox == 2)
						usr<<"Good job to be honest I didn't think you had what it takes."
						usr.Oox=1
						usr<<"You have learned the Ox sign."
					else
						usr<<"Climb to the top of this tree to prove you can control your chakra and not blow yourself up and I shall think about it."
						usr.ox=1
				if("No")
					usr<<"You are even more foolish then I thought."

mob/npc/Jiraiya
	name = "Jiraiya"
	icon = 'npcs.dmi'
	icon_state = "Jiraiya"
	PK = 0
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Jiraiya"
			switch(input("Hey have you seen my wolf?",text) in list ("Yes","No","Got any Summon scrolls?","Redo my Seals"))
				if("Yes")
					if(usr.rat == 2)
						usr<<"Ohh thank you so much you saved his life watch this."
						usr.Orat=1
						usr<<"You have learned the Rat."
					else
						usr<<"Don't tease me."
						usr.rat=1
				if("No")
					usr<<"Damn. Well if you find him let me know I'll show you the Rat sign."
					usr.rat=1
				if("Got any Summon scrolls?")
					if(!usr.talkedto&&usr.Mnin>=500&&usr.Mgen>=500&&usr.Mchakra>=10000)
						usr<<"You seem to have a great potential."
						usr.talkedto=1
						usr.random=rand(1,3)
						if(usr.random==3)
							usr.random=rand(1,3)
							if(usr.random==2)
								var/obj/Frog_Summoning_Scroll/F = new()
								F.loc=usr
								usr<<"To Summon your frog you must do the required seals and give a blood sacrifice"
								usr<<"Good luck in training Kuchiyose!"
							if(usr.random==1)
								var/obj/Slug_Summoning_Scroll/F = new()
								F.loc=usr
								usr<<"To Summon your Slug you must do the required seals and give a blood sacrifice"
								usr<<"Good luck in training Kuchiyose!"
							if(usr.random==3)
								var/obj/Big_Snake_Scroll/F = new()
								F.loc=usr
								usr<<"To Summon your Snake you must do the required seals and give a blood sacrifice"
								usr<<"Good luck in training Kuchiyose!"
						else
							usr<<"But I'm too busy to play with you, I must finish my research *Follows a pretty girl*."
					else
						if(usr.talkedto)
							usr<<"Didn't I say I don't have the time to play?"
						else
							usr<<"You are weak. Talk to me when your worth the time to train."
				if("Redo my Seals")
					if(usr.rank=="Student"||usr.rank=="Genin")
						usr<<"You must be a Chuunin or higher."
						return
					if(usr.Kyuubi)
						if(usr.kyuu2>=1)
							if(usr.kyuu2>=1&&usr.kills>=250)
								usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
								usr.kyuu3=1
								sleep(30)
								usr<<"There you go you should receive a bigger boost now."
								return
							else
								usr<<"You have not killed enough."
								return
						else
							if(usr.Kyuubi==1)
								usr<<"Wow you have ranked up some, ok now relax this is a trust test."
								usr.kyuu2=1
								sleep(30)
								usr<<"There you go you should receive a bigger boost now."
								return
							else
								usr<<"Your rank is to low."
								return
					else
						usr<<"You do not have tails."
					if(usr.bit==1)
						if(usr.CS2>=1)
							if(usr.CS2>=1&&usr.kills>=250)
								usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
								usr.CS3=1
								sleep(30)
								usr<<"There you go you should receive a bigger boost now."
								return
							else
								usr<<"You have not killed enough."
								return
						else
							if(usr.bit==1)
								usr<<"Wow you have ranked up some, ok now relax this is a trust test."
								usr.CS2=1
								sleep(30)
								usr<<"There you go you should receive a bigger boost now."
								return
							else
								usr<<"Your rank is to low."
								return

					else
						usr<<"You do not have Cursed Seal."
mob/npc/Gaara
	name = "Gaara"
	icon = 'npcs.dmi'
	icon_state = "Gaara"
	PK = 0
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Gaara"
			switch(input("Help me awaken my demon shead your blood for me.",text) in list ("Yes","No","I'm Gaara too.","Unlock My Demon"))
				if("Yes")
					usr.maxhealth -= 1000
					usr<<"mmmmm That's it now watch closely and run before it's too late."
					usr.Oboar=1
					usr<<"You have learned the Boar sign."
				if("No")
					usr<<"Coward"
				if("I'm Gaara too.")
					if(usr.Gaaraclan)
						usr<<"Really."
						if(usr.Gaaraclan&&usr.Mnin >=100)
							usr << "<B><font color = blue>You learned Suna Shuriken No Jutsu!"
							usr.verbs += new /mob/gaara/verb/SunaShuriken()
						else
							usr<<"Hit a log noob."
						if(usr.Gaaraclan&&usr.Mnin >=100&&usr.KawaN >= 30)
							usr << "<B><font color = blue>You learned Suna Shushin No Jutsu!!"
							usr.verbs += new /mob/gaara/verb/SunaShushinNoJutsu()
						else
							usr<<"You need 100 Nin & 30 Kawa uses to learn Suna Shushin No Jutsu."
						if(usr.Gaaraclan&&usr.Mnin >=300)
							usr << "<B><font color = blue>You learned Sand Sphere!"
							usr.verbs += new /mob/gaara/verb/SandSphere()
						else
							usr<<"You need 300 Nin to learn Sand Sphere."
						if(usr.Gaaraclan&&usr.Mnin >=200)
							usr << "<B><font color = blue>You learned Suna Bunshin No Jutsu!"
							usr.verbs += new /obj/bunshins/SunaBunshinnojutsu/verb/SunaBunshinNoJutsu()
						else
							usr<<"You need 200 Nin to learn Suna Bunshin No Jutsu."
						if(usr.Gaaraclan&&usr.Mnin >=750&&usr.Mchakra>=10000)
							usr << "<B><font color = blue>You learned Sabaku Kyuu!"
							usr.verbs += new /mob/gaara/verb/SabakuKyuu()
						else
							usr<<"You need 750 Nin & 10000 Chakra to learn Sabaku Kyuu."
						if(usr.Gaaraclan&&usr.Mnin >=1000&&usr.Mchakra>=11000)
							usr << "<B><font color = blue>You learned Sabaku Kyuu!"
							usr.verbs += new /mob/gaara/verb/SabakuSousou()
						else
							usr<<"You need 1000 Nin & 11000 Chakra to learn Sabaku Kyuu Finish."
						if(usr.Gaaraclan&&usr.Mgen>=500)
							usr << "<B><font color = blue>You learned Sand Armor!"
							usr.verbs += new /mob/gaara/verb/SandArmor()
						else
							usr<<"You need 500 Gen to learn Sand Armor."
				if("Unlock My Demon")
					if(usr.rank=="Student"||usr.rank=="Genin")
						usr<<"You must be a Chuunin or higher."
						return
					if(usr.Shukkaku==1&&usr.kaku2<=0)
						usr<<"You have ranked up some, your still a no body though."
						usr.kaku2=1
						sleep(30)
						usr<<"There you go you should receive a bigger boost now."
						return
					if(usr.kaku2>=1&&usr.kills>=250)
						usr<<"You have become the practiced killer but you are still nothing to me."
						usr.kaku3=1
						sleep(30)
						usr<<"There you go you should receive a bigger boost now."
						return
					else
						usr<<"You have not killed enough."
						return
				else
					usr<<"Lair leave now before I kill you."

mob/npc/Gai
	name = "Gai"
	icon = 'Guy.dmi'
	PK = 0
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Gai"
			switch(input("Well hi there and welcome to the Lee house.",text) in list ("I'm Lee too.","Weirdo"))
				if("I'm Lee too.")
					if(usr.Clan=="Lee")
						usr<<"Hello."
						if(usr.NonClan&&usr.Mtai >=500&&usr.maxhealth >= 5000)
							usr << "<B><font color = blue>You learned lotus!!"
							usr.verbs += new /mob/Lee/verb/Lotus()
						else
							usr<<"You need 500 Tai and 5000 Stam to start your hidden Lotus training."
						if(usr.NonClan&&usr.Mtai >=50)
							usr << "<B><font color = blue>You learned Konoha Renpuu!!"
							usr.verbs += new /mob/Lee/verb/KonohaReppu()
						else
							usr<<"Hit a log noob."
						if(usr.NonClan&&usr.Mtai >=250)
							usr << "<B><font color = blue>You learned Konoha Senpuu!!"
							usr.verbs += new /mob/Lee/verb/KonohaSenpuu()
						else
							usr<<"You need 250 Tai to learn Konoha Senpuu."
						if(usr.NonClan&&usr.Mtai >=500)
							usr << "<B><font color = blue>You learned Omote Renge!!"
							usr.verbs += new /mob/Lee/verb/OmoteRenge()
						else
							usr<<"You need 500 Tai to learn Omote Renge."
						if(usr.NonClan&&usr.Mtai >=750)
							usr << "<B><font color = blue>You learned Ura Renge!!"
							usr.verbs += new /mob/Lee/verb/UraRenge()
						else
							usr<<"You need 750 Tai to learn Ura Renge."
						if(usr.NonClan&&usr.Mtai>=1000)
							usr << "<B><font color = blue>You learned Konoha Genkuriki Senpuu!"
							usr.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
						else
							usr<<"You need 1000 Tai to learn Konoha Genkuriki Senpuu."
					else
						usr<<"It's not nice to lie you know."
				if("Weirdo")
					usr<<"Thats not nice ready for your punishment?"
					usr.health-=1000

mob/npc/Tenten
	name = "Tenten"
	icon = 'tenten.dmi'
	PK = 0
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Tenten"
			switch(input("Well hi there cutie welcome to the Tenten house.",text) in list ("I'm Tenten too.","Well hello yourself cutie."))
				if("I'm Tenten too.")
					if(usr.Clan=="Tenten")
						usr<<"Hello."
						if(usr.Tenten&&usr.shurikenskill >=250)
							usr << "<B><font color = blue>You learned Homing Shuriken!!"
							usr.verbs += new /mob/Tenten/verb/HomingShuriken()
						else
							usr<<"You need 250 Shuriken skill to learn Homing Shuriken."
						if(usr.Tenten&&usr.kunaiskill >=250)
							usr << "<B><font color = blue>You learned Homing Kunai!!"
							usr.verbs += new /mob/Tenten/verb/HomingKunai()
						else
							usr<<"You need 250 Kunai skill to learn Homing Kunai."
						if(usr.Tenten&&usr.shurikenskill >=1000)
							usr << "<B><font color = blue>You learned Homing Windmill!!"
							usr.verbs += new /mob/Tenten/verb/HomingWindmill()
						else
							usr<<"You need 1000 Shuriken skill to learn Homing Windmill."
						if(usr.Tenten&&usr.shurikenskill>=500)
							usr<<"<b><font color=blue>You learned Kage Shuriken."
							usr.verbs += new /mob/shurikenmove/verb/KageShuriken()
						else
							usr<<"You need 500 Shuriken skill to learn Kage Shuriken."
						if(usr.Tenten&&usr.kunaiskill >=500)
							usr << "<B><font color = blue>You Learned Kage Kunai!!"
							usr.verbs += new /mob/shurikenmove/verb/KageKunai()
						else
							usr<<"You need 500 Kunai Skill to learn Kage Kunai."
						if(usr.Tenten&&usr.shurikenskill >=1000&&usr.kunaiskill >=1000)
							usr << "<B><font color = blue>You learned Focus!!"
							usr.verbs += new /mob/Tenten/verb/Focus()
						else
							usr<<"You need 1000 Shuriken skill and Kunai skill to learn Focus."

					else
						usr<<"Don't lie to ME!"
				if("Well hello yourself cutie.")
					usr<<"Thank you wonderfull."


mob/npc/Zabuza
	name = "Zabuza"
	icon = 'npcs.dmi'
	icon_state = "Zabuza"
	PK = 0
	health = 999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Zabuza"
			switch(input("Argh I lost my sword have you seen it?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.monkey == 2)
						usr<<"Thank you I don't need to lose another tool."
						usr.Omonkey=1
						usr<<"You have learned the Monkey sign."
					else
						usr<<"Then where is it bring it to me or else."
						usr.monkey=1
				if("No")
					usr<<"If you find it and bring it to me I'll show you the Monkey sign."
					usr.monkey=1

mob/npc/Shino
	name = "Shino"
	icon = 'npcs.dmi'
	icon_state = "Shino"
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Shino"
			switch(input("You want to learn the Snake sign?",text) in list ("Yes","No","I'm Aburame too!"))
				if("Yes")
					if(usr.bugs >= 10)
						usr.Osnake=1
						usr<<"Good job now pay attention."
						usr<<"You have learned the Snake sign."
					else
						usr<<"Go outside and in the garden and catch me 10 bugs"
						usr.snake=1
				if("No")
					usr<<"Verywell."
				if("I'm Aburame too!")
					if(usr.Aburame)
						usr<<"Hello."
						if(usr.Aburame&&usr.Mnin >=100)
							usr << "<B><font color = blue>You learned Kekkai Konchuu Bunshin No Jutsu!"
							usr.verbs += new /obj/bunshins/KekkaiKonchuuBunshinnoJutsu/verb/KekkaiKonchuuBunshinnoJutsu()
						else
							usr<<"You need 100 Nin to learn Kekkai Konchuu Bunshin No Jutsu"
						if(usr.Aburame&&usr.Mnin >=250)
							usr << "<B><font color = blue>You learned your Konchuu options!"
							usr.verbs += new /mob/aburame/verb/summonkonchuu()
							usr.verbs += new /mob/aburame/verb/Placekonchuu()
							usr.verbs += new /mob/aburame/verb/DestroyKonchuu()
						else
							usr<<"You need 250 Nin to learn how to use Konchuu."
						if(usr.Aburame&&usr.Mnin >=300)
							usr<<"<b><font color=blue>You learned Konchuu Armor."
							usr.verbs += new /mob/aburame/verb/BugArmor()
						else
							usr<<"You need 300 Nin to learn Konchuu Armor."
						if(usr.Aburame&&usr.Mnin >=500&&usr.Mgen>=200)
							usr << "<B><font color = blue>You learned how to explode your Konchuu!"
							usr.verbs += new /mob/aburame/verb/ExplodeKonchuu()
						else
							usr<<"You need 500 Nin to learn how to Explode Konchuus"
						if(usr.Aburame&&usr.Mnin >=750)
							usr<<"<b><font color=blue>You learn Konchuu Kyuu"
							usr.verbs += new /mob/aburame/verb/KonchuuKyuu()
						else
							usr<<"You need 750 Nin to learn Konchuu Kyuu."
						if(usr.Aburame&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You learn Konchuu Sousou."
							usr.verbs += new /mob/aburame/verb/KonchuuSousou()
						else
							usr<<"You need 1000 Nin to learn Konchuu Sousou"
						if(usr.Aburame&&usr.Mnin>=5000&&usr.Mchakra>=10000)
							usr<<"<b><font color=blue>You learned Slug Summons."
							usr.contents += new /obj/Slug_Summoning_Scroll
						else
							usr<<"You need 5000 Nin and 10000 Chakra to learn Slug Summons."
					else
						usr<<"Liar leave the Aburame house now!"

mob/npc/Itachi
	name = "Itachi"
	icon = 'npcs.dmi'
	icon_state = "Itachi"
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Itachi"
			if(usr.itachitalked==1)
				usr<<"Get lost Loser."
				return
			switch(input("Will you give me you headband to learn a sign?",text) in list ("Yes","No"))
				if("Yes")
					usr<<"Loser."
					usr.itachitalked=1
					sleep(100)
					usr.itachitalked=0
				if("No")
					usr<<"Very wise that was a test, and you passed. Now watch."
					usr.Obird=1
					usr<<"You have learned the Bird sign."

mob/npc/Squads
	name="Jounin Squad assignments."
	icon='Banker.dmi'
	PK = 0
	health=999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category="Squads"
			switch(input("Do you wish to form a squad of genin and train them to become chuunin?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.squads==0)
						if(usr.rank=="Student"||usr.rank=="Missing")
							usr<<"Your not allowed a squad."
							return
						else
							alert("IF you change the font size YOUR BANNED!& if u use HTML remember to use the </font> at the end!")
							var/squad = input("","Squad") as text|null
							usr.squads=1
							usr.squad="[(squad)]"
							usr.verbs += typesof(/mob/Squads/verb)
					else
						usr<<"Your already in a squad."
				else
					usr<<"If you feel you are not ready it is best."

mob/npc/Genin
	name="Iruka"
	icon='Iruka.dmi'
	PK = 0
	health=999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category="Iruka"
			switch(input("To become a Genin you must Pass the writen test and then henge me 10 times so I know that you can do it right, ok?",text) in list ("Ok","No"))
				if("Ok")
					if(usr.rank=="Student"&&usr.hengeN >= 10&&usr.tested>=1)
						world<<"[usr] is now a genin"
						usr.rank = "Genin"
						usr.cap = Gcap
						var/obj/Headband/B = new/obj/Headband
						B.loc = usr
					else
						usr<<"Your already Genin or higher or you don't have 10 Henge uses or haven't passed the writen exam."
				else
					usr<<"Ok then."

mob/npc/Anko
	name="Anko"
	icon='Anko.dmi'
	PK = 0
	health=999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category="Forest Exit"
			switch(input("Giveing up already are we?",text) in list ("Yes","No"))
				if("Yes")
					for(var/obj/heavenscroll/H in usr.contents)
						del(H)
					for(var/obj/earthscroll/S in usr.contents)
						del(S)
					usr.deathforest=0
					usr.earthscroll=0
					usr.heavenscroll=0
					usr.health = 0
					usr.Death(usr)
					usr<<"You quit the exam!"
				else
					usr<<"That's the spirit."


mob/npc/Pawn
	name = "Pawn Shop"
	icon = 'Banker.dmi'
	PK = 0
	health = 9999999999999999999999999999999999999999999999
	verb
		Sell()
			var/varPackList = list()
			if(locate(/obj) in usr:contents)
				for(var/obj/O in usr:contents)
					varPackList += O
			else
				usr << "[usr:name] has an empty pack!"
				return
			var/varPackItem = input("Pick an item from [usr:name]'s pack","Sell") in varPackList + list("Cancel")
			if(varPackItem != "Cancel")
				if(alert("Would you like to Sell [varPackItem:name]?","[varPackItem:name]","Yes","No") == "Yes")

					del(varPackItem)
mob/npc/Baby
	name = "Baby"
	icon = 'npcs.dmi'
	icon_state = "Baby"
	PK = 0
	health = 99999999999999999999999999999999999999999999999999999999