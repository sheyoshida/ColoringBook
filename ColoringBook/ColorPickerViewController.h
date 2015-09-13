//
//  ColorPickerViewController.h
//  ColoringBook
//
//  Created by Shena Yoshida on 9/13/15.
//  Copyright © 2015 Shena Yoshida. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPickerViewControllerDelegate.h"

@interface ColorPickerViewController : UIViewController

@property (nonatomic, weak) id <ColorPickerViewControllerDelegate> delegate;

@end
