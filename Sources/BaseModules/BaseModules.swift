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
    
    func addMajorFields() {}
    func setupViews() {}
    
}

//MARK: - GenericBaseView

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
    
    func loadDataToView() {
        
    }
    
    func setData(data: T?) {
        self.data = data
        loadDataToView()
    }
    
    func returnData() -> T? {
        return data
    }
    
}

//MARK: - BaseViewController

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
