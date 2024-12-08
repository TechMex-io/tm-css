# Tech-Mex CSS
A simple CSS framework for Tech-Mex projects

## Credits
- Built on top of [NewCSS](https://newcss.net/)
  This is the basis of this setup. It is cloned here as `elements.css` with a few modifications.
- Layouts largeley stolen from [Every Layout](https://every-layout.dev/)
- [Shoelace](https://github.com/shoelace-style/shoelace) is added as a dev dependency but needs to be included in your project. See the [Shoelace documentation](https://shoelace.style/) for more information.

## About

### Install

In your Processwire site, 

- `cd` into `/site/templates` 
- `rm -rf styles scripts`
- `git clone git@github.com:TechMex-io/tm-css.git `
- `mv tm-css/styles ./`
- `mv tm-css/scripts ./`
- `mv tm-css/package.json ./`
- `pnpm i`
- `rm -rf tm-css/`
- update your template files with the paths to `dist/styles.min.js` and `dist/bundle.min.js` 

### CSS

`index.css` is the entry point for your css.
`@layers` are set up in the followng order:
```
@layer settings, reset, vendor, elements, objects, components, app, utils;
```

when starting a new site or app, you’ll likely leave `reset.css` and `objects.css` alone.
start with `settings.css`
this is where you set up your custom css properties. there are some properties already set up but is by no means complete. this is just a starting point or example. you should create your own naming conventions and expand this as needed.

`reset.css` is where you add any css resets for your site. a default reset is included that is based on Josh Comeau’s [CSS Reset](https://www.joshwcomeau.com/css/custom-css-reset/).

`vendor.css` is where you add any vendor css for your site. it is preferable that you import vendor css in the appropriate layer. the build script will import vendor css in the appropriate layer.

`elements.css` is where you add any default styling to bare elements for your site. this is where you can set up your typography and general site/app defaults for most HTML elements. the default element styles included are based on [NewCSS](https://newcss.net/).

`objects.css` is where you add any layouts for your site. many objects are included.

`components.css` is where you add any component css such as cards, navs, etc.

`app.css` is where you add any custom styling for your site.

`utils.css` is where you add any utility classes for your site. these are the highest specificity and should be used sparingly. a few utility classes are included but this is for you to update as needed.


### JS


## Todo
- [ ]  Finish basic documentation
- [ ] Add detailed documentation
  - [ ] for layouts
  - [ ] for use in processwire projects
- [ ] Update demos UI
