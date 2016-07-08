//
//  FISViewController.m
//  Open-Me
//
//  Created by Joe Burgess on 3/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (weak, nonatomic) IBOutlet UIButton *one;
@property (weak, nonatomic) IBOutlet UIButton *two;
@property (weak, nonatomic) IBOutlet UIButton *three;
@property (weak, nonatomic) IBOutlet UIButton *four;
@property (weak, nonatomic) IBOutlet UIButton *five;
@property (weak, nonatomic) IBOutlet UIButton *six;
@property (weak, nonatomic) IBOutlet UIButton *seven;
@property (weak, nonatomic) IBOutlet UIButton *eight;
@property (weak, nonatomic) IBOutlet UIButton *zero;
@property (weak, nonatomic) IBOutlet UIButton *dot;
@property (weak, nonatomic) IBOutlet UIButton *equal;
@property (weak, nonatomic) IBOutlet UIButton *minus;
@property (weak, nonatomic) IBOutlet UIButton *multiply;
@property (weak, nonatomic) IBOutlet UIButton *divide;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *nine;

@end


@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //remove all constraints
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    self.one.translatesAutoresizingMaskIntoConstraints = NO;
    [self.one removeConstraints:self.view.constraints];
    self.two.translatesAutoresizingMaskIntoConstraints = NO;
    [self.two removeConstraints:self.view.constraints];
    self.three.translatesAutoresizingMaskIntoConstraints = NO;
    [self.three removeConstraints:self.view.constraints];
    self.four.translatesAutoresizingMaskIntoConstraints = NO;
    [self.four removeConstraints:self.view.constraints];
    self.five.translatesAutoresizingMaskIntoConstraints = NO;
    [self.five removeConstraints:self.view.constraints];
    self.six.translatesAutoresizingMaskIntoConstraints = NO;
    [self.six removeConstraints:self.view.constraints];
    self.seven.translatesAutoresizingMaskIntoConstraints = NO;
    [self.seven removeConstraints:self.view.constraints];
    self.eight.translatesAutoresizingMaskIntoConstraints = NO;
    [self.eight removeConstraints:self.view.constraints];
    self.nine.translatesAutoresizingMaskIntoConstraints = NO;
    [self.nine removeConstraints:self.view.constraints];
    self.zero.translatesAutoresizingMaskIntoConstraints = NO;
    [self.zero removeConstraints:self.view.constraints];
    self.dot.translatesAutoresizingMaskIntoConstraints = NO;
    [self.dot removeConstraints:self.view.constraints];
    self.equal.translatesAutoresizingMaskIntoConstraints = NO;
    [self.equal removeConstraints:self.view.constraints];
    self.add.translatesAutoresizingMaskIntoConstraints = NO;
    [self.add removeConstraints:self.view.constraints];
    self.minus.translatesAutoresizingMaskIntoConstraints = NO;
    [self.minus removeConstraints:self.view.constraints];
    self.multiply.translatesAutoresizingMaskIntoConstraints = NO;
    [self.multiply removeConstraints:self.view.constraints];
    self.divide.translatesAutoresizingMaskIntoConstraints = NO;
    [self.divide removeConstraints:self.view.constraints];
    
    //full stack
    UIStackView *fullStack = [[UIStackView alloc]init];
    fullStack.axis = UILayoutConstraintAxisVertical;
    fullStack.distribution = UIStackViewDistributionFillEqually;
    fullStack.alignment = UIStackViewAlignmentFill;
    fullStack.spacing = 0;
    
    fullStack.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:fullStack];
    
    [fullStack.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = true;
    [fullStack.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:150].active = true;
    [fullStack.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.5].active = true;
    [fullStack.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:-60].active = true;
    
    //stack view 1,2,3,/
    UIStackView *firstStack = [[UIStackView alloc]init];
    firstStack.axis = UILayoutConstraintAxisHorizontal;
    firstStack.alignment = UIStackViewAlignmentFill;
    firstStack.distribution = UIStackViewDistributionEqualSpacing;
    firstStack.spacing = 0;
    
    [firstStack addArrangedSubview:self.one];
    [firstStack addArrangedSubview:self.two];
    [firstStack addArrangedSubview:self.three];
    [firstStack addArrangedSubview:self.divide];
    
    firstStack.translatesAutoresizingMaskIntoConstraints = false;
    [fullStack addArrangedSubview:firstStack];
    
    //stack view 4,5,6,X
    
    UIStackView *secondStack = [[UIStackView alloc]init];
    secondStack.axis = UILayoutConstraintAxisHorizontal;
    secondStack.distribution = UIStackViewDistributionEqualSpacing;
    secondStack.alignment = UIStackViewAlignmentFill;
    secondStack.spacing = 0;
    
    [secondStack addArrangedSubview:self.four];
    [secondStack addArrangedSubview:self.five];
    [secondStack addArrangedSubview:self.six];
    [secondStack addArrangedSubview:self.multiply];
    
    secondStack.translatesAutoresizingMaskIntoConstraints = false;
    [fullStack addArrangedSubview:secondStack];
    
    //stack view 7,8,9,-
    UIStackView *thirdStack = [[UIStackView alloc]init];
    thirdStack.axis = UILayoutConstraintAxisHorizontal;
    thirdStack.distribution = UIStackViewDistributionEqualSpacing;
    thirdStack.alignment = UIStackViewAlignmentFill;
    thirdStack.spacing = 0;
    
    [thirdStack addArrangedSubview:self.seven];
    [thirdStack addArrangedSubview:self.eight];
    [thirdStack addArrangedSubview:self.nine];
    [thirdStack addArrangedSubview:self.minus];
    
    thirdStack.translatesAutoresizingMaskIntoConstraints = false;
    [fullStack addArrangedSubview:thirdStack];
    
    //stack view 0,.,=,+
    UIStackView *fourthStack = [[UIStackView alloc]init];
    fourthStack.axis = UILayoutConstraintAxisHorizontal;
    fourthStack.distribution = UIStackViewDistributionEqualSpacing;
    fourthStack.alignment = UIStackViewAlignmentFill;
    fourthStack.spacing = 0;
    
    [fourthStack addArrangedSubview:self.zero];
    [fourthStack addArrangedSubview:self.dot];
    [fourthStack addArrangedSubview:self.equal];
    [fourthStack addArrangedSubview:self.add];
    
    fourthStack.translatesAutoresizingMaskIntoConstraints = false;
    [fullStack addArrangedSubview:fourthStack];
	// Do any additional setup after loading the view, typically from a nib.
}

@end
