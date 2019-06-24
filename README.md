# SwiftUI
Apple annouced UI Framework at WWDC 2019. It's called **SwiftUI** and it feels like magic. It is compatible with all Apple platforms (Mac, iOS, iPad, WatchOS and tvOS). 

SwiftUI replaces Storyboards and AutoLayout. It is declarative, so everything is based on stack views. It is not just a wrapper for UIKit, it's new and built using Swift. If you have worked with Flutter, SwiftUI will look familier to you. Just like Flutter, you can create components and reuse them to organize your views.

Here we are going to exlore some functionalities of SwiftUI framework. For this tutorial you will required **Xcode 11**, and Mac OS **Catalina** (if you want real-time preivews of your UI code).


# Let’s start!
When you create a new project using XCode 11 and check the SwiftUI box, it comes with a "SceneDelegate" file. SceneDelegate is reposinsible for your views hirarchy, it's not part of AppDelegate any more. AppDelegate is purely for managing services like notifications, location, etc. This helps to reduce burdon from AppDelegate class. 

In "ContentView" file, you will see two struct, the first struct is where you write your view code, the second struct is where you declare what you want to preview.
![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/1.png)

Live preview is a greate tool. You don't have to compile and run your project everytime to verify your UI. Your code changes will imidiatly reflect into preview. You can even change size of your preview. Use "Group" if you want mutiple preview of your view with differnt data, or use "previewDevice" to specify device in which you want preview, you can have mutiple devices also.
![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/2.png)
