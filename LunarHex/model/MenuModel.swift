//
//  MenuModel.swift
//  LunarHex
//
//  Created by Ian Baker on 2/19/19.
//  Copyright © 2019 Ian Baker. All rights reserved.
//

import Foundation
import CoreGraphics
import SpriteKit

/**
 The Menu Model class holds the state of the menu.
 */
class MenuModel {

    /**
     Reference to the hamburger menu model.
     */
    var hamburgerMenu: HamburgerMenuModel!

    /**
     The translation magnitude between the left most point of the menu and the screen.
     */
    var screenOffset: Int = 0

    /**
     The maximum value the screen offset can reach.
     */
    var screenOffsetRightBound: Int!

    /**
     The center most level in view on the menu where 0 is the title,1 is the first level
     up to 30 and 31 is the random level.
     */
    var viewingLevel: CGFloat = 0

    /**
     The initial value of the screen offset when the tap event began.
     */
    var tapOffsetStart: Int = 0

    /**
     The velocity of the menu sliding due to tap events.
     */
    var tapVelocity: Int = 0

    /**
     The maximum tap velocity.
     */
    var maxTapVelocity: Int!

    /**
     The tap velocity reduction per update.
     */
    var tapVelocityResistance: Int!

    /**
     The velocity to slide one level away from the current selection.
     */
    var jumpOneLevelVelocity: Int!

    /**
     The velocity to slide two levels away from the current selection.
     */
    var jumpTwoLevelsVelocity: Int!

    /**
     The menu velocity per update to slide to a nearby level if not tapping or sliding already.
     */
    var idleCenteringVelocity: Int!

    /**
     Whether the hamburger menu is open.
     */
    var hamburgerMenuOpen: Bool = false

    /**
     The title position X coordinate.
     */
    var titleX: Int!

    /**
     The title position Y coordinate.
     */
    var titleY: Int!

    /**
     The hamburger icon position X coordinate.
     */
    var hamburgerX: Int!

    /**
     The hamburger icon position Y coordinate.
     */
    var hamburgerY: Int!

    /**
     The hamburger icon width.
     */
    var hamburgerWidth: Int!

    /**
     The hamburger icon height.
     */
    var hamburgerHeight: Int!

    /**
     The level selection circle position X coordinate.
     */
    var selectionCircleX: Int!

    /**
    The level selection circle position Y coordinate.
     */
    var selectionCircleY: Int!

    /**
    The level selection circle radius.
     */
    var selectionCircleRadius: Int!

    /**
    The transparency 0.0 to 1.0 of the level selection circle.
     */
    var selectionCircleTransparency: CGFloat = 0

    /**
    The scale of the level selection circle.
     */
    var selectionCircleScale: CGFloat = 0

    /**
     The star icon width.
     */
    var starWidth: Int!

    /**
     The star icon height.
     */
    var starHeight: Int!

    /**
     The preview board top left corner position X coordinate.
     */
    var previewBoardX: Int!

    /**
     The preview board top left corner position Y coordinate.
     */
    var previewBoardY: Int!

    /**
     The spacing between preview board circles in the X axis.
     */
    var previewBoardSpacingX: Int!

    /**
     The spacing between preview board circles in the Y axis.
     */
    var previewBoardSpacingY: Int!

    /**
     The preview board circle colors.
     */
    var previewBoardColors: [SKColor] = Array()

    /**
     The preview board circle scale.
     */
    var previewBoardCircleScale: CGFloat = 0

    /**
     The spacing between levels.
     */
    var levelSpacing: Int!

    /**
     The random level position X coordinate.
     */
    var randomX: Int!

    /**
     The random level position Y coordinate.
     */
    var randomY: Int!

    /**
     Array of level position X coordinates.
     */
    var levelX: [Int] = Array()

    /**
     Array of level position Y coordinates.
     */
    var levelY: [Int] = Array()

    /**
    Array of level transparency 0.0 to 1.0.
     */
    var levelTransparency: [CGFloat] = Array()

    /**
    Title text transparency 0.0 to 1.0.
     */
    var titleTransparency: CGFloat = 0

    /**
    Random text transparency 0.0 to 1.0.
     */
    var randomTransparency: CGFloat = 0

    /**
     Initializes the menu model.
     */
    public init() {
        hamburgerMenu = HamburgerMenuModel()
    }
}
