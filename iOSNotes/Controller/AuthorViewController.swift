//
//  AuthorViewController.swift
//  iOSNotes
//
//  Created by David Pasache on 24/4/21.
//

import UIKit

class AuthorViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var linkedinButton: UIButton!
    @IBOutlet weak var githubButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.layer.cornerRadius = photoImageView.frame.height/2
        
        linkedinButton.setTitle(NSLocalizedString("AuthorSocialLinkedIn", comment: ""), for: .normal)
        linkedinButton.setTitleColor(UIColor(named: "MineShaft"), for: .normal)
        
        githubButton.setTitle(NSLocalizedString("AuthorSocialGithub", comment: ""), for: .normal)
        githubButton.setTitleColor(UIColor(named: "MineShaft"), for: .normal)
    }

}
