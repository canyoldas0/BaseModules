//
//  File.swift
//  
//
//  Created by Can Yoldas on 5.10.2021.
//

#if canImport(UIKit)

//MARK: - GenericBaseView

import UIKit

open class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public init(frame: CGRect = .zero, data: T?) {
        self.data = data
        super.init(frame: frame)
        loadDataToView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open func loadDataToView() {
        
    }
    
    open func setData(data: T?) {
        self.data = data
        loadDataToView()
    }
    
    open func returnData() -> T? {
        return data
    }
    
}


#endif
