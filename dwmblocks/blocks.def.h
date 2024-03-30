//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

	{ "|   ", "/home/roccoa/.local/script/bar/wifi.sh", 15, 9},

	{ " ", "/home/roccoa/.local/script/bar/volume.sh",   0,    10 },
	{ "", "/home/roccoa/.local/script/bar/bluetooth_volume.sh", 1, 0},
	
	{ "󱠃 " , "/home/roccoa/.local/script/bar/brightness.sh", 0, 11},
	
	{ " ", "/home/roccoa/.local/script/bar/battery.sh", 3, 0 },
	

//	{" ",    "date +%H:%M",                           60,      0},  
	{"󰞌 ",    "date +%H:%M",                           60,      0},  
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
