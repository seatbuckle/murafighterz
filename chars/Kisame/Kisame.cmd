[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------

[Defaults]
command.time = 30
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[command]
name = "BF"
command = B,/F
time = 20

[command]
name = "BU"
command = B,/U
time = 20

[command]
name = "BD"
command = B,/D
time = 20

[command]
name = "FB"
command = F,/B
time = 20

[command]
name = "FU"
command = F,/U
time = 20

[command]
name = "FD"
command = F,/D
time = 20

[command]
name = "UB"
command = U,/B
time = 20

[command]
name = "UF"
command = U,/F
time = 20

[command]
name = "UD"
command = U,/D
time = 20

[command]
name = "DB"
command = D,/B
time = 20

[command]
name = "DF"
command = D,/F
time = 20

[command]
name = "DU"
command = D,/U
time = 20

[command]
name = "B"
command = /B
time = 20

[command]
name = "F"
command = /F
time = 20

[command]
name = "U"
command = /U
time = 20

[command]
name = "D"
command = /D
time = 20

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;-| Command List |--------------------------------------------------------------

[Statedef -1]
;Przedzia�y Random
;000-099 - Ruch + Kunaie
;100 - Combo A
;150 - Combo A Crouching
;200 - Combo A Forward
;240 - Backward A Attack
;250 - Combo X
;300 - Combo X Crouching
;350 - Combo X Forward
;390 - Backward X Attack
;400-499 - Jutsu Proste
;500-599 - Jutsu 
;600-699 - Jutsu Mocne
;700/750 - Ultimate
;800-899 - Finishery
;900-999 - Formy

;Finisher 4
[State -1, Finisher 4]
type = ChangeState
value = cond(statetype != A,266,234)
;PLAYER
trigger1 = command = "y" && command = "holdup"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 205 || stateno = 213 || stateno = 222 || stateno = 219 || stateno = 229 || stateno = 234 || stateno = 245 || stateno = 252 || stateno = 261 || stateno = 259 || stateno = 269 || stateno = 274)))
triggerall = stateno != 266
triggerall = stateno != [234,235]

;Finisher 3
[State -1, Finisher 3]
type = ChangeState
value = cond(statetype != A,225,234)
;PLAYER
trigger1 = command = "x" && command = "holdup"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 205 || stateno = 213 || stateno = 222 || stateno = 219 || stateno = 229 || stateno = 234 || stateno = 245 || stateno = 252 || stateno = 261 || stateno = 259 || stateno = 269 || stateno = 274)))
triggerall = stateno != 225
triggerall = stateno != [234,235]

;Finisher 2
[State -1, Finisher 2]
type = ChangeState
value = cond(statetype != A,255,233)
;PLAYER
trigger1 = command = "b" && command = "holdup"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 213 || stateno = 222 || stateno = 219 || stateno = 229 || stateno = 245 || stateno = 252 || stateno = 261 || stateno = 259 || stateno = 269 || stateno = 274)))
triggerall = stateno != 255
triggerall = stateno != 233

;Finisher 1
[State -1, Finisher 1]
type = ChangeState
value = cond(statetype != A,205,233)
;PLAYER
trigger1 = command = "a" && command = "holdup"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 213 || stateno = 222 || stateno = 219 || stateno = 229 || stateno = 245 || stateno = 252 || stateno = 261 || stateno = 259 || stateno = 269 || stateno = 274)))
triggerall = stateno != 205
triggerall = stateno != 233

;Ultimate - Suiton: Daikodan no Jutsu
[State -1, Ultimate - Suiton: Daikodan no Jutsu]
type = ChangeState
value = 590
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "BF" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x >= 50
trigger2 = p2dist y = [-100,50]
trigger2 = random = [500,750+ceil(((ceil(var(49)/5)+ceil(var(48)/25)) *5 *( ceil(Power/200) + (3000-life)/80))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = numenemy = 1
triggerall = numpartner = 0
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && !AILevel)
triggerall = statetype != A
triggerall = power >= 3500

;Suiton: Senshokuko
[State -1, Suiton: Senshokuko]
type = ChangeState
value = 580
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "UB" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x >= 50
trigger2 = p2dist y = [-100,50]
trigger2 = random = [520,670+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && !AILevel)
triggerall = statetype != A
triggerall = power >= cond(numpartner && numenemy, cond((partner, numhelper(4401) = 1 || enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 1500, 3000), cond(!numpartner && numenemy, cond((enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 1500, 3000),cond(numhelper(4401) = 1, 1500, 3000)))

;Suiton: Daibakusui Shoha
[State -1, Suiton: Daibakusui Shoha]
type = ChangeState
value = 470
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "FB" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x >= 50
trigger2 = p2dist y = [-100,50]
trigger2 = random = [610,660+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && !AILevel)
triggerall = statetype != A
triggerall = power >= 3000

;Suiton: Bakusui Shoha
[State -1, Suiton: Bakusui Shoha]
type = ChangeState
value = 450
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "FF" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x >= 50
trigger2 = p2dist y = [-100,50]
trigger2 = random = [500,650+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && !AILevel)
triggerall = statetype != A
triggerall = power >= 2000

;Suiton: Daibakufu
[State -1, Suiton: Daibakufu]
type = ChangeState
value = 460
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "BB" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x >= 50
trigger2 = p2dist y = [-100,50]
trigger2 = random = [450,600+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && !AILevel)
triggerall = statetype != A
triggerall = power >= 2000
triggerall = numhelper(4401) = 1
triggerall = helper(4401), stateno = 4402

;Air Suiton: Shokusame
[State -1, Air Suiton: Shokusame]
type = ChangeState
value = 551
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "U" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-30,70]
trigger2 = p2dist y >= 0
trigger2 = random = [530,580+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype = A
triggerall = power >= cond(numpartner && numenemy, cond((partner, numhelper(4401) = 1 || enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 375, 750), cond(!numpartner && numenemy, cond((enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 375, 750),cond(numhelper(4401) = 1, 375, 750)))

;Suiton: Shokusame
[State -1, Suiton: Shokusame]
type = ChangeState
value = 550
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "UD" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-50,50]
trigger2 = p2dist y = [-100,50]
trigger2 = random = [530,580+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype != A
triggerall = power >= cond(numpartner && numenemy, cond((partner, numhelper(4401) = 1 || enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 375, 750), cond(!numpartner && numenemy, cond((enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 375, 750),cond(numhelper(4401) = 1, 375, 750)))

;Suiton: Amesuikoha
[State -1, Suiton: Amesuikoha]
type = ChangeState
value = 570
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "UU" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = P2BodyDist X >= 100
trigger2 = p2dist y >= -200
trigger2 = random = [520,570+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && !inguarddist
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && !AILevel)
triggerall = statetype != A
triggerall = power >= cond(numpartner && numenemy, cond((partner, numhelper(4401) = 1 || enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 1000, 2000), cond(!numpartner && numenemy, cond((enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 1000, 2000),cond(numhelper(4401) = 1, 100, 2000)))

;Suiton: Suikotoppa
[State -1, Suiton: Suikotoppa]
type = ChangeState
value = 510
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "DF" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = P2BodyDist X = [-20,100]
trigger2 = p2dist y = [-100,50]
trigger2 = random = [510,560+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype != A
triggerall = power >= cond(numpartner && numenemy, cond((partner, numhelper(4401) = 1 || enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 750, 1500), cond(!numpartner && numenemy, cond((enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 750, 1500),cond(numhelper(4401) = 1, 750, 1500)))

;Suiton: Suikodan
[State -1, Suiton: Suikodan]
type = ChangeState
value = 500
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "DU" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x >= 150 && enemynear,vel x <= 0
trigger2 = p2dist y >= 0
trigger2 = random = [500,550+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && !inguarddist
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && !AILevel)
triggerall = statetype != A
triggerall = power >= cond(numpartner && numenemy, cond((partner, numhelper(4401) = 1 || enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 375, 750), cond(!numpartner && numenemy, cond((enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 375, 750),cond(numhelper(4401) = 1, 375, 750)))

;Mizu Bunshin no Jutsu
[State -1, Mizu Bunshin no Jutsu]
type = ChangeState
value = 750
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "BD" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x >= 150 && enemynear,vel x <= 0
trigger2 = random = [480,730+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && !inguarddist && life <= 500
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && !AILevel)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = numhelper(20000) < 3

;Kirigakure no Jutsu
[State -1, Kirigakure no Jutsu]
type = ChangeState
value = 697
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "FU"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x >= 150
trigger2 = random = [450,500+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && !inguarddist
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140]))
triggerall = statetype != A
triggerall = power >= 500
triggerall = cond((enemy, name = "Kakashi" || enemy, name = "Kisame"), enemy, numhelper(698) = 0 && numhelper(698) = 0, numhelper(698) = 0)

;Suiton: Suikojin
[State -1, Suiton: Suikojin]
type = ChangeState
value = 330
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "D" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2dist x = [-60,60]
trigger2 = p2dist y = [-50,200]
trigger2 = random = [440,490+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype = A
triggerall = power >= 500

;Doton: Dochu Senko
[State -1, Doton: Dochu Senko]
type = ChangeState
value = 310
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "FD" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2dist y >= 0
trigger2 = random = [340,490+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype != A
triggerall = power >= 500

;Suiton: Suijuheki
[State -1, Suiton: Suijuheki]
type = ChangeState
value = 700
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "BU" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x <= 40 && enemynear,vel x >= 0
trigger2 = p2dist y = [-100,100]
trigger2 = random = [430,480+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && !inguarddist
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype != A
triggerall = power >= cond(numpartner && numenemy, cond((partner, numhelper(4401) = 1 || enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 250, 500), cond(!numpartner && numenemy, cond((enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 250, 500),cond(numhelper(4401) = 1, 250, 500)))

;Counter: Suiro no Jutsu
[State -1, Counter: Suiro no Jutsu]
type = ChangeState
value = 400
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "DB" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-100,100]
trigger2 = random = [420,470+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200*2)]
trigger2 = var(50) != 0 && inguarddist && p2movetype = A
trigger2 = p2movetype = A
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype != A
triggerall = power >= 1000

;Suiton: Suidan
[State -1, Suiton: Suidan]
type = ChangeState
value = 430
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "UF" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [20,250]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [410,460+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && !inguarddist && enemynear,vel x <= 0
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype != A
triggerall = power >= 1000

;Suiton: Suigadan
[State -1, Suiton: Suigadan]
type = ChangeState
value = 410
;PLAYER
trigger1 = command = "hold_c"
trigger1 = command = "DD" 
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-20,20]
trigger2 = p2dist y = [-100,50]
trigger2 = random = [400,450+ceil(((ceil(var(49)/5)+ceil(var(48)/25))*ceil(Power/100))/200)]
trigger2 = var(50) != 0 && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
trigger1 = stateno = 70500
trigger2 = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]) && (!AILevel || (stateno = 206 || stateno = 214 || stateno = 223 || stateno = 243 || stateno = 253 || stateno = 235 || stateno = 280))) 
triggerall = statetype != A
triggerall = power >= cond(numpartner && numenemy, cond((partner, numhelper(4401) = 1 || enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 250, 500), cond(!numpartner && numenemy, cond((enemy, numhelper(4401) = 1 || numhelper(4401) = 1), 250, 500),cond(numhelper(4401) = 1, 250, 500)))

;Combo 8
[State -1, Combo 8.5]
type = ChangeState
value = 234
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 273 && time > 3 && movecontact) || (prevstateno = 273 && stateno = [196,199])

;Combo 8
[State -1, Combo 8.4]
type = ChangeState
value = 273
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 272 && time > 6 && movecontact) || (prevstateno = 272 && stateno = [196,199])

;Combo 8
[State -1, Combo 8.3]
type = ChangeState
value = 272
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 271 && time > 6 && movecontact) || (prevstateno = 271 && stateno = [196,199])

;Combo 8
[State -1, Combo 8.2]
type = ChangeState
value = 271
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 270 && time > 3 && movecontact) || (prevstateno = 270 && stateno = [196,199])

;Combo 7
[State -1, Combo 7.6]
type = ChangeState
value = 266
;PLAYER
trigger1 = command = "holdfwd" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-100,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 265 && time > 3 && movecontact) || (prevstateno = 265 && stateno = [196,199])

;Combo 7
[State -1, Combo 7.5]
type = ChangeState
value = 265
;PLAYER
trigger1 = command = "holdfwd" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,70]
trigger2 = p2dist y = [-70,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = stateno = 264 || (prevstateno = 264 && stateno = [196,199])

;Combo 7
[State -1, Combo 7.4]
type = ChangeState
value = 263
;PLAYER
trigger1 = command = "holdfwd" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 262 && time > 3 && movecontact) || (prevstateno = 262 && stateno = [196,199])

;Combo 7
[State -1, Combo 7.3]
type = ChangeState
value = 262
;PLAYER
trigger1 = command = "holdfwd" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 261 && time > 6 && movecontact) || (prevstateno = 261 && stateno = [196,199])

;Combo 7
[State -1, Combo 7.2]
type = ChangeState
value = 261
;PLAYER
trigger1 = command = "holdfwd" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 260 && time > 6 && movecontact) || (prevstateno = 260 && stateno = [196,199])

;Combo 6
[State -1, Combo 6.6]
type = ChangeState
value = 256
;PLAYER
trigger1 = command = "holddown" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = numhelper(200) != 0
triggerall = (stateno = 255 && time > 20 && helper(200), movecontact) || (prevstateno = 255 && stateno = [196,199])

;Combo 6
[State -1, Combo 6.5]
type = ChangeState
value = 255
;PLAYER
trigger1 = command = "holddown" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = numhelper(200) != 0
triggerall = stateno = 253 && time > 20 && helper(200), movecontact

;Combo 6
[State -1, Combo 6.4]
type = ChangeState
value = 253
;PLAYER
trigger1 = command = "holddown" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 252 && time > 6 && movecontact) || (prevstateno = 252 && stateno = [196,199])

;Combo 6
[State -1, Combo 6.3]
type = ChangeState
value = 252
;PLAYER
trigger1 = command = "holddown" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = stateno = 251 && time > 3 && movecontact

;Combo 6
[State -1, Combo 6.2]
type = ChangeState
value = 251
;PLAYER
trigger1 = command = "holddown" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = stateno = 250 && time > 3 && movecontact

;Combo 5
[State -1, Combo 5.6]
type = ChangeState
value = 245
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (numhelper(300) = 0 && prevstateno = 303 && stateno = [196,199])

;Combo 5
[State -1, Combo 5.5]
type = ChangeState
value = 303
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,70]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = numhelper(300) = 0
triggerall = numhelper(200) != 0
triggerall = (stateno = 243 && time > 13 && helper(200), movecontact) || (prevstateno = 243 && stateno = [196,199])

;Combo 5
[State -1, Combo 5.4]
type = ChangeState
value = 243
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 242 && time > 6 && movecontact) || (prevstateno = 242 && stateno = [196,199])

;Combo 5
[State -1, Combo 5.3]
type = ChangeState
value = 242
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 241 && time > 6 && movecontact) || (prevstateno = 241 && stateno = [196,199])

;Combo 5
[State -1, Combo 5.2]
type = ChangeState
value = 241
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = stateno = 240 && time > 3 && movecontact

;Combo 4
[State -1, Combo 4.5]
type = ChangeState
value = 234
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 233 && time > 3 && movecontact) || (prevstateno = 233 && stateno = [196,199])

;Combo 4
[State -1, Combo 4.4]
type = ChangeState
value = 233
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 232 && time > 3 && movecontact) || (prevstateno = 232 && stateno = [196,199])

;Combo 4
[State -1, Combo 4.3]
type = ChangeState
value = 232
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 231 && time > 3 && movecontact) || (prevstateno = 231 && stateno = [196,199])

;Combo 4
[State -1, Combo 4.2]
type = ChangeState
value = 231
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = stateno = 230 && time > 3 && movecontact

;Combo 3
[State -1, Combo 3.6]
type = ChangeState
value = 225
;PLAYER
trigger1 = command = "holdfwd" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-100,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (numhelper(300) = 0 && prevstateno = 301 && stateno = [196,199])

;Combo 3
[State -1, Combo 3.5]
type = ChangeState
value = 301
;PLAYER
trigger1 = command = "holdfwd" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,70]
trigger2 = p2dist y = [-70,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = numhelper(300) = 0
triggerall = (stateno = 223 && time > 3 && movecontact) || (prevstateno = 223 && stateno = [196,199])

;Combo 3
[State -1, Combo 3.4]
type = ChangeState
value = 223
;PLAYER
trigger1 = command = "holdfwd" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 222 && time > 6 && movecontact) || (prevstateno = 222 && stateno = [196,199])

;Combo 3
[State -1, Combo 3.3]
type = ChangeState
value = 222
;PLAYER
trigger1 = command = "holdfwd" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 221 && time > 6 && movecontact) || (prevstateno = 221 && stateno = [196,199])

;Combo 3
[State -1, Combo 3.2]
type = ChangeState
value = 221
;PLAYER
trigger1 = command = "holdfwd" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 220 && time > 3 && movecontact) || (prevstateno = 220 && stateno = [196,199])

;Combo 2
[State -1, Combo 2.6]
type = ChangeState
value = 302
;PLAYER
trigger1 = command = "holddown" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,100]
trigger2 = p2dist y = [-100,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = numhelper(300) = 0
triggerall = numhelper(200) != 0
triggerall = (stateno = 214 && time > 14 && helper(200), movecontact) || (prevstateno = 214 && stateno = [196,199])

;Combo 2
[State -1, Combo 2.5]
type = ChangeState
value = 214
;PLAYER
trigger1 = command = "holddown" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,70]
trigger2 = p2dist y = [-70,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 213 && time > 6 && movecontact) || (prevstateno = 213 && stateno = [196,199])

;Combo 2
[State -1, Combo 2.4]
type = ChangeState
value = 213
;PLAYER
trigger1 = command = "holddown" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 212 && time > 6 && movecontact) || (prevstateno = 212 && stateno = [196,199])

;Combo 2
[State -1, Combo 2.3]
type = ChangeState
value = 212
;PLAYER
trigger1 = command = "holddown" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = stateno = 211 && time > 3 && movecontact

;Combo 2
[State -1, Combo 2.2]
type = ChangeState
value = 211
;PLAYER
trigger1 = command = "holddown" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 210 && time > 3 && movecontact) || (prevstateno = 210 && stateno = [196,199])

;Combo 1
[State -1, Combo 1.6]
type = ChangeState
value = 205
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 204 && time > 3 && movecontact) || (prevstateno = 204 && stateno = [196,199])

;Combo 1
[State -1, Combo 1.5]
type = ChangeState
value = 204
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 203 && time > 6 && movecontact) || (prevstateno = 203 && stateno = [196,199])

;Combo 1
[State -1, Combo 1.4]
type = ChangeState
value = 203
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 202 && time > 3 && movecontact) || (prevstateno = 202 && stateno = [196,199])

;Combo 1
[State -1, Combo 1.3]
type = ChangeState
value = 202
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (stateno = 201 && time > 3 && movecontact) || (prevstateno = 201 && stateno = [196,199])

;Combo 1
[State -1, Combo 1.2]
type = ChangeState
value = 201
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,50]
trigger2 = p2dist y = [-50,50]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = stateno = 200 && time > 3 && movecontact

;Sairento Kiringu
[State -1, Sairento Kiringu]
type = ChangeState
value = 690
;PLAYER
trigger1 = command = "holdback" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = random = [390,491+ceil(var(49)/5)]
trigger2 = var(50) != 0 && p2movetype = A && inguarddist
trigger1 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299])) 
triggerall = statetype != A
triggerall = power >= 500
triggerall = var(5) = 0
triggerall = cond((enemy, name != "Kakashi" && enemy, name != "Kisame"), numhelper(698) = 1, enemy, numhelper(698) = 1 || numhelper(698) = 1)

;Rzut
[State -1, Rzut]
type = ChangeState
value = 300
;PLAYER
trigger1 = command = "holdback" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,130]
trigger2 = p2dist y = [-80,80]
trigger2 = random = [390,491+ceil(var(49)/5)]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -10)
trigger1 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]))
triggerall = statetype != A
triggerall = var(5) != 0 || cond((enemy, name != "Kakashi" && enemy, name != "Kisame"), numhelper(698) = 0, enemy, numhelper(698) = 0 && numhelper(698) = 0)

;Podrzucenie
[State -1, Podrzucenie]
type = ChangeState
value = 280
;PLAYER
trigger1 = command = "holdback" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,70]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [240,341+ceil(var(49)/5)]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -7 || enemynear,stateno = [120,160])
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (ctrl || ailevel && (stateno = [120,140])) || (var(48) >= 100 && var(47) = 1 && (stateno = [196,299]))
triggerall = statetype != A
triggerall = stateno != [280,289]

;Combo 8
[State -1, Combo 8]
type = ChangeState
value = 270
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,60]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [250,601+ceil(var(49)*2)]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -4)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = statetype = A && (ctrl || ailevel && (stateno = [120,140]))
triggerall = stateno != [270,279]
triggerall = prevstateno != 270

;Combo 7
[State -1, Combo 7]
type = ChangeState
value = 260
;PLAYER
trigger1 = command = "holdfwd" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,90]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [350,551+ceil(var(49)*0.8)]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -7)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (statetype != A && (ctrl || ailevel && (stateno = [120,140]))) || stateno = 100
triggerall = stateno != [260,269]

;Combo 6
[State -1, Combo 6]
type = ChangeState
value = 250
;PLAYER
trigger1 = command = "holddown" && command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,30]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [300,501+ceil(var(49))]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -4)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = statetype != A && (ctrl || ailevel && (stateno = [120,140]))
triggerall = stateno != [250,259]

;Combo 5
[State -1, Combo 5]
type = ChangeState
value = 240
;PLAYER
trigger1 = command = "b"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,25]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [250,451+ceil(var(49))]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -4)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = statetype = S && (ctrl || ailevel && (stateno = [120,140]))
triggerall = stateno != [240,249]

;Combo 4
[State -1, Combo 4]
type = ChangeState
value = 230
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,15]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [100,401+ceil(var(49)*2)]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -4)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = statetype = A && (ctrl || ailevel && (stateno = [120,140]))
triggerall = stateno != [230,239]
triggerall = prevstateno != 230

;Combo 3
[State -1, Combo 3]
type = ChangeState
value = 220
;PLAYER
trigger1 = command = "holdfwd" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,80]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [200,351+ceil(var(49)*0.8)]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -4)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = (statetype != A && (ctrl || ailevel && (stateno = [120,140]))) || stateno = 100
triggerall = stateno != [220,229]

;Combo 2
[State -1, Combo 2]
type = ChangeState
value = 210
;PLAYER
trigger1 = command = "holddown" && command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,40]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [150,301+ceil(var(49))]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -4)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = statetype != A && (ctrl || ailevel && (stateno = [120,140]))
triggerall = stateno != [210,219]

;Combo 1
[State -1, Combo 1]
type = ChangeState
value = 200
;PLAYER
trigger1 = command = "a"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [-15,25]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [100,251+ceil(var(49))]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,animtime <= -4)
trigger2 = p2stateno != [5110,5150]
;WARUNEK
triggerall = statetype = S && (ctrl || ailevel && (stateno = [120,140]))
triggerall = stateno != [200,209]

;Kunai Air
[State -1, Kunai Air]
type = ChangeState
value = 70655
;PLAYER
trigger1 = command = "x"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [100,650]
trigger2 = p2dist y > 0
trigger2 = abs((p2bodydist x/((p2dist y+1)+cond(p2statetype=C,0,-10)))*10) = [15,25]
trigger2 = random = [60,160+ceil(var(49)/5)]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
trigger2 = numhelper(70700) < 2
;WARUNEK
triggerall = var(20) <= 19
triggerall = statetype = A && (ctrl || ailevel && (stateno = [120,140]))

;Kunai
[State -1, Kunai]
type = ChangeState
value = 70650
;PLAYER
trigger1 = command = "x"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = p2bodydist x = [100,650]
trigger2 = p2dist y = [-50,50]
trigger2 = random = [60,160+ceil(var(49)/5)*cond(p2stateno=70650,5,1)]
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2stateno != [5110,5150]
trigger2 = numhelper(70700) < 2
;WARUNEK
triggerall = var(20) <= 19
triggerall = statetype = S && (ctrl || ailevel && (stateno = [120,140]))

;Chakra Dash
[State -1, Chakra Dash]
type = ChangeState
value = cond(statetype != A, cond(p2dist y < -20, 85, 80), 85)
;PLAYER
trigger1 = command = "FF" || command = "DD" || command = "UU"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = random = [50,50+ceil((var(49)/5+var(48)/10) * cond((abs(p2bodydist x))/50 < 5, (abs(p2bodydist x))/50, 5))]
;WARUNEK
triggerall = var(47) = 1 && (stateno = [196,299]) && (stateno = 205 || stateno = 213 || stateno = 222 || stateno = 219 || stateno = 229 || stateno = 234 || stateno = 245 || stateno = 252 || stateno = 261 || stateno = 259 || stateno = 269 || stateno = 274)
triggerall = p2bodydist x = [20,150]
triggerall = p2dist y = [-150,150]
triggerall = prevstateno != 60
triggerall = prevstateno != [80,89]
triggerall = power >= 100
triggerall = var(55) = 0

;Dash Back
[State -1, Dash Back]
type = ChangeState
value = cond(statetype = A, 61, 66)
;PLAYER
trigger1 = command = "BB"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = var(50) != 0
trigger2 = p2bodydist x > 50
trigger2 = random = [20,20+ceil(var(49)/5 + cond(p2movetype = A,var(49)/2,0))]
;AI ODSKOK P2LEZY
trigger3 = var(50) != 0
trigger3 = p2bodydist x = [-15,100]
trigger3 = p2stateno = [5100,5149]
trigger3 = random = [20,20+ceil(var(49)/2.5)]
trigger3 = p2stateno != 5150
;WARUNEK
triggerall = statetype = A && (ctrl || ailevel && (stateno = [120,140]))
triggerall = (statetype = A && prevstateno = 40) || 1
triggerall = prevstateno != [60,69]
triggerall = prevstateno != 45
triggerall = backedgedist > 20
triggerall = power >= 50
triggerall = var(55) = 0

;Dash Fwd
[State -1, Dash Fwd]
type = ChangeState
value = cond(statetype = A, 60, 65)
;PLAYER
trigger1 = command = "FF"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2bodydist x > 50
trigger2 = random = [10,40+ceil(var(49)/5 * cond((abs(p2bodydist x))/50 < 5, (abs(p2bodydist x))/50, 5))]
;WARUNEK
triggerall = (ctrl || ailevel && (stateno = [120,140])) || stateno = 20 || stateno = 100
triggerall = (statetype = A && prevstateno = 40) || 1
triggerall = prevstateno != [60,69]
triggerall = prevstateno != 45
triggerall = frontedgedist > 40
triggerall = var(55) = 0

;Jump Back
[State -1, Jump Back]
type = ChangeState
value = 105
;PLAYER
trigger1 = command = "BB"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger2 = p2bodydist x = [-15,50]
trigger2 = random = [20,20+ceil(var(49)/5 + cond(p2movetype = A,var(49)/2,0))]
;AI ODSKOK P2LEZY
trigger3 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger3 = p2bodydist x = [-15,100]
trigger3 = p2stateno = [5100,5149]
trigger3 = random = [20,20+ceil(var(49)/2.5)]
trigger3 = prevstateno != 106
trigger3 = p2stateno != 5150
;WARUNEK
triggerall = (statetype = S && (ctrl || ailevel && (stateno = [120,140]))) || stateno = 20
triggerall = backedgedist > 20
triggerall = var(55) = 0

;Air Jump
[State -1, Air Jump]
type = ChangeState
value = 45
;AI RANDOM
trigger1 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger1 = p2dist y < -30 && enemynear, vel y < 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist x < 100
trigger1 = random = [10,10+ceil(var(49)/25-cond(p2bodydist y<0,(p2bodydist y)/50, 0))]
;WARUNEK
triggerall = statetype = A && (ctrl || ailevel && (stateno = [120,140]))
triggerall = prevstateno = 40

;Jump
[State -1, Jumping]
type = ChangeState
value = 40
triggerall = var(50) = 1 && RoundState = 2
triggerall = Random <= (ailevel * 125) && !ishelper
triggerall = statetype != A && enemynear,statetype != L && P2Dist X >= 0
triggerall = (ctrl || ailevel && (stateno = [120,140]) || stateno = 100) && enemynear,movetype != H && enemynear,stateno != [5050,5110]
trigger1 = !inguarddist && enemynear,movetype != A
trigger1 = p2bodydist x >= 120 && p2dist y = [-90,10]
trigger1 = random >= 700
trigger2 = P2BodyDist X >= 150
trigger2 = enemynear(var(55)),numproj > 0 && (inguarddist || Random >= 900)

;Walk
[State -1, Walk]
type = ChangeState
value = 20
;AI RANDOM
trigger1 = var(50) != 0 && enemynear,statetype != L && (!inguarddist || random >= 900 && enemynear,ctrl = 0 && enemynear,stateno > 199 && enemynear,movetype != H && enemynear,animtime <= -10)
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist x < 100
trigger1 = random = [10,10+ceil(var(49)/5 * cond((abs(p2bodydist x))/50 < 3, 2+(abs(p2bodydist x))/50, 5))]
;WARUNEK
triggerall = statetype = S && (ctrl || ailevel && (stateno = [120,140]))
triggerall = stateno = [0,199]
triggerall = stateno != 20
triggerall = prevstateno != 20

;Guard
[State -1, Guard]
type = ChangeState
value = 120
trigger1 = var(50) = 1
trigger1 = ctrl || stateno = 100 || stateno = 110 || stateno = 111
trigger1 = inguarddist

;Chakra
[State -1, Chakra]
type = ChangeState
value = 70500
;PLAYER
trigger1 = command = "hold_c"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = var(50) != 0 && power < 4000 && (!inguarddist && (enemynear,movetype != A && enemynear,movetype != H || p2bodydist x > 200))
trigger2 = p2bodydist x > 100
trigger2 = random = [0,500+ceil( ( (ceil(var(49)/5)+cond((abs(p2bodydist x-100))/100<5,(abs(p2bodydist x-100))/100,5)+cond(p2stateno=70500,5,0)) *ceil((4000-power)/100)) /25)]
;WARUNEK
triggerall = (ctrl || ailevel && (stateno = [120,140])) || (var(47) = 1 && (stateno = [196,299]) && (stateno = 205 || stateno = 213 || stateno = 222 || stateno = 219 || stateno = 229 || stateno = 234 || stateno = 245 || stateno = 252 || stateno = 261 || stateno = 259 || stateno = 269 || stateno = 274))

;Kawarimi
[State -1, Kawarimi]
type = HitOverride
;PLAYER
trigger1 = command = "x"
trigger1 = var(50) = 0
;AI RANDOM
trigger2 = random = [0,10+floor(var(49)/10 + (3-helper(70000), var(10)/150))]
trigger2 = var(50) != 0
triggerall = !ishelper
triggerall = numhelper(70000) != 0
triggerall = helper(70000), var(10) <= 400
triggerall = prevstateno != 70800
time = 30
attr = SCA,NA,SA,HA,NP,SP,HP,ST
stateno = 70800

