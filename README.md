xsd-validator
=============

Quick and easy validation of XML files against XML schema (xsd files). 

Requires Java to be installed.

Usage on Mac and Linux: 
```bash
./xsdv.sh test.xsd test.xml
```

Usage from a Windows command prompt:
```dos
xsdv test.xsd test.xml
```
If you find it useful and want to install system wide (Linux/Mac only):

```bash
sudo ant install
xsdv test.xsd test.xml
```
Note this project is just a simple wrapper around the standard Java library routines
for XML Schema validation.

## Using with a custom version of Xerces

This version of xsd-validator supports using a custom version of
Xerces under Linux and Unix, e.g. the latest one from github.

For how this has been implemented, see `xsdv.sh` and `src/xsdvalidator/validate.java´.
A key there is using a custom class loader, around line 74.

### Using the latest github version

To use the latest github version, simply clone it in a parallel folder
and build it
```
   pushd ..
   git clone https://github.com/apache/xerces2-j.git
   cd xerces2-j.git
   sh build.sh jars
   popd
```

After this, you will have the latest version of Xerces built at
`../xerces2-j/build/xercesImpl.jar`.  The shell script will find
it automatically there.

### Using some other version of Xerces

Install your favourite version of Xerces, and then set the
environment variable `XERCES_PATH` to point to the folder where
you have `xercesImpl.jar`.  The script will then use that version.
