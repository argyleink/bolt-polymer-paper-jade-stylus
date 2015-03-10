# This file contains all configuration for the build process.

module.exports = (grunt) ->

  pkg: grunt.file.readJSON("./package.json")

  # This is the comment that is placed at the top of compiled files
  meta:
    banner:
      "/**\n" +
      "  <%= pkg.name %> - v<%= pkg.version %>\n" +
      "  Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
      "**/\n"

  # change these once, works everywhere =)
  # choose your own directory structure, bower folder, etc
  app_dir:        "app"
  bower_dir:      "js/bower"
  build_dir:      "build/" + if grunt.option("prod") == true then "www" else "dev"

  # This is a collection of files for reference in our tasks
  app_files:
    js: 
      # this is the src order and crunched prod set of app logic/modules
      # remove the wild card to explicitly maintain src order
      app: [
        "<%= app_dir %>/js/app.js"
        "<%= app_dir %>/js/*.js"
      ]
    jade: [
      expand: true
      cwd:    "<%= app_dir %>"
      src:    "*.jade"
      dest:   "<%= build_dir %>"
      ext:    ".html"
    ,
      expand: true
      cwd:    "<%= app_dir %>/_jade/components"
      src:    "*.jade"
      dest:   "<%= build_dir %>/components"
      ext:    ".html"
    ]
    stylus: [
      "<%= build_dir %>/styles/app.css":      "<%= app_dir %>/styles/master.styl"
    ]

  # test_files:
  #   js: [ "tests/" ]


  ###
  The `vendor_files.js` property holds files to be automatically
  concatenated and minified with our project source files.

  The `vendor_files.css` property holds any CSS files to be automatically
  included in our app. File will be auto imported to your stylus stylesheet, path should be 
  relative to master.styl in app/styles/. Stylus is currently setup to auto read 
  these and include them in app.css

  The `vendor_files.assets` property holds any assets to be copied along
  with our app's assets: media, music, etc
  ###

  bower_base: if grunt.option("prod") == true then "app/" else ""
  vendor_files:
    bower: [
      "<%= bower_base %><%= bower_dir %>/core-toolbar/core-toolbar.html"
      "<%= bower_base %><%= bower_dir %>/core-menu/core-menu.html"
      "<%= bower_base %><%= bower_dir %>/core-pages/core-pages.html"
      "<%= bower_base %><%= bower_dir %>/core-item/core-item.html"
      "<%= bower_base %><%= bower_dir %>/core-header-panel/core-header-panel.html"
      "<%= bower_base %><%= bower_dir %>/core-drawer-panel/core-drawer-panel.html"
      "<%= bower_base %><%= bower_dir %>/core-scaffold/core-scaffold.html"
      "<%= bower_base %><%= bower_dir %>/core-icons/core-icons.html"
      "<%= bower_base %><%= bower_dir %>/paper-shadow/paper-shadow.html"
      "<%= bower_base %><%= bower_dir %>/paper-ripple/paper-ripple.html"
    ]
    css: [
      # "../../<%= app_dir %>/<%= bower_dir %>/flexboxgrid/dist/flexboxgrid.css"
    ]
    assets: [
      "robots.txt"
      "manifest.json"
    ]
