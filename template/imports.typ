#import "macros.typ": *

#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#import "@preview/glossarium:0.5.8": make-glossary, register-glossary, print-glossary, gls, glspl

// OVerride GLS and GLSPL to not link, this will prevent the underline
#let gls = gls.with(link: false)
#let glspl = glspl.with(link: false)