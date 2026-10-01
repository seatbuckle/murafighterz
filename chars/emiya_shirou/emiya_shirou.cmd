; サンプルキャラクター『カンフーマン』のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command]
name = "ubw"
command = ~B, DB, D, DF, F, y

[Command]
name = "kakuyoku"
command = ~B, DB, D, DF, F, x

[Command]
name = "Nine-Lives Blade Works"
command = ~B, DB, D, DF, F, b

[Command]
name = "Caliburn"
command = ~B, DB, D, DF, F, a


;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "cross upper high"
command = ~F, D, DF, b

[Command]
name = "cross upper low"
command = ~F, D, DF, a

[Command]
name = "shoot high"
command = ~D, DF, F, b

[Command]
name = "shoot low"
command = ~D, DF, F, a

[Command]
name = "sliding"
command = ~D, DF, F, y

[Command]
name = "3_atack_1"
command = ~D, DF, F, x

;---------------------------

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------
[Command]
name = "zenten"
command =/F, a+b
time = 1

[Command]
name = "bakuten"
command =/B, a+b
time = 1

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "fd"
command = a+x

[Command]
name = "fd"
command = a+y

[Command]
name = "fd"
command = a+b

[Command]
name = "fd"
command = b+x

[Command]
name = "fd"
command = b+y

[Command]
name = "fd"
command = x+y

[Command]
name = "burst"
command = z+a

[Command]
name = "burst"
command = z+b

[Command]
name = "cancel"
command = z+x

[Command]
name = "burst"
command = z+y

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "DF_x"
command = /DF, x

[Command]
name = "F_x"
command = /F, x

[Command]
name = "F_y"
command = /F, y

[Command]
name = "B_x"
command = /B, x

[Command]
name = "B_y"
command = /B, y

[Command]
name = "F_a"
command = /F, a

[Command]
name = "F_b"
command = /F, b

[Command]
name = "B_b"
command = /B, b

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "hold x"
command = /x
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdb"
command = /b
time = 1

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

;---------------------------

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 無限の剣製]
type = ChangeState
value = 4000
triggerall = !ishelper
triggerall = command ="ubw"|| (NumHelper(60000)&&Helper(60000),Var(0)=4000 && Helper(60000),Var(1)>0)
triggerAll = statetype = S
TriggerAll = Var(16) >= 6 
trigger1 = ctrl

[State -1, 鶴翼3連]
type = ChangeState
value = 3400
triggerall = !ishelper
triggerall = command ="kakuyoku"|| (NumHelper(60000)&&Helper(60000),Var(0)=3400 && Helper(60000),Var(1)>0)
triggerAll = statetype = S
TriggerAll = Power>999
TriggerAll = numhelper(3401) = 0
TriggerAll = numhelper(3402) = 0
trigger1 = ctrl

[State -1, 鶴翼追撃]
type = ChangeState
value = 3411
trigger1 = !ishelper
trigger1 = var(11) = [6,12]

[State -1, 鶴翼追撃]
type = ChangeState
value = 3410
trigger1 = !ishelper
trigger1 = var(11) = [1,2]

[State -1, ナインライブズブレイドワークス]
type = ChangeState
value = 3100
triggerall = !ishelper
triggerall = command ="Nine-Lives Blade Works"|| (NumHelper(60000)&&Helper(60000),Var(0)=3100 && Helper(60000),Var(1)>0)
triggerAll = statetype = S
TriggerAll = Power>999
trigger1 = ctrl

[State -1, カリバーン]
type = ChangeState
value = 3000
triggerall = !ishelper
triggerall = command ="Caliburn"|| (NumHelper(60000)&&Helper(60000),Var(0)=3000 && Helper(60000),Var(1)>0)
TriggerAll = Power>999
triggerAll = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 205 && (var(1) || animelemtime(6)>=0)


;------------------------------------------------------------------------------
; ここで↑にて実際に使っている「スマッシュカンフーアッパーのChangeState」を例に
; 見て行きましょ！m9っ｀Д´)
;
; まず特定のコマンドを入力したいならば、
; 必ず『呼び出すコマンドのトリガー』は設定しましょう。
; 特殊な条件でない限り、コマンドは通常「triggerall」の方で設定した方が良い。
;
;「triggerall」とは『有効になる状況を限定するための条件』を指定する。
; triggerallの条件が有効にならない限り、trigger1以降の条件も有効にはならない。
; 何個でも増やせる。ステート作成の基本テクニックの一つなので覚えておいてね。
; しかしtriggerallはtrigger1以降が無いと「単体では」使えないので注意。
;（trigger1以降を全てコメント化してM.U.G.E.Nでそのキャラを選んで試してみよう）
;
;
; ※『パワーゲージ』は「スーパーコンボゲージ」や「超必殺技ゲージ」などで
; 　呼ばれてる部分のゲージです。
; 　ゲージが「１０００ポイント」なら『レベル１』と同じ意味になります。
;
; 　まぁパッと見、M.U.G.E.Nのパワーゲージって仕組みが
; 　ストＺＥＲＯシリーズの「スーパーコンボレベルゲージ」まんまだよね（苦笑
;------------------------------------------------------------------------------

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。

[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1

;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = command = "holdfwd"
triggerall = command = "fd"|| (NumHelper(60000)&&Helper(60000),Var(0)=702 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = Stateno = [150,153]
;------------------------------------------------------------------------------
[State -1, 対空追撃]
type = ChangeState
value = 1280
triggerall = !ishelper
triggerall = command = "down_b"
TrigerAll = vel Y < 0
trigger1 = StateNo = 1200 && animelemtime(4)>=0 && animelemtime(8)< 0
trigger2 = StateNo = 1250 && animelemtime(4)>=0 && animelemtime(8)< 0

[State -1, 空中強対空]
type = ChangeState
value = 1250
triggerall = !ishelper
triggerall = command = "cross upper high"|| (NumHelper(60000)&&Helper(60000),Var(0)=1250 && Helper(60000),Var(1)>0)
triggerAll = statetype = A
TrigerAll = pos Y<=-15
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(4)>=0)
trigger3 = StateNo = 610 && (var(1) || animelemtime(5)>=0)
trigger4 = StateNo = 630 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 640 && (var(1) || animelemtime(8)>=0)
trigger6 = (stateno = 110 || stateno = 115) && time >= 6

[State -1, 強対空]
type = ChangeState
value = 1250
triggerall = !ishelper
triggerall = command ="cross upper high"|| (NumHelper(60000)&&Helper(60000),Var(0)=1250 && Helper(60000),Var(1)>0)
trigger1 = var(1)

[State -1, 空中弱対空]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = command = "cross upper low"|| (NumHelper(60000)&&Helper(60000),Var(0)=1200 && Helper(60000),Var(1)>0)
triggerAll = statetype = A
TriggerAll = pos Y<=-15
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(4)>=0)
trigger3 = StateNo = 610 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 630 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 640 && (var(1) || animelemtime(8)>=0)
trigger6 = (stateno = 110 || stateno = 115) && time >= 6

[State -1, 弱対空]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = command ="cross upper low"|| (NumHelper(60000)&&Helper(60000),Var(0)=1200 && Helper(60000),Var(1)>0)
trigger1 = var(1)

[State -1, 空中下射撃]
type = ChangeState
value = 1575
triggerall = !ishelper
triggerall = command = "shoot high"|| (NumHelper(60000)&&Helper(60000),Var(0)=1600 && Helper(60000),Var(1)>0)
triggerAll = statetype = A
TriggerAll = pos Y<=-15
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(4)>=0)
trigger3 = StateNo = 610 && (var(1) || animelemtime(5)>=0)
trigger4 = StateNo = 630 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 640 && (var(1) || animelemtime(8)>=0)
trigger6 = (stateno = 110 || stateno = 115) && time >= 6

[State -1, 空中水平射撃]
type = ChangeState
value = 1550
triggerall = !ishelper
triggerall = command = "shoot low"|| (NumHelper(60000)&&Helper(60000),Var(0)=1500 && Helper(60000),Var(1)>0)
triggerAll = statetype = A
TriggerAll = pos Y<=-15
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(4)>=0)
trigger3 = StateNo = 610 && (var(1) || animelemtime(5)>=0)
trigger4 = StateNo = 630 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 640 && (var(1) || animelemtime(8)>=0)
trigger6 = (stateno = 110 || stateno = 115) && time >= 6

[State -1, ダイブアタック]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = command = "3_atack_1"|| (NumHelper(60000)&&Helper(60000),Var(0)=1500 && Helper(60000),Var(1)>0)
triggerAll = statetype = A
TriggerAll = pos Y<=-15
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(4)>=0)
trigger3 = StateNo = 610 && (var(1) || animelemtime(5)>=0)
trigger4 = StateNo = 630 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 640 && (var(1) || animelemtime(8)>=0)
trigger6 = (stateno = 110 || stateno = 115) && time >= 6

[State -1, 3連撃-3b]
type = ChangeState
value = 1450
triggerall = command ="b"|| (NumHelper(60000)&&Helper(60000),Var(0)=1400 && Helper(60000),Var(1)>0)
trigger1 = StateNo = 1410 &&  animelemtime(5)>=0

[State -1, 3連撃-3a]
type = ChangeState
value = 1440
triggerall = command ="a"|| (NumHelper(60000)&&Helper(60000),Var(0)=1400 && Helper(60000),Var(1)>0)
trigger1 = StateNo = 1410 &&  animelemtime(5)>=0 

[State -1, 3連撃-3y]
type = ChangeState
value = 1430
triggerall = command ="y"|| (NumHelper(60000)&&Helper(60000),Var(0)=1400 && Helper(60000),Var(1)>0)
trigger1 = StateNo = 1410 &&  animelemtime(5)>=0
[State -1, 3連撃-3x]
type = ChangeState
value = 1420
triggerall = command ="x"|| (NumHelper(60000)&&Helper(60000),Var(0)=1400 && Helper(60000),Var(1)>0)
trigger1 = StateNo = 1410 &&  animelemtime(5)>=0

[State -1, 3連撃-2]
type = ChangeState
value = 1410
triggerall = command ="x"|| (NumHelper(60000)&&Helper(60000),Var(0)=1400 && Helper(60000),Var(1)>0)
trigger1 = StateNo = 1400 &&  animelemtime(7)>=0

[State -1, 3連撃-1]
type = ChangeState
value = 1400
triggerall = command ="3_atack_1"|| (NumHelper(60000)&&Helper(60000),Var(0)=1400 && Helper(60000),Var(1)>0)
trigger1 = var(1)
trigger2 = StateNo = 240 && (var(1) || animelemtime(6)>=0)

[State -1, 強射撃]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = command = "shoot high"|| (NumHelper(60000)&&Helper(60000),Var(0)=1100 && Helper(60000),Var(1)>0)
trigger1 = var(1)

[State -1, スライディング]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = command = "sliding"|| (NumHelper(60000)&&Helper(60000),Var(0)=1125 && Helper(60000),Var(1)>0)
trigger1 = var(1)

[State -1, 通常射撃]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = command = "shoot low"|| (NumHelper(60000)&&Helper(60000),Var(0)=1000 && Helper(60000),Var(1)>0)
trigger1 = var(1)

;------------------------------------------------------------------------------
[State -2];金バースト
type = ChangeState
value = 750
triggerall = !ishelper
triggerall = fvar(33) >= 1.5
triggerall = command = "burst"|| (NumHelper(60000)&&Helper(60000),Var(0)=750 && Helper(60000),Var(1)>0)
triggerall = alive && roundstate = 2
trigger1 = (ctrl||fvar(28))
trigger2 = stateno = [100,101]
trigger3 = time <= 1
trigger3 = movetype = A
trigger3 = stateno = [200,640]
trigger3 = prevstateno != [200,640]

[State -2];青バースト
type = ChangeState
value = 755
triggerall = !ishelper
triggerall = fvar(33) >= 1.5
triggerall = command = "burst"
triggerall = alive && roundstate = 2
triggerall = !var(38)
triggerall = movetype = H
triggerall =!hitshakeover 
trigger1 = (anim = [120,159])&&stateno!=700
trigger2 = (anim = [5000,5119]) || ((vel x != 0 || vel y != 0)&&(stateno != [5000,5499]))
trigger2 = gethitvar(isbound)=0
trigger3 = stateno = [5000,5119]
trigger4 = stateno = 5120&&animtime=0

;------------------------------------------------------------------------------
[State -1];地上ロマンキャンセルEX
type = ChangeState
value = 984
triggerall = !ishelper
triggerall = movetype !=H
triggerall = enemy,movetype !=H
triggerall = power >= 500
triggerall = command = "burst"
triggerall = alive && roundstate = 2
triggerall =var(44)=0
triggerall =var(13)=0
triggerall = stateno != 3000 &&  animelemtime(16)>=0
triggerall = stateno != 3100 &&  animelemtime(16)>=0
triggerall = stateno != 3200 &&  animelemtime(41)>=0
triggerall = stateno != 3300
triggerall = stateno != [3400, 3499]
triggerall = stateno != [4000, 4300]
trigger1 = statetype =S||statetype =C 
trigger2 = stateno = 52
;===========================================================================
[State -1];地上ロマンキャンセル
type = ChangeState
value = 980
triggerall = !ishelper
triggerall = movetype !=H
triggerall = power >= 1000
triggerall = command = "burst"
triggerall =var(44)=0
triggerall = alive && roundstate = 2
triggerall = statetype =S||statetype =C
triggerall = stateno != 3200 &&  animelemtime(41)>=0
triggerall = stateno != 3300
triggerall = stateno != [3400, 3499]
triggerall = stateno != [4000, 4300]
triggerall = stateno != 1320
trigger1 = movecontact
trigger2 = enemy,movetype =H
trigger2 =stateno !=810 
trigger2 =stateno !=860 
trigger3 =var(13)=1  
trigger4 = enemy,movetype =H
trigger4 =stateno =810 && animelemtime(18)>=0
trigger5 = enemy,movetype =H
trigger5 =stateno =860 && animelemtime(18)>=0
;--------------------------------------------------------------------------

;--------------------------------------------------------------------------
[State -1];空中ロマンキャンセルEX
type = ChangeState
value = 994
triggerall = !ishelper
triggerall = movetype !=H
triggerall = enemy,movetype !=H
triggerall = power >= 500
triggerall = command = "burst"
triggerall =var(44)=0
triggerall =var(13)=0
triggerall = stateno != 3050 
trigger1 = statetype =A


[State -1];空中ロマンキャンセル
type = ChangeState
value = 990
triggerall = !ishelper
triggerall = movetype !=H
triggerall = power >= 1000
triggerall = command = "burst"
triggerall = statetype = A
triggerall =var(44)=0
triggerall = stateno != 1350
trigger1 = movecontact
trigger1 = enemy,movetype =H
trigger2 =var(13)=1
;===========================================================================
[State -1];前転
type = ChangeState
value = ifelse(command = "holdback",108,107)
triggerall = !ishelper
triggerall = command = "zenten"|| (NumHelper(60000)&&Helper(60000),Var(0)=107 && Helper(60000),Var(1)>0)
triggerall = stateNO != 6700
trigger1 = MoveType != H
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
 
[State -1];バク転
type = ChangeState
value = ifelse(command = "holdback",108,107)
triggerall = !ishelper
triggerall = command = "bakuten"|| (NumHelper(60000)&&Helper(60000),Var(0)=108 && Helper(60000),Var(1)>0)
triggerall = stateNO != 6700
trigger1 = MoveType != H
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100

;------------------------------------------------------------------------------

;----------------------------------------------------------------------------
[State -1];Bフィールド(空中)
type = ChangeState
value = 2152
triggerall = !ishelper
triggerall = alive
triggerall = statetype = A
triggerall = power >= 500
trigger1 = command = "b" &command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=2150 && Helper(60000),Var(1)>0)
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1];Bフィールド(しゃがみ)
type = ChangeState
value = 2151
triggerall = !ishelper
triggerall = alive
triggerall = statetype != A
triggerall = power >= 500
trigger1 = command = "b" &command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=2150 && Helper(60000),Var(1)>0)
trigger1 = command = "holddown"
trigger1 = ctrl
;----------------------------------------------------------------------------
[State -1];Bフィールド(立ち)
type = ChangeState
value = 2150
triggerall = !ishelper
triggerall = alive
triggerall = statetype != A
triggerall = power >= 500
trigger1 = command = "b" &command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=2150 && Helper(60000),Var(1)>0)
trigger1 = command != "holddown"
trigger1 = ctrl
;---------------------------------------------------------------------------
;------------------------------------------------------------------------------


;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------
[State -1,JumpC];
Type=ChangeState
value=40
triggerall = !ishelper
TriggerAll=StateType!=A
TriggerAll=command="holdup"
TriggerAll=MoveContAct
Trigger1=(StateNo=[200,699]) || StateNo= 6430

[State -1,AJumpC];
Type=ChangeState
value=45
triggerall = !ishelper
TriggerAll=StateType=A
TriggerAll=command="holdup"
TriggerAll=MoveContAct
Trigger1 = ctrl = 1
Trigger2=(StateNo=[200,699]) || StateNo= 6430
Trigger2 = var(2)  <= 0
Trigger2=MoveHit

[State -1,A dashC];
Type=ChangeState
value=110
triggerall = !ishelper
TriggerAll=StateType=A
TriggerAll=command="FF"
Trigger1 = ctrl = 1
Trigger1 = var(3)  <= 0
Trigger2=(StateNo=[200,699]) || StateNo= 6430
Trigger2=MoveHit

[State -1,A back dashC];
Type=ChangeState
value=115
triggerall = !ishelper
TriggerAll=StateType=A
TriggerAll=command="BB"
Trigger1 = ctrl = 1
Trigger1 = var(3)  <= 0
Trigger2=(StateNo=[200,699]) || StateNo= 6430
Trigger2=MoveHit

[State -1, 走る]
type = ChangeState
value = 100
triggerall = !ishelper
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = !ishelper
trigger1 = command = "BB"|| (NumHelper(60000)&&Helper(60000),Var(0)=105 && Helper(60000),Var(1)>0)
trigger1 = statetype = S
trigger1 = ctrl

[State -1,air dash Forward]
Type=ChangeState
value=110
triggerall = !ishelper
TriggerAll=Alive!=0
TriggerAll=command="FF"
TriggerAll=StateType=A
TriggerAll= pos y <= ifelse(vel y < 0,-30,-10)
TriggerAll=anim!=110
TriggerAll = var(3) <= 0
Trigger1=((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger2 = ((stateno = [5200,5210]) || stateno = 5040) && ctrl

[State -1,air dash Back]
Type=ChangeState
value=115
triggerall = !ishelper
TriggerAll=Alive!=0
TriggerAll=command="BB"
TriggerAll=StateType=A
TriggerAll=pos y <= ifelse(vel y < 0,-30,-10)
TriggerAll=anim!=115
TriggerAll = var(3) <= 0
Trigger1=((stateno = [50,59])||(stateno = [120,140])) && ctrl
trigger2 = ((stateno = [5200,5210]) || stateno = 5040) && ctrl
;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 前投げ];投げ技
type = ChangeState
value = 800
triggerall = !ishelper
triggerall = command = "F_b"|| (NumHelper(60000)&&Helper(60000),Var(0)=245 && Helper(60000),Var(1)>0)
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

[State -1, 後ろ投げ];投げ技
type = ChangeState
value = 850
triggerall = !ishelper
triggerall = command = "B_b"|| (NumHelper(60000)&&Helper(60000),Var(0)=850 && Helper(60000),Var(1)>0)
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

;------------------------------------------------------------------------------

;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 縦斬り1]
type = ChangeState
value = 235
triggerall = command = "F_a"|| (NumHelper(60000)&&Helper(60000),Var(0)=235 && Helper(60000),Var(1)>0)
triggerall = !ishelper
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 210 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 230 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 205 && (var(1) || animelemtime(6)>=0)
trigger6 = StateNo = 245 && (var(1) || animelemtime(9)>=0)
trigger7 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger8 = StateNo = 405 && (var(1) || animelemtime(4)>=0)
trigger9 = StateNo = 410 && (var(1) || animelemtime(5)>=0)
trigger10 = StateNo = 215 && (var(1) || animelemtime(6)>=0)

[State -1, 縦斬り2]
type = ChangeState
value = 235
triggerall = command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=235 && Helper(60000),Var(1)>0)
triggerall = !ishelper
trigger1 = statetype = S
trigger1 = StateNo = 230 && (var(1) || animelemtime(5)>=0)

[State -1, 蹴り]
type = ChangeState
value = 215
triggerall = !ishelper
triggerall = command = "F_y"|| (NumHelper(60000)&&Helper(60000),Var(0)=215 && Helper(60000),Var(1)>0)
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 210 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 205 && (var(1) || animelemtime(6)>=0)
trigger5 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger6 = StateNo = 405 && (var(1) || animelemtime(4)>=0)

[State -1, 吹っ飛ばし殴り]
type = ChangeState
value = 205
triggerall = !ishelper
triggerall = command = "F_x"|| (NumHelper(60000)&&Helper(60000),Var(0)=205 && Helper(60000),Var(1)>0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 210 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 230 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger6 = StateNo = 405 && (var(1) || animelemtime(4)>=0)
trigger7 = StateNo = 410 && (var(1) || animelemtime(5)>=0)
trigger8 = StateNo = 235 && (var(1) || animelemtime(7)>=0)
trigger9 = StateNo = 215 && (var(1) || animelemtime(6)>=0)

[State -1, 連切り]
type = ChangeState
value = 245
triggerall = !ishelper
triggerall = command = "F_b"|| (NumHelper(60000)&&Helper(60000),Var(0)=245 && Helper(60000),Var(1)>0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 210 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 230 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 240 && (var(1) || animelemtime(6)>=0)
trigger6 = StateNo = 205 && (var(1) || animelemtime(6)>=0)
trigger7 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger8 = StateNo = 405 && (var(1) || animelemtime(4)>=0)
trigger9 = StateNo = 410 && (var(1) || animelemtime(5)>=0)
trigger10 = StateNo = 430 && (var(1) || animelemtime(6)>=0)
trigger11 = StateNo = 235 && (var(1) || animelemtime(7)>=0)
trigger12 = StateNo = 215 && (var(1) || animelemtime(6)>=0)

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = command = "x"|| (NumHelper(60000)&&Helper(60000),Var(0)=200 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
triggerall = stateno != 52
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger4 = StateNo = 405 && (var(1) || animelemtime(4)>=0)

[State -1, 膝蹴り]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = command = "y"|| (NumHelper(60000)&&Helper(60000),Var(0)=210 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger4 = StateNo = 405 && (var(1) || animelemtime(4)>=0)

[State -1, 横切り]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=230 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 210 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 205 && (var(1) || animelemtime(6)>=0)
trigger5 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger6 = StateNo = 405 && (var(1) || animelemtime(4)>=0)
trigger7 = StateNo = 410 && (var(1) || animelemtime(5)>=0)
trigger8 = StateNo = 215 && (var(1) || animelemtime(6)>=0)

[State -1, 十字強切り]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = command = "b"|| (NumHelper(60000)&&Helper(60000),Var(0)=240 && Helper(60000),Var(1)>0)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 210 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 230 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 205 && (var(1) || animelemtime(6)>=0)
trigger6 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger7 = StateNo = 405 && (var(1) || animelemtime(4)>=0)
trigger8 = StateNo = 410 && (var(1) || animelemtime(5)>=0)
trigger9 = StateNo = 430 && (var(1) || animelemtime(6)>=0)
trigger10 = StateNo = 235 && (var(1) || animelemtime(7)>=0)
trigger11 = StateNo = 215 && (var(1) || animelemtime(6)>=0)
;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 197
triggerall = !ishelper
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, アッパー]
type = ChangeState
value = 405
triggerall = !ishelper
triggerall = command = "DF_x"|| (NumHelper(60000)&&Helper(60000),Var(0)=405 && Helper(60000),Var(1)>0)
trigger1 = statetype = S ||statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && animelemtime(5)>=0
trigger3 = StateNo = 400 && animelemtime(4)>=0
trigger4 = StateNo = 235 && animelemtime(7)>=0
trigger5 = StateNo = 1300 && animelemtime(9)>=0

[State -1, しゃがみパンチ1]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = command = "x"|| (NumHelper(60000)&&Helper(60000),Var(0)=200 && Helper(60000),Var(1)>0)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && animelemtime(5)>=0
trigger3 = StateNo = 400 && animelemtime(4)>=0

[State -1, しゃがみキック]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = command = "y"|| (NumHelper(60000)&&Helper(60000),Var(0)=210 && Helper(60000),Var(1)>0)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && animelemtime(5)>=0
trigger3 = StateNo = 400 && animelemtime(4)>=0
trigger4 = StateNo = 405 && animelemtime(4)>=0
trigger5 = StateNo = 430 && animelemtime(6)>=0
trigger6 = StateNo = 210 && animelemtime(6)>=0

[State -1, しゃがみ弱切り]
type = ChangeState
value = 430
triggerall = !ishelper
triggerall = command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=230 && Helper(60000),Var(1)>0)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 210 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 230 && (var(1) || animelemtime(5)>=0)
trigger5 = StateNo = 205 && (var(1) || animelemtime(6)>=0)
trigger6 = StateNo = 235 && (var(1) || animelemtime(8)>=0)
trigger7 = StateNo = 245 && (var(1) || animelemtime(9)>=0)
trigger8 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger9 = StateNo = 405 && (var(1) || animelemtime(4)>=0)
trigger10 = StateNo = 410 && (var(1) || animelemtime(5)>=0)

[State -1, しゃがみ強切り]
type = ChangeState
value = 440
triggerall = !ishelper
triggerall = command = "b"|| (NumHelper(60000)&&Helper(60000),Var(0)=240 && Helper(60000),Var(1)>0)
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && (var(1) || animelemtime(5)>=0)
trigger3 = StateNo = 210 && (var(1) || animelemtime(6)>=0)
trigger4 = StateNo = 240 && (var(1) || animelemtime(6)>=0)
trigger5 = StateNo = 205 && (var(1) || animelemtime(6)>=0)
trigger6 = StateNo = 245 && (var(1) || animelemtime(9)>=0)
trigger7 = StateNo = 400 && (var(1) || animelemtime(4)>=0)
trigger8 = StateNo = 405 && (var(1) || animelemtime(4)>=0)
trigger9 = StateNo = 410 && (var(1) || animelemtime(5)>=0)
trigger10 = StateNo = 430 && (var(1) || animelemtime(6)>=0)
trigger11 = StateNo = 235 && animelemtime(7)>=0

;------------------------------------------------------------------------------

[State -1, ジャンプパンチ]
type = ChangeState
value = 600
triggerall = !ishelper
triggerall = command = "x"|| (NumHelper(60000)&&Helper(60000),Var(0)=200 && Helper(60000),Var(1)>0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(2)>=0)
trigger3 = StateNo = 610 && (var(1) || animelemtime(5)>=0)
trigger4 = StateNo = 630 && (var(1) || animelemtime(6)>=0)
trigger5 = (stateno = 110 || stateno = 115) && time >= 8

[State -1, ジャンプキック]
type = ChangeState
value = 610
triggerall = !ishelper
triggerall = command = "y"|| (NumHelper(60000)&&Helper(60000),Var(0)=210 && Helper(60000),Var(1)>0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(2)>=0)
trigger3 = (stateno = 110 || stateno = 115) && time >= 8

[State -1, ジャンプ弱切り]
type = ChangeState
value = 630
triggerall = !ishelper
triggerall = command = "a"|| (NumHelper(60000)&&Helper(60000),Var(0)=230 && Helper(60000),Var(1)>0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(2)>=0)
trigger3 = StateNo = 610 && (var(1) || animelemtime(5)>=0)
trigger4 = (stateno = 110 || stateno = 115) && time >= 8

[State -1, ジャンプ強切り]
type = ChangeState
value = 640
triggerall = !ishelper
triggerall = command = "b"|| (NumHelper(60000)&&Helper(60000),Var(0)=240 && Helper(60000),Var(1)>0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && (var(1) || animelemtime(2)>=0)
trigger3 = StateNo = 610 && (var(1) || animelemtime(5)>=0)
trigger4 = StateNo = 630 && (var(1) || animelemtime(6)>=0)
trigger5 = (stateno = 110 || stateno = 115) && time >= 8
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
