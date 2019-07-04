//
//  ViewController.swift
//  CollectionnnView
//
//  Created by LetMeCall Corp on 20/12/18.
//  Copyright © 2018 LetMeCall Corp. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var flowersArry = [["imgName":"flowers","name":"Rose","color":"red","Types":"3"],
                       ["imgName":"flowers","name":"Rose","color":"red","Types":"5"],
                       ["imgName":"flowers","name":"Rose","color":"red","Types":"6"],
                       ["imgName":"flowers","name":"Rose","color":"red","Types":"7"],
                       ["imgName":"flowers","name":"Rose","color":"red","Types":"8"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flowersArry.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCelll
        cell.imgView.image = UIImage(named: self.flowersArry[indexPath.row]["imgName"]!)
        cell.nameLbl.text = self.flowersArry[indexPath.row]["name"]!
        print(self.flowersArry[indexPath.row]["name"]!)
        cell.colorLbl.text  = self.flowersArry[indexPath.row]["color"]!
        cell.typeLbl.text = self.flowersArry[indexPath.row]["Types"]!
        
        
        return cell
        
    }
    

}

