# Aldus

Experiments in book design and production.

# Typst

I love [typst](https://github.com/typst), and it’s replaced LaTeX as my go-to typesetting program.  It doesn’t yet have full feature parity, but for most things, I find it’s far easier to get it to do what I want.  But it does have some limitations 

## The Issue

This isn’t currently possible from directly within ``typst``, as there’s no way to rearrange pages.  The [Bookletic](https://github.com/harrellbm/Bookletic) package has a basic framework for making printable booklets, but due to ``typst`` limitations, you have to manually break up the content into each page.  This is not realisitc for long-form content, especially when there are other ways.
