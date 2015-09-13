//
//  ColorPickerViewControllerDelegate.h
//  ColoringBook
//
//  Created by Shena Yoshida on 9/13/15.
//  Copyright © 2015 Shena Yoshida. All rights reserved.
//

#import <Foundation/Foundation.h>

// include reference to ColorPickerViewController class
@class ColorPickerViewController; // you can't import in protocols so do this <---

@protocol ColorPickerViewControllerDelegate <NSObject>

// required delegate method
-(void)colorPickerViewController:(ColorPickerViewController *)viewController
                    didPickColor:(UIColor *)color;

@end
