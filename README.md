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

If you look at the HTML JustViewsRes-SBAdmin git [here](https://github.com/TerrickMansur/JustViewsRes-SBAdmin) you will see that it simple contain [Leaf](https://docs.vapor.codes/3.0/leaf/getting-started/) files. What JustViews provides is the models you need to initialize to be able to render these leaf files. 

How to render the page with no content. 

```Swift
import Vapor
import Leaf

final class IndexController {
    func index(_ req: Request) throws -> Future<View> {
 
        let frame = JustViews.SBAdmin.Frame(
            contentTitle: "Dashboard", copyrightText: "Copyright © Your Website 2019")

        let dashboard = Dashboard(frame: frame)
        return try req.view().render("home", home)
    }
}
```

Note that there is no `dashboard` [Leaf](https://docs.vapor.codes/3.0/leaf/getting-started/) file provided, this is a [Leaf](https://docs.vapor.codes/3.0/leaf/getting-started/) file that you will need to create. Think of these files as pages on your site. 

For the example above, creates the `Dashboard` page. Every page con container however many `JustView` model as you want. In this case, this is the `Dashboard` page that consist of a frame. The model would look like this. 

```Swift
struct Dashboard: Codable {
    let frame: JustViews.SBAdmin.Frame
}
```

Note that the model always needs to implement Codable. 

Once initialized, you can render the page like shows on the last line of code.




