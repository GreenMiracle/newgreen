/proc/command_alert(var/text, var/title = "")
	var/command
	command += "<h1 class='alert'>[command_name()] Update</h1>"
	if (title && length(title) > 0)
		command += "<br><h2 class='alert'>[sanitize_russian(title)]</h2>"

	command += "<br><span class='alert'>[sanitize_russian(html_decode(text))]</span><br>" //Say no for #
	command += "<br>"
	for(var/mob/M in player_list)
		if(!istype(M,/mob/new_player))
			M << command
