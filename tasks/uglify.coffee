module.exports =
  prod:
    options:
      banner: "<%= meta.banner %>"
    files:
      "<%= build_dir %>/js/lib.min.js":         "<%= vendor_files.bower %>"
      "<%= build_dir %>/js/app.min.js":         "<%= app_files.js.app %>"
      
  # dev build is using jade imports for easy debug, see scripts.jade
  dev:
    options:
      mangle:           false
      compress:         false
      beautify:         true
      preserveComments: 'all'
      sourceMap:        true
    files:
      "<%= build_dir %>/js/polyfill.js":        "<%= app_files.js.polyfills %>"