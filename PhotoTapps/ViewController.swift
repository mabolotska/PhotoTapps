//
//  ViewController.swift
//  PhotoTapps
//
//  Created by Maryna Bolotska on 20/07/23.
//

import UIKit

class ViewController: UIViewController {
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    

    
    // MARK: - Navigation

    @IBAction func share(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
}
