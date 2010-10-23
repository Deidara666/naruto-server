mob
	pet
		icon = 'Dog.dmi'
		Move_Delay=1
		tai=100
		maxhealth = 1000
		density=1
		health = 1000
		isdog=1
		kyuubinpc=1
		Wfight=0
		Move()
			..()
			//var/mob/O = src.owner
			if(src.Frozen)
				return
			//src.random = rand(1,50)
			//if(src.random==1)
				//src.tai += 1
				//src.maxhealth += rand(2,10)
				//src.health += rand(2,10)
				//O.dogmaxhealth=src.maxhealth
				//O.dogtai=src.tai
		Bump(mob/M)
			..()
			var/mob/P = src
			if(istype(M,/mob/))
				if(M == owner||M.name == src.name||Wfight==0||fighting)
					return
				if(M.PK==0)
					return
				if(src.PK==0)
					return
				else
					var/Damage = P.tai
					M.health -= Damage
					Death(M)
					view() << "[src] attacks [M] for [Damage]!"
					src.fighting = 1
					sleep(5)
					src.fighting = 0

mob/inuzuka
	verb
		Tame(mob/pet/P in oview(1))
			set category = "Dog"
			if(P.cansave)
				usr<<"You can't tame players"
				return
			if(istype(P,/mob/npc))
				usr<<"You can't tame NPCs"
				return
			if(!usr.hasdog)
				if(usr.Clan == "Inuzuka")
					if(!P.named&&!P.owned)
						P.loc = usr
						P.owner = usr
						P.owned = 1
						P.tai = usr.dogtai
						P.maxhealth=usr.dogmaxhealth
						usr.hasdog=1
						usr.dog = P
						P.named = 1
						P.name = input("Please select a name for your new dog.") as text
						usr.dogname=P.name
						usr.dogtai=P.tai
						usr.dogmaxhealth=P.maxhealth
						usr.verbs += typesof(/mob/dogstuff/verb)
						usr.SaveK()
					else
						usr<<"This dog already belongs to someone."
						return
				else
					usr<<"Only members of the Inuzuka clan are able to tame dogs."
					return
			else
				usr<<"You already have a dog."
				return

mob/var
	owner
	Wfight = 0
	named = 0
	fighting = 0
	sit = 0
	isdog=0
	dogtai=0
mob/dogstuff
	verb
		Pickup()
			set category = "Dog"
			for(var/mob/pet/P in oview(1,P))
				if(P.owner == usr)
					P.loc = usr
					P.Frozen =1
					P.owner = usr
				else
					usr<<"This dog does not belong to you."

		Drop()
			set category = "Dog"
			for(var/mob/pet/P in src.contents)
				if(P.health <= 1)
					P.loc=locate(usr.x,usr.y-1,usr.z)
					P.Frozen = 0
					P.owner = usr
				else
					usr<<"Your dog is hurt and cannot be dropped.."
					return
		Aggressive()
			set category = "Dog"
			for(var/mob/pet/P in oview())
				if(P.owner == usr&&P.Wfight == 0)
					P.Wfight = 1
					usr<<"Your dog will now attack anything it bumps into."
					return
				else if(P.owner == usr&&P.Wfight == 1)
					usr<<"Your dog will no longer attack anything."
					P.Wfight = 0
					return
				else
					usr<<"This is not your dog!"
					return
		Sit(var/mob/pet/P in oview(1))
			set category = "Dog"
			if(P.owner==usr&&P.sit == 0)
				P.Frozen=1
				walk(src,0)
			else if(P.owner==usr&&P.sit == 1)
				P.Frozen=0
				walk(src,0)
			else
				usr<<"This is not your dog."
				return
		Come()
			set category = "Dog"
			for(var/mob/pet/P in view())
				if(P.owner==usr)
					P.Frozen=0
					walk_towards(P,src)
		FollowSomeone(mob/M in view())
			set category = "Dog"
			for(var/mob/pet/P in oview())
				if(P.owner == usr&&P.Frozen == 0)
					walk_towards(P,M)








