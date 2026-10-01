;==========================================================================
;==========================================================================
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = a+b
time = 1
[Command]
name = "recovery"
command = b+a
time = 1
[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+x
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
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
name = "c"
command = a+b
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
name = "z"
command = x+y
time = 1

[Command]
name = "s"
command = s
time = 1

;==========================================================================
;==========================================================================
[Statedef -1]

[State ]
type = SelfState
trigger1 = ((Life <= 0) || (Alive = 0)) && (Stateno != 5050) && (Stateno != 5150)
value = 5050
ctrl = 0
