MaskedTextInput Component

Copyright (C) 2003-2006 Adobe Macromedia Software LLC and its licensors.
All Rights Reserved.

Contents :

	/bin/ 		- component SWC file
	/docs/		- Documentation  		/docs/index.html	- Documentation Main page
	/samples/	- Sample applications with source
	/src/		- component Source files 
	buildSWC.bat	- to build component swc file
	buildSamples.bat- to build sample applications
	manifest.xml	- maps component namespace to class names. It defines the package name that the component used before being compiled into a SWC file.


Description :

The Masked Text Input component is a single-line, text input field. This component adds support for the validation of input against a specified mask expression on a character by character basis.

The mask expression is provided by setting the inputMask property of the control.

A mask expression is specified according to the following rules: 

  Mask Character ‘#’ – Digit (0-9) 
  Mask Character ‘A’ – Upper Case Letter (A-Z). In case, the entered character is in lower case, it will be converted to upper case. 
  Mask Character ‘a’ – Lower Case Letter (a-z). In case, the entered character is in upper case, it will be converted to lower case. 
  Mask Character ‘B’ – Any Letter (A-Z, a-z) 
  Mask Character ‘.’(DOT) – Any Character 
  Mask Character ‘*’ – Any Letter (A-Z, a-z) or Digit (0-9) 
  Mask Character ‘/’ – Escape Character 

For date fields, embedded hints will be shown if inputMask is specified as one of the following - 
1.  "MM/DD/YYYY"
2.  "DD/MM/YYYY"
3.  "YYYY/MM/DD"
4.  "YYYY/DD/MM"


Install Instructions :

Extract contents of zip file to any folder. To use compiled swc file directly in your applications use following steps:

1. If using Flex Builder select Project-> Properties add MaskedTextInput.swc file under "Flex Build Path"->"Library path" 
2. If using command line compiler copy MaskedTextInput.swc file to "\frameworks\libs" folder of your Flex SDK installation or use command line compilers "library-path" configuration parameter


To build all samples directly run "buildSamples.bat" file alternatively you can build individual samples by using MaskedTextInput.swc as library file and individual sample's mxml file as source file.

Known Issues:

1. Cut does not work. It doesn't do anything.
