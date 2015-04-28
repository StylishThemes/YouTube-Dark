module.exports = (grunt) ->
  grunt.initConfig(
    pkg: grunt.file.readJSON("package.json")

    compass:
      dev:
        options:
          sassDir: '.'
          outputStyle: 'expanded'
      prod:
        options:
          sassDir: '.'
          outputStyle: 'compressed'

    watch:
      css:
        files: "./youtube-dark.scss"

    exec:
      update_webp:
        command: "wget -O images/www-hitchhiker.webp http://s.ytimg.com/yts/imgbin/www-hitchhiker-#{grunt.option('hash')}.webp"
      decompile_webp:
        command: 'dwebp images/www-hitchhiker.webp -o images/www-hitchhiker.png'
      compile_webp:
        command: 'cwebp -q 80 images/www-hitchhiker.png -o images/www-hitchhiker.webp'


    tasks: ["compass:dev"]
  )

  target = grunt.option('target') || 'dev';
  grunt.loadNpmTasks('grunt-contrib-compass')
  grunt.loadNpmTasks('grunt-exec')
  grunt.registerTask('default', ['compass:' + target])
