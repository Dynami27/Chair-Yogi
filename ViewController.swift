//
//  ViewController.swift
//  Chair Yogi
//
//  Created by Khalid Mohamed on 1/30/17.
//  Copyright © 2017 Khalid Mohamed. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController {
    let customCellIdentitifier = "customCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
   collectionView?.backgroundColor = UIColor.yellow
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: customCellIdentitifier )
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentitifier, for: indexPath)
        return customCell
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

}
class CustomCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
}
    //setting up labels
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Sun Salutation"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        addSubview(nameLabel)
        
       let horizontalContraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[v0]|", options:NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLabel])
        let verticalContraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[v0]|", options:NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLabel])
    }
    required init? (coder aDecoder:NSCoder) {
        fatalError("init(coder:) has not been implement")
}
    
}
// creating collection view cells in collection view controller.
