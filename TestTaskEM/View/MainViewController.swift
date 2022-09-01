//
//  MainViewController.swift
//  TestTaskEM
//
//  Created by Влад Руденко on 25.08.2022.
//

import UIKit

class MainViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        view.addSubview(labelButtonStack)
        labelButtonStack.addArrangedSubview(selectedCategoryLabel)
        labelButtonStack.addArrangedSubview(selectedViewAllButton)
        
        view.addSubview(selectedCategoryScroll)
        
        view.addSubview(searchStack)
        searchStack.addArrangedSubview(searcBar)
        searchStack.addArrangedSubview(searchFilterButton)
        
        view.addSubview(hotSalesStack)
        hotSalesStack.addArrangedSubview(hotSalesLabel)
        hotSalesStack.addArrangedSubview(hotSalesButton)
        
        view.addSubview(hotSalesScroll)
        hotSalesScroll.addSubview(hotSalesImage)
        
        view.addSubview(bestSellerStack)
        bestSellerStack.addArrangedSubview(bestSellerLabel)
        bestSellerStack.addArrangedSubview(bestSellerButton)
        
        view.addSubview(bestSellerScroll)
        
        setUpConstrains()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Elements of UI
    
    let selectedCategoryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Selected Category"
        label.textColor = UIColor.darkBlueEM
        label.font = UIFont(name: String.MarkPro, size: 25)
        return label
        
    }()
    
    let selectedViewAllButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("view all", for: .normal)
        button.tintColor = UIColor.orangeEM
        button.titleLabel?.font = UIFont(name: String.MarkPro, size: 15)
        return button
    }()
    
    private var labelButtonStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .lightGray
        return stack
    }()
    
    let selectedCategoryScroll: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let searcBar: UISearchTextField = {
        let search = UISearchTextField()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.backgroundColor = .white
        return search
    }()
    
    let searchFilterButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("S", for: .normal)
        return button
    }()
    
    private var searchStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .brown
        return stack
    }()
    
    let hotSalesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hot Sales"
        label.textColor = UIColor.darkBlueEM
        label.font = UIFont(name: String.MarkPro, size: 25)
        return label
    }()
    
    let hotSalesButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("see all", for: .normal)
        button.tintColor = UIColor.orangeEM
        button.titleLabel?.font = UIFont(name: String.MarkPro, size: 15)
        return button
    }()
    
    private var hotSalesStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .blue
        return stack
    }()
    
    let hotSalesScroll: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .cyan
        return view
    }()
    
    let hotSalesImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "pencil")
        return image
    }()
    
    let bestSellerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Best Seller"
        label.textColor = UIColor.darkBlueEM
        label.font = UIFont(name: String.MarkPro, size: 25)
        return label
    }()
    
    let bestSellerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("see more", for: .normal)
        button.tintColor = UIColor.orangeEM
        button.titleLabel?.font = UIFont(name: String.MarkPro, size: 15)
        return button
    }()
    
    private var bestSellerStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .gray
        return stack
    }()
    
    let bestSellerScroll: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    
    
    func setUpConstrains() {
        labelButtonStack.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        labelButtonStack.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        labelButtonStack.heightAnchor.constraint(equalToConstant: view.frame.height / 7).isActive = true
        
        selectedCategoryLabel.bottomAnchor.constraint(equalTo: labelButtonStack.bottomAnchor).isActive = true
        selectedCategoryLabel.leftAnchor.constraint(equalTo: labelButtonStack.leftAnchor).isActive = true
        
        selectedViewAllButton.bottomAnchor.constraint(equalTo: labelButtonStack.bottomAnchor).isActive = true
        selectedViewAllButton.rightAnchor.constraint(equalTo: labelButtonStack.rightAnchor).isActive = true
        
        selectedCategoryScroll.topAnchor.constraint(equalTo: labelButtonStack.bottomAnchor).isActive = true
        selectedCategoryScroll.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        selectedCategoryScroll.heightAnchor.constraint(equalToConstant: view.frame.height / 12).isActive = true
        
        searchStack.topAnchor.constraint(equalTo: selectedCategoryScroll.bottomAnchor).isActive = true
        searchStack.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        searchStack.heightAnchor.constraint(equalToConstant: view.frame.height / 18).isActive = true
        
        searcBar.leftAnchor.constraint(equalTo: searchStack.leftAnchor).isActive = true
        searchFilterButton.rightAnchor.constraint(equalTo: searchStack.rightAnchor).isActive = true
        
        hotSalesStack.topAnchor.constraint(equalTo: searchStack.bottomAnchor).isActive = true
        hotSalesStack.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        hotSalesStack.heightAnchor.constraint(equalToConstant: view.frame.height / 20).isActive = true
        
        hotSalesLabel.leftAnchor.constraint(equalTo: hotSalesStack.leftAnchor).isActive = true
        hotSalesButton.rightAnchor.constraint(equalTo: hotSalesStack.rightAnchor).isActive = true
        
        hotSalesScroll.topAnchor.constraint(equalTo: hotSalesStack.bottomAnchor).isActive = true
        hotSalesScroll.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        hotSalesScroll.heightAnchor.constraint(equalToConstant: view.frame.height / 4).isActive = true
        
        bestSellerStack.topAnchor.constraint(equalTo: hotSalesScroll.bottomAnchor).isActive = true
        bestSellerStack.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        bestSellerStack.heightAnchor.constraint(equalToConstant: view.frame.height / 20).isActive = true
        
        bestSellerLabel.leftAnchor.constraint(equalTo: bestSellerStack.leftAnchor).isActive = true
        bestSellerButton.rightAnchor.constraint(equalTo: bestSellerStack.rightAnchor).isActive = true
        
        bestSellerScroll.topAnchor.constraint(equalTo: bestSellerStack.bottomAnchor).isActive = true
        bestSellerScroll.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        bestSellerScroll.heightAnchor.constraint(equalToConstant: view.frame.height / 4).isActive = true
        
    }
    
}
