state("RedFactionArmageddon_DX11") {
	bool loading: 		0x206AC08;	//1 on loads and fmvs leading to a load
	int map: 		0xCF80C8;	//0-27 on the according levels, large number in loads
	bool fmv:		0x24F1370;	//1 in fmv cutscenes
	string25 fmv_name:	0xF5CD28;	//the filename of the fmv currently playing
}

state("RedFactionArmageddon") {
	bool loading: 		0x2078E08;
	int map: 		0xCDE010;
	bool fmv:		0x28C6A70;
	string25 fmv_name:	0xF6AF98;
}

startup {
	vars.last_level = 0;
	vars.last_fmv = "";
	vars.sw = new Stopwatch();
}

update {
	if (current.fmv && !old.fmv) {
		vars.sw.Restart();
	}
	
	if (vars.sw.ElapsedMilliseconds > 900) {
		vars.last_fmv = current.fmv_name;
		vars.sw.Reset();
	}
}

start {
	if ((current.map == 0 || current.map == 28) && !current.loading && old.loading) {
		vars.last_level = current.map;
		return true;
	}
}

split {
	if (current.map == vars.last_level + 1) {
		vars.last_level++;
		return true;
	}
	
	if (!current.fmv && old.fmv && (vars.last_fmv.ToLower() == "m17_mo_theend_cs_19.bik" || vars.last_fmv.ToLower() == "dlc04_m04_end.bik")) {
		return true;
	}
}

isLoading {
	return (current.loading && !current.fmv || current.map == -1);
}

exit {
	timer.IsGameTimePaused = true;
}
