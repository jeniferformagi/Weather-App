//
//  ViewController.swift
//  Weather App
//
//  Created by Jenifer Camila Formagi on 05/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() { 
        //executado sempre que a view é carregada, uma só vez
        super.viewDidLoad()
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) { 
        // quando a tela é carregada
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) { 
        // antes da tela ser carregada
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) { 
        // depois que a tela é carregada
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) { 
        // quando a tela vai desaparecer ou desapareceu
        super.viewDidDisappear(animated)
    }
    
    private func setupView() {
        view.backgroundColor = .red
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(customView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }


}

