//
//  ViewController.swift
//  PageControlTraining
//
//  Created by Sena Kurtak on 3.10.2022.
//

import UIKit

/*  Page control, titleLabel, subTitleLabel ve ImageView 'i  tanımlayın.
 Sayfayı sağa kaydırdığınızda 2. page controle geçsin ve farklı resim farklı labellar gözüksün.
 3. page controle geçildiğinde de aynı şekilde farklı resim labellar görünsün.
 Sağa ve sola kaydırma işlevi sağlansın.
 Page controlün bulunduğu sayfada belirli rengi sarı kullanılmayan diğer noktalar için gri renk kullanılsın.
 
 */
class ViewController: UIViewController {
    
    let scrollView = UIScrollView()
    
    let pageControl : UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 5
        pageControl.backgroundColor = .systemBlue
        return pageControl
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        pageControl.addTarget(self, action: #selector(pageControlDidChange), for: .valueChanged)
        scrollView.backgroundColor = .red
        view.addSubview(pageControl)
        view.addSubview(scrollView)
    }
    @objc func pageControlDidChange(_ sender : UIPageControl){
        let current = sender.currentPage
        scrollView.setContentOffset(CGPoint(x: CGFloat(current) * view.frame.width, y: 0), animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageControl.frame = CGRect(x: 10, y: view.frame.size.height-100, width: view.frame.size.width-20, height: 70)
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height-100)
        
        if scrollView.subviews.count == 2 {
            configureScrollView()
        }
    }
    
    func configureScrollView(){
        scrollView.contentSize = CGSize(width: view.frame.size.width * 5, height: scrollView.frame.size.height)
        scrollView.isPagingEnabled = true
        
        let colors : [UIColor] = [
            .systemRed,
            .systemBlue,
            .systemCyan,
            .systemMint,
            .systemPink
        ]
        for x in 0..<5{
            let page = UIView(frame: CGRect(x: CGFloat(x)*view.frame.size.width, y: 0,
                                            width: view.frame.size.width, height: scrollView.frame.size.height))
            page.backgroundColor = colors[x ]
            scrollView.addSubview(page)
        }
    }
}

extension ViewController : UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(floorf(Float(scrollView.contentOffset.x) / Float(scrollView.frame.size.width)))
    }
}
