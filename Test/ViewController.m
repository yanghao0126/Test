//
//  ViewController.m
//  Test
//
//  Created by abc on 13-5-6.
//  Copyright (c) 2013年 abc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize arr = arr;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDictionary *dic1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"MacBook",@"name",@"white",@"color", nil];
    NSDictionary *dic2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"1",@"2",@"3",@"4", nil];
    NSDictionary *dic3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"11",@"22",@"33",@"44", nil];
    NSDictionary *dic4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"111",@"222",@"333",@"444", nil];
    NSDictionary *dic5 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Mac Pro",@"name",@"Silver",@"color", nil];

    self.arr = [NSArray arrayWithObjects:dic1,dic2,dic3,dic4,dic5,nil];
    [dic1 release],[dic2 release],[dic3 release],[dic4 release],[dic5 release];
    
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return [arr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        
        UILabel *nameKeyLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 10, 100, 30)];
        //nameKeyLabel.adjustsFontSizeToFitWidth = YES;
        //tag 值是为了找到这个label
        nameKeyLabel.tag = 1;
        
        UILabel *colorKeyLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 100, 30)];
        //colorKeyLabel.adjustsFontSizeToFitWidth = YES;
        colorKeyLabel.tag = 2;
        
        
        UILabel *nameValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 10, 100, 30)];
        //nameValueLabel.adjustsFontSizeToFitWidth = YES;
        nameValueLabel.tag = 3;
        
        UILabel *colorValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 50, 100, 30)];
        //colorValueLabel.adjustsFontSizeToFitWidth = YES;
        colorValueLabel.tag = 4;
        
        
       
        
        [cell addSubview:nameKeyLabel];
        [nameKeyLabel release];
        
        [cell addSubview:colorKeyLabel];
        [colorKeyLabel release];
        
        [cell addSubview:nameValueLabel];
        [nameValueLabel release];
        
        [cell addSubview:colorValueLabel];
        [colorValueLabel release];
        
    }
    
   
    UILabel *label1 = (UILabel *)[cell viewWithTag:1];
    UILabel *label2 = (UILabel *)[cell viewWithTag:2];
    UILabel *label3 = (UILabel *)[cell viewWithTag:3];
    UILabel *label4 = (UILabel *)[cell viewWithTag:4];
   
    
    NSDictionary *dic = [arr objectAtIndex:indexPath.row];
    
    label1.text = @"name";
    label2.text = @"color";
    label3.text = [dic objectForKey:@"name"];
    label4.text = [dic objectForKey:@"color"];
    
    
    
    return cell;
}
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"选中了单元格");
//}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
