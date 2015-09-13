//
//  ColorPickerViewController.m
//  ColoringBook
//
//  Created by Shena Yoshida on 9/13/15.
//  Copyright © 2015 Shena Yoshida. All rights reserved.
//

#import "ColorPickerViewController.h"

@interface ColorPickerViewController ()

@property (weak, nonatomic) IBOutlet UIView *colorPreviewView;
@property (weak, nonatomic) IBOutlet UIButton *setColorButton;

// hold color
@property (nonatomic) float redColor;
@property (nonatomic) float greenColor;
@property (nonatomic) float blueColor;

@property (nonatomic) UIColor *currentColor; // store current color

@end

@implementation ColorPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // set up initial colors
    self.redColor = 0.5;
    self.greenColor = 0.5;
    self.blueColor = 0.5;
    
    // add border
    self.setColorButton.layer.cornerRadius = 5;
    self.setColorButton.layer.borderWidth = 1.5;
    self.setColorButton.layer.borderColor = [UIColor blackColor].CGColor;
}

- (IBAction)redSliderValueChanged:(UISlider *)sender {
    self.redColor = sender.value;
    [self updatePreviewColor];
}

- (IBAction)greenSliderValueChanged:(UISlider *)sender {
    self.greenColor = sender.value;
    [self updatePreviewColor];
}

- (IBAction)blueSliderValueChanged:(UISlider *)sender {
    self.blueColor = sender.value;
    [self updatePreviewColor];
}

- (IBAction)setColorButtonTapped:(id)sender {
    [self.delegate colorPickerViewController:self didPickColor:self.currentColor];
}

- (void)updatePreviewColor {
    self.currentColor = [UIColor colorWithRed:self.redColor green:self.greenColor blue:self.blueColor alpha:1.0]; // create variable containing color that was picked
    
    self.colorPreviewView.backgroundColor = self.currentColor; // pass that custom color into background of preview view
}

@end
