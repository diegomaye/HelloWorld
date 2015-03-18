//
//  SelectLanguageTVC.m
//  HelloWorld
//
//  Created by Diego Maye on 17/3/15.
//  Copyright (c) 2015 Diego Maye. All rights reserved.
//


#import "ShowGreetingsVC.h"
#import "SelectLanguageTVC.h"

@interface SelectLanguageTVC ()

@property (strong, nonatomic) NSArray *greetings;
@property (strong, nonatomic) NSString *name;

@end

@implementation SelectLanguageTVC



- (void)viewDidLoad {
    [super viewDidLoad];
    self.greetings = @[@"Hi", @"Hallo", @"Hola", @"Ciao", @"Olá", @"Hej", @"Namaste", @"Merhaba", @"Habari", @"Tere", @"Aloja", @"Buna ziua", @"Ni Hao", @"Konnichi wa"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.greetings count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MiCelda" forIndexPath:indexPath];
    // Se saca el valor de la celda del arreglo para mostrarlo en el titulo.
    cell.textLabel.text = self.greetings[indexPath.row];
    return cell;
}

//#pragma mark - PRIMER FORMA DE NAVEGACIÓN: Navegacion por segue conectada desde la celda
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([[segue identifier] isEqualToString:@"MiSegue"])
//    {
//        ShowGreetingsVC *vc = [segue destinationViewController];
//        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
//        int index = indexPath.row;
//        NSString *value= self.greetings[index];
//        vc.descripcion = value;
//    }
//}

#pragma mark - SEGUNDA FORMA DE NAVEGACIÓN: Navegacion por segue conectada desde el view controler
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"MiSegue" sender:indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"MiSegue"])
    {
        NSIndexPath *indexPath = (NSIndexPath *)sender;
        ShowGreetingsVC *destViewController = segue.destinationViewController;
        int index = indexPath.row;
        NSString *value= self.greetings[index];
        destViewController.descripcion = value;
    }
}


@end
