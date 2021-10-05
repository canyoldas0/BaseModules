//
//  File.swift
//  
//
//  Created by Can Yoldas on 5.10.2021.
//

#if canImport(UIKit)

//MARK: - BaseViewController

import UIKit

open class BaseViewController<V>: UIViewController {
    
    var viewModel: V!
    
    convenience init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareViewControllerSetup()
    }
    
    open func prepareViewControllerSetup() {
        
        view.backgroundColor = .white
    }
    
}


#endif
