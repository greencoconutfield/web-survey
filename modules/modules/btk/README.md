BTK - Bootstrap Templating kit
==============================

## Magnolia version ##
Developed on Magnolia 5.4.9, suggested to use with 5.5+

## Navigation ##
Default Navigation using 'navfn' which are part of MTK and MTE 2.0 (which is in Magnolia 5.5), to make navigation working without 'navfn' edit:
`/btk/templates/areas/navbar.ftl`
and change include to include 'navigation.ftl'.

## Sample content / demo page ##
On Magnolia-NOW demo page should be bootstraped (installed) automatically with BTK light module - thanks to Content Importer module. If not or with Magnolia-CORE please import manually .xml files from:
`/btk/install_manualy/bootstrap-samples`






# Bootstrap Framework #
BTK is build to work with Bootstrap Framework (www.getbootstrap.com) and all components using class names which Bootstrap Framework defines.
It's already contains and use default bootstrap.css, bootstrap.js and glyphicons.
But also sources codes (scss) for recompiling bootstrap.css and .js any time, all of them are in '/btk/webresources-sources' folder. Of course we strongly recommend to do it locally in development environment and then just distribute final resources which should be generated into '/btk/webresources' folder.
There is many ways ho to recompile Bootstrap resources, for example bellow you can find how to do it from command line with 'node-sass' and 'uglifyjs'.

## Example of recompiling: ##
Before you need to have Node.js installed on your computer.
If unsure that Node.js is installed on your machine, open your terminal window and type:
```
node -v" or "node --version.
```
Either of which should return something like "v5.4.1"
In other case you need to pick installer for your OS and install from [Node.js](https://nodejs.org/en/download)

You'll need another two libraries:
* **node-sass** allow to compile SCSS files to CSS, create source-maps, optionally you can minify output files ( --output-style=compressed )
* **UglifyJS2** concatenate, minify and create source maps for javascript files


You can install both by run this command in Terminal (as an Administrator)
```
npm install -g node-sass uglify-js
```

### To compile SCSS files to CSS with source map, in '/btk/webresources-sources/scss' run: ###
```
node-sass --source-map=true -o ../webresources/css scss/*.scss
```

### To concat and compress javascript files with source map, in '/btk/webresources-sources/js' run: ###
```
uglifyjs js/bootstrap/*.js -o ../webresources/js/bootstrap.min.js --source-map ../webresources/js/bootstrap.js.map
```
