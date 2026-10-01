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
name = "ultra kick"
command = ~D, DB, B, D, DB, B, x
time = 40

[Command]; *NEW*
name = "ultra kick"
command = ~D, DB, B, D, DB, B, y
time = 40

[Command]; *NEW*
name = "ultra kick"
command = ~D, DB, B, D, DB, B, z
time = 40



;-| Special Motions |------------------------------------------------------

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command] ; *NEW*
name = "QCF_z"
command = ~D, DF, F, z


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
;ultra kick

;*NEW*
;HYPER MULTI MOVES
[State -1]
type = ChangeState
value = 3000
triggerall = command = "ultra kick"
triggerall = power = 3000
triggerall = statetype = S
;triggerall = Life < (Const(data.life)-1)*0.35
trigger1 = Ctrl


;===========================================================================
;---------------------------------------------------------------------------
;*NEW*

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)

;===========================================================================
;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;*NEW*
;Kung Fu Kicks

;*NEW*
;Counter
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;*NEW*
; ball glove
[State -1]
type = ChangeState
value = 22100
triggerall = stateno != 1100
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
triggerall = stateno != 1100
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
triggerall = stateno != 1100
triggerall = command = "QCF_z"
triggerall = statetype = S
triggerall = NumProj = 0
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = [200, 450]

;---------------------------------------------------------------------------

;ball glove  air
[State -1, ball glove air]
type = ChangeState
value = 1000
triggerall = stateno != 1100
triggerall = command = "QCF_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact


;---------------------------------------------------------------------------

;ball glove air
[State -1, ball glove air]
type = ChangeState
value = 1010
triggerall = stateno != 1100
triggerall = command = "QCF_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact

;---------------------------------------------------------------------------

;ball glove  air
[State -1, ball glove air]
type = ChangeState
value = 1020
triggerall = stateno != 1100
triggerall = command = "QCF_z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact



;---------------------------------------------------------------------------
;TORNADO
[State -1, Tornado]
type = ChangeState
value = 1100
triggerall = command = "y"
triggerall = stateno != 1100
triggerall = stateno != 650
triggerall = statetype = S
trigger1 = ctrl
trigger2 = movecontact

;----------------------------------------------------------------------------

[State -1, Tornado]
type = ChangeState
value = 1050
triggerall = command = "z"
triggerall = stateno != 1100
triggerall = stateno != 650
triggerall = stateno != 1050
triggerall = statetype = S
trigger1 = ctrl
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

;---------------------------------------------------------------------------
;DIVE PUNCH
[State -1, DIVE PUNCH]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = pos y < -5
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

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
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl






