//
//  CollectionViewCell.swift
//  WatchUI
//
//  Created by Dang Quoc Huy on 8/28/17.
//  Copyright © 2017 Dang Quoc Huy. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    contentView.layer.cornerRadius = frame.width / 2.0
    contentView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.9, alpha: 0.8)
  }
  
}
