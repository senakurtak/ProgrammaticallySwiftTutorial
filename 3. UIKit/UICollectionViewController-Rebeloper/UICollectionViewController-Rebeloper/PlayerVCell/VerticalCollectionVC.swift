//
//  VerticalCollectionVC.swift
//  UICollectionViewController-Rebeloper
//
//  Created by Sena Kurtak on 7.10.2022.
//

import UIKit

class VerticalCollectionVC: UIViewController {
    
    var verticalCV = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCollectionView()
    }
    
    
    func createCollectionView(){
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.itemSize = CGSize(width: 0.7 * screenWidth, height: 0.4 * screenHeight)
        
        verticalCV = UICollectionView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight), collectionViewLayout: flowLayout)
        verticalCV.backgroundColor = .gray
        verticalCV.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        verticalCV.delegate = self
        verticalCV.dataSource = self
        verticalCV.register(VerticalCell.self, forCellWithReuseIdentifier: "VerticalCell")
        view.addSubview(verticalCV)
        
        self.navigationItem.title = title
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: makeBackButton())
    }
    
    func makeBackButton() -> UIButton {
        let backButtonImage = UIImage(named: "backbutton")?.withRenderingMode(.alwaysTemplate)
        let backButton = UIButton(type: .custom)
        backButton.setImage(backButtonImage, for: .normal)
        backButton.tintColor = .blue
        backButton.setTitle(" Back", for: .normal)
        backButton.setTitleColor(.blue, for: .normal)
        backButton.addTarget(self, action: #selector(self.backButtonPressed), for: .touchUpInside)
        return backButton
    }
    @objc func backButtonPressed() {
        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
    }
}


extension VerticalCollectionVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return playerArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = verticalCV.dequeueReusableCell(withReuseIdentifier: "VerticalCell", for: indexPath) as! VerticalCell
        
        cell.playerPosition.text = playerArr[indexPath.item].position
        cell.playerName.text = playerArr[indexPath.item].name
        cell.playerPhoto.image = playerArr[indexPath.item].photo
        cell.playerIsLeft.text = playerArr[indexPath.item].isLeft
        
        return cell
    }
}
