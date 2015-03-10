![bolt logo](https://dl.dropboxusercontent.com/u/6515442/hipsterlogogenerator_1422411720676.png)  
Logo courtesy of [HipsterLogoGenerator.com](http://www.hipsterlogogenerator.com/)


# Goal
Provide a Jade/Stylus kick starter for Polymer web components. Little playground to get ya started. This is using Bolt, a build system for static sites, and may be a little overkill for the simplicity of this project. So here's a little breakdown to help get started.

## Tips
- Bower manages all js
- Grunt compiles all stylus/jade to the build directory
- BrowserSync keeps everything fresh

## Dependencies
`build.coffee` has the list of deps that are injected into your page, see `scripts.jade` line 3. 

## Components
`app/_jade/components`:  
Here you'll find the markup for the component. These are compiled to `build/components/`.

`app/styles/components`:  
Has all your component styles. These are compiled out to `build/components/styles`, for easy import into your web component.


