//
//  HomeController.swift
//  Chair Yogi
//
//  Created by Khalid Mohamed on 2/2/17.
//  Copyright © 2017 Khalid Mohamed. All rights reserved.
//

import UIKit
class wordCell: UICollectionViewCell {
    override  init(frame:CGRect) {
    super.init(frame: frame)
      setupViews()
   
    }
    let wordLabel: UILabel = {
        let label = UILabel()
        label.text = "Sun Saluation"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    func setupViews() {
       backgroundColor = .yellow
     
        addSubview(wordLabel)
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor) .isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor) .isActive = true
        wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor) .isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor) .isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}

}

// called when cell is dequed
class HomeController :UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let cellId = "celId"
    let headerId = "headerId"
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.register(wordCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return header
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
         return CGSize(width: view.frame.width, height: 50)
    }
}

 
