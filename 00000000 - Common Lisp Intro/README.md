# 00000000 - Common Lisp Intro

There are various implementations of Common Lisp, however, we will be using [SBCL (Steel Bank Common Lisp)](http://www.sbcl.org/) as it's heavily documented, commonly used, performant, and has extra features such as an interactive environment. You may use a different implementation of Common Lisp and it should not provide too many issues, however, for the sake of consistency I would recommend the use of SBCL.

## Installation

If you're on Windows, once you install SBCL, you'll need to find the directory with `sbcl.exe` in it in your `Program Files (x86)`. Once you've located the directory which should be along the lines of `C:\Program Files (x86)\Steel Bank Common Lisp\<version>`. Once you have that path you'll need to place it into your `PATH` environment variable much like you did with Java.

To test if the installation went through correctly, open a command prompt and type `sbcl`. If the installation was correct, you should get an interactive terminal like

```
This is SBCL 1.5.5, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
*
```

Then, to exit the prompt, type `(exit)`. If you didn't get this prompt, go back and make sure the `PATH` is set correctly.

## Running Lisp

Like most languages, you'll need to create a file ending with .lisp, such as the [guide.lisp](guide.lisp) provided in this lesson. Once you've made a file you can open a command prompt in the same directory and type `sbcl --script <file>` to run it. Try it on the provided [guide.lisp](guide.lisp).

If it works, open up [guide.lisp](guide.lisp) inside of your preferred text editor, inside are examples of basic Common Lisp usage.

Afterwards, try making your own Lisp program!
