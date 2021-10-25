//
//  File.swift
//  
//
//  Created by Can Yoldas on 25.10.2021.
//

#if canImport(UIKit)
import UIKit


open class BaseCollectionViewCell: UICollectionViewCell {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViews()
        setupView()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViews()
        setupView()
    }
    
    open func setupView() {}
    open func addMajorViews() {}
    
    public static var identifier: String {
        return String(describing: self)
    }
}

#endif
