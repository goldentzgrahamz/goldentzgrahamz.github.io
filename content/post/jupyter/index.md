---
title: Cryptograhie Homomorphe avec Python
subtitle: Learn how to blog in Academic using Jupyter notebooks
summary: Learn how to blog in Academic using Jupyter notebooks
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

```python
import sys
import os
import phe as phe 
from phe import paillier
```


```python
pub_key,priv_key = paillier.generate_paillier_keypair() 
# On genere une cle prive et une cle publique

x=int(100)
enc1 = pub_key.encrypt(x)
print("Choix" )
print(x)
print("Krypte 1")
print(enc1.ciphertext())
```

    Choix
    100
    Krypte 1
    307821709830445519454771654746311582037668150777044704808976526777996001930375376085544393400993473433631810771111959618537702371048991307383861777838119019360243664074256004834319739579788919554457000807319071828256484305104033501671489878891324485141133048840413109755430242201212122556919161466958512278726201155295759667069011415549211017335120055132667009642549439683932529165785562914476120362065597969304293547421930792489649068382287686568772676658099724375259973521433390899902563537989077659621835210496616340116054136339429953695257585998777876362563982763194119098124477675177779306011628681464370050193502201061136855291633094711098639269024819406817026491052188867488802850757457370394933283560577433829819823546986342606886891945590129863948670402603426938836647702280980447776610957588916421374328136749661841122708521441819084639762294209874174290078426190810035857364473086771406282060338000824810437504822371442422043212150013149791300838273366547916238589149582453301100036387406691751251115728585127697483288270271603060895702239309025131290064490567564456107009892539629347478027379049384780982288860618456052440926755577106955363690851380718244420918400739300401296674082973410685862177954806199541446119557845
    

## Install Python and JupyterLab

[Install Anaconda](https://www.anaconda.com/distribution/#download-section) which includes Python 3 and JupyterLab.

Alternatively, install JupyterLab with `pip3 install jupyterlab`.

## Create or upload a Jupyter notebook

Run the following commands in your Terminal, substituting `<MY-WEBSITE-FOLDER>` and `<SHORT-POST-TITLE>` with the file path to your Academic website folder and a short title for your blog post (use hyphens instead of spaces), respectively:

```bash
mkdir -p <MY-WEBSITE-FOLDER>/content/post/<SHORT-POST-TITLE>/
cd <MY-WEBSITE-FOLDER>/content/post/<SHORT-POST-TITLE>/
jupyter lab index.ipynb
```

The `jupyter` command above will launch the JupyterLab editor, allowing us to add Academic metadata and write the content.

## Edit your post metadata

The first cell of your Jupter notebook will contain your post metadata ([front matter](https://sourcethemes.com/academic/docs/front-matter/)).

In Jupter, choose _Markdown_ as the type of the first cell and wrap your Academic metadata in three dashes, indicating that it is YAML front matter: 

```
---
title: My post's title
date: 2019-09-01

# Put any other Academic metadata here...
---
```

Edit the metadata of your post, using the [documentation](https://sourcethemes.com/academic/docs/managing-content) as a guide to the available options.

To set a [featured image](https://sourcethemes.com/academic/docs/managing-content/#featured-image), place an image named `featured` into your post's folder.

For other tips, such as using math, see the guide on [writing content with Academic](https://sourcethemes.com/academic/docs/writing-markdown-latex/). 

## Convert notebook to Markdown

```bash
jupyter nbconvert index.ipynb --to markdown --NbConvertApp.output_files_dir=.
```

## Example

This post was created with Jupyter. The orginal files can be found at https://github.com/gcushen/hugo-academic/tree/master/exampleSite/content/post/jupyter
