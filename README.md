# Swift Xcode File-Templates

These file templates are special Xcode file templates for Swift files, and has been made just for convenience.

The installation includes the following templates:

* Swift Struct
* SwiftUI View

![Xcode File Templates](img/file-templates.png)

## Installation

To install these templates just clone this repository to your Mac and run the follwing commands in your terminal:

```bash
git clone https://codeberg.org/phranck/Xcode-File-Teplates.git
cd Xcode-File-Teplates
./install.sh
```

The file templates will be installed under 

```bash
~/Library/Developer/Xcode/Templates/File Templates/Multiplatform/Custom/
```

Regarding this last path component `Custom/` you'll find it in Xcode under the related category `Custom`. However, this is a default value. Running the install script you will be prompted to give a name for that category.

## Customization

Both templates contains a file named `___FILEBASENAME___.swift`. If you have look into this file you'll see a so called text macro `___FILEHEADER___` at the very top of it. Xcode will replace this macro with a predefined header comment on each new file creation. By default the Xcode standard header comment will be injected.

But, you can completely customize the content of this header comment. If you want to know how to do, read on...

### Create a special plist file

The customized header comment must be written in a file called `IDETemplateMacros.plist`. The first thing we need to do is create this file.

You can create it in the terminal or you can use your favorite text editor to create and edit this file, it doesn't matter. Save it at a place where you will easily find it later. When we are done we will move it to the right place.

### Customize the header comment

Open the empty `IDETemplateMacros.plist` file with your prefered text editor. As a blueprint you can paste this into it.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
   <dict>
      <key>FILEHEADER</key>
      <string>//
// This file is part of the ___PROJECTNAME___ project. 
// Copyright (C) ___YEAR___ ___ORGANIZATIONNAME___
//
// Created by: ___FULLUSERNAME___
// Created at: ___DATE___
//</string>
   </dict>
</plist>
```

As you can see, the `key` contains the string `FILEHEADER`. This is what Xcode will look for in your file templates you installed above. And all what you write between the `<string></string>` marks, this is you custom header comment.

Write down whatever you want and use the predefined text macros. A list of all available macros you'll find in the [`Text macros reference`](https://help.apple.com/xcode/mac/11.4/index.html?localePath=en.lproj#/dev7fe737ce0).

### Move the plist to an appropriate location

To let Xcode use this `plist` we have to move it to a location where Xcode can find it. Xcode looks for the value of a text macro in the following locations and uses the first matching macro:

* **Project user data**:  \
`<ProjectName>.xcodeproj/xcuserdata/[username].xcuserdatad/IDETemplateMacros.plist`
* **Project shared data**:  \
`<ProjectName>.xcodeproj/xcshareddata/IDETemplateMacros.plist`
* **Workspace user data**:  \
`<WorkspaceName>.xcworkspace/xcuserdata/[username].xcuserdatad/IDETemplateMacros.plist`
* **Workspace shared data**:  \
`<WorkspaceName>.xcworkspace/xcshareddata/IDETemplateMacros.plist`
* **User Xcode data**:  \
`~/Library/Developer/Xcode/UserData/IDETemplateMacros.plist`

You can also have a look into Xcode Help section [`Customize text macros`](https://help.apple.com/xcode/mac/11.4/index.html?localePath=en.lproj#/dev91a7a31fc).

## License
This software is published under the [MIT License](http://woodbytes.mit-license.org).
