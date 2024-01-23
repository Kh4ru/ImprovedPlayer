extends CharacterBody2D
@export_category("Improved Player By Kh4ru")
@export_group("Mouvements")
@export var Vitesse = 300
@export_group("Actions")
@export var Haut = "action_haut"
@export var Bas = "action_bas"
@export var Gauche = "action_gauche"
@export var Droite = "action_droite"
@export_group("Image")
@export var Image_joueur = "icon.svg"

func _ready():
	$Sprite2D.texture = load(Image_joueur)

func _process(delta):
	if Input.is_action_pressed(Haut):
		position.y -= Vitesse * delta
	
	elif Input.is_action_pressed(Bas):
		position.y += Vitesse * delta
		
	elif Input.is_action_pressed(Gauche):
		position.x -= Vitesse * delta
	
	elif Input.is_action_pressed(Droite):
		position.x += Vitesse * delta
