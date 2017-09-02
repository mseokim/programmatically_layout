//
//  ViewController.swift
//  programmmmm
//
//  Created by 김민서 on 2017. 9. 2..
//  Copyright © 2017년 김민서. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 238/255, green: 242/255, blue: 245/255, alpha: 1)
        setUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUI() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 24, width: view.frame.width, height: view.frame.height * 0.4 - 24))
        imageView.image = UIImage(named: "ilbe.jpg")
//        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        
        let descriptionView = DescriptionView(frame: CGRect(x: 10, y: view.frame.height * 0.4 + 20, width: view.frame.width - 20, height: view.frame.height * 0.25), logo: #imageLiteral(resourceName: "shangus.jpg"), name: "sh무gus", content: "집권 당시 네티즌 사이에서 노무현과 전혀 무관한 인터넷 기사에 대해서도 '이게 다 노무현 때문이다'라는 댓글을 다는 것이 유행했다. 진담과 농담이 섞인 이러한 풍조의 발생은 각종 정책과 사건마다 대통령을 비판하는 데 주력했던 주요 언론사의 논조에 힘입은 바 크다.")
        descriptionView.layer.shadowColor = UIColor.black.cgColor
        descriptionView.layer.shadowOpacity = 0.2
        descriptionView.layer.shadowOffset = CGSize(width: 0, height: 1)
        descriptionView.layer.shadowRadius = 2
        view.addSubview(descriptionView)
        
        let someImageView = SomeImageView(frame: CGRect(x: 10, y: view.frame.height * 0.65 + 40, width: view.frame.width - 20, height: view.frame.height * 0.2), image1: #imageLiteral(resourceName: "clock.jpg"), image2: #imageLiteral(resourceName: "owl.jpg"), image3: #imageLiteral(resourceName: "stone.jpg"))
        someImageView.layer.shadowColor = UIColor.black.cgColor
        someImageView.layer.shadowOpacity = 0.2
        someImageView.layer.shadowOffset = CGSize(width: 0, height: 1)
        someImageView.layer.shadowRadius = 2
        view.addSubview(someImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class DescriptionView: UIView {
    var logo: UIImage!
    var name: String!
    var content: String!
    
    init(frame: CGRect, logo: UIImage, name: String, content: String) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.logo = logo
        self.name = name
        self.content = content
        setLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayout() {
        let logoView = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
        logoView.image = logo
        addSubview(logoView)
        
        let nameLabel = UILabel(frame: CGRect(x: 60, y: 15, width: 200, height: 30))
        nameLabel.text = name
        nameLabel.font = UIFont(name: "Noteworthy", size: 14.0)
        addSubview(nameLabel)
        
        let contentLabel = UILabel(frame: CGRect(x: 10, y: 60, width: frame.width - 20, height: frame.height - 70))
        contentLabel.text = content
        contentLabel.font = UIFont(name: "Noteworthy", size: 12.0)
        contentLabel.numberOfLines = 7
        contentLabel.lineBreakMode = .byTruncatingTail
        contentLabel.sizeToFit()
        addSubview(contentLabel)
    }
}

class SomeImageView: UIView {
    var image1: UIImage!
    var image2: UIImage!
    var image3: UIImage!
    
    init(frame: CGRect, image1: UIImage, image2: UIImage, image3: UIImage) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.image1 = image1
        self.image2 = image2
        self.image3 = image3
        setLayOut()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayOut() {
        var currentX:CGFloat = 20
        for i in 0...2 {
            let imageView = UIImageView(frame: CGRect(x: currentX, y: 20, width: (frame.width - 80) / 3,  height: (frame.width - 80) / 3))
            imageView.image = i == 0 ? image1 : i == 1 ? image2 : image3
            addSubview(imageView)
            currentX += ((frame.width - 80) / 3) + 20
        }
    }
}

