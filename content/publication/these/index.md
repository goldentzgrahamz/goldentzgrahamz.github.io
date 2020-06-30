+++
abstract = "We propose the first fully homomorphic encryption scheme, solving a central open problem in cryptography. Such a scheme allows one to compute arbitrary functions over encrypted data without the decryption key – i.e., given encryptions E(m1), . . . , E(mt) of m1, . . . , mt, one can efficiently compute a compact ciphertext that encrypts f(m1, . . . , mt) for any efficiently computable function f.  This problem was posed by Rivest et al. in 1978. Fully homomorphic encryption has numerous applications. For example, it enables private queries to a search engine – the user submits an encrypted query and the search engine computes a succinct encrypted answer without ever looking at the query in the clear. It also enables searching on encrypted data – a user stores encrypted files on a remote file server and can later have the server retrieve only files that (when decrypted) satisfy some boolean constraint, even though the server cannot decrypt the files on its own. More broadly, fully homomorphic encryption improves the efficiency of secure multiparty computation. Our construction begins with a somewhat homomorphic boostrappable encryption scheme that works when the function f is the scheme’s own decryption function. We then show how, through recursive self-embedding, bootstrappable encryption gives fully homomorphic encryption. The construction makes use of hard problems on ideal lattices."
authors = ["Craig Gentry"]
date = "2009-12-01"
image_preview = ""
math = true
publication_types = ["4"]
publication = "In *Standford*"
publication_short = ""
selected = false
title = "A Fully Homomorphic Encryption Scheme"
url_code = ""
url_dataset = ""
url_pdf = "https://crypto.stanford.edu/craig/craig-thesis.pdf"
url_project = ""
url_slides = ""
url_video = ""

[[url_custom]]
name = "Artikel"
url = "pdf/craig-thesis.pdf"

# Optional featured image (relative to `static/img/` folder).
[header]
image = ""
caption = ""

+++
