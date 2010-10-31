obj
	var/num = 0       // This var is used later to help set the icon state
	var/width = 15   // this is basically the number of icon states you have
	var/rangemax      // the range of the var that each tile of the meter will deal with
	var/rangemin
	var/num2 = 0       // This var is used later to help set the icon state
	var/width2 = 100   // this is basically the number of icon states you have
	var/rangemax2      // the range of the var that each tile of the meter will deal with
	var/rangemin2

obj
	var
		worn = 0
		have = 0
	Weights
		name = "Weights"
		icon = 'Weights.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 5000
		verb
			Wear()

				if(src.worn)
					src.worn = 0
					usr.overlays -= 'Weights.dmi'//temp icon
					usr.Move_Delay = usr.Savedspeed
					usr.Weights = 0
					usr << "Você removeu o [src.name]."
					if(usr.Mountain&&usr.Frozen)
						usr<<"Agora você não pode escalar a montanha..."
						usr.Frozen=0
					if(usr.onwater&&usr.Frozen)
						usr<<"Você pode andar sobre a agua..."
						usr.Frozen=0
				else
					src.worn = 1
					usr.Savedspeed = usr.Move_Delay
					usr.overlays += 'Weights.dmi'
					usr << "você usa o [src.name]."
					usr.Weights = 1
			Drop()
				if(src.worn)
					usr << "Não enquanto isto está sendo usado."
				if(!src.worn)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou [src]"






obj
	Shoes
		name = "Sapato"
		icon = 'Cloths.dmi'//dont have a base icon so cant make weights icon!lol
		price = 100
		worn = 0
		verb
			Usar()

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


mob/var/shirtI
obj
	Shirt
		name = "Camisa"
		icon = 'shirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 750
		worn = 0
		verb
			Usar()

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
	SasukeShirt
		name = "Camisa do Sasuke"
		icon = 'SasukeShirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
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

obj
	Pants
		name = "Calça"
		icon = 'pants.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Usar()
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
	Shades
		name = "Oculos"
		icon = 'shades.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 158
		verb
			Wear()
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
			Look()
				usr<<"Este é um oculos oficial dado aos chunins."
			Drop()
				if(src:worn == 1)
					usr << "Não enquanto isto está sendo usado."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"



obj
	hair
		layer = FLOAT_LAYER - 2




obj
	KagebunshinS
		name = "Kage bunshin scroll"
		icon = 'scroll.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = "1"
		worn = 0
		price = 158
		verb
			Ler()
				if(usr.learntK == 0)
					if(usr.rank == "Student")
						return
					if(usr.BunshinN<200)
						usr<<"Sinto muito, você precisa ter mais de 200 usos do Bunshin No Jutsu."
						return
					if(usr.BunshinN>=200)
						usr << "<I><B><font face = courier><font color = blue>Você leu Kage Bunshin No Jutsu!";usr.verbs += new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
						usr:learntK = 1
				else ..()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"







obj
	Ramen
		name = "Ramen"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="ramen"
		verb
			Comer()
				if(usr.health < usr.maxhealth)
					usr<<"Você come alguns Ramen."
					usr.health += 1000
					usr.calories += 2000
					del(src)
				else
					usr<<"Você come alguns Ramen."
					usr.calories += 2500
					del(src)
			Olhar()
				usr<<"Esta é uma tigela de Ramen."
			Soltar()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou uma tigela de [src]"
obj
	akimichipill1
		name = "Pilula Akimichi 1"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="akimichipill1"
		verb
			Eat()
				if(usr.pill1 >= 1)
					return
				else
					usr<<"Você comeu a pilula amarela"
					usr.maxhealth += 10000
					usr.health += 10000
					usr.Mchakra += 10000
					usr.chakra += 10000
					usr.nin += 10000
					usr.gen += 10000
					usr.tai += 10000
					usr.calories += 2
					usr.pill1 += 1
			StopUsingEffect()
				usr<<"You stop using effect of pill"
				if(usr.pill1 >= 1)
					usr.maxhealth -= 10000
					usr.health -= 10000
					usr.Mchakra -= 10000
					usr.nin -= 10000
					usr.gen -= 10000
					usr.tai -= 10000
					usr.pill1 -= 1
			Olhar()
				usr<<"This is a special pill which can have only akimichi clan members."
			Pegar()
				set src in oview(1)
				src.loc = usr
				usr<<"Você pegou um [src]"
obj
	akimichipill2
		name = "Pilula Akimichi 2"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="akimichipill2"
		verb
			Eat()
				if(usr.pill2 >= 1)
					return
				else
					usr<<"Você comeu a pilula verde"
					usr.maxhealth += 100000
					usr.health += 100000
					usr.Mchakra += 100000
					usr.chakra += 100000
					usr.nin += 100000
					usr.gen += 100000
					usr.tai += 100000
					usr.calories += 2
					usr.pill2 += 1
			StopUsingEffect()
				usr<<"You stop using effect of pill"
				if(usr.pill2 >= 1)
					usr.maxhealth -= 100000
					usr.health -= 100000
					usr.Mchakra -= 100000
					usr.chakra -= 100000
					usr.nin -= 100000
					usr.gen -= 100000
					usr.tai -= 100000
					usr.pill2 -= 1
			Look()
				usr<<"This is a special pill which can have only akimichi clan members."
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"
obj
	akimichipill3
		name = "akimichipill3"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="akimichipill3"
		verb
			Eat()
				if(usr.pill3 >= 1)
					return
				else
					usr<<"You eat akimichi red pill and you feel what you become more powerfull than ever"
					usr.maxhealth += 1000000
					usr.health += 1000000
					usr.Mchakra += 1000000
					usr.chakra += 1000000
					usr.nin += 1000000
					usr.gen += 1000000
					usr.tai += 1000000
					usr.calories += 2
					usr.pill3 += 1
					usr.overlays += 'Butterfly.dmi'//temp icon
			StopUsingEffect()
				usr<<"You stop using effect of pill and you feel extremally pain in your stomach"
				if(usr.pill3 >= 1)
					usr.maxhealth -= 1000000
					usr.health -= 1000000
					usr.Mchakra -= 1000000
					usr.chakra -= 1000000
					usr.nin -= 1000000
					usr.gen -= 1000000
					usr.tai -= 1000000
					usr.pill3 -= 1
					usr.overlays -= 'Butterfly.dmi'
			Look()
				usr<<"This is a special pill which can have only akimichi clan members."
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"
mob/var/tmp/drunk=0
obj
	Sake
		name = "Sake"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="sake"
		verb
			Drink()
				if(usr.health < usr.maxhealth)
					usr<<"You drink some Sake"
					usr.health += 50
					usr.drunk=1
					usr<<"You begin to feel relaxed and dazed"
					sleep(350)
					usr<<"The Sake wears off"
					usr.drunk=0
					del(src)
				else
					usr<<"You drink some Sake"
					usr<<"You begin to feel relaxed and dazed"
					usr.drunk=1
					sleep(350)
					usr.drunk=0
					usr<<"The Sake wears off"
					del(src)
			Look()
				usr<<"This is a bottle of Sake."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a bottle of [src]"
obj
	Soup
		name = "Vegetable Soup"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="veggies"
		verb
			Eat()
				if(usr.health < usr.maxhealth)
					usr<<"You eat some Vegetable Soup"
					usr.health += 1000
					usr.calories += 1000
					del(src)
				else
					usr<<"You eat some Vegetable Soup"
					usr.calories += 1500
					del(src)
			Look()
				usr<<"This is a Bowl of Vegetable Soup."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a bowl of [src]"
obj
	pill
		name = "Hyourougan"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Ninja pill"
		verb
			Eat()
				usr<<"You eat pill"
				usr.health += 10000
				usr.calories += 4
				usr.chakra += 10000
				del(src)
			Look()
				usr<<"This is a special ninja pill."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"

obj
	ShinoS
		name = "Coat"
		icon = 'ShinoS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ShinoS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ShinoS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is coat."
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

obj/var/tmp/tagset=0
obj/var/tmp/counter=0
obj
	ExplodingTag
		name = "Exploding Tag"
		icon = 'explodingtag.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Look()
				usr<<"This is an Exploding Tag."
			Drop()
				for(var/obj/ExplodingTag/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("How many Exploding Tags do you wish to drop?")as num
						if(src.ammount>drop)
							usr<<"You don't have that many to drop."
						if(drop<=0)
							usr<<"You cannot do that."
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/ExplodingTag/B = new/obj/ExplodingTag
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] drops [drop] Exploding Tags."
							if(src.ammount<=0)
								del(src)
				usr.SaveK()
			Get()
				set src in oview(1)
				if(src.tagset)
					usr<<"Its been Set already"
					return
				else
					usr<<"You picked up an [src]"
					var/counter=0
					for(var/obj/ExplodingTag/O in usr.contents)
						counter+=1
					if(counter<=0)
						Move(usr)
					else
						for(var/obj/ExplodingTag/O in usr.contents)
							O.ammount+=src.ammount
							O.name= "[O.name] ([O.ammount])"
							del(src)
			SetTag(mob/M in view(3))
				if(usr.firing)
					usr<<"You can't do this right now"
					return
				if(M.PK==0)
					usr<<"NONPK"
					return
				if(usr.tagset>=5)
					usr<<"You can only set 5 tags at a time."
					return
				if(!src.tagset)
					var/obj/ExplodingTag/B = new/obj/ExplodingTag
					B.loc = M.loc
					B.ammount-=1
					B.Gowner=usr
					B.tagset=1
					usr.tagset+=1
					B.icon_state="fire"
					usr.verbs+= new /mob/tag/verb/Explode
					for(var/obj/ExplodingTag/O in usr.contents)
						O.ammount-=1
						if(O.ammount<=0)
							del(O)
						else
							src.name="[O.oname] ([O.ammount])"

					usr.random=rand(1,3)
					if(usr.random==3)
						usr<<"Your Trap skill increases!"
						usr.Mtrapskill+=1
						usr.trapskill=usr.Mtrapskill







mob/tag
	verb
		Explode(mob/M in view(5))
			set category = "Exploding Tag"
			for(var/obj/ExplodingTag/T in view(10))
				if(M.PK==0)
					usr<<"NONPK"
					return
				if(T.Gowner==usr&&T.tagset)
					flick("explode",T)
					view(T)<<"[usr]'s Tag explodes!"
					usr.tagset-=1
					var/damage=usr.trapskill*3
					sleep(5)
					del(T)
					M<<"You have been hit by [usr]'s exploding tag for [damage] damage!"
					usr<<"You hit [M] with your exploding tag for [damage] damage!"
					M.health-=damage
					usr.tagset-=0
					if(M.health<=0)
						M.Death(usr)
					for(var/mob/npcs/Bunshin/B in oview(3,T))
						flick("smoke2",B)
						sleep(4)
						del(B)
					usr.random=rand(1,3)
					if(usr.random==3)
						usr<<"Your Trap skill increases!"
						usr.Mtrapskill+=2
						usr.trapskill=usr.Mtrapskill
			usr.verbs-= new /mob/tag/verb/Explode
			usr.verbs-= new /mob/tag/verb/Explode



obj/var/oname=""
obj
	Shuriken
		name = "Shuriken"
		icon = 'shuriken.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		density=1
		oname="Shuriken"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Look()
				usr<<"This is a standard Shuriken."
			Drop()
				for(var/obj/Shuriken/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("How many Shuriken do you wish to drop?")as num
						if(src.ammount>drop)
							usr<<"You don't have that many to drop."
						if(drop<=0)
							usr<<"You cannot do that."
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/Shuriken/B = new/obj/Shuriken
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] drops [drop] Shuriken."
							if(src.ammount<=0)
								del(src)
				usr.SaveK()
			Get()
				set src in oview(1)
				usr<<"You picked up [src]"
				for(var/obj/Shuriken/O in usr.contents)
					counter+=1
				if(counter<=0)
					Move(usr)
				else
					for(var/obj/Shuriken/O in usr.contents)
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
			Throw()
				if(usr.firing)
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"NONPK ZONE!"
					return
				var/obj/Shuriken/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.shurikenskill
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				for(var/obj/Shuriken/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
					else
						src.name="[O.oname] ([O.ammount])"
				sleep(8)
				usr.weaponthrow=0
				sleep(30)
		Bump(A)
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3,O))
					if(L)
						O<<"You cannot be that close to the log"
						O.weaponthrow=0
						del(src)
						return

				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=5
						O.shurikenskill=O.Mshurikenskill
					else
						O<<"You have reached your shuriken cap."
				if(O.random==1)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=10
						O.shurikenskill=O.Mshurikenskill
					else
						O<<"You have reached your shuriken cap."
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.tai)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'s Shuriken for [damage] damage!!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Kageshuriken
		icon='kageshuriken.dmi'
		density=1
		Bump(A)
			var/mob/O = src.Gowner
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = src.tai*2
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [usr]'s Kage Shurikens for [damage] damage!!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/var/tmp/weaponthrow=0
obj/var/ammount=0
obj
	Kunai
		name = "Kunai"
		icon = 'kunai.dmi'
		worn = 0
		density=1
		oname="Kunai"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Wear()
				if(usr:Kunaiworn == 1)
					src.worn = 0
					usr:Kunaiworn = 0
					usr.overlays -= 'kunaiknife.dmi'
					usr.overlays -= 'kunaiknife.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
				else
					src.worn = 1
					usr:Kunaiworn = 1
					usr.overlays += 'kunaiknife.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 100
			Look()
				usr<<"This is a standard Kunai."
			Drop()
				if(src.worn)
					usr << "Not while its being worn."
					return
				for(var/obj/Kunai/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("How many Kunai do you wish to drop?")as num
						if(src.ammount>drop)
							usr<<"You don't have that many to drop."
						if(drop<=0)
							usr<<"You cannot do that."
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/Kunai/B = new/obj/Kunai
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] drops [drop] Kunai."
							if(src.ammount<=0)
								del(src)
				usr.SaveK()
			Get()
				set src in oview(1)
				usr<<"You picked up [src]"
				for(var/obj/Kunai/O in usr.contents)
					counter+=1
				if(counter<=0)
					Move(usr)
				else
					for(var/obj/Kunai/O in usr.contents)
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
			Throw()
				if(usr:Kunaiworn == 1)
					usr<<"You cant throw kunai when you worn it!"
					return
				if(usr.firing)
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"NONPK ZONE!"
					return
				var/obj/Kunai/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.kunaiskill
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				for(var/obj/Kunai/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
					else
						src.name="[O.oname] ([O.ammount])"
				sleep(8)
				usr.weaponthrow=0
				sleep(30)
		Bump(A)
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3,O))
					if(L)
						O<<"You cannot be that close to the log"
						O.weaponthrow=0
						del(src)
						return

				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=5
						O.kunaiskill=O.Mkunaiskill
					else
						usr<<"You have reached your kunai cap."
				if(O.random==1)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=10
						O.kunaiskill=O.Mkunaiskill
					else
						usr<<"You have reached your kunai cap."
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.tai)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'s Kunai for [damage] damage!!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)



obj
	Sphere
		icon = 'testingextreme.dmi'
		icon_state = "main"
		layer = 999


obj
	Sphere1
		icon = 'SandSphere.dmi'
		layer = 999


obj
	tchat
		icon='menus.dmi'
		icon_state="Chat"
		screen_loc="1,4"
		Click()
			switch(input("Whats the chat system you want?", text) in list("World","Say","None"))
				if("World")
					usr.talk="world"
					alert("Your Chat System changed to <<World>>...")
				if("Say")
					usr.talk="say"
					alert("Your Chat System changed to <<Say>>...")
				if("None")
					usr.talk=0
					alert("You turned off your Chat System...")
obj
	trest
		icon='menus.dmi'
		icon_state="Rest"
		screen_loc="1,6"
		Click()
			if(usr.resting)
				usr.resting=0
				usr<<"You stop resting..."
				usr.Frozen = 0
				usr.icon_state = ""
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
				usr.rest()
obj
	tsave
		icon='menus.dmi'
		icon_state="save"
		screen_loc="1,5"
		Click()
			usr.SaveK()
obj
	meditate
		icon='meditate.dmi'
		icon_state=""



obj/Scroll_Fuuton1
	icon='scroll.dmi'
	icon_state="5"
	verb/Learn_Fuuton1()
		if(usr.rank == "Student")
			return
		if(usr.Mnin >=300)
			usr << "<B><font color = blue>You have acquired Fuuton: Kaze Dangan No Jutsu!!";usr.verbs += new /mob/fuuton/verb/FuutonKazeDangan()
		else ..()

	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Fuuton2
	icon='scroll.dmi'
	icon_state="5"
	verb/Learn_Fuuton2()
		if(usr.rank == "Student")
			return
		if(usr.Mnin >=300)
			usr << "<B><font color = blue>You have acquired Fuuton: Renkuudan No Jutsu!!";usr.verbs += new /mob/fuuton/verb/FuutonRenkuudan()
		else ..()

	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Fuuton3
	icon='scroll.dmi'
	icon_state="5"
	verb/Learn_Fuuton3()
		if(usr.rank == "Student"||usr.rank == "Genin")
			return
		if(usr.Mnin >=400)
			usr << "<B><font color = blue>You have acquired Fuuton: Daitoppa No Jutsu!!";usr.verbs += new /mob/fuuton/verb/Fuuton_Daitoppa()
		else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Doton1
	icon='scroll.dmi'
	icon_state="4"
	verb/Learn_Doton1()
		if(usr.rank == "Student")
			return
		if(usr.Mtai >=500)
			usr << "<B><font color = blue>You have acquired Doton Doryo Dango!!";usr.verbs += new /mob/doton/verb/DotonDoryoDango()
		else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Doton2
	icon='scroll.dmi'
	icon_state="4"
	verb/Learn_Doton2()
		if(usr.rank == "Student"||usr.rank == "Genin")
			return
		if(usr.Mtai >=600)
			usr << "<B><font color = blue>You have acquired Doton Doryuuheki!!";usr.verbs += new /mob/doton/verb/DotonDoryuuheki()
		else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"

obj/Scroll_Rai1
	icon='scroll.dmi'
	icon_state="2"
	verb/Learn_Rai1()
		if(usr.rank == "Student")
			return
		if(usr.Mnin >=300)
			usr << "<B><font color = blue>You have acquired Raikyuu No Jutsu!!";usr.verbs += new /mob/rai/verb/Raikyuu()
		else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Rai2
	icon='scroll.dmi'
	icon_state="2"
	verb/Learn_Rai2()
		if(usr.rank == "Student"||usr.rank=="Genin")
			return
		if(usr.Mnin >=500)
			usr << "<B><font color = blue>You have acquired Rairyuu No Tatsumaki!!";usr.verbs += new /mob/rai/verb/RairyuuNoTatsumaki()
		else ..()

	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Katon1
	icon='scroll.dmi'
	icon_state="6"
	verb/Learn_Katon1()
		if(usr.Mnin >=100)
			usr << "<B><font color = blue>You learned Katon Goukakyuu!!";usr.verbs += new /mob/katon/verb/KatonGoukakyuu()
			usr:L8 = 1
		else ..()
	else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Katon2
	icon='scroll.dmi'
	icon_state="6"
	verb/Learn_Katon2()
		if(usr.Uchiha == 0&&usr.Mnin >=300)
			usr << "<B><font color = blue>You learned Katon Housenka no jutsu!!";usr.verbs += new /mob/katon/verb/KatonHousenka()
			usr:L9 = 1
		else ..()
	else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"



obj/TreeMarker
	name = "Tree Marker"
	icon = 'treemarker.dmi'
	verb
		MarkTree()
			set src in oview(1)
			switch(input("Do you wish to mark the top of the tree?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.ox==1)
						usr<<"You mark the top of the tree"
						usr.ox=2
					else
						usr<<"Whats the point no ones watching."
				if("No")
					usr<<"Ok then."

mob/npc/Bugs
	name = "Bug"
	icon = 'invis.dmi'
	verb
		PickUp()
			set src in oview(1)
			switch(input("Do you wish to pick it up?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.snake==1)
						usr<<"You pick up a bug"
						usr.bugs+=1
						del(src)
					else
						usr<<"They ran."
				if("No")
					usr<<"Too gross huh."
obj/LeeWeights
	name = "Lee's Weights"
	icon = 'Weights.dmi'
	verb
		PickUp()
			set src in oview(1)
			switch(input("Do you wish to pick these up?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.Mtai>=500)
						if(usr.horse==1)
							usr<<"You pick up the heavy weights"
							usr.horse=2
						else
							usr<<"You should fine the owner 1st."
					else
						usr<<"They seam to heavy for you to lift."
				if("No")
					usr<<"Good idea stealing is wrong."
obj/SStars
	name = "Shurikens"
	icon = 'kageshuriken.dmi'
	verb
		PickUp()
			set src in oview(1)
			switch(input("Do you wish to pick these up?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.dragon==1)
						usr<<"You pick them up."
						usr.dragon=2
					else
						usr<<"Thats not for you."
				if("No")
					usr<<"It's good not to steal."
obj/JWolf
	name="Shin"
	icon ='wolf.dmi'
	verb
		Look()
			set src in oview(1)
			switch(input("Look closer?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.rat==1)
						usr<<"Thats Jiraiya's wolf."
						usr.rat=2
					else
						usr<<"It looks hurt."
				if("No")
					usr<<"CHICKEN!!!"
obj/ZSword
	name="Kubikiri Houcho"
	icon= 'Zabuza sword.dmi'
	verb
		PickUp()
			set src in oview(1)
			switch(input("Do you wish to pick this up?", text) in list ("Yes","No"))
				if("Yes")
					if(usr.monkey==1)
						usr<<"Better hurry back with this."
						usr.monkey=2
					else
						usr<<"Thats not yours."
				if("No")
					usr<<"Good morals = good karma."
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
		name = "Water Chuunin Vest"
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
obj
	Headband
		name = "Head Band"
		worn = 0
		icon = 'headband.dmi'
		verb
			Wear()
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
					switch(input("What head band style would you like?","Headband style picker")in list("Regular","Lee style","Kakashi style","Bandana style","Neiji style","Zabuza style","Leg Style","Ino Style"))
						if("Zabuza style")
							src.worn = 1
							usr.overlays += 'zabuzahb.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Neiji style")
							src.worn = 1
							usr.overlays += 'neijihb.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Leg Style")
							src.worn = 1
							usr.overlays += 'Leg Style.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Ino Style")
							src.worn = 1
							usr.overlays += 'inostyle.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Regular")
							src.worn = 1
							usr.overlays += 'headband.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Kakashi style")
							src.worn = 1
							usr.overlays += 'kakashi style.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 2
						if("Bandana style")
							src.worn = 1
							usr.overlays += 'bandastyle.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 3
						if("Lee style")
							src.worn = 1
							usr.overlays += 'leetype.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 4
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
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
	HoshikageHat
		name = "Hoshikage Hat"
		icon = 'HoshikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HoshikageHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HoshikageHat.dmi'
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
		name = "Kazekage suit"
		icon = 'KazekageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KazekageSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KazekageSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Kazekage."
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
	KazekageHat
		name = "Kazekage Hat"
		icon = 'KazekageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KazekageHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KazekageHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Kazekage."
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
	MizukageSuit
		name = "Mizukage suit"
		icon = 'MizukageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MizukageSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MizukageSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Mizukage."
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
	MizukageHat
		name = "Mizukage Hat"
		icon = 'MizukageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'MizukageHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'MizukageHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Mizukage."
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
	OtokageSuit
		name = "Otokage suit"
		icon = 'OtokageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'OtokageSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'OtokageSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Otokage."
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
	OtokageHat
		name = "Otokage Hat"
		icon = 'OtokageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'OtokageHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'OtokageHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Otokage."
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
	RaikageSuit
		name = "Raikage suit"
		icon = 'RaikageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RaikageSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RaikageSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Raikage."
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
	TsuchikageSuit
		name = "Tsuchi suit"
		icon = 'TsuchikageSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'TsuchikageSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'TsuchikageSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Raikage."
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
	RaikageHat
		name = "Raikage Hat"
		icon = 'RaikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RaikageHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RaikageHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Raikage."
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
	TsuchikageHat
		name = "Tsuchikage Hat"
		icon = 'TsuchikageHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'TsuchikageHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'TsuchikageHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Raikage."
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
	SOSuit
		name = "Sound Org. suit"
		icon = 'SOSuit.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SOSuit.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SoSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Sound Org."
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
		name = "Akatsuki Hat"
		icon = 'AKAH.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AKAH.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AKAH.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Akatsuki Hat."
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
	AKAS
		name = "Akatsuki Suit"
		icon = 'AKAS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AKAS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AKAS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Akatsuki suit."
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
	LH
		name = "Lords Hat"
		icon = 'LH.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'LH.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'LH.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Lords Hat."
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
	Suit1
		name = "Suit"
		icon = 'Suit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Suit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Suit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Zuki and his Friends."
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
	HSuit
		name = "Hunter Suit"
		icon = 'HSuit.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HSuit.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Hunters."
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
	Vest2
		name = "Vest2"
		icon = 'Vest2.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Vest2.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Vest2.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a ANBU CAPs vest."
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
	Snowvest
		name = "Snow Vest"
		icon = 'snowvest.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'snowvest.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'snowvest.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Snow Chuunin vest."
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
	Anbu
		name = "Star Mask"
		icon = 'Anbu.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Admins."
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
	Ranbu
		name = "Red ANBU mask"
		icon = 'Ranbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Ranbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Ranbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the ANBU captains mask."
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
	Eanbu
		name = "Rock ANBU mask"
		icon = 'Eanbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Eanbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Eanbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the ANBU captains mask."
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
	Sanbu
		name = "Sand ANBU mask"
		icon = 'Sanbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Sanbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Sanbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the ANBU captains mask."
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
	Yanbu
		name = "Cloud ANBU mask"
		icon = 'Yanbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Yanbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Yanbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the ANBU captains mask."
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
	Panbu
		name = "Snow ANBU mask"
		icon = 'Panbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Panbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Panbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the ANBU captains mask."
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
	Danbu
		name = "Sound ANBU mask"
		icon = 'Danbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Danbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Danbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the ANBU captains mask."
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
	Markings
		name = "CS Lvl 1"
		icon = 'CSItem.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					usr.maxhealth -= 10000
					usr.nin -= 10000
					usr.gen -= 10000
					usr.tai -= 10000
					src:worn = 0
					usr.overlays -= 'CSItem.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					usr.maxhealth += 10000
					usr.nin += 10000
					usr.gen += 10000
					usr.tai += 10000
					src:worn = 1
					usr.overlays += 'CSItem.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the cursed seal markings."
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
	Markings2
		name = "CS Lvl 2"
		icon = 'cs2.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					usr.maxhealth -= 10000
					usr.nin -= 10000
					usr.gen -= 10000
					usr.tai -= 10000
					src:worn = 0
					usr.overlays -= 'cs2.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					usr.maxhealth += 10000
					usr.nin += 10000
					usr.gen += 10000
					usr.tai += 10000
					src:worn = 1
					usr.overlays += 'cs2.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the cursed seal markings."
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
	Markings3
		name = "CS Lvl 3"
		icon = 'cs3.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					usr.maxhealth -= 10000
					usr.nin -= 10000
					usr.gen -= 10000
					usr.tai -= 10000
					src:worn = 0
					usr.overlays -= 'cs3.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					usr.maxhealth += 10000
					usr.nin += 10000
					usr.gen += 10000
					usr.tai += 10000
					src:worn = 1
					usr.overlays += 'cs3.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the cursed seal markings."
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
	Butterfly
		name = "Butterfly"
		icon = 'Butterfly.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					usr.maxhealth -= 10000
					usr.nin -= 10000
					usr.gen -= 10000
					usr.tai -= 10000
					src:worn = 0
					usr.overlays -= 'Butterfly.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					usr.maxhealth += 10000
					usr.nin += 10000
					usr.gen += 10000
					usr.tai += 10000
					src:worn = 1
					usr.overlays += 'Butterfly.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the butterfly wings."
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
	Zabuzasword
		name = "Kubikiri Houcho"
		icon = 'Zabuza sword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(usr.S2 || usr.S3)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					usr.S1 = 0
					usr:Weaponworn = 0
					src.worn = 0
					usr.overlays -= 'Zabuza sword.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
					usr.verbs -= new /mob/pain/verb/Slash()
				else
					usr:Weaponworn = 1
					src.worn = 1
					usr.S1 = 1
					usr.overlays += 'Zabuza sword.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.nin += 1000
					sleep(3)
					usr.swordD += usr.nin*2
					usr.verbs += new /mob/pain/verb/Slash()
			Look()
				usr<<"This is the sword that zabuza uses."
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
	Windmill
		name = "Windmill Shuriken"
		icon = 'windmill.dmi'
		worn = 0
		density=1
		price = 30000
		verb
			Look()
				usr<<"This is the Shuriken that Sasuke uses."
			Drop()
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.windmills-=1
					usr.SaveK()
			Get()
				if(usr.windmills <= 1)
					set src in oview(1)
					src.loc = usr
					usr<<"You picked up a [src]"
				else
					usr<<"You can only carry 2 at a time."
			Throw()
				if(usr.firing)
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"NONPK ZONE!"
					return
				var/obj/Windmill/L = new()
				usr.weaponthrow=1
				usr.windmills-=1
				L.loc=usr.loc
				L.nin=usr.shurikenskill
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				sleep(30)
				del(L)
				src.loc=locate(usr.x,usr.y,usr.z)
				sleep(3)
				usr.weaponthrow=0

		Bump(A)
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3))
					if(L)
						usr<<"You cannot be that close to the log"
						return
				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=2
						O.shurikenskill=O.Mshurikenskill
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'s Windmill for [damage] damage!!"
					M.Death(M)

			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)
obj
	Trikunai
		name = "Trikunai"
		icon = 'trikunai.dmi'
		worn = 0
		density=1
		price = 30000
		verb
			Look()
				usr<<"This a Tri Pointed Kunai."
			Drop()
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.trikunai-=1
					usr.SaveK()
			Get()
				if(usr.trikunai <= 1)
					set src in oview(1)
					src.loc = usr
					usr<<"You picked up a [src]"
				else
					usr<<"You can only carry 2 at a time."
			Throw()
				if(usr.firing)
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"NONPK ZONE!"
					return
				var/obj/Trikunai/L = new()
				usr.weaponthrow=1
				usr.trikunai-=1
				L.loc=usr.loc
				L.nin=usr.kunaiskill
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				sleep(30)
				del(L)
				src.loc=locate(usr.x,usr.y,usr.z)
				sleep(3)
				usr.weaponthrow=0

		Bump(A)
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3))
					if(L)
						usr<<"You cannot be that close to the log"
						return
				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=2
						O.kunaiskill=O.Mkunaiskill
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'s Trikunai for [damage] damage!!"
					M.Death(M)

			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)

obj
	Mondaisword
		name = "Mondai Sword"
		icon = 'Mondai sword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(usr.S1 || usr.S3)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.S2 = 0
					usr.Weaponworn = 0
					usr.overlays -= 'Mondai sword.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
					usr.verbs -= new /mob/pain/verb/Slash()
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S2 = 1
					usr.overlays += 'Mondai sword.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1000
					usr.swordD += usr.tai*2
					usr.verbs += new /mob/pain/verb/Slash()
			Look()
				usr<<"This is the sword that Mondai uses."
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
	Kisamesword
		name = "Kisame Sword"
		icon = 'KisamesSword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(usr.S1 || usr.S2)
					usr<<"You can not have more than one sword on at a time."
					return
				if(usr.Weaponworn == 1)
					src.worn = 0
					usr.Weaponworn = 0
					usr.S3 = 0
					usr.overlays -= 'KisamesSword.dmi'
					usr<< "You remove the [src.name]."
					src.suffix = ""
					usr.gen = usr.Mgen
					usr.swordD = 0
					usr.verbs -= new /mob/pain/verb/Slash()
				else
					src.worn = 1
					usr.Weaponworn = 1
					usr.S3 = 1
					usr.overlays += 'KisamesSword.dmi'
					usr<< "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.gen += 1000
					usr.swordD += usr.gen*2
					usr.verbs += new /mob/pain/verb/Slash()
			Look()
				usr<<"This is the sword that Kisame uses."
			Drop()
				if(src.worn == 1)
					usr << "Not while its being worn."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	KunaiKnife
		name = "Kunai Knife"
		icon = 'kunaiknife.dmi'
		worn = 0
		price = 1000
		verb
			Wear()
				if(usr:Kunaiworn == 1)
					src.worn = 0
					usr:Kunaiworn = 0
					usr.overlays -= 'kunaiknife.dmi'
					usr.overlays -= 'kunaiknife.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
				else
					src.worn = 1
					usr:Kunaiworn = 1
					usr.overlays += 'kunaiknife.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 100

			Look()
				usr<<"This a standard Kunai Knife."
			Drop()
				if(src.worn)
					usr << "Not while its being worn."
					return
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Jouninsuit
		name = "Jounin suit"
		icon = 'JouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
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
	Pill
		name = "Pill"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Ninja pill"
		verb
			Eat()
				if(usr.health < usr.maxhealth)
					usr<<"You eat a pill"
					usr.health += 1000
					usr.chakra += 1000
					usr.calories += 100
					del(src)
				else
					usr<<"You eat a pill"
					usr.calories += 150
					del(src)
			Look()
				usr<<"This is a pill."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	ANBUattacksuit
		name = "Sannin suit"
		icon = 'ANBUattacksuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ANBUattacksuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ANBUattacksuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Sannin."
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
	BigHat
		name = "Big Hat"
		icon = 'BigHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BigHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BigHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Big Hat."
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
	Sandles
		name = "Sandles"
		icon = 'Bsandels.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Bsandels.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Bsandels.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"Sandles."
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
	BoneSword
		name = "Bone Sword"
		icon = 'yanagi.dmi'
		worn = 0
		price = 0
		verb
			Wear()
				if(usr:BSworn == 1)
					src.worn = 0
					usr:BSworn = 0
					usr.overlays -= 'yanagi.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.bonesword = 0
					usr.swordD = 0
					usr.tai = usr.Mtai
				else
					if(usr.spinesword)
						usr<<"You can only weild one Bone sword at a time"
						return
					src.worn = 1
					usr:BSworn = 1
					usr.overlays += 'yanagi.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1000
					usr.swordD+=  usr.tai*2
					usr.bonesword = 1
			Look()
				usr<<"This is a sword made from the arm bone."
obj
	Spinewhip
		name = "Spine Bone Whip"
		icon = 'tessenka.dmi'
		worn = 0
		price = 0
		verb
			Wear()
				if(usr:SWworn == 1)
					src:worn = 0
					usr:SWworn = 0
					usr.overlays -= 'tessenka.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.spinesword = 0
					usr.tai = usr.Mtai
					usr.swordD=0
				else
					if(usr.bonesword)
						usr<<"You must weild one or the other"
						return
					src.worn = 1
					usr:SWworn = 1
					usr.overlays += 'tessenka.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1500
					usr.spinesword = 1
					usr.swordD+=usr.tai*2
			Look()
				usr<<"This is a whip made from the spine."
mob/var
	goud=0
obj
	Gourd
		name = "Gourd"
		icon = 'Gord.dmi'//dont have a base icon so cant make weights icon!lol
		price = 3000
		worn = 0
		verb
			Wear()

				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Gord.dmi'//temp icon
					usr << "You remove the [src.name]."
					usr.goud=0
					src.suffix = ""
					usr.nin=usr.Mnin
				else
					if(usr.goud==1)
						usr<<"You cant wear more then one."
						return
					src:worn = 1
					usr.overlays += 'Gord.dmi'
					usr << "You wear the [src.name]."
					usr.goud=1
					src.suffix = "Equipped"
					usr.nin+=1000
			Look()
				usr<<"This is a gourd filled with sand."
obj
	Ganbu
		name = "Green ANBU Mask"
		icon = 'Ganbu.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Ganbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Ganbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the ANBU Green Mask."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"
obj
	Banbu
		name = "Blue ANBU Mask"
		icon = 'Banbu.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Banbu.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Banbu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the ANBU Blue Mask."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"
obj
	Doll_Summoning_Scroll
		icon='scroll.dmi'
		icon_state="4"
		name = "Puppet1"
		verb
			Learn_Doll1()
				usr << "<B><font color = blue>You have Learned Doll Summons!!"
				usr.verbs += new /mob/puppet/verb/kugutsu()

			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"

obj
	KibaS
		name = "Sweater"
		icon = 'KibaS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KibaS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KibaS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a sweater."
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
	HakuS
		name = "Haku Suit"
		icon = 'HakuS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HakuS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HakuS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is Hakus suit."
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
	NaraS
		name = "Nara Suit"
		icon = 'NaraS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NaraS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NaraS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Nara Shirt."
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
	ChojiS
		name = "Choji Suit"
		icon = 'ChojiS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChojiS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChojiS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Choji Suit."
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
	elec
		name = "elec"
		icon = 'elec.dmi'

obj
	Doll
		name = "Guard"
		icon = 'karasu.dmi'

obj
	Note
		name = "Notes"
		icon = 'notes.dmi'

obj
	CloudSuit
		name = "Cloud Jounin Suit"
		icon = 'cloudjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'cloudjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'cloudjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	GrassSuit
		name = "Grass Jounin Suit"
		icon = 'grassjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'grassjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'grassjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	LeafSuit
		name = "Leaf Jounin Suit"
		icon = 'leafjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'leafjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'leafjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	MistSuit
		name = "Mist Jounin Suit"
		icon = 'mistjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'mistjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'mistjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	RainSuit
		name = "Rain Jounin Suit"
		icon = 'rainjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rainjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rainjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	RockSuit
		name = "Rock Jounin Suit"
		icon = 'rockjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'rockjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'rockjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	SandSuit
		name = "Sand Jounin Suit"
		icon = 'SandjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SandjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SandjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	StarSuit
		name = "Star Jounin Suit"
		icon = 'StarSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'StarSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'StarSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	SnowSuit
		name = "Snow Jounin Suit"
		icon = 'SnowjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SnowjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SnowjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	SoundSuit
		name = "Sound Jounin Suit"
		icon = 'soundjouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'soundjouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'soundjouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	WaterfallSuit
		name = "Waterfall Jounin Suit"
		icon = 'waterfalljouninS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'waterfalljouninS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'waterfalljouninS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official vest given to jounins."
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
	KabutoSuit
		name = "Kabuto Suit"
		icon = 'KabutoSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KabutoSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KabutoSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Medic Suit."
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
	SasukeSuit
		name = "Sasuke Suit"
		icon = 'SasukeSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SasukeSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SasukeSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is Sasuke's Suit."
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