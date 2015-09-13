//
//  ViewController.m
//  ColoringBook
//
//  Created by Shena Yoshida on 9/13/15.
//  Copyright © 2015 Shena Yoshida. All rights reserved.
//

#import "ViewController.h"
#import "ColorPickerViewController.h"
#import "ColorPickerViewControllerDelegate.h"

@interface ViewController () <ColorPickerViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *sunButton;
@property (nonatomic) UIButton *selectedButton; // all buttons are attached to this property

@end

@implementation ViewController

- (void)viewDidLoad {
    self.sunButton.layer.cornerRadius = 30; // make sun round
}

- (IBAction)coloringItemTapped:(UIButton *)sender {
    
    self.selectedButton = sender; //set self.selectedButton to the button that was just tapped

    ColorPickerViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ColorPickerViewController"]; // add this to storyboard id on main.storyboard
    
    viewController.delegate = self; // "set the delegate" property of viewController to self
    
    [self presentViewController:viewController animated:YES completion:nil]; // present viewController modally
}

#pragma mark - ColorPickerViewControllerDelegate

- (void)colorPickerViewController:(ColorPickerViewController *)viewController didPickColor:(UIColor *)color {
    self.selectedButton.backgroundColor = color; // change button color
    
    [self dismissViewControllerAnimated:YES completion:nil]; // dismiss the view controller
}

@end
