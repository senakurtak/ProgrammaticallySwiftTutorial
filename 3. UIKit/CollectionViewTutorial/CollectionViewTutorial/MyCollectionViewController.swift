//
//  MyCollectionViewController.swift
//  CollectionViewTutorial
//
//  Created by Sena Kurtak on 6.10.2022.
//

import UIKit

class MyCollectionViewController: UIViewController {
    var dataModels: [DataModel?] = [DataModel]()
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        return collectionView
    }()

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = .yellow

        let data = (0...10).map { value -> DataModel in
            DataModel(name: "\(value)")
        }
        dataModels.append(contentsOf: data)
        addCollectionView()
    }

    func addCollectionView() {
        self.view.addSubview(self.collectionView)
        self.collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}



extension MyCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            if let dataModel = dataModels[indexPath.row] {
                print(">>>>\(dataModel.name)")
                cell.nameLabel.text = dataModel.name
            }
            return cell
        }
        return UICollectionViewCell()
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataModels.count
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 200, height: 200)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
extension MyCollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}


class CollectionViewCell: UICollectionViewCell {
    var storeBack = UIView()
    var nameLabel = UILabel()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    fileprivate func commonInit() {
        self.contentView.addSubview(self.storeBack)
        self.storeBack.backgroundColor=UIColor.green
        self.storeBack.translatesAutoresizingMaskIntoConstraints = false
        self.storeBack.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.storeBack.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        self.storeBack.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        self.storeBack.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true

        self.storeBack.addSubview(self.nameLabel)
        self.nameLabel.textColor = .black
        self.nameLabel.textAlignment = .center
        self.nameLabel.numberOfLines = 0
        nameLabel.font = UIFont.systemFont(ofSize: 20)

        self.nameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.nameLabel.topAnchor.constraint(equalTo: storeBack.topAnchor).isActive = true
        self.nameLabel.leadingAnchor.constraint(equalTo: storeBack.leadingAnchor).isActive = true
        self.nameLabel.trailingAnchor.constraint(equalTo: storeBack.trailingAnchor).isActive = true
        self.nameLabel.bottomAnchor.constraint(equalTo: storeBack.bottomAnchor).isActive = true
    }
}

struct DataModel: Codable {
    var name: String
}
