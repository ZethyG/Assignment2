//
//  ViewController.m
//  Fruit
//
//  Created by Build User on 1/28/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "ViewController.h"
#import "Vegetable.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *cart;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cart = [[NSMutableArray alloc] init];
    
    Vegetable *vegetable1 = [[Vegetable alloc] initWithName:@"Potato" andShape:@"Oval" andColor:@"Brown"];
    [self.cart addObject:vegetable1];
    
    Vegetable *vegetable2 = [[Vegetable alloc] initWithName:@"Onion" andShape:@"Round" andColor:@"White"];
    [self.cart addObject:vegetable2];

    Vegetable *vegetable3 = [[Vegetable alloc] initWithName:@"Pumpkin" andShape:@"Round" andColor:@"Orange"];
    [self.cart addObject:vegetable3];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.cart count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"vegetableCell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    
    cell.textLabel.text = [[self.cart objectAtIndex:[indexPath row]] name];
    return cell;
    
}




@end
