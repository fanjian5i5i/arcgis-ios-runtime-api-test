//
//  ViewController.m
//  arcgis-ios-runtime-api-test
//
//  Created by Friday Fan on 12/31/14.
//  Copyright (c) 2014 Friday Fan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL* url = [NSURL URLWithString:@"http://services.arcgisonline.com/ArcGIS/rest/services/Canvas/World_Light_Gray_Base/MapServer"];
    
    NSURL* url1 = [NSURL URLWithString:@"http://mapservices.bostonredevelopmentauthority.org/arcgis/rest/services/Maps/Parcels/MapServer"];
    
    AGSTiledMapServiceLayer *tiledLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:url];
    
    AGSDynamicMapServiceLayer* dynamicLayer = [AGSDynamicMapServiceLayer dynamicMapServiceLayerWithURL: url1];
    
    [self.mapView addMapLayer:tiledLayer withName:@"Basemap Tiled Layer"];
    
    [self.mapView addMapLayer:dynamicLayer];
    
//    self.mapView.layerDelegate = self;
}

//- (void)mapViewDidLoad:(AGSMapView *) mapView{
//    [mapView.locationDisplay startDataSource];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
