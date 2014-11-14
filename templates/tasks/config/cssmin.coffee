###*
Compress CSS files.

---------------------------------------------------------------

Minifies css files and places them into .tmp/public/min directory.
###
module.exports = (gulp, plugins, growl) ->
  gulp.task "cssmin:dist", ->
    gulp
      .src ".tmp/public/concat/production.css"
      .pipe plugins.rename suffix: ".min"
      .pipe plugins.minifyCss()
      .pipe gulp.dest "./.tmp/public/min"
      .pipe plugins.if growl, plugins.notify message: 'Minify CSS task complete'
  return
