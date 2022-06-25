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

    let firstController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondTableViewController") as! SecondTableViewController

    // Adding it as Subview:
     private func add(){

        // Configure Child View
         firstController.view.frame = CGRect(x: 0, y: 0, width: self.first_View.frame.size.width, height: self.first_View.frame.size.height)

        // Add Child View Controller
        addChild(firstController)
         firstController.view.translatesAutoresizingMaskIntoConstraints = true

        // Add Child View as Subview
         first_View.addSubview(firstController.view)

        // Notify Child View Controller
         firstController.didMove(toParent: self)
    }

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

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.add()
        self.add2()
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

