# Container_View

Add Other ViewControllers As subview in Container View 

# Code

**Reference to Controller to be added as Subview**

          let secondController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirsdCollectionViewController") as! ThirsdCollectionViewController

    // Adding it as Subview:
     private func add2(){

        // Configure Child View
         secondController.view.frame = CGRect(x: 0, y: 0, width: self.second_view.frame.size.width, height: self.second_view.frame.size.height)

        // Add Child View Controller
        addChild(secondController)
         secondController.view.translatesAutoresizingMaskIntoConstraints = true

        // Add Child View as Subview
         second_view.addSubview(secondController.view)

        // Notify Child View Controller
         secondController.didMove(toParent: self)
    }
      

# Output

![simulator screen shot - iphone 8 plus - 2018-01-19 at 12 06 44](https://user-images.githubusercontent.com/26831784/35137808-3f986ff2-fd11-11e7-8c5c-b8f7f6fbebf5.png)
