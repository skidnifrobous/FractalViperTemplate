//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//


import UIKit

class ___VARIABLE_sceneName___ModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ___VARIABLE_sceneName___ViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ___VARIABLE_sceneName___ViewController) {

        let router = ___VARIABLE_sceneName___Router()
        router.view = viewController

        let presenter = ___VARIABLE_sceneName___Presenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ___VARIABLE_sceneName___Interactor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
