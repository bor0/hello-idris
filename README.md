Hello Dolly in Idris
--------------------
This is a WordPress plugin written in [Idris](https://www.idris-lang.org/). It is a copy of the famous [Hello Dolly](https://wordpress.org/plugins/hello-dolly/) by [Matt Mullenweg](https://en.wikipedia.org/wiki/Matt_Mullenweg).

I am using the Idris's [PHP backend](https://github.com/edwinb/idris-php) written by the author of Idris, [Dr. Edwin Brady](https://edwinb.wordpress.com/).

Installation steps:
1. Install Haskell (`brew install ghc`)
1. Install cabal (`brew install cabal-install`)
1. Update cabal to latest packages (`cabal update`)
1. Install Idris (`cabal install idris` or `brew install idris`)
1. Clone the PHP backend by doing `git clone https://github.com/edwinb/idris-php`
1. Apply patch to the repo to support modular arithmetic and time() in PHP (`patch -p1 < ~/Desktop/hello-idris/ffi.patch`)
1. Install the backend by doing `cabal install idris-php.cabal`
1. Build this project by running `make.sh`
1. Include cabal binaries with `export PATH=~/.cabal/bin:$PATH`
1. Combine the PHP output with the bootstrap file and copy it to WordPress plugins folder.

This is an interesting proof of concept, as mentioned by Dr. Edwin himself on a [talk about Idris](https://www.youtube.com/watch?v=X36ye-1x_HQ#t=1810).

Boro Sitnikovski

2018
