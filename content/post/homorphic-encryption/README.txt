---
title: 'RSA teil homomorpher mit multplieren'
author: Goldentz Grahamz
date: '2020-03-28'
categories: []
tags:
  - rmarkdown
subtitle: ''
summary: 'Homomorpher Kryptographie für Dumm wie ich'
authors: []
lastmod: '2020-06-29T20:45:57-07:00'
featured: no
disable_jquery: no
image:
  caption: '[Ein Schein mit ein und sieben null naher in 1923 ](http://www.nithart.com/images/monnaies/inflalle/dmwiesba.jpg)'
  focal_point: ''
  preview_only: no
projects: []
---
# Homomorpher Kryptographie mit R, ein Regression mit ein Regressor

## Klein Erklarung ber homorpher Kryptographie 

Es gibt immer die folgen Situation :
"Alice möchte Bob eine Nachricht zukommen lassen und sie möchte, dass nur Bob die Nachricht lesen kann“

Fur das, kann Alice

Nehmen wir an, dass es viele Alice gibt und sie wollen Bob eine Mega-Nachricht  zukommen lassen aber nicht die einzige Nachricht. Niemals soll die einzige Nachricht können sehen.

Hier ist der Job von Susie, sie gibt die Krypto-Nachricht und sie macht die Mega-KryptoNachricht

```{r message=FALSE}
knitr::include_graphics("index.svg")
```
## RSA ist teil homomorpher.

Hier ist nicht ein Demonstrotion, sondern ein klein "implementation"
von der Algorithmus, der man auf Wikipedia-Seite finden kann.

```{r, message=FALSE, echo=TRUE}
# Implementation RSA
library(numbers) #Inverse mdoulaire
#################
#creation des cle
#################

# Public
#Choisis deux nombre premier (Secret)
p1 <- 971
p2 <- 383

#Multiplie les deux nombres chosii
n <- p1*p2 #Public key 1 or encryption key 1 : Decomposition difficile

#Calcul le nombre de premeier entre 1 et n qui n'est autre
phi.n <- (p1-1)*(p2-1)

#On choisit e tel 2 que inférieur à phi.n (Généralement doit être grand)
e <- 7 #Public key 2 or encryption key 2 : Potentiellement long si phi.n grand

#On crée la clé privée - decrypt key
d <- modinv(e,phi.n)

#Encypt fonction
encypt <- function(msg) {
  p <- 1
  a1 <- msg
  for (i in 1:e){
    p <- p*a1
    p <- p%%n
    i <- i+1
  }
  return(p)
}

#Decrypt
decrypt <-function(c){
  p <- 1
  a1 <- c
  for (i in 1:d) {
    p <- p*a1
    p <- p%%n
    i <- i+1
  }
  return(p)
}

#Test homomorphe pour l'addition
x <- 5
y <- 19
z <- x*y
zadd <- x + y

xprime <-encypt(5)
yprime <- encypt(19)
zprime <- xprime * yprime
zprimeadd <- xprime + yprime


decrypt(zprime)==z
#Fonctionne donc pour la multiplication
decrypt(zprimeadd)==z
decrypt(zprimeadd)
# ne fonctionne pas pour l'addition
```
