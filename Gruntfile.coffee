module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"
    coffee:
      compile:
        files:
          "js/app.js": "coffee/app.coffee"
    watch:
      coffee:
        files: "coffee/*.coffee"
        tasks: ["coffee"]
        options:
          livereload: true
