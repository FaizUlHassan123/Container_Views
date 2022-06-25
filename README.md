# Container_View

Add Other ViewControllers As subview in Container View 

# Code

**Reference to Controller to be added as Subview**

      //Add Tablview from other VIewcontroller
         private func add(){

         let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let viewController = storyboard.instantiateViewController(withIdentifier: "SecondTableViewController") as! SecondTableViewController
        // Configure Child View
        viewController.view.frame = CGRect(x: 0, y: 0, width: self.first_View.frame.size.width, height: self.first_View.frame.size.height)

        // Add Child View Controller
        addChild(viewController)
        viewController.view.translatesAutoresizingMaskIntoConstraints = true

        // Add Child View as Subview
         first_View.addSubview(viewController.view)

        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }
      
* Used Table Views As Subview in Second Controller Thus, Complex Designs can also be implemnted in same manner

# Expected Output

![simulator screen shot - iphone 8 plus - 2018-01-19 at 12 06 44](https://user-images.githubusercontent.com/26831784/35137808-3f986ff2-fd11-11e7-8c5c-b8f7f6fbebf5.png)
