# JustViews

JustViews is a Swift package intended to be used with [Vapor](https://vapor.codes/) that contains pure models that represent supported HTML templates listed below.

- https://github.com/TerrickMansur/JustViewsRes-SBAdmin

Please show the creator some love <3 (https://startbootstrap.com/themes/sb-admin-2/)

## Installation

There is three steps for installing and using this package. 

#### Step 1
Include this package in your project by adding this package using xcode Package Manager (File -> Swift Packages -> Add Package dependency) and insert this package its git url. This will add all of the models you will use to render to HTML templates in your project.

#### Step 2
Select what HTML template you would like to use for your website. Currently there is only one supported, the SB-Admin. Please find its git below.

https://github.com/TerrickMansur/JustViewsRes-SBAdmin

Clone this repository directly in your Vapors project `/Resources/Views` folder. This should give you a folder structure that look like this `Resources/View/JustViewsRes-SB-Admin`. This folder will include all the [Leaf](https://docs.vapor.codes/3.0/leaf/getting-started/) files you will use to render your views.

#### Step 3
Each template will require its own javascript, css and vendor files (please look at the wiki of the templated to find these files). These files ship with the HTML templates. Since these are public files, you can host them wherever you want and set this location in code. However, by default the location is set to empty string. This means that your [Vapor](https://vapor.codes/) project will look for them in the `Public` folder. 

You can change this in code, the usage section will cover this.

```Swift
World.shared.vendorFilesLocation = "http://someurl.com/files"
```

## Usage

If you look at the HTML SB-Admin templates git [here](https://github.com/TerrickMansur/JustViewsRes-SBAdmin) you will see that there are all [Leaf](https://docs.vapor.codes/3.0/leaf/getting-started/) files. What JustViews provides is the models you need to initialize to be able to render these leaf files. 

How to render the page with no content. 

```Swift
import Vapor
import Leaf

final class IndexController {
    func index(_ req: Request) throws -> Future<View> {
        return try req.view().render("home")
    }
}
```

Note home is not provided, this is a leaf file that you will need to create that has to look like this.

```Leaf

```

