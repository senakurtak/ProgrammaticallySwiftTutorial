//
//  ViewController.swift
//  TableView-SearchBarTraining
//
//  Created by Sena Kurtak on 5.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var maintableView: UITableView = UITableView()
    
    var searchUIBar = UISearchBar()
    
    var isSearch : Bool = false
    
    var tableData = ["İstanbul", "Ankara", "Antalya", "Muğla","İzmir","Sakarya","Bursa", "Adana" , "Adıyaman" , "Afyonkarahisar" , "Ağrı" , "Aksaray" , "Amasya" , "Ankara" , "Antalya" , "Ardahan" , "Artvin" , "Aydın" , "Balıkesir" , "Bartın" , "Batman" ]
  
    var filteredTableData:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        filteredTableData = tableData
        tableViewAndSearchSetup ()
    }
    
    func tableViewAndSearchSetup (){
        maintableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        maintableView.frame = CGRect(x: 0, y: UIScreen.main.bounds.height * 0.1, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        maintableView.dataSource = self
        maintableView.delegate = self
        view.addSubview(maintableView)
        view.addSubview(searchUIBar)
        
        searchUIBar.delegate = self
        searchUIBar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.1)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredTableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(filteredTableData[indexPath.row])"
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(tableData[indexPath.row])")
    }
    
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//        isSearch = true
//    }
//    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
//        searchBar.resignFirstResponder()
//        isSearch = false
//    }
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        searchBar.resignFirstResponder()
//        isSearch = false
//    }
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        searchBar.resignFirstResponder()
//        isSearch = false
//    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        if searchText.count == 0 {
//            isSearch = false
//            self.maintableView.reloadData()
//        } else {
//            filteredTableData = tableData.filter({ (text) -> Bool in
//                let tmp: NSString = text as NSString
//                let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
//                return range.location != NSNotFound
//            })
//            if(filteredTableData.count == 0){
//                isSearch = false
//            } else {
//                isSearch = true
//            }
//            self.maintableView.reloadData()
//        }
        
        filteredTableData = tableData
        
        if searchText != "" {
            filteredTableData = tableData.filter({$0.lowercased().contains(searchText.lowercased())})
        } else {
            filteredTableData = tableData
        }
        maintableView.reloadData()
    }

}

