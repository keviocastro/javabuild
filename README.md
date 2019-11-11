# launch4j

Cross-platform Java executable wrapper
Launch4j is a cross-platform tool for wrapping Java applications distributed as jars in lightweight 
Windows native executables. The executable can be configured to search for a certain JRE version or use a bundled one, 
and it's possible to set runtime options, like the initial/max heap size. 
The wrapper also provides better user experience through an application icon, 
a native pre-JRE splash screen, and a Java download page in case the appropriate JRE cannot be found.

# How to use

```console
docker run -v $(pwd):/app --rm keviocastro/launch4j /app/config.xml
````

For more details on launch4j command, go to: [Launch4j site](http://launch4j.sourceforge.net/)
