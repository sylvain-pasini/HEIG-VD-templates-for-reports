#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()

= A few examples <examples>
== Math expressions
Here's an inline mathematical expression : $3^2/4^3$

And here's another one in it's own block: $ (3x_a)/(y_b^2+4) $

== Images
Here's an example of an image.

#figure(
  image("../images/PGP_101.png", width: 50%),
  caption: [
    PGP schema
  ]
) <pgp>

== Citations

Here's an example of a book's citation @ajop15\
\
And another one of a website @pas19

== Cross-references

Here's a reference to section @source-code[] in the same chapter and another one to Chapter @introduction[].

Of course, it is also possible to reference an image, like @pgp.

== Commands

Example of the output of Bash command `ls` :\

```sh
$> ls -al test_underscore $$* "coucou"
```

== Source code <source-code>

```C
#include <stdio.h>
int main(int argc, char* argv[])
{
   printf("Hello World!\n");
   return 0;
}
```