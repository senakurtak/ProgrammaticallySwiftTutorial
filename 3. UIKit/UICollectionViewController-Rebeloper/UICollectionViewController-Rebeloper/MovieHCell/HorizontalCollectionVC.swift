//
//  HorizontalCollectionVC.swift
//  UICollectionViewController-Rebeloper
//
//  Created by Sena Kurtak on 7.10.2022.
//

import UIKit

class HorizontalCollectionVC: UIViewController {
    
    var horizontalCV = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCollectionView()
    }
    
    func createCollectionView(){
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = CGSize(width: 0.7 * screenWidth, height: 0.4 * screenHeight)
        
        horizontalCV = UICollectionView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight), collectionViewLayout: flowLayout)
        horizontalCV.backgroundColor = .white
        horizontalCV.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        horizontalCV.delegate = self
        horizontalCV.dataSource = self
        horizontalCV.register(HorizontalCell.self, forCellWithReuseIdentifier: "HorizontalCell")
        view.addSubview(horizontalCV)
        
        
        self.navigationItem.title = title
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: makeBackButton())
    }
    
    func makeBackButton() -> UIButton {
        let backButtonImage = UIImage(named: "backbutton")?.withRenderingMode(.alwaysTemplate)
        let backButton = UIButton(type: .custom)
        backButton.setImage(backButtonImage, for: .normal)
        backButton.tintColor = .blue
        backButton.setTitle("  Back", for: .normal)
        backButton.setTitleColor(.blue, for: .normal)
        backButton.addTarget(self, action: #selector(self.backButtonPressed), for: .touchUpInside)
        return backButton
    }
    @objc func backButtonPressed() {
        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
    }
    
}


extension HorizontalCollectionVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = horizontalCV.dequeueReusableCell(withReuseIdentifier: "HorizontalCell", for: indexPath) as! HorizontalCell
        cell.movieCoverImgView.image = movieArr[indexPath.item].coverImg
        cell.movieTitle.text = movieArr[indexPath.item].title
        cell.movieGenre.text = movieArr[indexPath.item].genre
        
        return cell
    }
}
