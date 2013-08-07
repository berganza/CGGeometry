//
//  ViewController.m
//  CGGeometry
//
//  Created by LLBER on 06/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
        
    // CGRectOffset
    CGRect rect1 = (CGRect){ 120, 100, 100, 100 };//Comentar:(CGRect){ CGPointZero, { 100, 100 } };
    CGRect desplazamiento = CGRectOffset(rect1, 30, 30);
    
    UIView *vista1 = [[UIView alloc] initWithFrame:rect1];
    vista1.BackgroundColor = [UIColor redColor];
    [self.view addSubview:vista1];
    
    UIView *vista2 = [[UIView alloc] initWithFrame:desplazamiento];
    vista2.BackgroundColor= [UIColor cyanColor];
    // Comentar: vista2.alpha = 0.5;
    [self.view addSubview:vista2];
    
    
    
    // CGRectInset
    CGRect rect2 = (CGRect){ 450, 100, 100, 100 };
    CGRect interior = CGRectInset(rect2, 20, 20);
    
    UIView *vista3 = [[UIView alloc] initWithFrame:rect2];
    vista3.BackgroundColor = [UIColor redColor];
    [self.view addSubview:vista3];
    
    UIView *vista4 = [[UIView alloc] initWithFrame:interior];
    vista4.BackgroundColor= [UIColor cyanColor];
    [self.view addSubview:vista4];
    
    
    // CGRectUnion
    CGRect rect3 = (CGRect){ 120, 450, 100, 100 };
    CGRect rect4 = CGRectOffset(rect3, 15, 15);
    CGRect union3y4 = CGRectUnion(rect3, rect4);
    
    UIView *vista5 = [[UIView alloc] initWithFrame:rect3];
    vista5.BackgroundColor = [UIColor redColor];
    [self.view addSubview:vista5];
    
    UIView *vista6 = [[UIView alloc] initWithFrame:rect4];
    vista6.BackgroundColor= [UIColor cyanColor];
    [self.view addSubview:vista6];
    
    UIView *vista7 = [[UIView alloc] initWithFrame:union3y4];
    vista7.BackgroundColor = [UIColor blueColor];
    vista7.alpha = 0.3;
    [self.view addSubview:vista7];
    
    
    // CGRectIntersection
    CGRect rect5 = (CGRect){ 450, 450, 100, 100 };
    CGRect rect6 = (CGRect){ rect5.origin, { 100, 100 } };
    
    UIView *vista8 = [[UIView alloc] initWithFrame:rect6];
    vista8.BackgroundColor = [UIColor redColor];
    [self.view addSubview:vista8];
        
    CGRect rectInterior = CGRectOffset(rect1, 360, 380);
    UIView *vista9 = [[UIView alloc] initWithFrame:rectInterior];
    vista9.BackgroundColor= [UIColor cyanColor];
    [self.view addSubview:vista9];
        
    CGRect rectInterseccion = CGRectIntersection(rect6, rectInterior);
    UIView *vista10 = [[UIView alloc] initWithFrame:rectInterseccion];
    vista10.BackgroundColor = [UIColor blueColor];
    [self.view addSubview:vista10];
    
    
    // CGRectDivide
    CGRect rectPrincipal = (CGRect){ 250,700, 190, 270 };
    UIView *vistaPrincipal = [[UIView alloc] initWithFrame:rectPrincipal];
    [vistaPrincipal setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:vistaPrincipal];
    
    CGRect corte1;
    CGRect resto;
    CGRectDivide(rectPrincipal, &corte1, &resto, 50, CGRectMinYEdge);
    
    UIView *vista11 = [[UIView alloc] initWithFrame:corte1];
    vista11.BackgroundColor = [UIColor redColor];
    vista11.alpha = 0.5;
    [self.view addSubview:vista11];
    
    CGRect corte2;
    CGRect resto2;
    CGRectDivide(resto, &corte2, &resto2, 80, CGRectMinXEdge);
    
    UIView *vista12 = [[UIView alloc] initWithFrame:corte2];
    vista12.BackgroundColor= [UIColor cyanColor];
    vista12.alpha = 0.5;
    [self.view addSubview:vista12];
    
    CGRect corte3;
    CGRect resto3;
    CGRectDivide(resto2, &corte3, &resto3, 80, CGRectMinYEdge);
    
    UIView *vista13 = [[UIView alloc] initWithFrame:corte3];
    vista13.BackgroundColor = [UIColor blackColor];
    vista13.alpha = 0.5;
    [self.view addSubview:vista13];

}











- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
