//
//  ViewController.m
//  tableViewTask
//
//  Created by OBS_Macmini on 7/25/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *tableData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    tableData=[NSArray arrayWithObjects:@"karthiga",@"Maha",@"Jula",@"Ramya", nil];
        // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier=@"simpleTableItem";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
   
    cell.textLabel.text=[tableData objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *temp=[tableData objectAtIndex:indexPath.row];
    secondViewController *obj=[self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    obj.temp=temp;
    obj.title=temp;
    obj.arrayvalue=tableData;
    obj.value=indexPath.row;
    [self.navigationController pushViewController:obj animated:YES];
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
