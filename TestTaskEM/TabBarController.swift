//
//  TabBarController.swift
//  TestTaskEM
//
//  Created by Влад Руденко on 25.08.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        // Do any additional setup after loading the view.
        viewControllers = [
        createTabBarController(for: MainViewController(), image: UIImage(systemName: "cloud.fill")!),
        createTabBarController(for: CartViewController(), image: UIImage(systemName: "sun.min.fill")!),
        createTabBarController(for: AboutViewController(), image: UIImage(systemName: "pencil")!)
        ]
    }
    
    
    
    fileprivate func createTabBarController(for rootViewController: UIViewController,
                                            image: UIImage) -> UIViewController {
        
        let barController = UINavigationController(rootViewController: rootViewController)
        barController.tabBarItem.image = image
        barController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return barController
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
