//
//  ViewController.swift
//  SwiftMessages286
//
//  Created by Antoine Cœur on 2019/3/29.
//

import UIKit
import SwiftMessages

class ViewController: UIViewController {
    
    @IBAction func notifications(_ sender: UIButton) {
        var config = SwiftMessages.Config()
        config.duration = .seconds(seconds: 3)
        
        let message = MessageView.viewFromNib(layout: .cardView)
        message.configureTheme(.success)
        message.button?.isHidden = true
        message.configureContent(title: "My Title", body: "Notification")
        message.configureDropShadow()
        
        SwiftMessages.show(config: config, view: view)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: collectionView.frame.width / 2.1, height: (collectionView.frame.height / 3) - 10)
        print(size)
        return size
    }
}
