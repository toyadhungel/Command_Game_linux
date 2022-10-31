#!/bin/bash

# Setter gruppenummer
GR=26

# Lager spilleliste
SPILLERLISTE=$( ls */*/.poeng_* | sed 's/^.*_//' | sort | uniq )

# Gjennomløper spillerlista
for SPILLER in $SPILLERLISTE;do


    # Lager SPILLERs poeng, fra alle dens filer, som en
    # mellomromseparert liste -- f.eks. slik: "1 2 3"

    LISTE=$( cat */*/.poeng_$SPILLER )


    # Lager SPILLERs poeng, fra alle dens filer, som et regnetykke
    # (som en tekst),f.eks. slik: "1+2+3"

    REGNESTYKKE=$( echo $LISTE | tr ' ' '+' )


    # Regner og skriver ut summen (som vist i timen)
    # echo -e "$(( REGNESTYKKE )) \t$SPILLER"

    # Regner og skriver ut summen (et penere alternativ)
    printf "%03d \t$SPILLER\n" "$(( REGNESTYKKE ))"


done | sort -nr # sorterer løkkas utskrift numerisk (n) og
                # synkende/revers (r)



