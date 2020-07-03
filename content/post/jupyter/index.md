---
title: Cryptograhie Homomorphe avec Python
subtitle: Un petit essai de cryptographie homomorphe, simulation de vote anonyme
summary: 
authors:
- admin
tags: []
categories: []
date: "2019-02-05T00:00:00Z"
lastMod: "2019-09-05T00:00:00Z"
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: ""
  focal_point: ""

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
## Test de cryptage d'un nombre


```python
import sys
import os
import phe as phe 
from phe import paillier
import sys
from sys import argv
from ipywidgets import widgets

text = widgets.Text()
```


```python
pub_key,priv_key = paillier.generate_paillier_keypair() 
# On genere une cle prive et une cle publique

print("Choix 1" )
x=int(input())

enc1 = pub_key.encrypt(x)
print("Krypte 1")
print(enc1.ciphertext())
```

    Choix 1
    


```python

```
