# SwiftUI
Apple announced UI Framework at WWDC 2019. It's called **SwiftUI** and it feels like magic. It is compatible with all Apple platforms (Mac, iOS, iPad, WatchOS and tvOS). 

SwiftUI replaces Storyboards and AutoLayout. It is declarative, so everything is based on stack views. It is not just a wrapper for UIKit, it's new and built using Swift. If you have worked with Flutter, SwiftUI will look familiar to you. Just like Flutter, you can create components and reuse them to organise your views.

Just to explore SwiftUI, I have created this sample app with some dummy data. I have uploaded source code here, just incase if you want to experiment with it. For this sample app you will required **Xcode 11**, and Mac OS **Catalina** (if you want real-time preview of your UI code).

![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/1.png)



Here I am going to explain some functionalities of SwiftUI framework, with some basic controls.

### Let’s start!
When you create a new project using Xcode 11 and check the SwiftUI box, it comes with a "SceneDelegate" file. SceneDelegate is responsible for your views hierarchy, so your window it's not part of AppDelegate any more. AppDelegate is purely for managing services like notifications, location, etc. This helps to reduce burden from AppDelegate class. 

If you open "ContentView" file, you will see two struct, the first struct is where you write your view code, the second struct is where you declare what you want to preview.

![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/2.png)




Live preview is a great tool. You don't have to compile and run your project every-time to verify your UI. Your code changes will immediately reflect into preview. Use "Group" if you want multiple preview of your view with different data, or use "previewDevice" to specify device in which you want preview, you can have multiple devices also. You can even change size of your preview.

![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/3.png)




You can edit view component from preview also. Just hold command key and click on control which you want to edit. It will open popup on that control. You can choose "Inspect..." to change property of control, or you can directly embed it into HStack, VStack or List.

![alt text](https://github.com/Rahul-Chandera/SwiftUI/blob/master/img/4.png)



Use "HStack" to align your components horizontally, or "VStack" to align your components vertically. You can use "alignment" to align child components, or "spacing" to specify space between components.
```
struct InfoRow : View {
    var body: some View {
      VStack(alignment: .center, spacing: 12) {
        Image("sample")
        Text("Hello World")
       }
    }
}
```


"List" is replacement of "UITableView", with more simple and less number of lines code. Navigation is also simple, you just have to use "NavigationButton" and define destination screen to navigate. If you want to set title to navigation bar, just use "navigationBarTitle" property.
```
struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        ForEach(supports) { model in
          NavigationButton(destination: TipDetailsView(title: model.title, image: model.icon)) {
               SupportRow(title: model.title, icon: model.icon)
          }
        }
      }
      .navigationBarTitle(Text("Stay Healthy"))
    }
  }
}
```



"Text" component is useful when you want to display any text in UI. You can easily customise font and color of text. It has some predefine font styles which are commonly used, or you can use your custom fonts.
```
struct SectionText : View {
    var body: some View {
      Text("Good Morning")
        .font(.largeTitle)
        .fontWeight(.bold)
        .color(.gray)
    }
}
```




SwiftUI has also simplify use of image. Image component  has some great properties which simplifies your work. If you want circular clipping shape to the image, use ".clipShape(Circle())", you can also set custom path for custom shape of your image.


```
struct MotivationRow : View {
    var body: some View {
      Image("nature")
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 4)
        .padding(.all, 6)
    }
}
```

Other than assets, you can also use system icons in image. You have to specify name of system icon in image. There are more than 1500 system icons which you can use, and Apple has provided app to get names of all that icons. You can download it from [here](https://developer.apple.com/design/downloads/SF-Symbols.dmg).
```
Image(systemName: "house.fill")
```


This is pretty basic examples of SwiftUI, but you can explore in details from official document of SwiftUI. You can find it [here](https://developer.apple.com/tutorials/swiftui/tutorials).
