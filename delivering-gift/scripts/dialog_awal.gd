extends Node2D

@onready var player: CharacterBody2D = $"Player"

func _ready() -> void:
	player.override_animation = "sit_right"
	
	var bgm = preload("res://assets/audio/music/Sheep.ogg")
	AudioManager.play_music(bgm)
	
	MessageBox.show_dialogue([
		{"speaker": "Bintang", "text": "Malam Rembulan, selamat ulang tahun yaah"},
		{"speaker": "Rembulan", "text": "Eee- tiba tiba banget, makasii"},
		{"speaker": "Bintang", "text": "Hehe sama sama, kamu lagi apa?"},
		{"speaker": "Rembulan", "text": "Akuu lagi bikin kue ini"},
		{"speaker": "Bintang", "text": "Wuahh, enaknyaa.. Kue apa?"},
		{"speaker": "Rembulan", "text": "Kue ulang tahun,, bikin bareng mamah"},
		{"speaker": "Bintang", "text": "Mmm, mau ikuutt"},
		{"speaker": "Rembulan", "text": "Tapi bentar lagi selesaii"},
		{"speaker": "Rembulan", "text": "Kalau mau, kamu ke rumah ajaa :D"},
		{"speaker": "Bintang", "text": "Wihh boleh nii?"},
		{"speaker": "Rembulan", "text": "Bolehh koo, sekalian mam kue bareng"},
		{"speaker": "Bintang", "text": "Okeii, aku otw sekarang yaah >//<"},
		{"speaker": "Rembulan", "text": "Eee- okee, hati hati yaah :D"}
	])
	
	await MessageBox.dialogue_finished
	MessageBox.is_busy = true
	await get_tree().create_timer(1.0).timeout
	
	await MessageBox.show_notification("Hmm sekalian aku surprise in ahh", 4.0)
	
	player.override_animation = ""
	
