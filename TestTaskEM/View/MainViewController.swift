//
//  MainViewController.swift
//  TestTaskEM
//
//  Created by Влад Руденко on 25.08.2022.
//

import UIKit

class MainViewController: ViewController {
    
    let api = ApiClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(topPanelStack)
//        topPanelStack.addArrangedSubview(topPanelImage)
//        topPanelStack.addArrangedSubview(topPanelLabel)
//        topPanelStack.addArrangedSubview(topPanelButton)
        
        
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
        
        downloadHotSellerImage()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Elements of UI
    
    let topPanelImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LocationSign")
        image.frame.size.height = 0.15
        image.frame.size.width = 0.1
        return image
    }()
    
    let topPanelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Zihuatanejo, Gro"
        return label
    }()
    
    let topPanelButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        return button
    }()
    
    private var topPanelStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
//        stack.backgroundColor = .brown
        return stack
    }()
    
    let selectedCategoryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Selected Category"
        label.textColor = UIColor.darkBlueEM
        label.font = UIFont(name: String.MarkProBold, size: 25)
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
        return stack
    }()
    
    let selectedCategoryScroll: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let searcBar: UISearchTextField = {
        let search = UISearchTextField()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.layer.cornerRadius = 50
        return search
    }()
    
    let searchFilterButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "SearchButton"), for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor.orangeEM
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.clear.cgColor
        return button
    }()
    
    private var searchStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
//        stack.backgroundColor = .brown
        return stack
    }()
    
    let hotSalesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hot Sales"
        label.textColor = UIColor.darkBlueEM
        label.font = UIFont(name: String.MarkProBold, size: 25)
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
        return stack
    }()
    
    let hotSalesScroll: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let hotSalesImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.frame.size.height = 10
        image.frame.size.width = 10
        return image
    }()
    
    let bestSellerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Best Seller"
        label.textColor = UIColor.darkBlueEM
        label.font = UIFont(name: String.MarkProBold, size: 25)
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
        return stack
    }()
    
    let bestSellerScroll: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .green
        return view
    }()
    
    
    
    func setUpConstrains() {
        topPanelStack.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topPanelStack.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topPanelStack.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topPanelStack.heightAnchor.constraint(equalToConstant: view.frame.height / 12).isActive = true
        
//        topPanelImageLabel.centerXAnchor.constraint(equalTo: topPanelStack.centerXAnchor).isActive = true
//        topPanelImageLabel.centerYAnchor.constraint(equalTo: topPanelStack.centerYAnchor).isActive = true
//        topPanelImageLabel.heightAnchor.constraint(equalToConstant: topPanelStack.spacing / 2).isActive = true
//        topPanelImageLabel.widthAnchor.constraint(equalToConstant: topPanelStack.frame.width / 2).isActive = true
        
//        topPanelImage.centerXAnchor.constraint(equalTo: topPanelStack.centerXAnchor).isActive = true
//        topPanelImage.rightAnchor.constraint(equalTo: topPanelLabel.leftAnchor).isActive = true
//        topPanelImage.heightAnchor.constraint(equalToConstant: 10).isActive = true
//        topPanelImage.widthAnchor.constraint(equalToConstant: 10).isActive = true
//        topPanelLabel.centerXAnchor.constraint(equalTo: topPanelStack.centerXAnchor).isActive = true
//        topPanelLabel.bottomAnchor.constraint(equalTo: topPanelStack.bottomAnchor).isActive = true
        
//        topPanelButton.rightAnchor.constraint(equalTo: topPanelStack.rightAnchor).isActive = true
        
        
        labelButtonStack.topAnchor.constraint(equalTo: topPanelStack.bottomAnchor).isActive = true
        labelButtonStack.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        labelButtonStack.heightAnchor.constraint(equalToConstant: view.frame.height / 20).isActive = true
        
        selectedCategoryLabel.bottomAnchor.constraint(equalTo: labelButtonStack.bottomAnchor).isActive = true
        selectedCategoryLabel.leftAnchor.constraint(equalTo: labelButtonStack.leftAnchor).isActive = true
        
        selectedViewAllButton.bottomAnchor.constraint(equalTo: labelButtonStack.bottomAnchor).isActive = true
        selectedViewAllButton.rightAnchor.constraint(equalTo: labelButtonStack.rightAnchor).isActive = true
        
        selectedCategoryScroll.topAnchor.constraint(equalTo: labelButtonStack.bottomAnchor).isActive = true
        selectedCategoryScroll.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        selectedCategoryScroll.heightAnchor.constraint(equalToConstant: view.frame.height / 12).isActive = true
        
        searchStack.topAnchor.constraint(equalTo: selectedCategoryScroll.bottomAnchor).isActive = true
        searchStack.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        searchStack.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        searchStack.heightAnchor.constraint(equalToConstant: view.frame.height / 24).isActive = true
        
        searcBar.leftAnchor.constraint(equalTo: searchStack.leftAnchor).isActive = true
        
        searchFilterButton.rightAnchor.constraint(equalTo: searchStack.rightAnchor).isActive = true
        searchFilterButton.widthAnchor.constraint(equalToConstant: view.frame.width / 13).isActive = true
        
        hotSalesStack.topAnchor.constraint(equalTo: searchStack.bottomAnchor).isActive = true
        hotSalesStack.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        hotSalesStack.heightAnchor.constraint(equalToConstant: view.frame.height / 20).isActive = true
        
        hotSalesLabel.leftAnchor.constraint(equalTo: hotSalesStack.leftAnchor).isActive = true
        hotSalesButton.rightAnchor.constraint(equalTo: hotSalesStack.rightAnchor).isActive = true
        
        hotSalesScroll.topAnchor.constraint(equalTo: hotSalesStack.bottomAnchor).isActive = true
        hotSalesScroll.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        hotSalesScroll.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        hotSalesScroll.heightAnchor.constraint(equalToConstant: view.frame.height / 3.8).isActive = true
        
        hotSalesImage.topAnchor.constraint(equalTo: hotSalesScroll.topAnchor).isActive = true
        hotSalesImage.leftAnchor.constraint(equalTo: hotSalesScroll.leftAnchor).isActive = true
        hotSalesImage.rightAnchor.constraint(equalTo: hotSalesScroll.rightAnchor).isActive = true
        hotSalesImage.bottomAnchor.constraint(equalTo: hotSalesScroll.bottomAnchor).isActive = true
        
        bestSellerStack.topAnchor.constraint(equalTo: hotSalesScroll.bottomAnchor).isActive = true
        bestSellerStack.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        bestSellerStack.heightAnchor.constraint(equalToConstant: view.frame.height / 20).isActive = true
        
        bestSellerLabel.leftAnchor.constraint(equalTo: bestSellerStack.leftAnchor).isActive = true
        bestSellerButton.rightAnchor.constraint(equalTo: bestSellerStack.rightAnchor).isActive = true
        
        bestSellerScroll.topAnchor.constraint(equalTo: bestSellerStack.bottomAnchor).isActive = true
        bestSellerScroll.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        bestSellerScroll.heightAnchor.constraint(equalToConstant: view.frame.height / 3.8).isActive = true
        
    }
    
    func downloadHotSellerImage() {
        api.downloadHomeScreenApi(url: String.apiHomeScreen) {
            let session = URLSession(configuration: .default)
            
            guard let imageURL = URL(string: self.api.pictureURL) else {
                fatalError("This is not URL")
            }
            
            let task = session.dataTask(with: imageURL) { data, response, error in
                guard let data = data, error == nil else {
                    return
                }
                DispatchQueue.main.async {
                    self.hotSalesImage.image = UIImage(data: data)
                }
            }
            task.resume()
        }
        
    }
    
}
