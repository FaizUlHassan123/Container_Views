//
//  ViewController.swift
//  Container_Views
//
//  Created by Faiz Ul Hassan on 6/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var first_View:UIView!
    @IBOutlet weak var second_view:UIView!

    //Add Tablview from other VIewcontroller
    private lazy var FirstObject: SecondTableViewController = {
        // Instantiate View Controller
          let storyboard = UIStoryboard(name: "Main", bundle: nil)
          let viewController = storyboard.instantiateViewController(withIdentifier: "SecondTableViewController") as! SecondTableViewController
        return viewController
      }()
    // Adding it as Subview:
     private func add(asChildViewController viewController: UIViewController){
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

    //Add Tablview from other VIewcontroller
    private lazy var SecondtObject: ThirsdCollectionViewController = {
        // Instantiate View Controller
          let storyboard = UIStoryboard(name: "Main", bundle: nil)
          let viewController = storyboard.instantiateViewController(withIdentifier: "ThirsdCollectionViewController") as! ThirsdCollectionViewController
        return viewController
      }()
    // Adding it as Subview:
     private func add2(asChildViewController viewController: UIViewController){
        // Configure Child View
        viewController.view.frame = CGRect(x: 0, y: 0, width: self.second_view.frame.size.width, height: self.second_view.frame.size.height)

        // Add Child View Controller
        addChild(viewController)
        viewController.view.translatesAutoresizingMaskIntoConstraints = true

        // Add Child View as Subview
         second_view.addSubview(viewController.view)

        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.add(asChildViewController: FirstObject)
        self.add2(asChildViewController: SecondtObject)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

