;===============================================================================
;-------------------------------------------------------------------------------
;
;-------------------------------------------------------------------------------
;===============================================================================
;---------------------------------------------------------------------------
; To Phase 2
[Statedef 1]
type = S
physics = S
anim = 0
sprpriority = -4
VelSet = 0,0
ctrl = 0

[State TURNING]
type = Turn
triggerall = !anim
trigger1 = p2dist x < 0

[State Roar]
type = PlaySnd
triggerall = !anim
trigger1 = time>=60
value = S0,2
channel = 0

[State DONE]
type = ChangeState
triggerall = anim
trigger1 = !AnimTime
value = 301

[State DEAD] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
; Phase 3
[Statedef 2]
type = S
physics = S
anim = 1+(prevstateno=3)
sprpriority = -4
VelSet = 0,0
ctrl = 0

[State TURNING]
type = Turn
triggerall = backedgedist > 30
trigger1 = p2dist x < -10

[State UPDATE]
type = ChangeAnim
triggerall = anim = 1
trigger1 = !animtime
value = 2

[State FIRE]
type = ChangeState
trigger1 = time>=1800
value = 3

[State WIN]
type = ChangeState
trigger1 = roundstate >= 3
value = 0
ctrl = 1

[State DEAD]
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
; Phase 3 Fire
[Statedef 3]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3
sprpriority = -4

[State BREATHE]
type = PlaySnd
trigger1 = !time
trigger2 = time=20
value = s3,4-!time
channel = 2-!time

[State DONE]
type = ChangeState
trigger1 = !animtime
value = 2;+(prevstateno=2)*!!var(50)


;-=Fire breath bullet=-
[Statedef 3000]
type = A
ctrl = 0
physics = N
movetype = A
anim = 3010
sprpriority = 2

[State AIM]
type = VelSet
trigger1 = !time
x = (parent,fvar(20))
y = (parent,fvar(21))+1

[State SLOOOWDOWN]
type = VelMul
trigger1 = 1
x = .95
y = .95

[State Rise?]
type = VelAdd
trigger1 = 1
y = -.0875-.1*(abs(vel x)<1)

[State UP]
type = VelMul
triggerall = vel y > 0
trigger1 = pos y >= 0
y = -.01

[State FireDoesn'tHaveShadows]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State DamageAndStuff]
type = HitDef
trigger1 = !movecontact
attr = A,NP
damage = 5,4
animtype = light
hitflag = MAF
guardflag = MA
priority = 1,Miss
pausetime = 0,1
hitsound = S1,2
guardsound = S1,2
sparkno = 3
guard.sparkno = 3
sparkxy = 0,0
ground.type = high
air.type = high
ground.slidetime = 1
ground.hittime = 1
air.hittime = 1
ground.velocity = -.5,0
air.velocity = -.5,-.5
airguard.velocity = -.5,-.25
fall.recover = 1
getpower = 0,0
persistent = 0
[State RESET]
type = MoveHitReset
trigger1 = movecontact >= 40

[State FADE]
type = Trans
trigger1 = time>=44
trans = addalpha
alpha = (256-16*(time-44))*((256-16*(time-44))>=0),(16*(time-44))*(16*(time-44)>=0)

[State Disappear]
type = DestroySelf
trigger1 = time>=60

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0
SprPriority = -4

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S
SprPriority = -4

[State 180, 1]
type = ChangeState
trigger1 = !Time
value = 181

;---------------------------------------------------------------------------
; Win pose 1
; CNS difficulty: basic
[Statedef 181]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
SprPriority = -4

[State LETMEROAR]
type = AssertSpecial
trigger1 = time<120
flag = roundnotover

[State Roar.]
type = PlaySnd
trigger1 = !time
value = s0,2
channel = 0

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0
SprPriority = -4

[State DOWN]
type = PosAdd
trigger1 = !time
y = 318

[State Move]
type = ChangeAnim
triggerall = anim
trigger1 = time>=60
value = 0
[State Move]
type = VelSet
triggerall = !(vel y)
trigger1 = !anim
y = -.5

[State rumble]
type = PlaySnd
triggerall = vel y
trigger1 = !(time%60)
value = s190,0
channel = 2+!(time%120)
volume = 128
[State Rock]
type = Helper
triggerall = vel y
trigger1 = !(time%5)
helpertype = normal
name = "Rock"
ID = 1900
stateno = 1900
pos = (random%101)-50,-floor(pos y)
postype = P1
facing = 1
keyctrl = 0
ownpal = 1
[State Shake'N'Bake]
type = EnvShake
triggerall = time<695
triggerall = !anim
trigger1 = !(time%5)
time = 5
freq = 180
ampl = -5

[State INTRO]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State ROAR]
type = ChangeState
trigger1 = pos y <= 0
value = 195
ctrl = roundstate=2

;---------------------------------------------------------------------------
; Roar
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
SprPriority = -4

[State TURNING]
type = Turn
triggerall = !time
trigger1 = p2dist x < 0

[State SHADDAP]
type = StopSnd
triggerall = prevstateno=190
trigger1 = time < 2
channel = 2+!!time

[State Head]
type = Helper
triggerall = roundstate > 1
triggerall = !numhelper(1000)
trigger1 = !time
name = "Head"
ID = 1000
StateNo = 1000
ownpal = 1
pos = const(size.head.pos.x),const(size.head.pos.y)

[State Roar.]
type = PlaySnd
trigger1 = !time
value = s0,2
channel = 0

[State INTRO]
type = AssertSpecial
trigger1 = prevstateno=190
flag = Intro

[State DONE]
type = ChangeState
trigger1 = time>=60
value = 0
ctrl = roundstate>=2


;---------------------------------------------------------------------------
; PAWNCH
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 200
sprpriority = -4

[State Roar]
type = PlaySnd
trigger1 = !time
value = S0,3
channel = 0

[State Whoosh]
type = PlaySnd
trigger1 = !animelemtime(4)
value = S1,2
channel = 1
[State Whoosh]
type = VelSet
trigger1 = animelemtime(4)>=0
x = 10

[State ATTACK]
type = HitDef
trigger1 = !movecontact
attr = A,NA
damage = 140,90
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3,miss
pausetime = 0,15
sparkno = 3
guard.sparkno = 3
sparkxy = -10,-76
hitsound = S2,1
guardsound = S120,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -20,-4
airguard.velocity = -20,-4
air.type = High
air.velocity = -20,-4
air.hittime = 15
getpower = 0,0
fall = 1
p1SprPriority = -4

[State DONE]
type = ChangeState
trigger1 = vel x
trigger1 = frontedgedist < 230
value = 201

;---------------------------------------------------------------------------
; PAWNCHing
[Statedef 201]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 201
sprpriority = -4

[State Whoosh]
type = PlaySnd
triggerall = time<120
trigger1 = (time%30)<15
value = S2,1
channel = 2+((time%30)/5)
[State Whoosh]
type = PlaySnd
trigger1 = !time
value = S190,0
channel = 1

[State SHAKE'N'BAKE]
type = EnvShake
triggerall = time<120
trigger1 = !(time%5)
time = 5
freq = 150
ampl = -2

[State ATTACK]
type = HitDef
trigger1 = !time
trigger2 = !animtime
attr = A,NA
damage = 35,22
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3,miss
pausetime = 0,15
sparkno = 3
guard.sparkno = 3
sparkxy = -10,-76
hitsound = S2,1
guardsound = S120,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -20,-4
airguard.velocity = -20,-4
air.type = High
air.velocity = -20,-4
air.hittime = 15
getpower = 0,0
fall = 1
p1SprPriority = -4

[State Rock]
type = Helper
triggerall = time<120
trigger1 = !(time%5)
helpertype = normal
name = "Rock"
ID = 1901
stateno = 1900
pos = (random%321),-300
postype = back
facing = 1
keyctrl = 0
ownpal = 1

[State DONE]
type = ChangeState
triggerall = time>=120
trigger1 = !AnimTime
value = 195


;---------------------------------------------------------------------------
; Chop
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 210
sprpriority = -4

[State Roar]
type = PlaySnd
trigger1 = !time
value = S0,3
channel = 0

[State Whoosh]
type = PlaySnd
trigger1 = !animelemtime(5)
value = S1,2
channel = 1

[State Thump]
type = PlaySnd
trigger1 = !animelemtime(6)
value = s2,3
channel = 1
[State SHAKE'N'BAKE]
type = EnvShake
trigger1 = !animelemtime(6)
time = 12
ampl = -4
freq = 180

[State ATTACK]
type = HitDef
trigger1 = !movecontact
attr = A,NA
damage = 113,70
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3,miss
pausetime = 0,15
sparkno = 3
guard.sparkno = 3
sparkxy = -10,-76
hitsound = S2,1
guardsound = S120,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,6
airguard.velocity = -5,6
air.type = High
air.velocity = -5,4
air.hittime = 15
getpower = 0,0
fall = 1
p1SprPriority = -4

[State DONE]
type = ChangeState
trigger1 = !AnimTime
value = 195

;---------------------------------------------------------------------------
; Hadouken
[Statedef 320]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 320
sprpriority = -4

[State Roar]
type = PlaySnd
trigger1 = !time
value = S0,3
channel = 0

[State Whoosh]
type = PlaySnd
trigger1 = !animelemtime(2)
value = s3,0
channel = 1

;[State LOLAIM]
;type = null;PosSet
;triggerall = ((enemynear,pos y)-(EnemyNear,Const(Size.Mid.Pos.Y)))
;trigger1 = !time
;y = 0

[State fhqwhgads7'sfirstrealuseofthiscontrolzomg]
type = Projectile
trigger1 = !animelemtime(2)
projid = 3000
projanim = 3000
projhitanim = 3001
offset = 90,-90
velocity = 5,1+!!var(50)
projremovetime = 60
attr = A,SP
animtype = Light
damage = 35,3
getpower = 0,0
givepower = 20,0
hitflag = MAFD
guardflag = MAF
pausetime = 0,8
sparkno = 3
guard.sparkno = 4
priority = 3,miss
hitsound = S3,1
guardsound = S3,2
ground.type = High
ground.slidetime = 3
ground.hittime  = 20
ground.velocity = -5
airguard.velocity = -5
air.velocity = -5
air.fall = 1
guard.kill = 0


[State DONE]
type = ChangeState
trigger1 = time>=40;all = time>=80
;trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Head Helper
;---------------------------------------------------------------------------
;-Idle-
[Statedef 1000]
type = A
movetype = I
ctrl = 0
physics = N
anim = 1000
sprpriority = -1

[State Turn]
type = Turn
trigger1 = facing = -(root,facing)

[State StayAtTheTop]
type = BindToRoot
trigger1 = 1
time = 1
pos = (root,const(size.head.pos.x)),(root,const(size.head.pos.y))
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State KidCan'tTouch]
type = StateTypeSet
trigger1 = (enemynear,name="IWBTG")||(enemynear,name="IWBTGG")
trigger1 = (enemynear,authorname="fhqwhgads7")
movetype = A

[State AntiKid]
type = HitDef
trigger1 = (enemynear,name="IWBTG")||(enemynear,name="IWBTGG")
trigger1 = (enemynear,authorname="fhqwhgads7")
attr = A,NA
hitflag = MAF
affectteam = E
animtype = light
air.animtype = light
damage = 50,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
getpower = 0,0
hitsound = S0,999 ;No.
guardsound = S0,999 ;No.
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -4.9,-.8
air.type = High
air.velocity = -6.4,-3
air.hittime = 12
fall = 1
kill = 1
numhits = -1

[State CHANGETOGETHITSTATE]
type = HitOverride
trigger1 = 1
attr = SCA,AP,AA,AT
stateno = 1001
time = 1

[State Die]
type = DestroySelf
trigger1 = lose
trigger2 = !(root,anim=195)

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-Hit-
[Statedef 1001]
type = A
movetype = H
ctrl = 0
physics = N
anim = 9741
sprpriority = -1

[State Turn]
type = Turn
trigger1 = facing = -(root,facing)

[State HPVariable]
type = ParentVarSet
trigger1 = 1
v = 21
value = gethitvar(damage)*2

[State ChangeState]
type = ChangeState
trigger1 = 1
value = 1000

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;---------------------------------------------------------------------
; lol Rubble
[Statedef 1900]
type=A
physics=N
movetype=I
anim=1900
ctrl=0
velset=-.05*(parentdist x)*isHelper(1900),(-8-(random/250.0))*isHelper(1900)
sprpriority=3

[State Fall]
type=veladd
trigger1=time
y=.33

[State RANDOM]
type = AngleSet
trigger1 = !time
value = (random%360)

[State DRAWIT]
type = AngleDraw
trigger1 = 1
scale = .5,.5

[State Die]
type=DestroySelf
triggerall = time
trigger1 = pos y >= 0

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;---------------------------------------------------------------------
;Falling Spike
[StateDef 2000]
type = A
movetype = A
physics = N
Ctrl = 0
anim = 2000
velset = 0,3-isHelper(2001)
sprpriority = 3

[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State DIIIIEEEEEE]
type = HitDef
triggerall = anim=2000
trigger1 = !MoveContact
attr = A,NA
hitflag = MAF
guardflag = MAF
affectteam = E
animtype = heavy
air.animtype = Heavy
priority = 2,miss
damage = 90-40*isHelper(2001),30-20*isHelper(2001)
sparkno = 3
guard.sparkno = 4
sparkxy = 0,0
hitsound = S3,2
guardsound = S120,0
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,-2
sprpriority = 1
getpower  = 0,0
givepower = 20,20
palfx.time = 20
palfx.add = 255,0,0
palfx.sinadd = -255,0,0,80

[State NOTBELOW]
type = PosSet
triggerall = anim=2000
trigger1 = pos y > 0
y = 0
[State STOP]
type = VelSet
trigger1 = !(pos y)
y = 0

[State Boom]
type = PlaySnd
triggerall = anim=2000
trigger1 = !(pos y)
value = S3,1
channel = 2

[State Boom]
type = ChangeAnim
triggerall = anim=2000
trigger1 = !(Pos Y)
value = 7000

[State Die]
type = DestroySelf
triggerall = anim=7000
trigger1 = !animtime

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;---------------------------------------------------------------------
;Spike Trap
[Statedef 2100]
type = S
movetype = I
physics = S
ctrl = 0
anim = 2100
sprpriority = -3

[State NEXTANIM]
type = ChangeAnim
triggerall = anim = 2100
trigger1 = !animtime
value = 2101

[State RESET]
type = MoveHitReset
trigger1 = !(time%60)

[State NEXT]
type = ChangeState
triggerall = !(((enemynear,name="IWBTG")||(enemynear,name="IWBTGG"))&&(enemynear,authorname="fhqwhgads7"))||!(enemy,stateno=5050)
triggerall = anim = 2101
triggerall = abs(p2dist x)<=(120-20*(((enemynear,name="IWBTG")||(enemynear,name="IWBTGG"))&&(enemynear,authorname="fhqwhgads7")))
trigger1 = -abs(p2dist y)>=-50
trigger2 = !(((enemynear,name="IWBTG")||(enemynear,name="IWBTGG"))&&(enemynear,authorname="fhqwhgads7"))
value = 2101

[State NEXT]
type = ChangeState
triggerall = anim = 2101
trigger1 = root,stateno=4001
trigger2 = roundstate>=3
trigger3 = root,movetype=H
trigger3 = root,var(50)
value = 2103

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;ARISE
[Statedef 2101]
type = S
movetype = A
physics = S
ctrl = 0
anim = 2102
sprpriority = -3

[STATE TURN]
TYPE = TURN
TRIGGERALL = !TIME
TRIGGER1 = P2DIST X < 0

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !MoveContact
attr = A,NA
hitflag = MAF
guardflag = MAF
affectteam = E
animtype = heavy
air.animtype = Heavy
priority = 2,miss
damage = 50,20
sparkno = 3
guard.sparkno = 4
sparkxy = 0,0
hitsound = S3,2
guardsound = S120,0
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,-2
sprpriority = 1
p1sprpriority = -3
getpower  = 0,0
givepower = 20,20
palfx.time = 20
palfx.add = 255,0,0
palfx.sinadd = -255,0,0,80

[State RESET]
type = MoveHitReset
trigger1 = !(time%60)

[State NEXT]
type = ChangeState
trigger1 = !animtime
value = 2102

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;Moving
[Statedef 2102]
type = S
movetype = A
physics = N
ctrl = 0
VelSet = 3,0
anim = 2103
sprpriority = -3

[STATE TURN]
TYPE = TURN
TRIGGERALL = !TIME
TRIGGER1 = P2DIST X < 0

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !MoveContact
attr = A,NA
hitflag = MAF
guardflag = MAF
affectteam = E
animtype = heavy
air.animtype = Heavy
priority = 2,miss
damage = 50,20
sparkno = 3
guard.sparkno = 4
sparkxy = 0,0
hitsound = S3,2
guardsound = S120,0
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,-2
sprpriority = 1
p1sprpriority = -3
guard.kill = 0
getpower  = 0,0
givepower = 20,20
palfx.time = 20
palfx.add = 255,0,0
palfx.sinadd = -255,0,0,80

[State RESET]
type = MoveHitReset
trigger1 = !(time%60)

[State GONE]
type = DestroySelf
trigger1 = frontedgedist < -70

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;Cancel
[Statedef 2103]
type = S
movetype = I
physics = S
ctrl = 0
anim = 2104
sprpriority = -3

[State DIE]
type = DestroySelf
trigger1 = !animtime

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;---------------------------------------------------------------------
;Falling Spikes Helper
[Statedef 2200]
anim = 9741
physics = N
sprpriority = -2

[State MOVEITMOVEITMOVEIT]
type = PosSet
trigger1 = 1
x = ((random%10)*32)-160
y = -300

[State FallingSpike]
type = Helper
trigger1 = !(time%(150-30*(root,var(50))))
helpertype = normal
name = "Spike"
ID = 2001
stateno = 2000
pos = 0,0
postype = p1
facing = 1
ownpal = 1

[State GONE]
type = DestroySelf
trigger1 = !(root,alive)

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;-------------------------------------------------------------------------------
;SPINNING PILEDRIVER OF THE NORTH STAR
[Statedef 4000]
type = S
movetype = A
physics = N
velset = .5,0
ctrl = 0
poweradd = -powermax
anim = 4000

[State Roar]
type = PlaySnd
trigger1 = !time
value = S0,1
channel = 0

[State Whoosh]
type = PlaySnd
trigger1 = !animelemtime(2)
value = S1,2
channel = 1

[State Grab'em]
type = HitDef
trigger1 = !MoveContact
attr = S,HT
hitflag = MAF
priority = 1,Miss
sparkno = -1
guard.sparkno = -1
p1sprpriority = -4
sprpriority = -5
hitsound = s2,4
p1facing = 1
p2facing = 1
;p1stateno = 4001
p2stateno = 4100
guard.dist = 0
fall = 1

[State Stick'emHere]
type = TargetBind
trigger1 = numtarget
pos = 150,-84-(target,Const(Size.Mid.Pos.Y))

[State Next/Done]
type = ChangeState
trigger1 = !animtime
trigger2 = !animelemtime(3)
trigger2 = numtarget
value = 4001*!!numtarget
ctrl = !numtarget


;-------------------------------------------------------------------------------
;SPINNING PILEDRIVER OF THE NORTH STAR
[Statedef 4001]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 4001

[State Stick'emHere]
type = TargetBind
trigger1 = numtarget
pos = 129,-96-(target,Const(Size.Mid.Pos.Y))

[State lolexplod]
type = Explod
trigger1 = !(numexplod(10000))
anim = 10000
id = 10000
postype = left
bindtime = -1
pos = 160,200
sprpriority = 10
removetime = -1
ownpal = 1
ontop = 1
scale = (640.0/804.0)*0.5,(640.0/804.0)*0.5

[State HOKUTOSHINKEN:SPINNINGUPAILDURIVA]
type = PlaySnd
trigger1 = time=60
value = s4000,0
channel = 0
volume = 128

[State lolnoexplod]
type = RemoveExplod
trigger1 = !animtime
id = 10000

[State Next/Done]
type = ChangeState
trigger1 = !animtime
value = 4002*!!numtarget
ctrl = !numtarget


;-------------------------------------------------------------------------------
;SPINNING PILEDRIVER OF THE NORTH STAR
[Statedef 4002]
type = S
movetype = A
physics = N
velset = -.35,-11
ctrl = 0
anim = 4002

[State RIGHTSTATE?]
type = DisplayToClipboard
trigger1 = 1
text = "ME: %d, THEM: %d"
params = var(7), (target,stateno)

[State Whoosh]
type = PlaySnd
trigger1 = !time
trigger2 = !animtime
value = s1,2
channel = 1
[State SPINMERIGHTROUND]
type = VarAdd
triggerall = numtarget
trigger1 = !animtime;elemtime(1)=1
trigger2 = !animelemtime(2);=1
trigger3 = !animelemtime(3);=1
trigger4 = !animelemtime(4);=1
v = 7
value = 1-4*(var(7)=3)
[State LIKEARECORDBABY]
type = TargetState
triggerall = numtarget
trigger1 = target,stateno!=4100+var(7)
value = 4100+var(7)
[State FASTER]
type = ChangeAnim
triggerall = numtarget
triggerall = !animtime
trigger1 = vel y >= -3
trigger1 = anim = 4002
trigger2 = vel y >= 0
trigger2 = anim = 4003
trigger3 = vel y >= 3
trigger3 = anim = 4004
value = 4002+(anim>=4002)+(anim>=4003)+(anim>=4004)

[State Stick'emHere]
type = TargetBind
triggerall = numtarget
trigger1 = target,stateno=4100
pos = 180,-90-(target,Const(Size.Mid.Pos.Y))
[State Stick'emHere2]
type = TargetBind
triggerall = numtarget
trigger1 = target,stateno=4101
pos = -54,-60-(target,Const(Size.Mid.Pos.Y))
[State Stick'emHere3]
type = TargetBind
triggerall = numtarget
trigger1 = target,stateno=4102
pos = -180,-90-(target,Const(Size.Mid.Pos.Y))
[State Stick'emHere4]
type = TargetBind
triggerall = numtarget
trigger1 = target,stateno=4103
pos = 54,-90-(target,Const(Size.Mid.Pos.Y))

[State Fall]
type = VelAdd
trigger1 = time
y = .03

[State Next/Done]
type = ChangeState
triggerall = time
trigger1 = pos y > 0
value = 4003


;-------------------------------------------------------------------------------
;SPINNING PILEDRIVER OF THE NORTH STAR
[Statedef 4003]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 4010

[State Shake'N'Bake]
type = EnvShake
trigger1 = !(time%5)
time = 5
freq = 180
ampl = -2

[State FLOORIT]
type = PosSet
trigger1 = !time
y = 0

[State RIGHTROUNDROUNDROUND]
type = TargetState
triggerall = numtarget
trigger1 = target,stateno!=4100
value = 4100
[State Stick'emHere]
type = TargetBind
triggerall = numtarget
trigger1 = animelemtime(2)<0
pos = 162,-60-(target,Const(Size.Mid.Pos.Y))
[State Stick'emHere2]
type = TargetBind
triggerall = numtarget
trigger1 = animelemtime(2)>=0
pos = 180,-21-(target,Const(Size.Mid.Pos.Y))
[State Boom]
type = PlaySnd
trigger1 = !time
value = s2,5
volume = 128
[State KABOOM]
type = Explod
trigger1 = !time
anim = 7001
ID = 7001
pos = 180,20
postype = p1
bindtime = 1
scale = 2,2
ownpal = 1
sprpriority = 4

[State RESET]
type = VarSet
trigger1 = !time
var(7)=0

[State KILL]
type = TargetState
triggerall = numtarget
trigger1 = animelemtime(2)>0
value = 4110

[State DROP'EM]
type = TargetDrop
triggerall = numtarget
trigger1 = animelemtime(2)>1

[State Next/Done]
type = ChangeState
triggerall = !(enemy,var(0))||!var(50)
trigger1 = time>=360
value = 0
ctrl = 1


;------------------------------
;Player 2
;------------------------------
[Statedef 4100]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -5
[State WHOCARESABOUTME]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
[State MYANIMKTHX]
type = ChangeAnim2
trigger1 = !time
value = 4100
[State TheyGotHurt]
type = SelfState
trigger1 = !gethitvar(isBound)
value = 5050
[Statedef 4101]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -3
[State WHOCARESABOUTME]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
[State MYANIMKTHX]
type = ChangeAnim2
trigger1 = !time
value = 4101
[State TheyGotHurt]
type = SelfState
trigger1 = !gethitvar(isBound)
value = 5050
[Statedef 4102]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -5
[State WHOCARESABOUTME]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
[State MYANIMKTHX]
type = ChangeAnim2
trigger1 = !time
value = 4101
[State TheyGotHurt]
type = SelfState
trigger1 = !gethitvar(isBound)
value = 5050
[Statedef 4103]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -5
[State WHOCARESABOUTME]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
[State MYANIMKTHX]
type = ChangeAnim2
trigger1 = !time
value = 4102
[State TheyGotHurt]
type = SelfState
trigger1 = !gethitvar(isBound)
value = 5050

[Statedef 4110]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -5
[State I'MTHEKID]
type = VarSet
trigger1 = !time
sysvar(1) = 1338-((name="IWBTG" || name="IWBTGG")&& authorname="fhqwhgads7")
[State WHOCARESABOUTME]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
[State DIE]
type = LifeSet
triggerall = sysvar(1)=1338
trigger1 = !time
value = 0
[State BOOM]
type = ChangeState
triggerall = sysvar(1) = 1338
trigger1 = !alive
value = 5150
[State TheyGotHurt]
type = SelfState
triggerall = time || sysvar(1) = 1337
trigger1 = !gethitvar(isBound)
value = 5050


;---------------------------------------------------------------------
;BLANKA
[StateDef 8000]
type = A
movetype = A
physics = N
Ctrl = 0
anim = 8000+isHelper(8001)
velset = 0,0
sprpriority = 3

[State SMALLER]
type = AngleDraw
trigger1 = anim=8001
scale = .5,.5

[State MOVEIT]
type = VelSet
trigger1 = !animelemtime(5)
x = 1

[State whoosh]
type = playsnd
trigger1 = !time
value = s1,isHelper(8000)

[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State DIIIIEEEEEE]
type = HitDef
trigger1 = !(time%120)
attr = A,NA
hitflag = MAF
guardflag = MAF
affectteam = E
animtype = heavy
air.animtype = Heavy
priority = 2,miss
damage = 40,20
sparkno = 3
guard.sparkno = 4
sparkxy = 0,0
hitsound = S2,0
guardsound = S120,0
ground.type = High
ground.hittime = 20
air.hittime = 20
ground.velocity = -4,0
air.velocity = -3,-2
getpower  = 0,0
givepower = 20,20
palfx.time = 20
palfx.add = 255,0,0
palfx.sinadd = -255,0,0,80

[State Die]
type = DestroySelf
trigger1 = frontedgedist < -10

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


;---------------------------------------------------------------------------
[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(3):=0
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)
trigger1 = !(var(4):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !(var(3) || var(9))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(4):=1)
var(58) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = var(4):=0

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(58) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(2) = 2
trigger8 = var(2):=0
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(1):=1
trigger1 = Parent,var(58)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2


;------------------
; AI Activation Helper State - Compatibly Partnered Version
;
; var(1) - First tick activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - Any dir on this tick.
; var(7) - Any button on this tick.
; var(8) - Matching partner button detected.
; var(9) - AutoTurn bug fixer.
; var(10)- Buffered dir detection disabler.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(58) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9742, UglyHack]
type = VarSet
trigger1 = !var(1)
var(2) = var(3):=2

[State 9742, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(1)
trigger5 = var(3):=0
var(2) = var(3):=1

[State 9742, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = var(6):=0
var(6) = 1

[State 9742, BufferCheck]
type = VarSet
trigger1 = var(3) || var(4) || var(10)
var(10) = var(6)

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(7):=0
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = Parent,command = "a"
trigger1 = Partner,command = "a"
trigger2 = Parent,command = "b"
trigger2 = Partner,command = "b"
trigger3 = Parent,command = "c"
trigger3 = Partner,command = "c"
trigger4 = Parent,command = "x"
trigger4 = Partner,command = "x"
trigger5 = Parent,command = "y"
trigger5 = Partner,command = "y"
trigger6 = Parent,command = "z"
trigger6 = Partner,command = "z"
trigger7 = Parent,command = "start"
trigger7 = Partner,command = "start"
trigger8 = var(8):=0
var(8) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(6)
trigger1 = !(var(9) || var(10))
var(58) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(58) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5) && var(7)
trigger1 = !(var(2) || var(8))
var(58) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !(var(2) || var(8))
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(58) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = var(2) = 2
trigger2 = var(2):=0
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(58)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6) || var(7)
trigger2 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = var(1):=1
var(5) = !var(7)


;------------------
; XOR Method's Helper State for Recent Custom State Check

[StateDef 9743]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9743, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9743, fiXOR]
type = VarAdd
trigger1 = !(Parent,HitPauseTime)
trigger1 = var(1) > 0
var(1) = -1

[State 9743, fuXOR]
type = VarSet
trigger1 = Parent,var(57) < GameTime
var(1) = 31
IgnoreHitPause = 1

[State 9743, Goodbye]
type = DestroySelf
trigger1 = Parent,var(58) = 1
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2


;---------------------------------------------------------------------------
;Floor Helper
;---------------------------------------------------------------------------
[Statedef 20000]
anim = 20000
physics = N
sprpriority = -2

[State STICKY]
type = PosSet
trigger1 = !time
y = 0
[State KindaSticky]
type = PosSet
trigger1 = !time
trigger2 = !(pos x = [-64,64])
x = 0

[State NoOtherStage]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow
flag2 = nobg
flag3 = nofg

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State JUSTKIDDING]
type = null;EnvColor
trigger1 = 1
value = 8,0,0
time = 1
under = 1


;-----Jukebox-----
[Statedef 30000]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State GOGOGOGOGO]
type = ChangeState
triggerall = roundstate
trigger1 = !(root,anim)
value = 30001

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 30001]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State StayWithKraidgief]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State StopSnd]
type = StopSnd
triggerall = !time
trigger1 = prevstateno!=[30000,30002]
channel = -1

[State PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S30000,0
loop = 1
channel = 9
volume = -128
abspan = 0

[State SHUTUP]
type = StopSnd
trigger1 = matchover
trigger1 = (((enemynear,name="IWBTG")||(enemynear,name="IWBTGG"))&&(enemynear,authorname="fhqwhgads7"))
trigger2 = matchover
trigger2 = (((enemynear(enemy,teammode=simul),name="IWBTG")||(enemynear(enemy,teammode=simul),name="IWBTGG"))&&(enemynear(enemy,teammode=simul),authorname="fhqwhgads7"))
trigger3 = enemy,var(0)
trigger3 = enemy,name="IWBTG"
trigger3 = enemy,stateno=5050
channel = 9

[State SHUTUP]
type = StopSnd
triggerall = roundstate>2
trigger1 = lose
channel = 9

[State FOTNS]
type = ChangeState
triggerall = root,stateno=4001
trigger1 = roundstate=2
value = 30002

[State DEAD]
type = ChangeState
triggerall = roundstate>3
trigger1 = lose
value = 30003

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 30002] ;FIST OF THE NORTH AWESOME
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State StayWithKraidgief]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State NoMusicOrBarz]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S30000,1
loop = 0
channel = 9
volume = 128
abspan = 0

[State NOTHINGTOSEEHERE]
type = null;StopSnd
triggerall = matchover
triggerall = win
trigger1 = ((enemynear,name="IWBTG")&&(enemynear,authorname="fhqwhgads7"))
trigger2 = ((enemynear(enemy,teammode=simul),name="IWBTG")&&(enemynear(enemy,teammode=simul),authorname="fhqwhgads7"))
channel = 9

[State SHUTUP]
type = StopSnd
triggerall = roundstate>2
trigger1 = lose
channel = 9

[State BACKTOKRAID]
type = ChangeState
triggerall = root,stateno!=[4000,4009]
trigger1 = roundstate<3
value = 30001

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901


[Statedef 30003]
type=A
physics=N
movetype=I
anim=9741
sprpriority=-5
ctrl=0

[State PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S30000,2
loop = 0
channel = 9
volume = 128
abspan = 0

[State NoMusicFailSafe]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State Die]
type = DestroySelf
trigger1 = root,stateno=5901

;---------------------------------------------------------------------------
; Super Armor by Winane
;---------------------------------------------------------------------------
[StateDef 44304]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 44304, Follow]
type = BindToRoot
trigger1 = 1
time = -1
facing = 1
pos = 0,0

[State 44304, Mimic]
type = ChangeAnim
trigger1 = SelfAnimExist(Root,Anim)
value = Root,Anim
elem = Root,AnimElemNo(0)

[State 44304, STSS]
type = StateTypeSet
trigger1 = Root,StateType = S
StateType = S

[State 44304, STSC]
type = StateTypeSet
trigger1 = Root,StateType = C
StateType = C

[State 44304, STSA]
type = StateTypeSet
trigger1 = Root,StateType = A
StateType = A

[State 44304, STSL]
type = StateTypeSet
trigger1 = Root,StateType = L
StateType = L

[State 44304, MTSA]
type = StateTypeSet
trigger1 = Root,MoveType = A
MoveType = A

[State 44304, MTSI]
type = StateTypeSet
trigger1 = Root,MoveType = I
MoveType = I

[State 44304, MTSH]
type = StateTypeSet
trigger1 = Root,MoveType = H
MoveType = H

[State 44304, Hide]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = NoShadow

[State 44304, NHB]
type = NotHitBy
trigger1 = 1
value = , AT
time = -1

[State 44304, HO]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 44305

;---I gotz hit---
[StateDef 44305]
ctrl = 0
physics = N
velset = 0
sprpriority = -5

[State 44305, PVS]
type = ParentVarSet
trigger1 = !(root,stateno=1)
trigger1 = !(root,stateno=5000)
trigger1 = !(root,prevstateno=1)
trigger1 = (enemy,var(10)!=4)||((enemy,name!="IWBTG")*(enemy,name!="IWBTGG"))
var(20) = floor(GetHitVar(damage)*((4+(enemynear,hitdefattr=SCA,NA,SA,HA)*!(((enemynear,name="IWBTG")||enemynear,name="IWBTGG")&&(enemynear,authorname="fhqwhgads7")))/4.0))

[State 44305, Revert]
type = ChangeState
trigger1 = 1
value = 44304

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;[Winane]
[State -2, StopAI]
type = VarSet
triggerall = var(58) > 0 && !IsHelper
triggerall = ctrl
trigger1 = RoundState != 2
trigger2 = !Alive
var(58) = -2
IgnoreHitPause = 1

[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(58) = 1
trigger2 = var(59):=0
var(59) = 1

[State NoTouchy]
type = NotHitBy
trigger1 = !isHelper
value = SCA
time = 1
IgnoreHitPause = 1
;[/Winane]

;[RicePigeon dampener]
[State -2, DamageBasedOnHits]
type = Varset
trigger1 = numenemy
fvar(10)= ifelse(enemynear,gethitvar(hitcount)<13, (1-(0.05*(enemynear,gethitvar(hitcount)))), ifelse(enemynear,gethitvar(hitcount)<35,0.35,0.1))
ignorehitpause = 1

[State -2, NoMoreDampening]
type = Varset
trigger1 = numenemy
trigger1 = !(enemynear,movetype=H)
trigger2 = !numenemy
fvar(10) = 1
ignorehitpause = 1

[State -2, DampenAtk]
type = AttackMulSet
trigger1 = 1
value = fvar(10)
ignorehitpause = 1
;[/RicePigeon dampener]

[State KraidgiefCantGuard]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State lolTimerFreezeAndStuff]
type = AssertSpecial
trigger1 = 1
flag = nomusic
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647
[State NoAIAutoWalk]
type = AssertSpecial
trigger1 = var(59)
flag = nowalk
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State NoPushy]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State ABORTCUSTOMSTATE]
type = SelfState
triggerall = !isHelper
trigger1 = var(57)!=gametime
value = 195

[State Reset]
type = ChangeState
triggerall = 0;
trigger1 = enemy,var(0)
trigger1 = (isHomeTeam)!=(teamside=1)
trigger1 = enemy,stateno=5901
trigger1 = prevstateno!=5901
trigger1 = stateno!=[5900,5901]
value = 5901
ctrl = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;[Winane]
[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(58) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(58) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, AI Helper]
type = Helper
triggerall = !var(58) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(58) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(58) = 1

; This method works somewhat in Linux Mugen version 2002.04.14,
; whereas the old humanly-impossible commands method does not.
; It is very important that this controller NOT be moved to State -2.
; Note that this part won't work nearly as well if AI.Cheat is turned off
; in mugen.cfg.
[State -3, XOR]
type = VarSet
triggerall = var(58)!=1 && !IsHelper
triggerall = !var(56)
triggerall = var(57) = GameTime-1
trigger1 = command = "a" ^^ command = "a2"
trigger2 = command = "b" ^^ command = "b2"
trigger3 = command = "c" ^^ command = "c2"
trigger4 = command = "x" ^^ command = "x2"
trigger5 = command = "y" ^^ command = "y2"
trigger6 = command = "z" ^^ command = "z2"
trigger7 = command = "start" ^^ command = "start2"
trigger8 = command = "hold_a" ^^ command = "holda2"
trigger9 = command = "hold_b" ^^ command = "holdb2"
trigger10 = command = "hold_c" ^^ command = "holdc2"
trigger11 = command = "hold_x" ^^ command = "holdx2"
trigger12 = command = "hold_y" ^^ command = "holdy2"
trigger13 = command = "hold_z" ^^ command = "holdz2"
trigger14 = command = "hold_s" ^^ command = "holdstart2"
trigger15 = command = "holdfwd" ^^ command = "holdfwd2"
trigger16 = command = "holdback" ^^ command = "holdback2"
trigger17 = command = "holdup" ^^ command = "holdup2"
trigger18 = command = "holddown" ^^ command = "holddown2"
;trigger19 = command = "recovery" ^^ command = "recovery2"
;Add more as desired. (See my notes in the CMD.)
var(58) = 1

; These next two controllers must be placed here, after the above XOR
; VarSet controller and before the below GameTime VarSet controller.
[State -3, fiXOR]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, fuXOR]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method or the XOR method to erroneously set the AI variable.
; And within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

[State AIGameTimeVariableReset]
type = VarSet
triggerall = var(59)
triggerall = movetype=A
trigger1 = !ctrl
var(55) = 0
[State AIGameTimeVariable]
type = VarAdd
triggerall = roundstate=2
triggerall = var(59)
triggerall = !isHelper
trigger1 = ctrl
v = 55
value = 1

[State -3, ArmorHelperByWinane]
type = Helper
trigger1 = !NumHelper(44304)
trigger1 = Alive
name = "Armor"
ID = 44304
StateNo = 44304
KeyCtrl = 1
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, Ow]
type = LifeAdd
trigger1 = var(20) && StateNo != [120,155]
value = -var(20)
[State -3, Ow2]
type = LifeAdd
trigger1 = var(21)
value = -var(21)

[State -3, INVISIBLE]
type = assertspecial
trigger1 = var(21)
flag = invisible

[State -3, Reset]
type = VarSet
trigger1 = 1
var(20) = 0
[State -3, Reset]
type = VarSet
trigger1 = 1
var(21) = 0
;[/Winane]

[State OriginalPoz]
type = Helper
triggerall = 0;
trigger1 = !numhelper(5902)
name = "BringItBackHere"
ID = 5902
StateNo = 5902
ownpal = 1


[State SprPriority]
type = SprPriority
trigger1 = !isHelper
value = -4

[State STUNNED]
type = ChangeState
triggerall = var(59)
triggerall = stateno != [4001,4010]
triggerall = stateno != [5000,5300]
triggerall = roundstate = 2
trigger1 = life <= (lifemax*((var(0)<2)+!var(0)))/3
value = 5000

[State JukeboxOfWin]
type=helper
triggerall = roundstate
triggerall = (var(25)||P3Name!="Kraidgief")
trigger1 = !numhelper(30000)
helpertype = normal
stateno = 30000+(roundstate>=2)*(stateno!=[5900,5901])
ID = 30000
name="Muzak"
pos=0,0
postype = P1
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647
ownpal=1
[State Floor]
type = Helper
trigger1 = !numhelper(20000)
helpertype = normal
name = "floor"
id = 20000
stateno = 20000
pos = 0,0
postype = p1
ownpal = 1
ignorehitpause = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State FallingSpikes]
type = Helper
triggerall = stateno!=[5900,5901]
triggerall = var(59)
triggerall = var(0)
triggerall = alive
triggerall = stateno!=5000
triggerall = stateno!=301
triggerall = stateno!=1
trigger1 = !numhelper(2200)
helpertype = normal
name = "FallingSpikes"
id = 2200
stateno = 2200
pos = 0,-300
postype = p1
ownpal = 1

[State DTCB]
type = DisplayToClipBoard
trigger1 = 1
text = "Phase: %d, AI: %d, AI Timer: %d"
params = var(0)+1, var(59), var(55)

[State -3, PowerGain]
type = PowerAdd
triggerall = alive
triggerall = movetype!=H
triggerall = stateno!=[1,3]
trigger1 = roundstate = 2
value = (!!var(55)||(!var(59)&&!!(gametime%3)))

