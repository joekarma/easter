Easter
======

This is a very simple utility for calculating which day in a given
year Easter (and related holidays) falls on. I converted an algorithm
I found online into Common Lisp. I don't really understand the algorithm,
to be perfectly honest, but it does seem to work.

Hope this is proven useful to someone other than myself!

Exported functions include:

 - `easter'
 - `easter-monday'
 - `good-friday'
 
Self explanatory enough, I trust. Dates are handled using the
simple-date-time library.
