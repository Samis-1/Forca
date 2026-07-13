extends Node2D

@onready var label_palavra: Label = $Label
@onready var caixa_texto: LineEdit = $VBoxContainer/LineEdit
@onready var botao_enviar: Button = $VBoxContainer/Button
@onready var sprite_boneco: Sprite2D = $Sprite2D

var palavras = [
	"Destino",
	"Paralelepípedo",
	"Amigo",
	"Gato",
	"Camila",
	"Eren",
	"Alexia",
	"Samira"
]

var posicao = randi_range(0,7)
var palavra_sorteada = palavras[posicao]

var letras_descobertas:Array = []
var erros: int = 0

func _ready() -> void:
	for i in range(palavra_sorteada.length()):
		letras_descobertas.append("_")
	label_palavra.text= " " .join(letras_descobertas)
	
func _process(delta: float) -> void:
	pass
func _on_voltar_pressed() -> void:
		get_tree().change_scene_to_file("res://Prefabs/Menu.tscn")
