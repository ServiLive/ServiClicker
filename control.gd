extends Control

var puntos : int = 0
var multiplicador_compra : int = 0
var multiplicador_oculto : float = 0.5
var coste : int = 10

var modificador_doble : int = 1
var modificador_activo : int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%mult_precio.text = str(coste)
	%mult_cantidad.text = str(modificador_doble)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if puntos >= coste:
		%doble_puntos.disabled = false
	else:
		%doble_puntos.disabled = true

func _on_boton_clicker_pressed() -> void:
	if modificador_activo >= 1:
		puntos += 1 * modificador_doble
	else:
		puntos += 1
	
	%cantidad.text = str(puntos)

func _on_doble_puntos_pressed() -> void:
	if puntos >= coste:
		puntos -= puntos
		modificador_activo += 1
		multiplicador_compra += 2
		modificador_doble += 1
		multiplicador_oculto += 0.5
		coste = ceil(50 * (multiplicador_compra + multiplicador_oculto))
		%cantidad.text = str(puntos)
		%mult_precio.text = str(coste)
		%mult_cantidad.text = str(modificador_doble)
