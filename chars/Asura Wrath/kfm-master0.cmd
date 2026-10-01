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

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]; *NEW*
name = "Sacrifice"
command = ~D, DB, B, DB, D, DF, F, a
time = 30

[Command]; *NEW*
name = "Sacrifice"
command = ~D, DB, B, DB, D, DF, F, b
time = 30

[Command]; *NEW*
name = "Sacrifice"
command = ~D, DB, B, DB, D, DF, F, c
time = 30

[Command]; *NEW*
name = "Multi"
command = ~D, DB, B, DB, D, DF, F, x
time = 40

[Command]; *NEW*
name = "Multi"
command = ~D, DB, B, DB, D, DF, F, y
time = 40

[Command]; *NEW*
name = "Multi"
command = ~D, DB, B, DB, D, DF, F, z
time = 40

[Command]; *NEW*
name = "DP_2p"
command = ~F, D, DF, x+y

[Command]; *NEW*
name = "DP_2p"
command = ~F, D, DF, x+z

[Command]; *NEW*
name = "DP_2kl"
command = ~F, D, DF, a+b
time = 30

[Command]; *NEW*
name = "DP_2km"
command = ~F, D, DF, a+c
time = 30

[Command]; *NEW*
name = "DP_2kh"
command = ~F, D, DF, b+c
time = 30

[Command]; *NEW*
name = "DPi_2kl"
command = ~B, D, DB, a+b
time = 30

[Command]; *NEW*
name = "DPi_2km"
command = ~B, D, DB, a+c
time = 30

[Command]; *NEW*
name = "DPi_2kh"
command = ~B, D, DB, b+c
time = 30

[Command]; *NEW*
name = "DPi_2p"
command = ~B, D, DB, y+z

[Command]; *NEW*
name = "DPi_2p"
command = ~B, D, DB, x+y

[Command]; *NEW*
name = "DPi_2p"
command = ~B, D, DB, x+z

[Command]; *NEW*
name = "DP_2p"
command = ~F, D, DF, y+z

[Command]; *NEW*
name = "DPi_a"
command = ~B, D, DB, a

[Command]; *NEW*
name = "DPi_b"
command = ~B, D, DB, b

[Command]; *NEW*
name = "DPi_c"
command = ~B, D, DB, c

[Command]; *NEW*
name = "DPi_x"
command = ~B, D, DB, x

[Command]; *NEW*
name = "DPi_y"
command = ~B, D, DB, y

[Command]; *NEW*
name = "DPi_z"
command = ~B, D, DB, z

[Command]; *NEW*
name = "QCB_x"
command = ~D, DB, B, x
time = 20

[Command]; *NEW*
name = "QCB_y"
command = ~D, DB, B, y
time = 20

[Command]; *NEW*
name = "QCB_z"
command = ~D, DB, B, z
time = 20

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]; *NEW*
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]; *NEW*
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, z;~F, D, DF, F, D, DF, z
time = 20

;-| Special Motions |------------------------------------------------------

[Command]; *NEW*
name = "QCBF"
command = ~D, DB,B, F, x

[Command]; *NEW*
name = "QCBF"
command = ~D, DB,B, F, y

[Command]; *NEW*
name = "QCBF"
command = ~D, DB,B, F, z

[Command]; *NEW*
name = "FB"
command = ~F, D, DF, z

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command] ;*NEW*
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command] ; *NEW*
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command] ;*NEW*
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command] ;*NEW*
name = "QCB_c"
command = ~D, DB, B, c

[Command] ; *NEW*
name = "FF_c"
command = F, F, c

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command] ;*NEW*
name = "PCb"
command = /b
time = 1

[Command] ;*NEW*
name = "PCy"
command = /y
time = 1

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
name = "start"
command = s
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

;---------------------------------------------------------------------------
;*NEW*
;Sacrifice
[State -1, Sacrifice]
type = ChangeState
value = 21000
triggerall = command = "Sacrifice"
triggerall = StateType = S
triggerall = Power > 100
triggerall = Life < (Const(data.life)-1)
trigger1 = Ctrl

;*NEW*
;HYPER MULTI MOVES
[State -1]
type = ChangeState
value = 31000
triggerall = command = "Multi"
triggerall = power = 3000
triggerall = statetype = S
;triggerall = Life < (Const(data.life)-1)*0.35
trigger1 = Ctrl
trigger2 = MoveContact

;===========================================================================
;---------------------------------------------------------------------------
;*NEW*
;Transversal Moving
[State -1]
type = ChangeState
value = 30000
triggerall = command = "DP_2kl"
triggerall = StateType = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 30010
triggerall = command = "DP_2km"
triggerall = StateType = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 30020
triggerall = command = "DP_2kh"
triggerall = StateType = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 30030
triggerall = command = "DPi_2kl"
triggerall = StateType = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 30040
triggerall = command = "DPi_2km"
triggerall = StateType = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 30050
triggerall = command = "DPi_2kh"
triggerall = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger3 = StateNo = 30600 ; réalisable quand KFM fait son Transversal Moving

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = StateNo = 30600 ; réalisable quand KFM fait son Transversal Moving

;---------------------------------------------------------------------------
;*NEW*
;Drain
[State -1]
type = ChangeState
value = 28000
triggerall = command = "DP_2p"
triggerall = StateType = S
triggerall = Life < (Const(Data.Life)-1)
triggerall = Power > 1000
trigger1 = ctrl
trigger2 = Stateno = [200, 250]
trigger2 = MoveContact
trigger3 = StateNo = 30600

;---------------------------------------------------------------------------
;*NEW*
;WC Chain
[State -1]
type = ChangeState
value = 29000
triggerall = command = "DPi_2p"
triggerall = P2MoveType != H
triggerall = StateType = S
triggerall = Power >= 2000
trigger1 = ctrl
trigger2 = StateNo = [200, 250]
trigger2 = Movecontact
trigger3 = StateNo = 30600

;===========================================================================
;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1070
triggerall = command = "FF_c"
triggerall = power >= 330
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Light Kung Fu Knee
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1050
triggerall = command = "FF_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1060
triggerall = command = "FF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;*NEW*
;Kung Fu Kicks
[State -1]
type = ChangeState
value = 25000
triggerall = command = "QCB_a"
triggerall = statetype = S || Statetype = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [200, 450]


[State -1]
type = ChangeState
value = 25200
triggerall = command = "QCB_b"
triggerall = statetype = S || Statetype = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [200, 450]

[State -1]
type = ChangeState
value = IfElse((var(51) = 1),25600,25500)
triggerall = command = "QCB_c"
triggerall = statetype = S || Statetype = A
trigger1 = Ctrl
trigger2 = Stateno = 25500
trigger3 = MoveContact
trigger3 = StateNo = [200, 450]

;*NEW*
;Counter
[State -1, Counter]
type = ChangeState
value = 27000
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = statetype != A
triggerall = (P2MoveType = A)
trigger1 = StateNo = [150,153]

;---------------------------------------------------------------------------
;*NEW*
;Teleport
[State -1, Teleport]
type = ChangeState
value = 20100
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = statetype = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;*NEW*
; ball glove
[State -1]
type = ChangeState
value = 22100
triggerall = command = "QCF_x"
triggerall = statetype = S
triggerall = NumProj = 0
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [200, 450]

;---------------------------------------------------------------------------
;*NEW*
; ball glove
[State -1]
type = ChangeState
value = 22200
triggerall = command = "QCF_y"
triggerall = statetype = S
triggerall = NumProj = 0
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [200, 450]

;---------------------------------------------------------------------------
;*NEW*
; ball glove
[State -1]
type = ChangeState
value = 22000
triggerall = command = "QCF_z"
triggerall = statetype = S
triggerall = NumProj = 0
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [200, 450]

;---------------------------------------------------------------------------

;ball glove AIR
[State -1, ball glove air]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact


;---------------------------------------------------------------------------

;ball glove AIR
[State -1, ball glove air]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact

;---------------------------------------------------------------------------

;ball glove AIR
[State -1, ball glove air]
type = ChangeState
value = 1020
triggerall = command = "QCF_z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact



;---------------------------------------------------------------------------
:*NEW*
;Low crushing Kick
[State -1]
type = ChangeState
value = 24000
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [600, 650]

;Strong crushing Kick
[State -1]
type = ChangeState
value = 24200
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [600, 650]

;Hard crushing Kick
[State -1]
type = ChangeState
value = 24500
triggerall = command = "QCF_c"
triggerall = statetype = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [600, 650]

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1120
triggerall = command = "upper_z"
triggerall = power >= 330
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Light Kung Fu Upper
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Kung Fu Upper
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;*NEW*
[State -1, RollCancel]
type = ChangeState
value = 26000
triggerall = StateType = S
triggerall = command = "a"
triggerall = command = "x"
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = StateNo = [200, 250]

[State -1, RollCancel]
type = ChangeState
value = 26100
triggerall = command = "a"
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = StateNo = [400, 450]

;---------------------------------------------------------------------------
;*NEW*
[State -1, Power Charge]
type = ChangeState
value = 23000
triggerall = command = "y"
triggerall = command = "b" 
triggerall = StateType = S
triggerall = Power < 3000
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;chain 2X
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;chain 3X
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno = 200
triggerall = statetype = S
trigger1 = movecontact


;---------------------------------------------------------------------------
;chain 3X
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno = 200
triggerall = statetype = S
trigger1 = time > 7

;---------------------------------------------------------------------------
;chain 4X
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno = 210
trigger1 = statetype = S
trigger1 = movecontact



;---------------------------------------------------------------------------
;chain 4X
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno = 215
trigger1 = statetype = S
trigger1 = time > 13


;---------------------------------------------------------------------------
;chain 5X
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno = 230
triggerall = statetype = S
trigger1 = movecontact

;---------------------------------------------------------------------------
;chain 5X
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno = 235
triggerall = statetype = S
trigger1 = time > 12



;---------------------------------------------------------------------------
;chain 6X
;*NEW*
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = stateno = 240
trigger1 = time > 24
trigger1 = movecontact
trigger2 = stateno = 245
trigger2 = time > 20


;---------------------------------------------------------------------------
;chain 7X
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno = 250
triggerall = statetype = S
trigger1 = movecontact
trigger2 = time > 13

;---------------------------------------------------------------------------
;Stand Hard Punch
;*NEW*
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = (stateno = 210) && time > 5
trigger5 = (stateno = 240) && time > 6

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Hard Punch
;*NEW*
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)



;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 410) || (stateno = 440)
trigger3 = (time > 9) || (movecontact && time > 5)


;---------------------------------------------------------------------------
;AIR CHAIN 1X
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;AIR CHAIN 2X
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = stateno = 600
trigger1 = statetype = A
trigger1 = movecontact

;---------------------------------------------------------------------------
;AIR CHAIN 3X
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "x"
triggerall = stateno = 610
trigger1 = statetype = A
trigger1 = movecontact


;---------------------------------------------------------------------------
;Jump Hard Punch
:*NEW*
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl



;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 610 || stateno = 640 ;jump_y or jump_b
trigger3 = movecontact
