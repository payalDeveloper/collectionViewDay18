//
//  MainCollectionViewController.swift
//  collectionViewDay18
//
//  Created by payal on 23/02/18.
//  Copyright © 2018 payal. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MainCollectionViewCell"

class MainCollectionViewController: UICollectionViewController {
    
    
    var imagesArray : [String] =  []
    var dataDictionary : [String : String] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        imagesArray = ["Day 1","Day 2","Day 3","Day 4","Day 5","Day 6","Day 7","Day 8","Day 9","Day 10","Day 11","Day 12","Day 13","Day 14"]
        dataDictionary = ["Day 1":"image1","Day 2":"image2","Day 3":"image1","Day 4":"image2","Day 5":"image1","Day 6":"image2","Day 7":"image1","Day 8":"image2","Day 9":"image1","Day 10":"image2","Day 11":"image1","Day 12":"image2","Day 13":"image1","Day 14":"image2"]

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imagesArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MainCollectionViewCell
        let currentObject = imagesArray[indexPath.row]
        cell.textLabel.text = "currentObject"
        cell.imageView.image = UIImage.init(named: dataDictionary[currentObject]!)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate
/*
    
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    

    
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
 

    
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
  */

}
