//
//  MapView.swift
//  LandMark Book
//
//  Created by İlker Yasin Memişoğlu on 27.01.2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region,animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkArray[0].locationCoordinate)
    }
}
