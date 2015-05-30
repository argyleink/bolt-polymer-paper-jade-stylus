![bolt logo](https://dl.dropboxusercontent.com/u/6515442/hipsterlogogenerator_1422411720676.png)  
Logo courtesy of [HipsterLogoGenerator.com](http://www.hipsterlogogenerator.com/)


# Goal
Provide a Jade/Stylus kick starter for Polymer web components. Little playground to get ya started. This is using Bolt, a build system for static sites. So here's a little breakdown to help get started.

## Tips
- Bower manages all polymer components
- Grunt compiles all stylus/jade to the build directory
- Build your site with jade, and build your components with jade
- Shadow DOM with jade/stylus =)
- BrowserSync keeps everything fresh

## Components
`app/_jade/components`:  
Here you'll find the markup for the component. These are compiled to `build_dir/components/`.

`app/styles/components`:  
Has all your component styles. These are compiled out to `build_dir/components/styles`, for easy import into your web component.

See `app/_jade/components/main-screen.jade` for a good example.

Lastly, all the Polymer deps are managed with Bower and imported in `scripts.jade`

