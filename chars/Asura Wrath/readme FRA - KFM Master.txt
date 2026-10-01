###################################################################################################
#####                                        KFM MASTER                                       #####
#####                              Version Beta 0.93 - 01/01/05                               #####
#####                          BASED ON THE ELECBYTE'S KFM CHARACTER                          #####
#####                                  IMPROVED BY MIKE WEREWOLF                              #####
###################################################################################################

Sommaire :
----------

I.   Présentation.
II.  Movelist de KFM Master.
III. Les ajouts (techniques).
IV.  Etat du projet.
V.   Crédits - Contacts.



I. PRESENTATION.

KFM Master est une nouvelle version de KFM !

Eh oui, une de plus, mais j'ai envie de coder, sans passer des heures à ripper, éditer ou créer des
sprites. Je pourrais également travailler en duo avec un spriteur, comme pour Cobra avec Butchy, 
mais justement, cette expérience m'a semblé un peu limitée, puisqu'on ne code que des mouvements 
pré-définis, sans innover réellement, à moins de vraiment travailler à deux pour définir et/ou
imaginer les coups et mouvements.

Cette nouvelle version a aussi pour but de rendre le personnage de KFM, qui est plutôt faible, plus
compétitif, en lui faisant des ajouts plus ou moins intéressants.

Cette nouvelle version de KFM apporte donc des coups inédits, avec quelques petites spécificités :
* Pas de nouveau sprite. Tous les nouveaux coups sont créés à partir des sprites existants.
* La programmation des nouveaux coups est expliquée en détails dans les fichiers CNS. Ceci pour 
  permettre à ceux qui débutent en programmation de comprendre le fonctionnement de Mugen. Je ne
  prétends pas que mon code est irréprochable, loin de là, mais je pense que ça peut donner une base
  assez concrète pour débuter.
* Les commentaires d'Elecbyte dans le CNS et le CMD d'origine sont/seront traduits en français (non 
  terminé pour l'instant)

* Tout comme KFM, KFM Master est libre d'utilisation. Vous pouvez donc le télécharger, le modifier,
  le proposer (même édité) en téléchargement comme bon vous semble, et sans demander la moindre 
  autorisation (même si j'apprécierai néanmoins que vous le fassiez...). Les seules petites 
  contraintes que je vous demande de respecter sont :
	- de ne pas modifier ce readme, et de ne pas l'exclure. Si vous voulez proposer une version
	  modifiée, faites un nouveau readme concernant VOS modifications.
	- de m'avertir que vous héberger KFM-Master, par simple politesse (ce n'est pas une exigence,
	  comme mentionné avant, mais plutôt un souhait).
	- de ne pas enlever mon nom des fichiers, par respect.
	- de ne pas enlever les commentaires que j'ai mis dans les fichiers.

Version : Kung Fu Man Master - Beta 0.93 - 01/01/01

Pas de version anglaise du readme pour la 0.93, du moins pour le moment. Je referai un readme anglais
dès que j'aurai un peu de temps.


II. MOVELIST DE KFM MASTER.

Voici la liste des coups de KFM Master. Les nouveaux mouvements sont notés *NEW*. Ceux qui ont été changés
sont notés *CHG*

Attention ! Les commandes ont changé depuis la version 0.71 !!!

    Attaques Basiques Debout
    ------------------------
      X              - W. Punch
      Y              - S. Punch
      Z              - H. Punch *NEW*
      A              - W. Kick
      B              - S. Kick
      C              - H. Kick *NEW*

    Attaques Basiques Accroupies
    ----------------------------
      X              - Low W. Punch
      Y              - Low S. Punch
      Z              - Uppercut	*NEW*
      A              - Low W. Kick
      B              - Sweep Kick
      C              - Sliding Sweep Kick *NEW*

    Attaques Basiques Aériennes
    ---------------------------
      X              - Air W. Punch
      Y              - Air S. Punch
      Z              - Air Double Punch *NEW*
      A              - Air W. Kick
      B              - Flying Kick
      C              - Flying Hard Kick	*NEW*

    Projection
    ----------
      F/B + z (de près) Kung Fu Throw *CHG*

    Attaques Spéciales
    ------------------
	B, D, DF + x	- W. Kung Fu Palm
	B, D, DF + y	- S. Kung Fu Palm
	B, D, DF + z	- Fast Kung Fu Palm (utilise 1/3 de niveau de power) *CHG*

	F, D, DF + x   - W. Kung Fu Upper
	F, D, DF + y   - S. Kung Fu Upper
	F, D, DF + z   - Fast Kung Fu Upper (utilise 1/3 de niveau de power) *CHG*

	F, F + a       - W. Kung Fu Knee
	F, F + b       - S. Kung Fu Knee
	F, F + z       - Fast Kung Fu Knee (utilise 1/3 de niveau de power) *CHG*
	Appuyez sur A, B ou C pendant le Kung Fu Knee pour ajouter un kick. *CHG*

	D, DB, B + x/y/z - Teleport *NEW*
	D, DB, B + x/y/z - Counter *NEW*
	F, D, DF + x/y/z - WoodProjection *NEW*
	a+x maintenus	 - Roll Cancel *NEW*
	b+y maintenus    - Power Charge *NEW*
	D, DF, F + a/b/c - Crushing Kick *NEW*
	D, DB, B + a/b/c - Kung Fu Kick *NEW*
	F, D, DF + 2K	 - Transversal Moving - Forwards *NEW*
	B, D, DB + 2K	 - Transversal Moving - Backwards *NEW*

    Attaques Hyper (Chacune utilise 1 niveau de power sauf Sacrifice et WC Chain)
    --------------
      D, DF, F, D, DF, F + x/y/z  - Triple Kung Fu Palm
      D, DB, B, D, DB, B + x/y/z  - Smash Kung Fu Upper

      D, DB, B, DB, D, DF, F + a/b/c	- Sacrifice *NEW* (utilise tout le power disponible)
      F, D, DF, x+y/x+z/y+z		- Drain *NEW*
      B, D, DB, x+y/x+z/y+z		- WC Chain *NEW* (utilise 2 niveaux de power)

  Combo notes
  -----------

    L'une des forces de KFM est sa capacité à enchaîner les mouvements. Voici les
    règles de base des combos :

      1.  Vous pouvez enchaîner une attaque basique faible avec une
          plus forte. Ex. light kick -> strong kick

      2.  Vous pouvez enchaîner la plupart des attaques basiques avec
          des attaques spéciales. Ex. stand strong punch -> Kung Fu Palm

      3.  Vous pouvez enchaîner la plupart des attaques basiques et
          spéciales avec des attaques Hyper. Ex. Kung Fu Palm ->
          Triple Kung Fu Palm

      4.  Vous pouvez également enchaîner certaines attaques hyper entre
          elles, tant que vous ne faites pas le même hyper deux fois dans
          un même enchaînement. Ex. Triple Kung Fu Palm -> Smash Kung Fu Upper

    Ces règles rendent possible la réalisation de combos destructeurs.
    Testez, et perfectionnez vos propres Kug Fu Combos !

    Nouveaux mouvements
    -------------------

    TELEPORT : Alors qu'il réalise son salut, KFM disparaît pour se matérialiser
    de l'autre côté de l'adversaire.

    SACRIFICE : Avec cette nouvelle technique KFM peut facilement récupérer de la
    vie en sacrifiant du power. Pour 100 points de power sacrifiés, KFM regagne 10
    points de vie, jusqu'à ce que sa barre de vie soit remplie ou que sa barre de 
    power soit vide. Vous n'avez besoin que de 100 points (1/10 d'un niveau de power)
    pour réaliser ce mouvement.

    WOODPROJECTION : Enfin, KFM a un projectile ! S'il est trop faible pour réaliser
    une boule de pure énergie, comme les vrais combattants - :p - KFM compense désormais
    en envoyant sa planche en bois à l'adversaire ! La puissance du poing utilisé pour ce
    coup fait varier la vitesse du projectile.

    POWER CHARGE : KFM concentre son énergie pour accumuler du power. Avec Sacrifice, KFM
    devient un peu plus dur à battre, et il peut sortir plus facilement ses hypers !

    CRUSHING KICK : Lorsqu'il est en saut, KFM peut sortir cette attaque. Il fond alors vers
    son adversaire, pied en avant. Réalisé avec le bouton 'a', KFM atterrit au sol après le
    coup, alors qu'avec 'b', si KFM touche son adversaire, il rebondit vers l'arrière dans les
    airs pour pouvoir sortir un nouveau coup aérien, et avec 'c', il rebondit vers l'avant !

    KUNG FU KICK : Réalisable au sol ou en l'air. KFM se projette à l'horizontale vers son
    adversaire pour lui asséner un violent coup de pied dans l'estomac. Réalisé avec 'c', vous
    pouvez alors enchaîner ce coup avec un second coup de pied (même manipulation), même si
    vous n'avez pas touché avec le premier coup !

    ROLL CANCEL : KFM va faire un roulé-boulé au sol, sur lequel il est complètement intouchable.
    Vous pouvez donc ainsi éviter n'importe quelle attaque. Si vous maintenez la direction bas à
    la fin du mouvement, KFM arrivera accroupi, sinon, il se relèvera.

    COUNTER (A REALISER LORSQUE VOUS PAREZ UN COUP DEBOUT AU SOL) : KFM bloque l'attaque adverse
    et contre attaque avec un Fast Kung Fu Palm si l'adversaire est au sol, ou un Fast Smash Kung
    Fu Upper si l'adversaire attaque en l'air. Vous devez achevez la manipulation quand le coup
    entre en contact avec votre défense.

    DRAIN : Une autre technique pour récupérer de la vie. Vous avez besoin d'un niveau de power
    pour réaliser ce coup, qu'il réussisse ou non. KFM va agripper d'une main son adversaire,
    l'attirer à lui, puis le soulever au-dessus de sa tête. Là, il va ensuite drainer la vie de
    son adversaire pour augmenter son propre niveau de vie. Vous ne pouvez donc réaliser ce
    coup, bien sûr, que si votre vie n'est pas au maximum. Le "drainage" s'arrête dans deux das :
    si votre vie arrive au max, ou si vous avez drainé votre adversaire pendant 2 secondes de
    jeu. Là, KFM lâchera son adversaire, et le repoussera d'un violent coup dans le ventre alors
    qu'il tombe.
    ***NB : Il existe une autre solution qui peut interrompre le drain : si l'adversaire appuie
    suffisament vite et un nombre suffisant de fois sur les touches a, b, c, x, y et z, il
    forcera KFM à interrompre le drain (mais l'adversaire encaissera quand même le coup dans le
    ventre).

    WC CHAIN : Peut-être l'un des coups les plus sympas de KFM-Master, même s'il n'est pas très
    évident à placer en combat :) KFM tire une corde invisible (vous savez, comme les anciennes
    chasses d'eau, avec le réservoir d'eau en hauteur - d'où le nom du coup, au fait) qui fait
    remonter une planche de bois de sous le sol, qui vient frapper l'adversaire, et le projeter
    dans les airs. Un "ninja KFM" surgit alors du haut de l'écran et piétinant l'ennemi, le
    ramène au sol. Ce ninja rebondit et sort de l'écran. L'adversaire rebondit également et
    se rapproche de KFM-Master. Ce dernier lui décoche alors un Kung Fu Palm et l'envoie rebondir
    contre le bord de l'écran. Lorsque l'ennemi revient, KFM sort alors un Smash Upper qui l'envoie
    haut dans les airs.

    TRANSVERSAL MOVING : KFM se prend pour Gouki, Evil Ryu et autres Evil Ken ! Il se déplace en
    glissant au sol, et peut changer de côté. Durant le déplacement, il est intouchable, et il est
    possible de l'arrêter instannément pour sortir un des hypers suivant : Triple Kung Fu Palm,
    Smash Kung Fu Upper, Drain, WC Chain (si le niveau de power le permet).

NOTE TECHNIQUE CONCERNANT LE WC CHAIN :
	Le tout premier coup de cet enchaînement est censé touché le personnage à hauteur de tête
	(approximativement). Le problème, c'est que tous les persos n'ont pas la même taille, et
	qu'il n'est donc pas possible de donner une hauteur fixe à partir de laquelle la planche
	peut toucher (ça toucherait les grands persos à hauteur du ventre, et ça pourrait ne pas
	toucher certains petits persos). Je n'ai donc pas d'autres choix, pour ce coup, que de me
	baser sur l'une des constantes du personnage qui est censée donner la taille du personnage,
	le paramètre "head.pos" dans la section [Size] du CNS de l'adversaire.

	L'ennui, c'est que cette constante n'est pas toujours correctement renseignée, ce qui peut
	avoir pour conséquence que la planche ne touche pas l'adversaire (parce que la hauteur qui
	aura été précisée est plus grande que la hauteur réelle du perso), ou qu'elle touche trop
	tôt (la valeur indiquée est plus petite que la taille réelle). Donc si le coup ne touche
	pas, il y a de fortes chances pour que ce paramètre soit faux.

	Si vous voulez renseigner correctement ce paramètre :
	* Ouvrez data/mugen.cfg et trouvez la section [Debug]
	* Réglez les paramètres AllowDebugMode et AllowDebugKeys à 1, enregistrez, et fermez.
	* Lancez Mugen, allez en Training, et choisissez le personnage qui pose problème.
	* Appuyez sur Ctrl+C pour afficher l'axe et les boîtes de collision.
	* Prenez un shot (F12).
	* Dans un logiciel de dessin, déterminez la position centrale du visage du perso par
	  rapport à son axe.
	* L'axe est la croix jaune qui apparaît au sol, entre les jambes du personnages.
	* La valeur x est positive si la tête est devant la croix, négative si elle est derrière.
	* La valeur y est toujours négative.
	* Ouvrez le fichier CNS du perso contenant une section [Size].
	* Trouvez le paramètre head.pos = 
	* Remplacez les valeurs existantes par celles que vous avez trouvées. Exemple : si vous avez
	  trouvé x = 5 et y = -90, vous aurez head.pos = 5,-90
	* Enregistez et fermez.

	S'il arrive parfois que le coup ne touche pas l'adversaire en saut : malheureusement, là
	encore, la position de l'adversaire en l'air et sa vitesse sont des données complètement
	aléatoires, et il se peut qu'à cause de cela, un adversaire passe une fois de temps en
	temps au travers. Toutefois, j'ai fait pas mal de test avec plusieurs persos différents
	en taille et en vitesse, sans rencontrer ce genre de problème.


III. LES AJOUTS (TECHNIQUES).

Cette partie est plutôt réservée à ceux qui s'intéressent à la création sur Mugen. Elle a pour but
d'exposer les ajouts qui ont été faits au personnage de base.

Tout d'abord, au niveau des fichiers :
* KFM.air (renommé en KFM-Master.air) :
	- 52 animations ajoutées (157 contre 105 à l'origine)
* KFM.cns (renommé en KFM-Master.cns) :
	- 9 states ajoutés (states -2)
	  Récupération de données pour le debug mode, actions en mode Sacrifice, récupération
	  de données pour le Drain. Les states désactivés ne sont pas comptés.
	- 3 states modifiés
	  Adaptation au mode 6 boutons
* KFM.cmd (renommé en KFM-Master.cmd) :
	- Commandes et States -1 correspondants ajoutés
	- Modification des anciennes commandes (adaptation au mode 6 boutons)
* KFM.def (renommé en KFM-Master.def) :
	- Modification du nom du personnage, de l'auteur, de la date du perso, des palettes
	  par défaut, ajout de plusieurs palettes, ajouts de 2 nouveaux fichiers CNS.
* KFM.snd (renommé en KFM-Master.snd) :
	- Ajout de 4 sons (23000,0 pour le power charge, 27000,0 pour le counter, 28000,0 pour le
	  Drain et 30000,0 pour le Transversal moving).

Fichiers ajoutés :
* KFM-Master.act	: Nouvelle palette pour KFM Master
* KFMM-02.act		: Nouvelle palette pour KFM Master
* KFMM-04.act		: Nouvelle palette pour KFM Master
* KFMM-05.act		: Nouvelle palette pour KFM Master
* KFMM-06.act		: Nouvelle palette pour KFM Master
* KFMM-07.act		: Nouvelle palette pour KFM Master
* NewMoves-Master.cns	: States normaux des nouveaux coups
* Common-Master.cns	: States du common1.cns réécrits dans le CNS du perso.

Pour le reste, tous les ajouts sont détaillés au niveau des CNS. Dans le CMD, les commandes et states -1
ajoutés comportent la mention *NEW*.

ATTENTION ! LES NOMS DE FICHIERS ET LE NOM DU DOSSIER DE KFM-MASTER ONT CHANGE DEPUIS LA VERSION 0.71 !



IV. ETAT DU PROJET.

A l'heure actuelle, il est difficile de dire à quel état d'avancement se situe KFM Master. Cet état
d'avancement concerne bien sûr les nouveaux coups, et ne prend pas en compte ce qui avait déjà été
réalisé par Elecbyte (le plus gros du travail, en clair).

Je dirai qu'en l'état actuel KFM Master est à un peu plus de 90% d'avancement, par rapport à la version
1.0. Pour la suite, tout dépendra bien sûr de mon imagination sur de futurs mouvements, mais j'ai déjà 
quelques idées et il est pratiquement sûr que KFM-Master bénéficiera d'autres updates une fois arrivé à
la version 1.0

Voici principalement ce qu'il reste à faire :
- Un Hyper "Enchaînement de coups" ; KFM porterait plusieurs coups en se téléportant entre chaque.
- Un Hyper "dédoublé" : Un clone de KFM apparaîtrait pour prendre l'adversaire entre deux feux dans
  un enchaînement style Morrigan de Darkstalkers.
- Une IA
- ...
- Voir aussi le fichier "A faire.txt".

Récapitulatif des mises à jour :
- Beta 0.93 (01/01/05) :
	* Correction d'un bug sur le teleport : si P2 était de dos par rapport à KFM, KFM se
	  retournait inutilement
	* Correction d'un autre bug sur le teleport : l'helper "fantôme" de KFM (qui simule sa
	  disparition à l'emplacement d'origine) apparaissait trop tôt, si bien qu'on pouvait
	  voir KFM et son "fantôme" sur la même position pendant quelques ticks.
	* Sons ajoutés pour tous les nouveaux mouvements ! Enfin !
	* 5 nouvelles palettes.
	* 1 stage inclus (Mountainside Temple by night), édité de Mountainside Temple (stage de KFM).
	* WC Chain : lorsque le ninja ramène P2 au sol, il va plus vite.
- Beta 0.92 (22/08/04) :
	* Position du spark sur le stand high punch corrigée.
	* High punch : Si l'adversaire est collé à KFM, KFM pousse son adversaire au lieu de 
	  passer au travers.
	* Suppression de variables inutiles.
	* WC Chain : désormais, pour toucher, l'helper Wood est basé sur la constante [Size],
	  head.pos au lieu de [Size], height.
	* WC Chain : désormais, le placement de l'helper Wood est basé sur la constante [Size],
	  head.pos au lieu de Enemy, Pos X.
	* WC Chain : Suppression d'un explod qui faisait doublon avec un hit spark sur le Kung Fu Palm.
	* WC Chain : désormais, le ninja ne peut plus "tuer" l'ennemi quand il le ramène au sol.
	* WC Chain : désormais, le dernier coup ne tue pas l'adversaire, seul le choc au sol le fait.
	* Ajout du Transversal Moving.
- Beta 0.90 (28/07/04) :
	* Drain réalisable avec 2 poings, peu importe lesquels (avant, uniquement avec x+y)
	* Nouvel Hyper : WC Chain
	* Amélioration du Roll Cancel : possibilité de sortir un coup un peu avant la fin.
	* Début de la traduction des commentaires du CNS d'origine
	* Création des MoveCancels pour les nouveaux coups
	* Correction d'un bug sur le crouch high kick (ne touchait pas les petits persos)
- Beta 0.85 (24/06/04) :
	* Ajout du Roll Cancel
	* Ajout du Counter
	* Ajout du Drain.
- Beta 0.80 (02/06/04) :
	* Passage de KFM en mode 6 boutons : 6 nouvelles attaques ajoutées (2 en stand, 2 en
	  crouch, 2 en air)
	* Amélioration de l'enchaînement du Kung Fu Kick hard.
	* Modification de certaines commandes existantes
	* Modification de certaines commandes ajoutées
	* Création de nouveaux coups spéciaux adaptés pour les 6 boutons (WoodProj, Kung Fu
	  Kicks, Crushing Kicks).
	* Adaptation des anciens coups de KFM au mode 6 boutons.
	* Modifications des noms des fichiers
- Beta 0.71 (31/05/04) :
	* Correction du debug mode
	* Correction de problèmes avec le Power Charge
	* Correction d'affichage d'une ligne ajoutée du debug mode
	* Transfert dans le CNS du debug mode placé dans CMD
	* Modifications de palfx sur les crushing kicks et le power charge
	* Modification du Kung Fu Kick hard pour rendre l'enchaînement des deux coups plus fluide.
- Beta 0.70 (25/05/04) :
	* Sortie initiale (privée), edit de KFM d'Elecbyte.



V. CREDITS

Je tiens à remercier :
* Elecbyte pour son formidable moteur de jeu et l'incroyable liberté de création qu'il offre,
* Elecbyte encore pour son perso KFM libre d'utilisation. Mine de rien, KFM est le premier perso Mugen à avoir existé !
* Chloe Sullivan pour son Mugen Help très précieux !
* Ceux qui ont montré un enthousiasme (même minime) pour ce perso quand il était encore en WIP Privée : fraky, Magnus, dadou, PaulAtreide, Solo.
* Les "jeunes" créateurs qui assureront peut-être la relève, et qui me donnent envie, par leur enthousiasme et leur soif de connaissance, de continuer encore un peu : fraky, dadou, Magnus, m@th, Alexandre, Eikichi(en espérant n'oublier personne).
* Sophie, pour son aide précieuse sur certains problèmes.

Je tiens également à NE PAS remercier :
* Ceux qui parlent beaucoup mais ne font pas grand-chose.
* Ceux qui croient que créer, c'est demander aux autres de réaliser le truc à leur place.
* Ceux qui connaissent Google mais ne pensent jamais à s'en servir.
* Ceux qui ne font pas attention à ce que les autres leur expliquent.
* Ceux qui n'ont pas ou peu de respect pour les créateurs.
* Ceux qui se prennent pour des génies et qui sont pourtant loin d'en être.
* Mugenfury et Arcadia, qui appartiennent à plusieurs de ces catégories.

Mike Werewolf.

Contacts :
----------
Site : http://mike.mugen.free.fr
Forum : http://mike.mugen.free.fr/Forum/
mail : mike.mugen@free.fr

