# Middleman-Begin

A starting place for your new [Middleman] projects.

## Features

- [Haml](http://haml.info/) templates based on [HTML5 Boilerplate](http://html5boilerplate.com/)
- [Sass](http://sass-lang.com/) with [Compass](http://compass-style.org/), [Normalize](http://necolas.github.io/normalize.css/), [CSSWizardry Grids](https://github.com/csswizardry/csswizardry-grids) and modular stylesheet structure
- [Blogging support](https://github.com/middleman/middleman-blog) with feeds
- Syntax highlighting via [middleman-syntax](https://github.com/middleman/middleman-syntax) with easy themes courtesy of [Rouge](https://github.com/jayferd/rouge)
- Easy Google Analytics and Disqus integration
- [Livereload](https://github.com/middleman/middleman-livereload)
- CSS & Javascript minification, image optimisation and gzipping

If you don't like any of the above, simply disable/remove it on a per-project basis or fork!



## Use

Install [Middleman]:

    gem install middleman


Clone middleman-begin:

    git clone git@github.com:shkm/middleman-begin.git my-project

Install gems and get to work!

    cd my-project
    bundle install
    middleman


## Template Install

You can also install a copy of the template locally, for quick use on each project:

    git clone git@github.com:shkm/middleman-begin.git ~/.middleman/begin

Now just init new projects as follows:

    middleman init -T=begin my-project

Just don't forget to keep `~/.middleman/begin` up-to-date.


## Copyright and licence

Copyright 2013 Jamie Schembri, under the [MIT licence](LICENSE).

  [middleman]: http://middlemanapp.com/


