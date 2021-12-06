//
//  File.swift
//  
//
//  Created by Can Yoldas on 8.11.2021.
//

import UIKit

open class BaseTableViewCell: UITableViewCell {
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
