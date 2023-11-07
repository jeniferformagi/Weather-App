//
//  ViewController.swift
//  Weather App
//
//  Created by Jenifer Camila Formagi on 05/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var backgroudView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "backgroud")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var headerView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
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
        view.addSubview(backgroudView)
        view.addSubview(headerView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backgroudView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroudView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroudView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroudView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        ])
    }


}

