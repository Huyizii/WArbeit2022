Quang Huy Nguyen (222421)
Übungsblatt Nr.3

##RZ: Bitte Zeilen, in denen kein Code steht auskommentieren!!!

Aufgabe 1 (Vektoren)
a)
i)
a = c(0:9)^3
a = seq(0,9,1)^3
ii)
b = c(2^(1:9))
b = 2^seq(1,9,1)      
iii)
c = c((2+2*(0:7))*((-1)^(0:7)))
iv)
d = c(((1:8)*((1:8)+1))/2)

b)
1.
a[3*(1:3)]=3
2.
b[c(2,5)]= b[c(2,5)]*-1
3.
c[c > -9 & c < 8]=0

Aufgabe 2 (Matrizen und Arrays)
a)
x = matrix(c(-2), nrow = 3, ncol = 3)
b) 
diag(x)=c(3,3,-3)

c)
x[3,]
x[2,]
x[,1]

d)
x[2, ,drop=FALSE]
x[, 1,drop=FALSE]
mit drop=FALSE extrahieren die Elemente in Zeile oder Spalte, entsteht auch oben
eine Dimension, insgesamt entstehen 2 Dimensionen, die Ergebnisse von teil c) 
haben nur 1 Dimension

e)
i)
x[1,3]=6
ii)
x[,1]=c(3,-6,-2)
iii)
x[3,]=c(-2,6,-3)

g)
eigen(x)

h)
y=t((1/7) * x)

z=solve((1/7)*x)

identical(y,z)

i)
(1/7)*x * y
(1/7)*x %*% y

j)
f = array(c((1/7)*x,y,z), dim = c(3, 3, 3))

Aufgabe 3 (Anmeldezeiten)
setwd("C:/Users/Quang Huy/Desktop/2.Semester/R für DS/Zusatz")
load("Anmeldung_WS2122.RData", verbose = TRUE)
a)
is.na(anmeldezeit)
is.na(studiengang)
is.na(gruppe)
is.na(uebung1)
Das Objekt "uebung1" enthalt fehlende Werte
b)
anmeldezeit = sort(anmeldezeit)
anmeldezeit[1]
anmeldezeit[66]
(anmeldezeit[66/2]+anmeldezeit[(66/2)+1])/2

##RZ: einfacher mit min(), max(), median(), aber so auch richtig
c)
studiengang[(studiengang != "Data Science")  & (studiengang != "Statistik")] = 
  "Nebenfach"
d)
von 8:30 Donnerstag bis 8:30 Samstag sind 2880 Minuten
von 8:30 Samstag bis 20:30 Samstag sind 720 Minuten
2880 + 720 = 3600
von 20:30 Samstag bis 8:30 Sonntag sind 720 Minuten
von 8:30 Sonntag bis 20:30 Sonntag sind 720 Minuten
3600 + 720 = 4320
4320 + 720 = 5040
which(anmeldezeit>=2880 & anmeldezeit<=3600)
which(anmeldezeit>=4320 & anmeldezeit<=5040)
Es gibt Studenten, die  sich am Samstag (17.10.) oder am Sonntag (18.10.) 
jeweils zwischen 08:30 und 20:30 Uhr angemeldet haben
sum(anmeldezeit>=2880 & anmeldezeit<=3600)
8 Studenten haben sich am Samstag zwischen 08:30 und 20:30 Uhr angemeldet
sum(anmeldezeit>=4320 & anmeldezeit<=5040)
7 Studenten haben sich am Samstag zwischen 08:30 und 20:30 Uhr angemeldet

f)
table(uebung2)
27 Teilnehmer der Gruppe 1 hatten sehr gern (1) angegeben
11 Teilnehmer der Gruppe 1 sind ungern (4)

##RZ: uebung 1 gibt nur die Praeferenz fuer diese Gruppe an, aber nicht die 
##RZ: Zugehoerigkeit. Es sollte zusaetzlich noch geprueft werden, wer von denen
##RZ: tatsaechlich auch in Gruppe 1 ist
##RZ: -0.5P

#######Bewertung#######
##Aufgabe 1 -  2/2   ##
##Aufgabe 2 -  5/5   ##
##Aufgabe 3 - 2.5/3  ##
#######################

