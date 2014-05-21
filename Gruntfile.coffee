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
    tasks: ["compass:dev"]
  )

  target = grunt.option('target') || 'dev';
  grunt.loadNpmTasks('grunt-contrib-compass')
  grunt.registerTask('default', ['compass:' + target])
