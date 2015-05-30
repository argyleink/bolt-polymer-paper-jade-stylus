autoprefixerPlugin = [
  -> require('autoprefixer-stylus')(
    browsers: [
      'last 2 versions'
      '> 5%'
      # 'ie 8'
      # 'ie 9'
    ]
  )
]

module.exports =
  prod:
    options:
      compress:       false
      linenos:        false
      "include css":  true
      use:            autoprefixerPlugin

    files: "<%= app_files.stylus.app %>"

  dev:
    options:
      compress:       false
      linenos:        true
      "include css":  true
      use:            autoprefixerPlugin

    files: "<%= app_files.stylus.app %>"

  components:
    options:
      compress:       false
      linenos:        true
      "include css":  true

    expand: true
    cwd:    "<%= app_files.stylus.components.in %>"
    src:    "*.styl"
    dest:   "<%= app_files.stylus.components.out %>"
    ext:    ".css"
