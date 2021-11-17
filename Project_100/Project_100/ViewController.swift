//
//  ViewController.swift
//  Project_100
//
//  Created by Aisha Al-Qarni on 15/11/2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayOfCells: [cell] = [
        cell(photo: UIImage(systemName: "square")!, title: "Apple Frames", text: "169 Actions", bgColor: #colorLiteral(red: 0.0180239398, green: 0.6411060095, blue: 0.9341514707, alpha: 1)),
        cell(photo: UIImage(systemName: "square.and.arrow.down.fill")!, title: "Twitter Video Downloader V2.6", text: "67 Actions", bgColor: #colorLiteral(red: 0.01269263402, green: 0.7803142667, blue: 0.6577952504, alpha: 1)),
        cell(photo: UIImage(systemName: "dollarsign.circle.fill")!, title: "Calculare Tip", text: "17 Actions", bgColor: #colorLiteral(red: 0.0180239398, green: 0.6411060095, blue: 0.9341514707, alpha: 1)),
        cell(photo: UIImage(systemName: "phone.fill")!, title: "XS Frames", text: "55 Actions", bgColor: #colorLiteral(red: 1, green: 0.6677606702, blue: 0.2386937737, alpha: 1)),
        cell(photo: UIImage(systemName: "square.2.stack.3d")!, title: "What's a Shortcut?", text: "37 Actions", bgColor: #colorLiteral(red: 0.4962525368, green: 0.3176172078, blue: 0.7085140347, alpha: 1)),
        cell(photo: UIImage(systemName: "timer")!, title: "Take a Break", text: "13 Actions", bgColor: #colorLiteral(red: 0.9879805446, green: 0.5034447312, blue: 0.3852055967, alpha: 1)),
        cell(photo: UIImage(systemName: "plus.message.fill")!, title: "Text Last Image", text: "2 Actions", bgColor: #colorLiteral(red: 0.1776990294, green: 0.7399607897, blue: 0.3172895908, alpha: 1)),
        cell(photo: UIImage(systemName: "waveform.path")!, title: "Shazam Shortcut", text: "32 Actions", bgColor: #colorLiteral(red: 0.2581152022, green: 0.3717797995, blue: 0.7170577645, alpha: 1))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    struct cell {
        var photo: UIImage
        var title: String
        var text: String
        var bgColor: UIColor
    }
    
    
}

extension ViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayOfCells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.cell_image.image = arrayOfCells[indexPath.row].photo
        cell.cell_title.text = arrayOfCells[indexPath.row].title
        cell.cell_text.text = arrayOfCells[indexPath.row].text
        cell.backgroundColor = arrayOfCells[indexPath.row].bgColor
        cell.layer.cornerRadius = 20
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 130)
    }
}
