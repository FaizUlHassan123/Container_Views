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

        // Called after the view controller is added or removed from a container view controller.
         secondController.didMove(toParent: self)
    }
    
#Removing Subview

    private func remove(){
        // Called just before the view controller is added or removed from a container view controller.
        firstController.willMove(toParent: nil)

        // Remove Child View From Superview
        firstController.view.removeFromSuperview()

        self.view.layoutIfNeeded()
    }

# Output

<img src="ScreenShort/screen.jpg" width="40%">
<img src="ScreenShort/screen2.jpg" width="40%">
