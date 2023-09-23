//
//  ViewController.swift
//  iOS_Project
//
//  Created by Alphonso Sensley II on 8/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    let food = Food()
    let titleLabel = UILabel()
    let foodLabel = UILabel()
    let foodButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI() {
        configureTitleLabel()
        configureFoodLabel()
        configureFoodButton()
    }

    func configureTitleLabel() {
        view.addSubview(titleLabel)
        
        titleLabel.text = "WHAT'S FOR DINNER?"
        titleLabel.font = .systemFont(ofSize: 30, weight: .bold)
        titleLabel.textAlignment = .center
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureFoodLabel() {
        view.addSubview(foodLabel)
        
        foodLabel.font = .systemFont(ofSize: 35)
        foodLabel.textAlignment = .center
        
        foodLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            foodLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            foodLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            foodLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            foodLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureFoodButton() {
        view.addSubview(foodButton)
        
        foodButton.configuration = .filled()
        foodButton.configuration?.baseBackgroundColor = .systemBlue
        foodButton.configuration?.title = "Get Food"
        
        foodButton.addTarget(self, action: #selector(updateFoodLabel), for: .touchUpInside)
        
        foodButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            foodButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            foodButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            foodButton.widthAnchor.constraint(equalToConstant: 300),
            foodButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func updateFoodLabel() {
        let foodItem = food.getFood()
        foodLabel.text = "\(foodItem)"
    }
}

