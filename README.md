# SwiftUI
Apple announced UI Framework at WWDC 2019. It's called **SwiftUI** and it feels like magic. It is compatible with all Apple platforms (Mac, iOS, iPad, WatchOS and tvOS). 

SwiftUI replaces Storyboards and AutoLayout. It is declarative, so everything is based on stack views. It is not just a wrapper for UIKit, it's new and built using Swift. If you have worked with Flutter, SwiftUI will look familiar to you. Just like Flutter, you can create components and reuse them to organise your views.

Here we are going to explore some functionalities of SwiftUI framework. For this tutorial you will required **Xcode 11**, and Mac OS **Catalina** (if you want real-time preview of your UI code).


Let’s start!
-
When you create a new project using XCode 11 and check the SwiftUI box, it comes with a "SceneDelegate" file. SceneDelegate is responsible for your views hierarchy, it's not part of AppDelegate any more. AppDelegate is purely for managing services like notifications, location, etc. This helps to reduce burden from AppDelegate class. 

In "ContentView" file, you will see two struct, the first struct is where you write your view code, the second struct is where you declare what you want to preview.

![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/1.png)




Live preview is a great tool. You don't have to compile and run your project every-time to verify your UI. Your code changes will immediately reflect into preview. You can even change size of your preview. Use "Group" if you want multiple preview of your view with different data, or use "previewDevice" to specify device in which you want preview, you can have multiple devices also.

![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/2.png)




You can edit view component from preview also. Just hold command key and click on control which you want to edit. It will open popup on that control. You can choose "Inspect..." to change property of control, or you can directly embed it into HStack, VStack or List.

![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/3.png)



Use "HStack" to align your components horizontally, or "VStack" to align your components vertically. "List" is replacement of "UITableView" with more simple and less number of lines code. Navigation is also simple, you just have to use "NavigationButton" and define destination screen to navigate. If you want to set title to navigation bar, just use "navigationBarTitle" property.

![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/4.png)
