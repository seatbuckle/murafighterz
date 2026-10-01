;-| Button Remapping |-----------------------------------------------------
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

[Command]
name = "Super 1"
command = ~D, F, D, F, x
time = 30
[Command]
name = "Super 1"
command = ~D, F, D, F, y
time = 30

[Command]
name = "Super 2"
command = ~D, F, D, F, a
time = 30
[Command]
name = "Super 2"
command = ~D, F, D, F, b
time = 30

[Command]
name = "Super 3"
command = ~D, F, D, F, z
time = 30

[Command]
name = "Super 4"
command = ~D, B, D, B, z
time = 30

[Command]
name = "Super 5"
command = ~D, F, D, F, c
time = 30


;-| super jump |-----------------------------------------------------------


[command]
name = "abc"
command = a+b+c
time = 8

;-| Special Motions |------------------------------------------------------

[Command]
name = "Special 3"
command = ~F, D, DF, x
time = 30
[Command]
name = "Special 3"
command = ~F, D, DF, y
time = 30

[Command]
name = "Special 6"
command = ~B, D, DF, x
time = 30
[Command]
name = "Special 6"
command = ~B, D, DF, y
time = 30

[Command]
name = "Special 5"
command = ~D, DF, F, x
time = 30
[Command]
name = "Special 5"
command = ~D, DF, F, y
time = 30

[Command]
name = "Special 7"
command = ~D, DB, B, x
time = 30
[Command]
name = "Special 7"
command = ~D, DB, B, y
time = 30

;-------------------------------------------------------------

[Command]
name = "Special 4"
command = ~F, D, DF, a
time = 30
[Command]
name = "Special 4"
command = ~F, D, DF, b
time = 30

[Command]
name = "Special 12"
command = ~D, DB, B, a
time = 30
[Command]
name = "Special 12"
command = ~D, DB, B, b
time = 30

[Command]
name = "Special 10"
command = ~D, DF, F, a
time = 30
[Command]
name = "Special 10"
command = ~D, DF, F, b
time = 30

;-------------------------------------------------------------

[Command]
name = "Special 12 Air"
command = ~D, DB, B, a
time = 30
[Command]
name = "Special 12 Air"
command = ~D, DB, B, b
time = 30

[Command];air
name = "Special 8"
command = ~D, DF, F, x
time = 30
[Command]
name = "Special 8"
command = ~D, DF, F, y
time = 30

[Command]
name = "Special 10 Air"
command = ~D, DF, F, a
time = 30
[Command]
name = "Special 10 Air"
command = ~D, DF, F, b
time = 30

;-------------------------------------------------------------

[Command]
name = "Special 1"
command = x, x, x
time = 30
[Command]
name = "Special 1"
command = y, y, y
time = 30

[Command]
name = "Special 9"
command = a, a, a
time = 30
[Command]
name = "Special 9"
command = b, b, b
time = 30


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

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
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
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
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;---------------------------------------------------------------------------
[Statedef -1]


;---------------------------------------------------------------------------

[State -1, Super 5]
type = ChangeState
value = 3100
triggerall = command = "Super 5"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Super 4]
type = ChangeState
value = 3060
triggerall = command = "Super 4"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Super 3]
type = ChangeState
value = 3040
triggerall = command = "Super 3"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Super 2]
type = ChangeState
value = 3020
triggerall = command = "Super 2"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Super 1]
type = ChangeState
value = 3000
triggerall = command = "Super 1"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------------------------
;-------------------------------------------------------------


[State -1, Special 3]
type = ChangeState
value = 1020
triggerall = command = "Special 3"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Special 4]
type = ChangeState
value = 1030
triggerall = command = "Special 4"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Special 6]
type = ChangeState
value = 1050
triggerall = command = "Special 6"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;-------------------------------------------------------------

[State -1, Special 7]
type = ChangeState
value = 1060
triggerall = command = "Special 7"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Special 12]
type = ChangeState
value = 1110
triggerall = command = "Special 12"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Special 12 Air]
type = ChangeState
value = 2110
triggerall = command = "Special 12 Air"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

[State -1, Special 10 Air]
type = ChangeState
value = 2090
triggerall = command = "Special 10 Air"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

[State -1, Special 10]
type = ChangeState
value = 1090
triggerall = command = "Special 10"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Special 9]
type = ChangeState
value = 1080
triggerall = command = "Special 9"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Special 8]
type = ChangeState
value = 1070
triggerall = command = "Special 8"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

[State -1, Special 5]
type = ChangeState
value = 1040
triggerall = command = "Special 5"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Special 1]
type = ChangeState
value = 1000
triggerall = command = "Special 1"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------------------------
;-------------------------------------------------------------

[State -1, Throw Forward]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Throw Backward]
type = ChangeState
value = 900
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = ctrl
triggerall = stateno != [100,101]
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;-------------------------------------------------------------

[State -1, Run Forward]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Backward]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;-------------------------------------------------------------
;--------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;-------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;-------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 415
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;-------------------------------------------------------------

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 420 && movecontact

[State -1, Crouching Strong Kick]
type = ChangeState
value = 445
triggerAll = command = "holdfwd"
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 420 && movecontact
trigger5 = stateno = 440 && movecontact

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && movecontact
trigger4 = stateno = 420 && movecontact
trigger5 = stateno = 430 && movecontact

;-------------------------------------------------------------

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = vel X != 0
triggerall = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "a"
triggerall = vel X = 0
triggerall = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------------------------------------------------

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;-------------------------------------------------------------

[State -1, Roll]
type = ChangeState
value = 105
triggerall = command = "holdback"
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Roll]
type = ChangeState
value = 710
triggerall = (command = "x" && command = "a") || command = "z"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------------------------

;CD attack
[State -1]
type = ChangeState
value = 510
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact