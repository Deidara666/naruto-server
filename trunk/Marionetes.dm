mob
	puppet

		var
			puppetowner = ""

			tmp/canhit = 1
mob
	puppet
		icon = 'puppet.dmi'
		density = 1
		verb

			PickUp()
				set src in oview(1)
				if(puppetowner == usr)
					src.loc = usr
					usr<<"You picked up [src]"
					usr<<"<font size =3><b><u>DO NOT LOG OUT WITH A PUPPET IN YOUR INVENTORY OR YOU WILL LOSE EVERYTHING IN YOUR INVENTORY."
					usr.puppet=1
					usr.verbs -= new /mob/puppet/verb/PuppetNorth()
					usr.verbs -= new /mob/puppet/verb/PuppetSouth()
					usr.verbs -= new /mob/puppet/verb/PuppetEast()
					usr.verbs -= new /mob/puppet/verb/PuppetWest()
					usr.verbs-= new /mob/puppet/verb/Puppetattack()
//
//				else
//					usr<<"Not your puppet."//
mob/puppet
	verb
		kugutsu()
			set category = "Summon"
			set name = "Kugutsu No Jutsu"
			if(usr.puppet>>1)
				usr<<"You can only have one puppet at a time."
				return
			var/mob/puppet/P = new/mob/puppet
			P.puppetowner = usr
			usr.puppet=1
			P.loc = locate(usr.x,usr.y - 1,usr.z)
			P.health = usr.health*2
			P.puppet = 1
			P.name ="[usr]'s Puppet"
			P.tai = usr.tai
			usr.verbs += new /mob/puppet/verb/KillPuppets()
			usr.verbs += new /mob/puppet/verb/PuppetNorth()
			usr.verbs += new /mob/puppet/verb/PuppetSouth()
			usr.verbs += new /mob/puppet/verb/PuppetEast()
			usr.verbs += new /mob/puppet/verb/PuppetWest()
			usr.verbs+= new /mob/puppet/verb/Puppetattack()

mob/puppet
	verb
		KillPuppets(mob/puppet/M in world)
			set category = "Summon"
			set name = "Kill off Puppets"
			if(M.puppetowner==usr)
				usr.puppet=0
				usr.verbs -= new /mob/puppet/verb/KillPuppets()
				usr.verbs -= new /mob/puppet/verb/PuppetNorth()
				usr.verbs -= new /mob/puppet/verb/PuppetSouth()
				usr.verbs -= new /mob/puppet/verb/PuppetEast()
				usr.verbs -= new /mob/puppet/verb/PuppetWest()
				usr.verbs -= new /mob/puppet/verb/Puppetattack()
			else
				usr<<"That is not your puppet."
mob/puppet
	verb
		PuppetNorth()
			set category = "Puppet"
			for(var/mob/puppet/K in oview())
				if(K.puppetowner == usr)
					K.puppet = 1
					step(K,NORTH)
		PuppetSouth()
			set category = "Puppet"
			for(var/mob/puppet/K in oview())
				if(K.puppetowner == usr)
					K.puppet = 1
					step(K,SOUTH)
		PuppetEast()
			set category = "Puppet"
			for(var/mob/puppet/K in oview())
				if(K.puppetowner == usr)
					K.puppet = 1
					step(K,EAST)
		PuppetWest()
			set category = "Puppet"
			for(var/mob/puppet/K in oview())
				if(K.puppetowner == usr)
					K.puppet = 1
					step(K,WEST)



mob/puppet
	verb
		Puppetattack()
			set category = "Puppet"
			for(var/mob/puppet/P in oview())
				for(var/mob/M in get_step(P,P.dir))
					if(P.puppetowner == usr)
						if(P.canhit == 0)
							return
						if (M.inspike == 1)
							P.canhit = 0
							usr<<"Your puppet's attack bounces off of [usr]!"
							sleep(8)
							P.canhit = 1
						if (M.sphere == 1)
							P.canhit = 0
							usr<<"Your puppet's attack bounces off of the sand!"
							sleep(8)
							P.canhit = 1
						if (M.Kaiten == 1)
							var/damage = round(usr.tai)
							if(damage <= 1)
								P.canhit = 0
								damage = 1
								usr <<"Your puppet attack [M] but their kaiten hakkeshou reflects the damage back at them."
								M <<"You reflect [usr]'s attack causing them to hurt themselfs."
								P.health -= damage
								P.Death(M)
								sleep(8)
								P.canhit = 1
								return
							else
								usr <<"Your puppet attacks [M] but their kaiten hakkeshou reflects the damage back at them."
								M <<"You reflect [usr]'s attack causing them to hurt themselfs."
								P.health -= damage
								P.Death(M)
								return
						if (M.ingat == 1)
							usr << "Your puppet's attack bounces off of [M] because they are in gatsuuga.."
							return
						else
							P.canhit = 0
							var/damage = round(usr.tai)
							oview()<<"[P] hit [M] for [damage]!"
							M.health -= damage
							M.Death(M)
							sleep(8)
							P.canhit = 1