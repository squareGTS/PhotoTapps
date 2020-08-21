//
//  PhotosViewController.swift
//  PhotoTapps
//
//  Created by Maxim Bekmetov on 21.08.2020.
//

import UIKit

class PhotosViewController: UIViewController {

    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Success!")
            }
            
            
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
}
