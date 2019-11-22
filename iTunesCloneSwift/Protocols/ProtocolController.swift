//
//  Scene.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/17/19.
//  Copyright © 2019 kskkido. All rights reserved.
//
import SwiftUI

public protocol RouterPresenterInterface {
    
}

public protocol InteractorPresenterInterface {
    
}

public protocol PresenterRouterInterface {
    
}

public protocol PresenterInteractorInterface {
    
}

public protocol PresenterViewInterface {
    
}

public protocol ViewPresenterInterface {
    
}

public protocol RouterInterface: RouterPresenterInterface {
    associatedtype PresenterRouter
    
    var presenter: PresenterRouter! { get set }
}

public protocol InteractorInterface: InteractorPresenterInterface {
    associatedtype PresenterInteractor
    
    var presenter: PresenterInteractor { get set }
}

public protocol PresenterInterface: PresenterRouterInterface & PresenterInteractorInterface & PresenterViewInterface {
    associatedtype RouterPresenter
    associatedtype InteractorPresenter
    associatedtype ViewPresenter

    var router: RouterPresenter { get set }
    var interactor: InteractorPresenter { get set }
    var view: ViewPresenter { get set }
}

public protocol ViewInterface: ViewPresenterInterface {
    associatedtype PresenterView
    
    var presenter: PresenterView { get set }
}

public protocol EntityInterface {
    
}

public protocol ControllerInterface {
    associatedtype View where View: ViewInterface
    associatedtype Interactor where Interactor: InteractorInterface
    associatedtype Presenter where Presenter: PresenterInterface
    associatedtype Router where Router: RouterInterface
    
    func build () -> View
}
