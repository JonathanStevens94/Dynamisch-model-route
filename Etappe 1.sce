//Inlezen van alle hoogtes, bepalen van de afstand per waarde
bestand = mgetl('/Users/bramopsomer/Documents/School/Industriële wetenschappen/5de jaar/Masterproef/Parcours/Hoogtemeters per etappe/Etappe 1/Etappe1hoogtes.rtf')
afstandEtappe1 = 132000
l = size(bestand)
aantalWaardenEtappe1 = l(1,1) - 8
afstandPerWaardeEtappe1 = afstandEtappe1/aantalWaardenEtappe1

//Begintekst uit het bestand verwijderen
for i = 10 : l(1,1)
    hoogtesEtappe1(i-9) = bestand(i)
end

//Backslash in elke waarde verwijderen
for i = 1 : aantalWaardenEtappe1-1
    if length(hoogtesEtappe1(i)) == 6
        exacteWaardenEtappe1(i) = part(hoogtesEtappe1(i),1:5)
    else exacteWaardenEtappe1(i) = part(hoogtesEtappe1(i),1:6)
        end
end

//Omzetten van string naar double
for i = 1 : aantalWaardenEtappe1-1
    rij(i) = strtod(exacteWaardenEtappe1(i))
end

//Weergave van de etappe (louter als verduidelijking)
//plot(rij)

//Bepalen van de hoogteverschillen tussen elke 2 punten
for i = 1 : aantalWaardenEtappe1-2
    hoogteverschillen(i) = rij(i+1)-rij(i)
end

//Berekenen van de hellingsgraden in %, ceilen voor afronden naar worst case
for i = 1 : length(hoogteverschillen)
    percentages(i) = ceil(hoogteverschillen(i)/afstandPerWaardeEtappe1 * 100)
end

plot(percentages)
xlabel ("Waarde")
ylabel ("Hellingsgraad (%)")


//Sommige waarden extreem hoog: hoe komt dit? Niet alle meetwaarden exact op zelfde afstand genomen? Hoe op te lossen?
