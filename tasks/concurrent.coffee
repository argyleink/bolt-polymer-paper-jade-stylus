module.exports =
  dev_StylusJadeUglify: [
    # "uglify:dev"
    "stylus:dev"
    "stylus:components"
    "jade:dev"
  ]
  prod_StylusJadeUglify: [
    "uglify:prod"
    "stylus:prod"
    "jade:prod"
  ]
  shrink: [
    # "uncss"
    "csso"
    "imagemin"
    "svgmin"
    "manifest"
  ]