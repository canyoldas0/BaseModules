#if canImport(UIKit)

import UIKit

//MARK: - BaseView

open class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorFields()
        setupViews()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorFields()
        setupViews()
    }
    
    open func addMajorFields() {}
    open func setupViews() {}
    
}





#endif
