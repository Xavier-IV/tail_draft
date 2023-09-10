![Test Badge](https://github.com/Xavier-iV/windclutter/actions/workflows/main.yml/badge.svg) [![Gem Version](https://badge.fury.io/rb/windclutter.svg?)](https://badge.fury.io/rb/windclutter)

<div align="center">
  <h1>WindClutter</h1>
  <p>De-cluttering your TailwindCSS.</p>
</div>

<p align="center">
  <a href="https://github.com/Xavier-IV/windclutter/wiki">Wiki</a>
  ·
  <a href="https://github.com/Xavier-IV/windclutter/wiki/Developer">Developer's Guide</a>
  <br>
  <br>
</p>

<hr/>

## Overview

You created awesome project.

&nbsp;&nbsp;&nbsp;&nbsp;It's completed.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your users are happy. 

But now you are left with this question:

> All this TailwindCSS clutter...what should I do with it?

You know what I'm talking about. Due to rapid development, we prefer to put Tailwind classes directly into your divs.

As time goes, this clutter grows.

This tool aim to:

- Provide analysis of your project
- Identify common uses of Tailwind class
- Cleanup for large projects

Once your project grows and ready for your users, chances are you are left with
humongous task of Tailwind CSS cleanup.

**Roadmap progress**

- [x] Project identification/init
- [x] Single file analysis
- [ ] User own class exclusion (if specified)
- [ ] Single file de-cluttering
- [ ] Full project analysis
- [ ] Full project auto de-clutter

<hr/>

## Quick Installation

```bash
# requires ruby 2.7 and above
$ gem install windclutter

$ cd your_project
$ windclutter use
```

## In Action

### 1. Single file analysis `-f`
```
$ windclutter analysis -f src/index.html
```

```
# output

Analysing src/index.html...
Done!
{
                 "flex" => 3,
             "flex-col" => 3,
}
```

### 2. Project traversal `-t` (NEW)

Provide an option with your file extension, and let it do its magic! 🎉

```
$ windclutter analysis -t .html
```

```
# output

Analysing .html...
Traversed 22 .html file(s)... 🎉
{
            "flex" => 44,
        "flex-col" => 31,
    "items-center" => 30,
     "text-center" => 21,
           "gap-2" => 14
}
...and 120 more
```

## Bleeding Edge!

This is currently in ideation, but I can't wait to try this even myself.

I have a lot of TailwindCSS project that needs cleanup 🤯

## Contributing

Take a look into:
https://github.com/Xavier-IV/windclutter/wiki


## Great alternative

There are some limited alternative that I'm aware of and are still searching:

- [Windi CSS Analyzer](https://windicss.org/features/analyzer.html) (Sunsetting)
- [Tailwind CSS Analysis](https://github.com/apvarun/tailwindcss-analysis)