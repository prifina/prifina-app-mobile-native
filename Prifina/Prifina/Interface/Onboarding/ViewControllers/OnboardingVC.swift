//
//  OnboardingVC.swift
//  Prifina
//
//  Created by DW on 10/11/21.
//

import UIKit

class OnboardingVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var featuresCollectionView: UICollectionView!
    @IBOutlet weak var nextButton: PrifinaButton!
    @IBOutlet weak var featurePageControl: UIPageControl!
    
    // MARK: - Properties
    private let viewModel = OnboardingViewModel()
    private var currentPage = 0 {
        didSet {
            featurePageControl.currentPage = currentPage
            if currentPage == viewModel.featureDetailsArr.count - 1 {
                nextButton.setTitle("Get Started", for: .normal)
            } else {
                nextButton.setTitle("Next", for: .normal)
            }
        }
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        featuresCollectionView.dataSource = self
        featuresCollectionView.delegate = self
        prepareUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        nextButton.prepareButtonWith(.button1)
        featurePageControl.pageIndicatorTintColor = Theme.Colors.cC3C2C2.getUIColor()
        featurePageControl.currentPageIndicatorTintColor = Theme.Colors.c00847A.getUIColor()
        featurePageControl.numberOfPages = viewModel.featureDetailsArr.count
        
        let carouselLayout = UICollectionViewFlowLayout()
        carouselLayout.scrollDirection = .horizontal
        carouselLayout.sectionInset = .init(top: 0, left: 0, bottom: 0, right: 0)
        carouselLayout.minimumLineSpacing = 0
        featuresCollectionView.collectionViewLayout  = carouselLayout
        featuresCollectionView.reloadData()
    }
    
    func getCurrentPage() -> Int {
        featuresCollectionView.layoutIfNeeded()
        let visibleRect = CGRect(origin: featuresCollectionView.contentOffset, size: featuresCollectionView.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        if let visibleIndexPath = featuresCollectionView.indexPathForItem(at: visiblePoint) {
            return visibleIndexPath.row
        }
        return currentPage
    }
    
    // MARK: - Action Methods
    @IBAction func nextButtonAction(_ sender: PrifinaButton) {
        if currentPage != viewModel.featureDetailsArr.count - 1 {
            featuresCollectionView.scrollToItem(at: IndexPath(item: currentPage+1, section: 0), at: .right, animated: true)
        } else {
            let signInVC = SignInVC.instantiateFromStoryboard(.onboarding)
            navigationController?.pushViewController(signInVC, animated: true)
        }
    }
}

// MARK: - Extension
// MARK: - UICollectionViewDataSource
extension OnboardingVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    //DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.featureDetailsArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: OnboardingCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        cell.featureDetails = viewModel.featureDetailsArr[indexPath.row]
        return cell
    }
    
    //Delegate
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        currentPage = getCurrentPage()
    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        currentPage = getCurrentPage()
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        currentPage = getCurrentPage()
    }
    
    //FlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height - 24 )
    }
}
