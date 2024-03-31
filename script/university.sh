#!/bin/bash 
declare -A menu 

UNIVERSITA="/home/roccoa/Documents/Universita"

ANNO_1_1="$UNIVERSITA/anno1_2022-2023/1-semestre"
ANNO_1_2="$UNIVERSITA/anno1_2022-2023/2-semestre"

ANNO_2_1="$UNIVERSITA/anno2_2023-2024/1-semestre"
ANNO_2_2="$UNIVERSITA/anno2_2023-2024/2-semestre"

ANNO_3_1=""
ANNO_3_2=""

menu=(
	[analisi1]="$ANNO_1_1/Analisi1/" 
	[fisica1]="$ANNO_1_1/Fisica1/"
	[ifc]="$ANNO_1_1/Fondamenti-informatica/" #alias informatica 
	
	[chimica]="$ANNO_1_2/Chimica"
	[analisi2]="$ANNO_1_2/Analisi2/"
	[fisica2]="$ANNO_1_2/Fisica2/"
	[algebra]="$ANNO_1_2/Geometria/" 
	[probabilità]="$ANNO_1_2/Calcolo_probabilita/" 

	[elettrotecnica]="$ANNO_2_1/Elettrotecnica/"
	[algoritmi]="$ANNO_2_1/Strutture_Dati/"
	[tlc]="$ANNO_2_1/Fondamenti_Telecomunicazioni/"  
	
	[elettronica]="$ANNO_2_2/Elettronica/"
	[campi]="$ANNO_2_2/Campi1/"
	[automatica]="$ANNO_2_2/Automatica/"
	[ITS]="$ANNO_2_2/Sistemi inteligenti di trasporto/"
					 
	
)
if echo ${!menu[@]} | grep -w -q "$1"; then 
	cd "${menu[$1]}"
fi 
	
