//
//
//  ViewController.swift
//  Win_gpSDK_iOS_Test
//
//  Created by Md. Abir Hossain on 5/11/25.
//  Contact me if anything is needed: 
//                             Phone: +880 1521-717367
//                             Email: mdabirhossain.dev@gmail.com
//  ©️ 2025 Md. Abir Hossain. All rights reserved.
//


import UIKit
import Win2GainMyGP

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.register(Win2GainGPCollectionViewCell.self, forCellWithReuseIdentifier: Win2GainGPCollectionViewCell.identifier)

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.width, height: (view.frame.width * 0.75) + 44)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        collectionView.collectionViewLayout = layout

//        view.backgroundColor = .blue.withAlphaComponent(0.2)
//        collectionView.backgroundColor = .gray.withAlphaComponent(0.2)

        print("Loading from APP")
    }

    @IBAction func updateCollectionViewActionButton(_ sender: Any) {
        collectionView.reloadData()
        print("collectionView reloaded")
    }
}

import ObjectiveC

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: Win2GainGPCollectionViewCell.identifier,
            for: indexPath
        ) as! Win2GainGPCollectionViewCell
        
        return cell
    }
}

import ObjectiveC

private var paddingKey: UInt8 = 0

extension UILabel {

    // MARK: - Padding Property
    var padding: UIEdgeInsets {
        get {
            return objc_getAssociatedObject(self, &paddingKey) as? UIEdgeInsets ?? .zero
        }
        set {
            objc_setAssociatedObject(self, &paddingKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            invalidateIntrinsicContentSize()
            setNeedsDisplay()
        }
    }

    // MARK: - Convenience Setter
    func withPadding(_ inset: CGFloat) {
        self.padding = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }

    // MARK: - Swizzling Setup
    static func swizzlePaddingSupport() {
        guard self === UILabel.self else { return }

        if let originalDraw = class_getInstanceMethod(self, #selector(drawText(in:))),
           let swizzledDraw = class_getInstanceMethod(self, #selector(swizzled_drawText(in:))) {
            method_exchangeImplementations(originalDraw, swizzledDraw)
        }

        if let originalSize = class_getInstanceMethod(self, #selector(getter: UILabel.intrinsicContentSize)),
           let swizzledSize = class_getInstanceMethod(self, #selector(getter: swizzled_intrinsicContentSize)) {
            method_exchangeImplementations(originalSize, swizzledSize)
        }
    }

    // MARK: - Swizzled Implementations
    @objc private func swizzled_drawText(in rect: CGRect) {
        let insets = padding
        let insetRect = rect.inset(by: insets)
        swizzled_drawText(in: insetRect)
    }

    @objc private var swizzled_intrinsicContentSize: CGSize {
        let size = swizzled_intrinsicContentSize
        return CGSize(width: size.width + padding.left + padding.right,
                      height: size.height + padding.top + padding.bottom)
    }
}

// MARK: - Run Once When App Launches
extension UIApplication {
    private static let runOnce: Void = {
        UILabel.swizzlePaddingSupport()
    }()
    
    override open var next: UIResponder? {
        UIApplication.runOnce
        return super.next
    }
}


