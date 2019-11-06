//
//  ImageMultipleSelectView.swift
//  warming-up-team4-iOS
//
//  Created by user on 2019/10/30.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

import SnapKit
import Then
import YPImagePicker

private let addCellID = "cellID"
private let imageCellID = "imageCellID"

final class ImageMultipleSelectView: UIView {

    var photos: [YPMediaPhoto] = [] {
        didSet {
            collectionView.reloadData()
        }
    }

    private var viewController: UIViewController!

    private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.scrollDirection = .horizontal
    }).then {
        $0.backgroundColor = .clear
        $0.delegate = self
        $0.dataSource = self
        $0.register(AddImageCell.self, forCellWithReuseIdentifier: addCellID)
        $0.register(PostImageCell.self, forCellWithReuseIdentifier: imageCellID)
        $0.showsHorizontalScrollIndicator = false
    }

    private func setupView() {
        self.snp.makeConstraints {
            $0.height.greaterThanOrEqualTo(108)
        }
        addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

    }

    init(in controller: UIViewController) {
        super.init(frame: .zero)
        viewController = controller
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ImageMultipleSelectView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count + 1
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 104, height: 92)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let isLastCell = indexPath.item == photos.count
        if isLastCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: addCellID, for: indexPath)
            return cell
        }

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageCellID, for: indexPath) as! PostImageCell
        cell.setImage(photos[indexPath.item].image)
        return cell

    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("open Photo Selector")
        presentImagePicker()
    }

    private func presentImagePicker() {
        var config = YPImagePickerConfiguration()
        config.isScrollToChangeModesEnabled = false
        config.onlySquareImagesFromCamera = false
        config.startOnScreen = YPPickerScreen.library
        config.screens = [.library, .photo]
        config.hidesStatusBar = false
        config.preferredStatusBarStyle = UIStatusBarStyle.default
        config.library.maxNumberOfItems = 3
        let picker = YPImagePicker(configuration: config)
        picker.didFinishPicking { [unowned picker] items, cancelled in
            self.photos = []
            for item in items {
                switch item {
                case .photo(let photo):
                    self.photos.append(photo)
                case .video:
                    break
                }
            }
            picker.dismiss(animated: true, completion: nil)
        }
        viewController.present(picker, animated: true, completion: nil)
    }
}

final class PostImageCell: UICollectionViewCell {
    func setImage(_ image: UIImage) {
        imageView.image = image
    }

    private let imageView = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
    }

    private func setupView() {
        addSubview(imageView)
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class AddImageCell: UICollectionViewCell {

    private let addIconImageView = UIImageView(image: .iconAdd).then {
        $0.tintColor = .label
    }

    private func setupView() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.label.cgColor

        addSubview(addIconImageView)
        addIconImageView.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
