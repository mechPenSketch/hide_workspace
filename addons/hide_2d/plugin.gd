tool
extends EditorPlugin

var toggle_btn

func _enter_tree():
	if toggle_btn == null:
		toggle_btn = get_toggle(get_editor_interface().get_base_control(), get_workspace_name())
	
	# IF HAPPENED TO BE TOGGLED,
	#	CHANGE TO FIRST MEMBER OF ITS SIBLINGS
	if toggle_btn.is_pressed():
		for c in toggle_btn.get_parent().get_children():
			if c != toggle_btn and c.is_visible():
				c.emit_signal("pressed")
				break
	
	toggle_btn.hide()
	
func _exit_tree():
	toggle_btn.show()

func get_toggle(nd, tx):
	if nd is ToolButton and nd.get_text() == tx:
		return nd
	else:
		for c in nd.get_children():
			var t = get_toggle(c, tx)
			if t:
				return t
	return null

func get_workspace_name():
	return "2D"
