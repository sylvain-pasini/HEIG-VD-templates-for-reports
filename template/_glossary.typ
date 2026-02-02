#import "imports.typ": *

#let _glossary(config) = [
= Glossaire
#print-glossary(config.glossary.entries, deduplicate-back-references: true)
]