;-| AI |------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

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
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "SP1"
command = ~D, DF, F, D, DF, F, x
time = 35
[Command]
name = "SP1"
command = ~D, DF, F, D, DF, F, y
time = 35
[Command]
name = "SP1"
command = ~D, DF, F, D, DF, F, z
time = 35



[Command]
name="sgs"
command=x,x,F,a,z
time=48
[Command]
name="sgs"
command=x,x,F,a+z
time=40
[Command]
name="sgs"
command=x,x,F+a+z
time=32


;-| Special Motions |------------------------------------------------------
[Command]
name = "ShoryuEX"
command = ~F, D, DF, x+y
time = 15
[Command]
name = "ShoryuEX"
command = ~F, D, DF, y+z
time = 15
[Command]
name = "ShoryuEX"
command = ~F, D, DF, x+z
time = 15




[Command]
name="dfx"
command=~F,D,DF,x
time=20
[Command]
name="dfy"
command=~F,D,DF,y
time=20
[Command]
name="dfz"
command=~F,D,DF,z
time=20
[Command]
name="dfx"
command=~F,D,DF,~x
time=20
[Command]
name="dfy"
command=~F,D,DF,~y
time=20
[Command]
name="dfz"
command=~F,D,DF,~z
time=20

[Command]
name="dfx"
command=F,D,DF,x
time=20
[Command]
name="dfy"
command=F,D,DF,y
time=20
[Command]
name="dfz"
command=F,D,DF,z
time=20
[Command]
name="dfx"
command=F,D,DF,~x
time=20
[Command]
name="dfy"
command=F,D,DF,~y
time=20
[Command]
name="dfz"
command=F,D,DF,~z
time=20




[Command]
name = "Gouhadouken"
command = ~D, DF, F, x
time = 15
[Command]
name = "Gouhadouken"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "Gouhadouken"
command = ~D, DF, F, y
time = 15
[Command]
name = "Gouhadouken"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "Gouhadouken"
command = ~D, DF, F, z
time = 15
[Command]
name = "Gouhadouken"
command = ~D, DF, F, ~z
time = 15



[Command]
name = "Shakunetsuhadouken"
command = ~D, DB, B, x
time = 15
[Command]
name = "Shakunetsuhadouken"
command = ~D, DB, B, ~x
time = 15
[Command]
name = "Shakunetsuhadouken"
command = ~D, DB, B, y
time = 15
[Command]
name = "Shakunetsuhadouken"
command = ~D, DB, B, ~y
time = 15
[Command]
name = "Shakunetsuhadouken"
command = ~D, DB, B, z
time = 15
[Command]
name = "Shakunetsuhadouken"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "EXShakunetsu"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "EXShakunetsu"
command = ~D, DB, B, ~x+y
time = 15
[Command]
name = "EXShakunetsu"
command = ~D, DB, B, y+z
time = 15
[Command]
name = "EXShakunetsu"
command = ~D, DB, B, ~y+z
time = 15
[Command]
name = "EXShakunetsu"
command = ~D, DB, B, a+z
time = 15
[Command]
name = "EXShakunetsu"
command = ~D, DB, B, ~a+z
time = 15



[Command]
name = "GouhadoukenEX"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "GouhadoukenEX"
command = ~D, DF, F, y+z
time = 15
[Command]
name = "GouhadoukenEX"
command = ~D, DF, F, x+z
time = 15



[Command]
name = "TatsumakiEX"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "TatsumakiEX"
command = ~D, DB, B, b+c
time = 15
[Command]
name = "TatsumakiEX"
command = ~D, DB, B, a+c
time = 15


[Command]
name = "RyokusakuEX"
command = ~D, F, a+b
time = 15
[Command]
name = "RyokusakuEX"
command = ~D, F, b+c
time = 15
[Command]
name = "RyokusakuEX"
command = ~D, F, a+c
time = 15



[Command]
name="dfa"
command=~D,DF,F,a
time=20
[Command]
name="dfb"
command=~D,DF,F,b
time=20
[Command]
name="dfc"
command=~D,DF,F,c
time=20
[Command]
name="dfa"
command=~D,DF,F,~a
time=20
[Command]
name="dfb"
command=~D,DF,F,~b
time=20
[Command]
name="dfc"
command=~D,DF,F,~c
time=20


[Command]
name="qcba"
command=~D,B,a
time=15
[Command]
name="qcbb"
command=~D,B,b
time=15
[Command]
name="qcbc"
command=~D,B,c
time=15
[Command]
name="qcba"
command=~D,B,~a
time=15
[Command]
name="qcbb"
command=~D,B,~b
time=15
[Command]
name="qcbc"
command=~D,B,~c
time=15


[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, x
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, y
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, z
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, a
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k" ;Zero Counter
command = ~B, DB, D, c
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~c
time = 16

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "FF/"
command = F, /$F
time = 10

[Command]
name = "BB/"
command = B, /$B
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
command = a+b
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "recovery"
command = c+b
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

[Command]
name = "ax"
command = a+x
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

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = (StateNo = [760,762]) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger6 = (StateNo = [700,715]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, ProjContact];special thanks to 20S
type = VarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Root ProjContact];special thanks to 20S
type = ParentVarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

;--------------------------------------------------
[State -1, SHUN GOKU SATSTU]
type = ChangeState
value = 3600
triggerall = command = "sgs"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

;--------------------------------------------------
[State -1, METSU SHORYU KEN]
type = ChangeState
value = 3000
triggerall = command = "SP1"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3 = movecontact && stateno = 1300
TRIGGER4= MOVECONTACT && (stateno = 1000||stateno = 1101||stateno = 1103||stateno = 1105||stateno = 1302||stateno = 1304||stateno = 1400||stateno = 1401)
TRIGGER5= MOVECONTACT && (stateno = 1005||stateno = 1452||stateno = 1461)

;--------------------------------------------------
[State -1, KUREKIJIN EX AIR ]
type = ChangeState
value = 1260
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = command = "TatsumakiEX"
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = movecontact&&(stateno = 600||stateno = 610|| stateno = 620|| stateno = 630|| stateno = 640|| stateno = 650);|| stateno = 1101|| stateno = 11031000|| stateno = 1105)

;--------------------------------------------------
[State -1 , KUREKIJIN AIR]
type = ChangeState
value = 1250
triggerall= command="qcba" || command="qcbb" || command="qcbc"
triggerall = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 600||stateno = 610|| stateno = 620|| stateno = 630|| stateno = 640|| stateno = 650;|| stateno = 1101|| stateno = 1103|| stateno = 1105
trigger3 = movecontact

;--------------------------------------------------
[State -1]
type = ChangeState
value = 1220
triggerall= command="TatsumakiEX"
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 225|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact 
trigger4 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger4 = movecontact


;--------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall= command="qcba" || command="qcbb" || command="qcbc"
triggerall = RoundState = 2 && StateType != A
triggerall = prevstateno != 1101|| prevstateno != 1103|| prevstateno != 1105;<<<<<<<<<<<<<<<<<<<<<<<<<<
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 225|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger4 = movecontact

;--------------------------------------------------
[State -1, Kung Fu Barrage]
type = ChangeState
value = 1150
triggerall = command = "ShoryuEX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250|| stateno = 1020
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger4 = movecontact

;--------------------------------------------------
[State -1]
type = ChangeState
value = 1101
triggerall= command="dfx"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger4 = movecontact
;--------------------------------------------------
[State -1]
type = ChangeState
value = 1103
triggerall= command="dfy"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger4 = movecontact
;--------------------------------------------------
[State -1]
type = ChangeState
value = 1105
triggerall= command="dfz"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger4 = movecontact

;--------------------------------------------------
[State -1, GouhadoukenEX]
type = ChangeState
value = 1020
triggerall = command = "GouhadoukenEX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger4 = movecontact

[State -1, AIR HADOUKEN EX]
type = ChangeState
value = 1024
triggerall = command = "GouhadoukenEX"
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 600||stateno = 610|| stateno = 620|| stateno = 630|| stateno = 640|| stateno = 650|| stateno = 1154 
trigger3 = movecontact

[State -1, Shakunetsu EX]
type = ChangeState
value = 1051
triggerall = command = "EXShakunetsu"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger4 = movecontact



;------------------------------------------------------------------------------------
[State -1, Ryokusaku EX]
type = ChangeState
value = 1401
triggerall= command="RyokusakuEX"
triggerall = StateType != A
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250|| stateno = 1020
trigger2 = movecontact
trigger3 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger3 = movecontact


;--------------------------------------------------
[State -1, hadouken]
type = ChangeState
value = 1000
triggerall = command = "Gouhadouken" 
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = (Helper(1010),StateNo=[1014,1016]) || Helper(1010),StateNo=1115 || Helper(1010),StateNo=1215
trigger3 = var(5)
trigger4 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 225|| stateno = 230||  stateno = 240|| stateno = 250
trigger4 = movecontact
trigger5 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger5 = movecontact

[State -1, Air Hadouken]
type = ChangeState
value = 1004
triggerall = NumHelper(1010) <= 0
triggerall = NumHelper(1010) <= 1
triggerall = Statetype = A
triggerall = command = "Gouhadouken" 
trigger1 = ctrl
trigger2 = (Helper(1010),StateNo=[1014,1016]) || Helper(1010),StateNo=1115 || Helper(1010),StateNo=1215
trigger3 = movecontact&&(stateno = 600||stateno = 610|| stateno = 620|| stateno = 630|| stateno = 640|| stateno = 650)

[State -1, hadouken]
type = ChangeState
value = 1050
triggerall = command = "Shakunetsuhadouken" 
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1025) <= 0
trigger2 = NumHelper(1025) <= 1
trigger2 = (Helper(1025),StateNo=[1014,1016]) || Helper(1025),StateNo=1115 || Helper(1025),StateNo=1215
trigger3 = var(5)
trigger4 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 225|| stateno = 230|| stateno = 240|| stateno = 250
trigger4 = movecontact
trigger5 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger5 = movecontact

;----------------------------------------------------------------------------------------------------

[State -1, Senha Kassatsu] ;(SHORT)
type = ChangeState
value = 1303;ifelse(p2dist X > 160,1300,1303)
triggerall = command = "a+x"
triggerall = StateType != A
;triggerall =  p2dist X > 160
triggerall = power> 500
trigger1= ctrl
trigger2 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250
trigger2 = movecontact
trigger3 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger3 = movecontact

;----------------------------------------------------------------------------------------------------

[State -1, powercharge]
type=null;changestate
value=950
triggerall = power< 1000
triggerall= command = "c+z";trigger1= command="holdb" && command="holdy"
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= power<const(data.power); && power<powermax && !var(20)





[State -1, MAX Mode]
type = ChangeState
value = 770
;triggerall = !AIlevel
triggerall = command = "c+z"
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])





;---------------------------------------------------------------------
[State -1, Senha Kassatsu] ;(LONG)
type = ChangeState
value = 1300;ifelse(p2dist X > 160,1300,1303)
triggerall = command = "b+y"
triggerall = StateType != A
;triggerall =  p2dist X > 160
triggerall = power> 500
trigger1= ctrl
trigger2 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 230|| stateno = 240|| stateno = 250
trigger2 = movecontact
trigger3 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger3 = movecontact

;----------------------------------------------------------------------------------------------------
[State -1, Ryokusaku]
type = ChangeState
value = 1400
triggerall = command = "dfa"|| command = "dfb"|| command = "dfc"
triggerall = StateType != A
trigger1= ctrl
trigger2 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 225|| stateno = 230|| stateno = 240|| stateno = 250|| stateno = 900
trigger2 = movecontact
trigger3 = stateno = 400||stateno = 410|| stateno = 420|| stateno = 430|| stateno = 440|| stateno = 450
trigger3 = movecontact
;----------------------------------------------------------------------------------------------------


[State -1, Misogi]
type = ChangeState
value = 1500
triggerall = command = "c+z"&&command = "holddown"
triggerall = StateType =S || StateType != A
triggerall = PREVStateno != 1503
triggerall = Stateno != 1503||Stateno != 1500||Stateno != 1501||Stateno != 1502
triggerall = power> 500
trigger1= ctrl
trigger2 = movecontact&&(stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 225|| stateno = 230|| stateno = 240|| stateno = 250)



[State -1, Misogi air]
type = ChangeState
value = 1503
triggerall = command = "c+z"&&command = "holddown"
triggerall = StateType != S
triggerall = StateType = A
triggerall =Stateno != 1501||Stateno != 1500||Stateno != 1503||Stateno != 1502
triggerall = power> 500
trigger1= ctrl
trigger2 = movecontact&&(stateno = 600||stateno = 610|| stateno = 620|| stateno = 630|| stateno = 640|| stateno = 650)
trigger3 = movecontact&&(stateno = 1102||stateno = 1104||stateno = 1106)		


;--------------------------------------------------
[State -1, SEKIEIKEN I]
type =ChangeState
value = 1450
triggerall= power>=500; && var(20)<=60
triggerall= command = "holdback" &&command="pp"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 225|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact

;--------------------------------------------------
[State -1, SEKIEIKEN I2]
type = ChangeState
value = 1460
triggerall= power>=500; && var(20)<=60
triggerall= command = "holdfwd" &&command="pp"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
trigger3 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 220|| stateno = 221|| stateno = 225|| stateno = 230|| stateno = 240|| stateno = 250
trigger3 = movecontact



;---------------------------------------------------------------------------
; Counter
[State -1, Counter]
type = ChangeState
value = 900
triggerall = power >= 500
triggerall = command = "pp"
triggerall = statetype != A
trigger1 = stateno = 130|| stateno = 131||stateno = 150||stateno = 151||stateno = 152||stateno = 153


;--------------------------------------------------
[State -1, Tenma Kick]
type = ChangeState
value = 655
triggerall= command="holddown" && command="b"
triggerall= statetype=A
TRIGGERALL = VEL X >= 0
trigger1= ctrl
trigger2 = movecontact&&(stateno = 600||stateno = 610|| stateno = 620|| stateno = 630|| stateno = 640|| stateno = 650)
























;Asura Recover
[State -1,ARURA RECOVER]
type = Changestate
triggerall = power > 500
triggerall = statetype = L
triggerall = roundstate = 2 && alive
triggerall = (stateno = 5120) && (time >= 1)
trigger1 = command = "holdfwd"&&(command = "recovery"||command = "pp"||command = "kk")
trigger2 = command = "holdfwd"&&(command = "a"||command = "b"||command = "c"||command = "x"||command = "y"||command = "z")
value = 905




;Throw SHOULDER
[State -1,throw 1, SHOULDER]
type = ChangeState
value = 800
triggerall = command="y"&&command = "holdfwd"||command="y"&&command = "holdback"||command="z"&&command = "holdfwd"||command="z"&&command = "holdback"
triggerall = RoundState = 2 && StateType != A
triggerall = p2bodydist x<=35
trigger1= ctrl
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;Throw OVERHEAD
[State -1,throw 2, OVERHEAD]
type = ChangeState
value = 830
triggerall = command="b"&&command = "holdfwd"||command="b"&&command = "holdback"||command="c"&&command = "holdfwd"||command="c"&&command = "holdback"
triggerall = RoundState = 2 && StateType != A
triggerall = p2bodydist x<=35
trigger1=ctrl
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;--------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------------------
[State -1, KIKOKURETSUZAN]
type = ChangeState
value = 1005
triggerall= command="c+z"; && command="holdfwd"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 =MOVECONTACT&&(stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 225|| stateno = 230|| stateno = 240|| stateno = 250)


[State -1, ZUGAIHASATSU]
type = ChangeState
value = 225
triggerall= command="y" && command="holdfwd"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = MOVECONTACT&& TIME >18
trigger2 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 220|| stateno = 230


[State -1, Kikokuduki]
type = ChangeState
value = 221
triggerall= command="z" && command="holdfwd"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = MOVECONTACT
trigger2 = stateno = 200||stateno = 201|| stateno = 230

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = MOVECONTACT
trigger2 = stateno = 201|| stateno = 230

[State -1, Stand Medium Punch]
type = ChangeState
value = 210 
triggerall = command = "y"
triggerall = command != "holddown"  
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = MOVECONTACT
trigger2 = stateno = 200||stateno = 201|| stateno = 211|| stateno = 230

[State -1, Stand Strong Punch]
type = ChangeState
value = 220 
triggerall = command = "z"
triggerall = command != "holddown" 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = MOVECONTACT
trigger2 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 225|| stateno = 230|| stateno = 240

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = MOVECONTACT
trigger2 = stateno = 200||stateno = 201|| stateno = 231

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = MOVECONTACT
trigger2 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 225|| stateno = 230
trigger3 = MOVECONTACT&&time>19
trigger3 = stateno = 240

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = MOVECONTACT
trigger2 = stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 225|| stateno = 230|| stateno = 240

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = command = "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 400||stateno = 430
trigger2 = movecontact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 400||stateno = 410||stateno = 430||stateno = 440
trigger2 = movecontact

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 400||stateno = 410||stateno = 430
trigger2 = movecontact

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = stateno = 400||stateno = 410||stateno = 420||stateno = 430||stateno = 440
trigger2 = movecontact


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
trigger2 = stateno = 600||stateno = 630||stateno = 640
trigger2 = movecontact

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600||stateno = 610||stateno = 630||stateno = 640
trigger2 = movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600||stateno = 610||stateno = 630
trigger2 = movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600||stateno = 610||stateno = 620||stateno = 630||stateno = 640
trigger2 = movecontact

[State -1, Taunt]
type = NULL;ChangeState
value = 905
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;===========================================================================
;=================================<A.I.>====================================
;===========================================================================
[State -1, AI]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
var(59) = 1

[State -1, Standing Parry]
type=hitoverride
triggerall = var(59)<1&&roundstate=2&&statetype=S
triggerall=command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1= (ctrl && random<125) || ((stateno=[700,701]) && random<750)
trigger2=var(21):=-1
trigger2=(stateno=[150,153])
attr=SA,AA,AP
stateno=760
slot=0
time=ifelse((stateno=[150,153]),4,8)




[State -1, Crouching Parry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<125) || ((stateno=[700,701]) && random<750)
trigger1= var(21):=2
attr=C,AA,AP
stateno=761
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl && random<125) || (stateno=702 && random<750)
trigger1= var(21):=3
attr=SA,AA,AP
stateno=762
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[700,702]) && stateno!=5120) || var(20)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= var(59)<=0 && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0

[State -1, airrecover]
type=changestate
value= ifelse((pos y>=-20), 5200, 5210)
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && canrecover
trigger1= vel y>=-1 && random<200

[State -1, recoveryroll]
type=changestate
value=5200
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= !ctrl
trigger1= (stateno=5040 || stateno=5050) && vel y>=-1 && pos y>-vel y
trigger1= (p2bodydist x=[-10,10]) && random<200


[State -1, V Trigger]
type = ChangeState
value = 770
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
triggerall = command = "c+z"
triggerall = RoundState = 2 && StateType != A
triggerall = Power >= 500
trigger1 = (p2bodydist x=[100,300]) && random<350


;---------------------------------------------------------------------------
; RECOVERY ROLL BACK
[State -1, RECOVERY ROLL BACK]
type = ChangeState
value = 5220
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && alive
trigger1= !ctrl
trigger1= (stateno=5040 || stateno=5050) && vel y>=-1 && pos y>-vel y
trigger1= (p2bodydist x=[-10,10]) && random<200
triggerall = stateno = 5110 && Time > 1
trigger1 = command = "holdback"&&(command = "recovery"||command = "pp"||command = "kk")
trigger1 = statetype = L
;-----------------------------------------------------------------------------------------


;----------------------------------------------------------------------------------------------------------------------

[State -1, goushoryuuken, AI]
type=changestate
value=1101
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random<ifelse(prevstateno=1200, 333, 200)
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<500
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<500
trigger5= stateno=0 && prevstateno=5120 && time<=1
trigger5= ctrl && (p2bodydist x=[-40,40]) && random<500
trigger6= ctrl && (p2bodydist x=[-30,30])
trigger6= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<250


[State -1, goushoryuuken, AI]
type=changestate
value=1103
triggerall= var(59)>=1 && numenemy
triggerall = p2stateno!=5120
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random;<ifelse(prevstateno=1200, 333, 200) ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<500
TRIGGER3 = ((STATENO = 1452)||(STATENO =14612)) && MOVECONTACT 
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<500
trigger5= ctrl && (p2bodydist x=[-40,40]) && random<500
trigger6= ctrl && (p2bodydist x=[-30,30])
trigger6= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<250

[State -1, goushoryuuken, AI]
type=changestate
value=1105
triggerall= var(59)>=1 && numenemy
triggerall = p2stateno!=5120
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2statetype!=L || p2stateno=5120) && (p2bodydist x=[0,80]) && (p2dist y=[-120,0])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2statetype=A && random;<ifelse(prevstateno=1200, 333, 200) ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
trigger2= (stateno=[200,250])
trigger2= movehit && (p2bodydist x=[0,12]) && random<500
TRIGGER3 = ((STATENO = 1452)||(STATENO =14612)) && MOVECONTACT 
trigger4= ctrl && enemynear,movetype=A && (p2bodydist x=[0,40]) && random<500
trigger5= ctrl && (p2bodydist x=[-40,40]) && random<500
trigger6= ctrl && (p2bodydist x=[-30,30])
trigger6= (enemynear,stateno=5120) && (enemynear,animtime=[-6,-3]) && random<250

[State -1, MISOGI,AI]
type=changestate
value=1500
triggerall= var(59)>=1 && numenemy
triggerall= power>=500
triggerall= statetype!=A && roundstate=2
triggerall = statetype = S
triggerall= ctrl
trigger1= enemynear,movetype=A && (p2bodydist x=[-90,90])
trigger1= (enemynear,p2bodydist x>0) && (enemynear,facing!=facing)
trigger1= random<ifelse((enemy,hitdefattr=SC,AT),500,100)




[State -1, MISOGI AIR, AI]
type=changestate
value=1503
triggerall= var(59)>=1 && numenemy
triggerall= power>=500
triggerall= statetype=A && roundstate=2
triggerall = statetype != S
triggerall = ctrl
trigger1 = movecontact &&(stateno = 600||stateno = 610|| stateno = 620|| stateno = 630|| stateno = 640|| stateno = 650)&& random<250
trigger2 = movecontact &&(stateno = 1102||stateno = 1104||stateno = 1106||stateno = 1154)&& random<350



[State -1, SEKIEIKEN I ]
type=changestate
value=1450
triggerall= var(59)>=1 && numenemy
triggerall= power>=500 && var(20)<=60
triggerall= roundstate=2 && statetype!=A
triggerall= (p2bodydist x>=0) && (p2dist y>=-150) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<=100 && random<250
trigger2= stateno = 200||stateno = 201|| stateno = 210|| stateno = 211|| stateno = 225|| stateno = 230|| stateno = 240
trigger2= movehit && (p2bodydist x=[0,100]) && random<150
trigger3= (stateno=1400)
trigger3= movehit && (p2bodydist x=[50,100]) && random<150

[State -1, SEKIEIKEN II ]
type=changestate
value=1460
triggerall= var(59)>=1 && numenemy
triggerall= power>=500 && var(20)<=60
triggerall= roundstate=2 && statetype!=A
triggerall= (p2bodydist x>=0) && (p2dist y>=-150) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=101 && random<250
trigger2= (stateno=210 || stateno=220 || stateno=240 || stateno=250)
trigger2= movehit && (p2bodydist x=[50,300]) && random<50
trigger3= (stateno=1400)
trigger4= movehit && (p2bodydist x=[50,250]) && random<50



[State -1, backdash]
type=changestate
value=105
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype=S
trigger1= random < ifelse((enemynear,hitdefattr=SC,AT), 150, 50)
trigger1= ctrl && (stateno!=[100,106]) && (stateno!=[700,701])
trigger1= (enemynear,movetype=A) && backedgedist>=80 && (p2bodydist x=[80,120]) && (enemynear,vel x)




[State -1, Guard]
type=changestate
value=120
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && inguarddist
trigger1= ctrl && (stateno!=[120,155]) && !var(20)
trigger1= ifelse(statetype=A, (var(9)!=2 || stateno=5210), 1)
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<ifelse((p2stateno=[200,699]), 100, ifelse((p2stateno=[1000,2999]), 333, 1000))

[State -1, run/dash]
type=changestate
value=100
trigger1= var(59)>=1 && numenemy
trigger1= statetype=S && roundstate=2
trigger1= ctrl && (stateno!=[100,105])
trigger1= !inguarddist && (p2bodydist x=[60,100]) && random<100

; Air Dash (Front)
[State -1, Air Dash (Front)]
type = ChangeState
value = 115
trigger1 = command = "FF/"
trigger1 = statetype = A
trigger1 = ctrl

;Air Dash (Backward)
[State -1, Air Dash (Backward)]
type = ChangeState
value = 110
trigger1 = command = "BB/"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump]
type=changestate
value=40
trigger1= var(59)>=1 && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

[State -1, Dodge]
type = NULL;ChangeState
value = 1150
triggerall = var(59) = 1
triggerall= power>=500 && var(20)<=60
triggerall = roundstate = 2 && alive && random < 100 && statetype != A
triggerall = (facing = 1 && (enemynear,facing = -1)) || (facing = -1 && (enemynear,facing = 1))
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x <= 130 && p2movetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
; Counter
[State -1, Counter]
type = ChangeState
value = 900
triggerall= var(59)>=1 && numenemy
triggerall = power >= 500
triggerall = statetype != A
triggerall= p2dist x>0&&power>=500&&statetype!=A
trigger1 = stateno = 130|| stateno = 131||stateno = 150||stateno = 151||stateno = 152||stateno = 153
trigger1 = moveguarded

[State -1, Throw]
type=changestate
value=800
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S||roundstate=2 && statetype=S
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
triggerall= (p2bodydist x=[0,35]) && p2dist y=0 
trigger1= ctrl && random<100
trigger2= ctrl && (p2stateno=[120,140]) && random<750

[State -1, SHP]
type=changestate
value=200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C		
triggerall= (p2bodydist x=[30,60]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<25 && random<100
trigger2= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger2= p2bodydist x<=50 && movehit && random<250

[State -1, SHP]
type=changestate
value=210
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C		
triggerall= (p2bodydist x=[30,75]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<25 && random<100
trigger2= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger2= p2bodydist x<=50 && movehit && random<250

[State -1, SHK]
type=changestate
value=220
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x=0 && movehit && random<250

[State -1, SHK]
type=changestate
value=221
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= (p2bodydist x=[30,80]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x=0 && movehit && random<250

[State -1, SLK]
type=changestate
value=230
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[30,65]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=230)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, SLK]
type=changestate
value=240
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[15,90]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=230)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, SLK]
type=changestate
value=250
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[30,100]) && (p2dist y=[-50,50]) && p2statetype!=C && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=230)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250

[State -1, CHP]
type=changestate
value=420
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,40]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=4 && (movehit=[1,4]) && random<250
trigger2 = prevstateno =650 && movecontact
trigger2 = prevstateno =655 && movecontact

[State -1, CHK]
type=changestate
value=450
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,60]) && (p2dist y=[-50,50]) && p2statetype!=A && p2stateno!=5120
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=30 && (movecontact=[1,4]) && random<250

[State -1, CMP]
type=changestate
value=410
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50]) && p2statetype=C
triggerall= (p2stateno!=[120,155]) && p2movetype!=A && !(enemynear,hitfall)
trigger1= (stateno=200 || stateno=210 || stateno=230 || stateno=250)
trigger1= p2bodydist x<=20 && (movehit=[1,4]) && random<250

[State -1, CMK]
type=changestate
value=420
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,50]) && p2statetype=S
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430)
trigger1= p2bodydist x<=20 && (movehit=[1,4]) && random<250

[State -1, CLP]
type=changestate
value=400
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist && !(enemynear,hitfall)
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype=C
triggerall= (p2stateno!=[120,155]) && p2movetype!=A
trigger1= ctrl && random<100
trigger2= (stateno=200 || stateno=230 || stateno=250) && time>=5 && random<50

[State -1, CLK]
type=changestate
value=430
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,36]) && (p2dist y=[-50,50]) && p2statetype=S
triggerall= ((p2stateno!=[120,155]) || p2stateno=130 || p2stateno=150 || p2stateno=151) && p2movetype!=A
trigger1= ctrl
trigger1= random<100 || (p2stateno=130 || p2stateno=150 || p2stateno=151) || p2stateno=5110
trigger2= (stateno=200 || stateno=230 || stateno=240) && time>=5 && random<50

[State -1, AHP]
type=changestate
value=420
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,45]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2= (stateno=600 || stateno=630 || stateno=640 || stateno=610) && var(9)!=2 && (movehit=[1,4]) && random<250

[State -1, AHK]
type=changestate
value=450
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE = S ||P2STATETYPE = C	
triggerall= roundstate=2 && statetype=S && !inguarddist
triggerall= (p2bodydist x=[0,50]) && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2= (stateno=600 || stateno=630 || stateno=640 || stateno=610) && var(9)!=2 && (movehit=[1,4]) && random<250

[State -1, GOUHADOUKEN AI]
type=changestate
value=1000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
TRIGGERALL = P2STATETYPE != L
triggerall= (p2bodydist x=[10,100])
trigger1= ctrl && random<25
trigger2= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400  || stateno=410 || stateno=430||  stateno=440) && random<150
trigger3 = stateno=420&& movecontact

[State -1, ALP,AI]
type=changestate
value=600
TRIGGERALL = P2STATETYPE != L
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,50]); && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2 = movecontact
trigger2 = stateno = 640

[State -1, AMP,AI]
type=changestate
value=610
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
TRIGGERALL = P2STATETYPE != L
triggerall= (p2bodydist x=[0,50]); && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 640

[State -1, AHP,AI]
type=changestate
value=620
TRIGGERALL = P2STATETYPE != L
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,50]); && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610|| stateno = 640

[State -1, ALK,AI]
type=changestate
value=630
TRIGGERALL = P2STATETYPE != L
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,50]); && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610|| stateno = 620|| stateno = 640

[State -1, AMK,AI]
type=changestate
value=640
triggerall= var(59)>=1 && numenemy
TRIGGERALL = P2STATETYPE != L
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,50]); && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2 = movecontact
trigger2 = stateno = 600

[State -1, AHK,AI]
type=changestate
value=650
TRIGGERALL = P2STATETYPE != L
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[0,50]); && (p2dist y=[-50,50]) && p2statetype!=L && !(enemynear,hitfall)
trigger1= ctrl && random<25
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610|| stateno = 620|| stateno = 630|| stateno = 640

[State -1, hyakkishuu]
type=changestate
value=655
triggerall= var(59)>=1 && numenemy
TRIGGERALL = VEL X >= 0
triggerall= roundstate=2 && statetype=A
triggerall= (p2dist y=[-160,-80]) && p2statetype!=L
triggerall= !(enemynear,ctrl) && p2movetype=H && (enemynear,stateno!=[120,155])
trigger1= ctrl && random<10

;Asura Recover
[State -1,ASURA RECOVER AI]
type = Changestate
triggerall = power > 500
triggerall= var(59)>=1 && numenemy
triggerall = statetype = L
triggerall = roundstate = 2 && alive
triggerall = (stateno = 5120) && (time = 1)
triggerall= (p2bodydist x=[20,75])
;trigger1 = command = "holdfwd"&&(command = "recovery"||command = "pp"||command = "kk")
trigger1= (p2bodydist x=[20,75])
value = 905

[State -1, GO HADOKEN AIR, AI]
type=changestate
value=1004
TRIGGERALL = P2STATETYPE != L
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=A && var(9)!=2
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-40,60]) && p2statetype!=L
trigger1= ctrl && random<ifelse(p2dist x<0, 80, 25)
trigger2= (stateno=[600,650])
trigger2=(enemynear,statetype=A)
trigger2= movehit && (p2bodydist x=[0,80]) && random<90

[State -1, KUREKIJIN, AI]
type=changestate
value=1200
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
TRIGGERALL = prevstateno != 1200||prevstateno != 1201
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,90]) && (p2dist y=[-90,0]) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=210 || stateno=225 || stateno=240)
trigger1= movehit && (p2bodydist x=[80,100]) && random<250

[State -1, KUREKIJIN, AI]
type=changestate
value=1200
triggerall= var(59)>=1 && numenemy
TRIGGERALL = prevstateno != 1200||prevstateno != 1201
triggerall = RoundState = 2 && StateType != A
triggerall = RoundState = 2 && p2statetype!=L
triggerall= (p2bodydist x=[20,80])
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1= movehit && (p2bodydist x=[80,100]) && random<250
trigger2 = var(5)
trigger3 = (stateno = 200)||(stateno = 203)||(stateno = 210)||(stateno = 220)||(stateno = 221)||(stateno = 226)||(stateno = 227)||(stateno = 230)||(stateno = 231)||(stateno = 240)||(stateno = 241)||(stateno = 250||(stateno = 251)||(stateno = 252)||(stateno = 1010)||(stateno = 1203))
trigger3 = movecontact && random<250
trigger4 = movecontact && stateno = 1461&& random<250

[State -1,  KUREKIJIN AIR, AI]
type=changestate
value=1261
triggerall= var(59)>=1 && numenemy
triggerall = p2stateno!=5120
triggerall = pos y >= -75
triggerall= roundstate=2 && statetype=A && var(9)!=2
TRIGGERALL = PREVSTATENO != 1001 ||PREVSTATENO != 1003|| PREVSTATENO != 1004 ||PREVSTATENO != 1005||PREVSTATENO != 1006
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-40,60]) && p2statetype!=L &&  p2statetype = A 
trigger1= ctrl && p2dist x = [0,100]
trigger2= (stateno=[600,650])
trigger2= movehit && (p2bodydist x=[0,25]) && random<250

[State -1, gouhadouken]
type=changestate
value=1000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x<=80) && (p2dist y=[-50,0]) && p2movetype!=A && (p2statetype!=S || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<=60 && random<100
trigger2= (stateno=200 || stateno=210 || stateno=220 || stateno=245|| stateno=250)
trigger2= movehit && (p2bodydist x=[0,60]) && random<100

[State -1, gouhadouken EX]
type=changestate
value=1020
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=500
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x<=80) && (p2dist y=[-50,0]) && p2movetype!=A && (p2statetype!=S || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<=60 && random<100
trigger2= (stateno=200 || stateno=210 || stateno=220 || stateno=245|| stateno=250)
trigger2= movehit && (p2bodydist x=[0,40]) && random<100

[State -1, shakunetsuhadoukenEX]
type=changestate
value=1051
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=120 && random<50
trigger2= (stateno=210 || stateno=220 || stateno=240 || stateno=250)
trigger2= movehit && (p2bodydist x=[0,25]) && random<50

[State -1,Shoryuken EX]
type=changestate
value=1150
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= movecontact&&ctrl && p2bodydist x<=100 && random<150
trigger2= (stateno=210 || stateno=220 || stateno=240 || stateno=250)
trigger2= movehit && (p2bodydist x<=100) && random<150


[State -1, SENHA KASSATSU (L) AI]
type=changestate
value=1300
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && (p2statetype!=L || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=150 && random<100
trigger2 = (stateno = 200)||(stateno = 203)||(stateno = 210)||(stateno = 220)||(stateno = 221)||(stateno = 226)||(stateno = 227)||(stateno = 230)||(stateno = 231)||(stateno = 240)||(stateno = 241)||(stateno = 250||(stateno = 251)||(stateno = 252)||(stateno = 1010)||(stateno = 1203))
trigger2 = movecontact

[State -1, SENHA KASSATSU (s) AI]
type=changestate
value=1303
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= ifelse(!var(20), (!numhelper(1005) && !numhelper(1025) && !numhelper(1055)),1) && !numhelper(3005) && !numhelper(3055)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && (p2statetype!=L || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x<=10 && random<100
trigger2 = (stateno = 200)||(stateno = 203)||(stateno = 210)||(stateno = 220)||(stateno = 221)||(stateno = 226)||(stateno = 227)||(stateno = 230)||(stateno = 231)||(stateno = 240)||(stateno = 241)||(stateno = 250||(stateno = 251)||(stateno = 252)||(stateno = 1010)||(stateno = 1203))
trigger2 = movecontact

[State -1, RYOKUSAKU]
type=changestate
value=1400
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2bodydist x>=0) && (p2dist y>=-125) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
TRIGGERALL= MOVECONTACT
trigger1= ctrl && p2bodydist x<=100 && random<250
trigger2= (stateno=200 || stateno=210 || stateno=245 || stateno=250 || stateno=370 || stateno=380 || stateno=400 || stateno=410)
trigger1= ctrl && p2statetype= S && random<100 && (p2bodydist x=[0,40])
trigger2= movehit && (p2bodydist x=[0,40]) && random<50
trigger3= prevstateno = 1201 &&  (p2bodydist x=[0,100]) && random<250
trigger4 = movecontact && stateno = 1461&& random<150
trigger5 = stateno=420 && movecontact

[State -1, RYOKUSAKU EX]
type=changestate
value=1401
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && !var(20)
TRIGGERALL= MOVECONTACT
triggerall= (p2bodydist x>=0) && (p2dist y>=-125) && p2movetype!=A && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=100 && random<250
trigger2= (stateno=210 || stateno=220 || stateno=240 || stateno=250|| stateno = 900)
trigger2= movehit && (p2bodydist x=[0,45]) && random<150
trigger3= (stateno=1400)
trigger3= movehit && (p2bodydist x=[0,45]) && random<150
trigger4 = movecontact && stateno = 1400&& random<350

;=============================================================================================================
;================================================== HYPERS AI ================================================
;=============================================================================================================

[State -1, METSU SHORYUKEN, AI]
type=changestate
value=3000
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A && prevstateno!=4200
triggerall= !numhelper(4205)
;triggerall= power>=2000 && !var(20)


triggerall = ifelse(var(20) <= 0, power >= 2200, power >= 1000)

triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-0,50]); && (p2dist y=[-90,0])
trigger1= (stateno=200 || stateno=210 || stateno=220 || stateno=230 || stateno=240 || stateno=250 || stateno=400 || stateno=430) && movehit && random<150
trigger2= stateno=3000 && numhelper(3005)
trigger2= helper(3005),var(3) && random<100
trigger3= ctrl && inguarddist
trigger3= movecontact && stateno =1300 && random<300
TRIGGER4= MOVECONTACT && (stateno = 1000||stateno = 1101||stateno = 1103||stateno = 1105||stateno = 1302||stateno = 1304||stateno = 1400||stateno = 1401)&& random<300
TRIGGER5= MOVECONTACT && (stateno = 1005||stateno = 1452||stateno = 1461)&& random<300

[State -1, SHUN GOKU SATSU, AI]
type=changestate
value=3600
triggerall= var(59)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A

triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)

;triggerall= power>=3000 && !var(20)

triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155]) && p2statetype!=L
triggerall= (p2stateno!=[5030,5119]) && (enemynear,vel x=[-1,1]) && (enemynear,vel y<4)
triggerall= movetype=A || !(enemynear,hitfall)
trigger1= ctrl && (enemynear,statetype=S || enemynear,statetype=C) && (enemynear,animtime<=-30) && random<100
trigger2= ctrl && (enemynear,statetype=A) && (enemynear,pos y<=-60) && (enemynear,movetype=A) && random<500
trigger3= stateno=1000 && movehit && random<100

