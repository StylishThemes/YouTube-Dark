YouTube-Dark
====

##Installation


##Develop
1. Clone / Download the source
2. `npm install`
3. `gem install compass`

### Compile
1. Production mode: `grunt --target=prod`
2. Development mode: `grunt[ --target=dev]`

You have two options for compilation - the *development* mode, and the *production* mode.

*Development* mode is simply "expanded" meaning that all comments, and more verbose things will be put into the source.

*Production* mode is a compressed version.  It will be minified to one line, and each line trimmed.

Once `grunt` is ran, it will output your `youtube-dark.css` file into the `stylesheets/` directory.
