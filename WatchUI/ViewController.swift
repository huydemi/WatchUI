//
//  ViewController.swift
//  WatchUI
//
//  Created by Dang Quoc Huy on 8/28/17.
//  Copyright © 2017 Dang Quoc Huy. All rights reserved.
//

import UIKit

let cellCount = ROWS * COLS

class ViewController: UIViewController {
  @IBOutlet weak var collectionView: UICollectionView! {
    didSet {
      collectionView.dataSource = self
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView.collectionViewLayout = CollectionViewLayout()
    collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
  }
  
}

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cellCount
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
    return cell
  }
}
