title: 'YUI Builder: to use or not to use ? Use yproject !'
tags:
- yui
categories:
- [Projects, yproject]
- [Software, Javascript]
date: 2011-01-16 12:41:04
lang: en
---

If one of your project is using the YUI library, you should definitely consider using the YUI Builder. For YUI3, I would go event further in saying that it is **mandatory**. Here is why.
> YUI Builder contains the component build tool, which is the ANT based build system YUI uses to generate the code in the YUI 2 and YUI 3 build directories, from the contents of the src directories for each component.
Ok, looks cool to me. But what this description doesn't mention, is that _you can use the Builder for your projects too_ ! The [documentation](https://github.com/yui/builder/blob/master/componentbuild/README) is precise and concise. The YUI Builder has a lot of nice features, however, it comes at a price :

**Drawbacks**

*   _**requires a bigger stack **_: you'll need java, ANT, and YUI Builder to be installed. While most developers should have those tools already installed, open-source projects may suffer contribution-loss for having such a deep stack to install, understand and configure. Hopefully, for existing components, a simple _ant all _will work.

*   _**build step**_ : For each modification, you'll have to re-build the component. I strongly recommend to have some kind of IDE integration. Obviously, ANT and Java were chosen for a good reason:[ auto-building in Eclipse is a breeze](http://925html.com/techniques/auto-building-yui-3-custom-modules/). If you are a Textmate user, here is a [simple command to launch ](https://gist.github.com/781693)ANT.

*   _**build files to create when adding a new module**_ : build.properties, build.xml, create the directory structure, setup the test files, etc... But this is kind of a stupid task: some tool could help with that ! (read on !)
**Advantages**

*   _**Structure** _: Your modules will have the same structure as YUI components. Those conventions will help you organize your files, ensuring homogeinity through your project. This should also make it easier to understand for existing YUI users.

*   _**JSlinting every module**_ : you'll be surprise how many errors you can catch before trying your code in the browser... Although your IDE probably already runs JSlint on each save, it is good to know that this step is mandatory in your workflow even for notepad addicts.

*   **_Minification_** : YUI compressor is built-in. You don't need to even think about it.

*   _**Module dependencies**_ : When I started porting my librairies to YUI3 without using the YUI Builder, I spent quite some time setting up the dependencies of each module, because I needed to update it twice: in the module declaration and in the loader seed file. Using the YUI Builder removes this redundancy by declaring the dependencies only once in the build.properties file. The loader seed file can then be automatically generated. (more about this in the yproject paragraph.)

*   **_Deploying to the YUI gallery_** (optional): The YUI gallery is the place to make your YUI contributions public, leveraging the Yahoo! CDN. All components in the gallery are automatically built with the YUI Builder.
**yproject - With a Little Help from My Friends**

yproject is a command-line utility to scaffold projects and components using the YUI3 library and the YUI Builder. It is open-source, and hosted on [github](https://github.com/neyric/yproject). It tries to fill some gaps left by the YUI Builder.

It contains a project template and a module template to quickly bootstrap your project enforcing best practices from the start :

*   _loader module for dependencies_ : the YUI library loader component is automatically generated using a script called meta_join.py. yproject provides a similar script : read the build.properties files, and generate a _myproject-loader_ seed file which will dynamically load all your dependencies.

*   _testing with YUI test and Selenium_ : the yproject template provides scripts to generate the tests.xml file and launch them all with Selenium.

*   _test coverage_ : the tests will by default run the instrumented code, and generate a code coverage report at the end of the Selenium batch run.

*   _documentation _: the created project already contains a script to launch YUI Doc, and generate the API documentation into the api/ folder
yproject requires [node.js](http://nodejs.org/). You can install using [npm](http://npmjs.org/) : _npm install yproject_

[Read more on https://github.com/neyric/yproject](https://github.com/neyric/yproject)

**How to organize components**

<span style="color: #000000;">A last question remains: how should I organize my components ? </span>At first glance, it seems to be a compromise :

*   on one side, you can bundle a lot of functionality into one file to improve performance, limiting HTTP requests.
*   on the other size, smaller components are easier to test and re-use.
However, YUI has two features, which make this decision a no-brainer :

*   _Combo-loading_ : Available from the Yahoo! CDN or using [YUI PHP loader](http://yuilibrary.com/projects/phploader). This will combine multiple files into one HTTP request and cache it, making the next request insanely fast. I hope we will soon get a Rails plugin and a Node.js package to do the same...
*   _Rollup files_ : If you often use a set of component together, you can configure rollup components to build them all into a bigger component, limiting the HTTP requests.
So my final advice is the following :

**_Do as many components as you can ! Split them all into smaller pieces !_**

This will ensure reusability, easier testing, easier debugging etc... In short: true engineering practices.

**Conclusion**

YUI3 + YUI Builder is definitely harder to get started with, than any other Javascript library framework. But none can compare to the professional development workflow it provides. If you are targeting high quality standards, performance, well-documented projects, test-driven development and reusability, it really worth the trouble.

_Be professional: use YUI Builder and yproject !_