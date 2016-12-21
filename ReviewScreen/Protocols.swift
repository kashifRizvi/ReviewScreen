//
//  Protocols.swift
//  ReviewScreen
//
//  Created by Kashif on 16/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import Foundation

protocol FirstCellProtocol {
    func checkZeroStar(cell: FirstTableViewCell, ratings: Int8?)
    func checkOneStar(cell: FirstTableViewCell, ratings: Int8?)
    func checkTwoStars(cell: FirstTableViewCell, ratings: Int8?)
    func checkThreeStars(cell: FirstTableViewCell, ratings: Int8?)
    func checkFourStars(cell: FirstTableViewCell, ratings: Int8?)
}

protocol SecondCellProtocol {
    func interactionSelected(cell: SecondTableViewCell, methodName: String)
    func interactionDeselected(cell: SecondTableViewCell)
}

protocol ThirdCellProtocol {
    func updateWorkFields(cell: ThirdTableViewCell, methodName: String)
}

protocol FourthCellProtocol {
    func willHireAgain(cell: FourthTableViewCell, isHirable: String)
}

protocol FifthCellProtocol {
    func isPunctual(cell: FifthTableViewCell, withValue: String)
}

protocol SixthCellProtocol {
    func isDependable(cell: SixthTableViewCell, withValue: String)
}

protocol SeventhCellProtocol {
    func segueTo(cell: SeventhTableViewCell)
}

protocol textViewProtocol {
    func setTextViewText(withText: String?)
}
