; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.













command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[command]
name = "qcbsuper"
command = ~D,DB,B,~z
time = 15

[command]
name = "dpsuper"
command = ~F,D,DF,~z
time = 15

[command]
name = "qcfsuper"
command = ~D,DF,F,~z
time = 15

[command]
name = "qcbsuper"
command = ~D,DB,B,z
time = 15

[command]
name = "dpsuper"
command = ~F,D,DF,z
time = 15

[command]
name = "qcfsuper"
command = ~D,DF,F,z
time = 15

[command]
name = "qcbsuper"
command = ~D,B,~z
time = 15

[command]
name = "dpsuper"
command = ~F,D,F,~z
time = 15

[command]
name = "qcfsuper"
command = ~D,F,~z
time = 15

[command]
name = "qcbsuper"
command = ~D,B,z
time = 15

[command]
name = "dpsuper"
command = ~F,D,F,z
time = 15

[command]
name = "qcfsuper"
command = ~D,F,z
time = 15
;-| Special Motions |------------------------------------------------------

[command]
name = "qcfk"
command = ~D,F,~b
time = 15

[command]
name = "qcfk2"
command = ~D,F,~a
time = 15

[command]
name = "qcfk"
command = ~D,F,b
time = 15

[command]
name = "qcfk2"
command = ~D,F,a
time = 15

[command]
name = "qcbp"
command = ~D,B,~y
time = 15

[command]
name = "qcbp2"
command = ~D,B,~x
time = 15

[command]
name = "qcbp"
command = ~D,B,y
time = 15

[command]
name = "qcbp2"
command = ~D,B,x
time = 15

[command]
name = "exqcbk"
command = ~D,B,b+a
time = 15

[command]
name = "exqcbk"
command = ~D,DB,B,b+a
time = 15

[command]
name = "qcbk"
command = ~D,B,~b
time = 15

[command]
name = "qcbk2"
command = ~D,B,~a
time = 15

[command]
name = "qcbk"
command = ~D,B,b
time = 15

[command]
name = "qcbk2"
command = ~D,B,a
time = 15

[command]
name = "exdpk"
command = ~F,D,F,b+a
time = 15

[command]
name = "exdpk"
command = ~F,D,DF,b+a
time = 15

[command]
name = "dpk"
command = ~F,D,F,~b
time = 15

[command]
name = "dpk2"
command = ~F,D,F,~a
time = 15

[command]
name = "dpk"
command = ~F,D,F,b
time = 15

[command]
name = "dpk2"
command = ~F,D,F,a
time = 15

[command]
name = "exdp"
command = ~F,D,F,y+x
time = 15

[command]
name = "exdp"
command = ~F,D,DF,y+x
time = 15

[command]
name = "dp"
command = ~F,D,F,~y
time = 15

[command]
name = "dp2"
command = ~F,D,F,~x
time = 15

[command]
name = "dp"
command = ~F,D,F,y
time = 15

[command]
name = "dp2"
command = ~F,D,F,x
time = 15

[command]
name = "qcfp"
command = ~D,F,~y
time = 15

[command]
name = "qcfp2"
command = ~D,F,~x
time = 15

[command]
name = "qcfp"
command = ~D,F,y
time = 15

[command]
name = "qcfp2"
command = ~D,F,x
time = 15

[command]
name = "exqcfk"
command = ~D,F,b+a
time = 15

[command]
name = "exqcfk"
command = ~D,DF,F,b+a
time = 15

[command]
name = "qcfk"
command = ~D,DF,F,~b
time = 15

[command]
name = "qcfk2"
command = ~D,DF,F,~a
time = 15

[command]
name = "qcfk"
command = ~D,DF,F,b
time = 15

[command]
name = "qcfk2"
command = ~D,DF,F,a
time = 15

[command]
name = "exqcfp"
command = ~D,DF,F,y+x
time = 15

[command]
name = "exqcfp"
command = ~D,F,y+x
time = 15

[command]
name = "exqcbp"
command = ~D,DB,B,y+x
time = 15

[command]
name = "exqcbp"
command = ~D,B,y+x
time = 15

[command]
name = "qcbp"
command = ~D,DB,B,~y
time = 15

[command]
name = "qcbp2"
command = ~D,DB,B,~x
time = 15

[command]
name = "qcbp"
command = ~D,DB,B,y
time = 15

[command]
name = "qcbp2"
command = ~D,DB,B,x
time = 15

[command]
name = "qcbk"
command = ~D,DB,B,~b
time = 15

[command]
name = "qcbk2"
command = ~D,DB,B,~a
time = 15

[command]
name = "qcbk"
command = ~D,DB,B,b
time = 15

[command]
name = "qcbk2"
command = ~D,DB,B,a
time = 15

[command]
name = "dpk"
command = ~F,D,DF,~b
time = 15

[command]
name = "dpk2"
command = ~F,D,DF,~a
time = 15

[command]
name = "dpk"
command = ~F,D,DF,b
time = 15

[command]
name = "dpk2"
command = ~F,D,DF,a
time = 15

[command]
name = "dp"
command = ~F,D,DF,~y
time = 15

[command]
name = "dp2"
command = ~F,D,DF,~x
time = 15

[command]
name = "dp"
command = ~F,D,DF,y
time = 15

[command]
name = "dp2"
command = ~F,D,DF,x
time = 15

[command]
name = "qcfp"
command = ~D,DF,F,~y
time = 15

[command]
name = "qcfp2"
command = ~D,DF,F,~x
time = 15

[command]
name = "qcfp"
command = ~D,DF,F,y
time = 15

[command]
name = "qcfp2"
command = ~D,DF,F,x
time = 15
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
name = "recovery" ;Required (do not remove)
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
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
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
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;devogun
[State -1, AI devogun]
type = ChangeState
value = 3004
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<350
Triggerall=random<var(50)*0.4
Triggerall=AILevel>=6
Triggerall=P2StateType!=L
triggerall = power >= 3000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10= stateno = 420 && movecontact
trigger10 = stateno = 1400 && movecontact
trigger11 = stateno = 1410 && movecontact

;bobombsuper
[State -1, AI bobombsuper]
type = ChangeState
value = 3200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<350
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType!=L
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl

;pipesuper
[State -1, AI pipesuper]
type = ChangeState
value = 3100
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=L
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 1400 && movecontact
trigger11 = stateno = 1410 && movecontact

;exstomp
[State -1, AI exstomp]
type = ChangeState
value = 1302
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<200
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=4
Triggerall=P2StateType!=L
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;stomp
[State -1, AI stomp]
type = ChangeState
value = 1300
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)= [100,150]
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=2
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;stomp2
[State -1, AI stomp2]
type = ChangeState
value = 1301
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X) = [200,250]
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=2
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;bobomb
[State -1, AI bobomb]
type = ChangeState
value = 1200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<450
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = numhelper(1210) < 2
triggerall = var(37) >=3
trigger1 = (statetype != A) && ctrl

;bobomb2
;[State -1, bobomb2]
;type = ChangeState
;value = 1201
;triggerall = command = "qcbk2"
;triggerall = numhelper(1210) < 2
;trigger1 = (statetype != A) && ctrl

;exfireball
[State -1, AI exfireball]
type = ChangeState
value = 1120
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<450
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=L
triggerall = power >= 500
triggerall = numproj = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;fireball
[State -1, AI fireball]
type = ChangeState
value = 1110
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<450
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=3
Triggerall=P2StateType!=L
triggerall = numproj = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;fireball2
[State -1, AI fireball2]
type = ChangeState
value = 1100
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<450
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=2
Triggerall=P2StateType!=L
triggerall = numproj = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;EX Dino Flatten
[State -1, AI EX Dino Flatten]
type = ChangeState
value = 1420
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=4
Triggerall=P2StateType!=L
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;Dino Flatten
[State -1, AI Dino Flatten]
type = ChangeState
value = 1410
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=2
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;Dino Flatten
[State -1, AI Dino Flatten]
type = ChangeState
value = 1400
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=2
Triggerall=P2StateType!=L
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;extools
[State -1, AI extools]
type = ChangeState
value = 1020
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150 && p2dist Y < 0
Triggerall=random<var(50)*0.4
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
triggerall = numhelper(1004) = 0
triggerall = numhelper(1005) = 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;tools
[State -1, AI tools]
type = ChangeState
value = 1000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<250
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=L
triggerall = helper(1001), stateno != 1001
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;tools2
[State -1, AI tools2]
type = ChangeState
value = 1010
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=2
Triggerall=P2StateType!=L
triggerall = numhelper(1001) = 0
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;launch
[State -1, AI upfwd]
Type = changestate
value = 40000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
trigger1 = (StateNo = 410)
trigger1 = movehit

;throw
[state -1, AI throw]
Type = changestate
value = 800
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<20
Triggerall=random<var(50)*0.4
Triggerall=AILevel>=6
Triggerall=P2StateType!=L
trigger1 = (statetype != a) && ctrl

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, AI Taunt]
type = ChangeState
value = 195
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)>350
Triggerall=random<var(50)*0.1
Triggerall=AILevel>=6
Triggerall=P2StateType!=L
triggerall = life >= 500 && p2life <= 100
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Stomp
[State -1, AI Stand Stomp]
type = ChangeState
value = 235
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<40
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=5
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1

;---------------------------------------------------------------------------
;Stand OH
[State -1, AI Stand Overhead]
type = ChangeState
value = 211
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
triggerall = p2statetype = C
Triggerall=random<var(50)*0.4
Triggerall=AILevel>=7
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<30
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && time >= 6

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, AI Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<40
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, AI Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<40
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<30
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 400 && time >= 6

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, AI Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<40
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=3
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<40
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 430 && time >= 8

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, AI Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<30
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*0.2
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<30
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, AI Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*0.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=L
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------

;devogun
[State -1, devogun]
type = ChangeState
value = 3004
triggerall = command = "dpsuper"
triggerall = power >= 3000
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10= stateno = 420 && movecontact
trigger10 = stateno = 1400 && movecontact
trigger11 = stateno = 1410 && movecontact

;bobombsuper
[State -1, bobombsuper]
type = ChangeState
value = 3200
triggerall = command = "qcbsuper"
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])

;pipesuper
[State -1, pipesuper]
type = ChangeState
value = 3100
triggerall = command = "qcfsuper"
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 1400 && movecontact
trigger11 = stateno = 1410 && movecontact

;exstomp
[State -1, exstomp]
type = ChangeState
value = 1302
triggerall = command = "exdpk"
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;stomp
[State -1, stomp]
type = ChangeState
value = 1300
triggerall = command = "dpk"
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;stomp2
[State -1, stomp2]
type = ChangeState
value = 1301
triggerall = command = "dpk2"
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;bobomb
[State -1, bobomb]
type = ChangeState
value = 1200
triggerall = command = "z"
triggerall = numhelper(1210) < 2
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])

;bobomb2
;[State -1, bobomb2]
;type = ChangeState
;value = 1201
;triggerall = command = "qcbk2"
;triggerall = numhelper(1210) < 2
;trigger1 = (statetype != A) && ctrl

;exfireball
[State -1, exfireball]
type = ChangeState
value = 1120
triggerall = command = "exqcfp"
triggerall = power >= 500
triggerall = numproj = 0
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;fireball
[State -1, fireball]
type = ChangeState
value = 1110
triggerall = command = "qcfp2"
triggerall = numproj = 0
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;fireball2
[State -1, fireball2]
type = ChangeState
value = 1100
triggerall = command = "qcfp"
triggerall = numproj = 0
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;EX Dino Flatten
[State -1, EX Dino Flatten]
type = ChangeState
value = 1420
triggerall = command = "exqcfk"
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;Dino Flatten
[State -1, Dino Flatten]
type = ChangeState
value = 1410
triggerall = command = "qcfk2"
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;Dino Flatten
[State -1, Dino Flatten]
type = ChangeState
value = 1400
triggerall = command = "qcfk"
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;extools
[State -1, extools]
type = ChangeState
value = 1020
triggerall = command = "exqcbp"
triggerall = numhelper(1004) = 0
triggerall = numhelper(1005) = 0
triggerall = power >= 500
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;tools
[State -1, tools]
type = ChangeState
value = 1000
triggerall = command = "qcbp"
triggerall = var(55) = 0
trigger1 = (statetype != A) && ctrl || stateno = 52 && time > 1 || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;tools2
[State -1, tools2]
type = ChangeState
value = 1010
triggerall = command = "qcbp2"
triggerall = var(55) = 0
trigger1 = (statetype != A) && ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;launch
[State -1, upfwd]
Type = changestate
value = 40000
triggerall = command = "upfwd" || command = "up"
triggerall = var(59) = 0
trigger1 = (StateNo = 410)
trigger1 = movecontact

;throw
[state -1, throw]
Type = changestate
value = 800
triggerall = command = "c"
trigger1 = (statetype != a) && ctrl || (stateno=[100,101])

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
;[State -1, Air Dash]
;type = ChangeState
;value = 110
;triggerall = pos y <= -35
;trigger1 = command = "FF"
;trigger1 = statetype = a
;trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Stomp
[State -1, Stand Stomp]
type = ChangeState
value = 235
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1

;---------------------------------------------------------------------------
;Stand OH
[State -1, Stand Overhead]
type = ChangeState
value = 211
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && time >= 6

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 205 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 400 && time >= 6

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 430 && time >= 8

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101]) || stateno = 52 && time > 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 205 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
