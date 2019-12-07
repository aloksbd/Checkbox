//
//  CheckboxButton.swift
//  asdfasdf
//
//  Created by Alok Subedi on 12/6/19.
//  Copyright © 2019 Alok Subedi. All rights reserved.
//

import UIKit

class CheckboxButton: UIButton{
    enum CheckState{
        case unchecked, ticked, crossed
    }
    var checkState = CheckState.unchecked
    
    init (frame: CGRect, title: String = ""){
        super.init(frame: frame)
        setTitle(title, for: .normal)
        setImage(#imageLiteral(resourceName: "circle"), for: .normal)
        imageView?.contentMode = .scaleAspectFit
        setTitleColor(.blue, for: .normal)
        setupBorder()
    }
    
    func setupBorder(){
        layer.borderWidth = 2
        layer.borderColor = UIColor.blue.cgColor
        layer.cornerRadius = frame.height/2
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        arrangeViews()
    }
    
    func arrangeViews(){
        semanticContentAttribute = .forceRightToLeft
        imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 35), bottom: 5, right: 5)
        titleLabel?.frame = CGRect(x: 10, y: (imageView?.frame.minY)!, width: bounds.width - (imageView?.frame.width)! - 15, height: (imageView?.frame.height)!)
    }
    
    func tapped(){
        switch checkState {
        case .unchecked:
            setImage(#imageLiteral(resourceName: "tick"), for: .normal)
            checkState = .ticked
        case .ticked:
            setImage(#imageLiteral(resourceName: "cross"), for: .normal)
            checkState = .crossed
        case .crossed:
            setImage(#imageLiteral(resourceName: "circle"), for: .normal)
            checkState = .unchecked
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
