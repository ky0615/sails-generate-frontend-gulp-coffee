###*
Clean files and folders.

---------------------------------------------------------------

This gulp task is configured to clean out the contents in the .tmp/public of your
sails project.
###
rimraf = require("rimraf")
module.exports = (gulp, plugins, growl) ->
  gulp.task "clean:dev", (cb) ->
    rimraf ".tmp/public", cb

  gulp.task "clean:build", ->
    gulp.src [
        "www/**/*.*"
        "www{,/**}"
      ],
        read: false
    .pipe plugins.rimraf force: true
    .pipe plugins.if growl, plugins.notify message: 'Clean task complete'
  return
