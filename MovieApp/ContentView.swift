//
//  ContentView.swift
//  MovieApp
//
//  Created by Ali on 1/11/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.home, systemImage: Constants.homeIcon) {
                Text(Constants.home)
            }
            Tab(Constants.upcomming,systemImage: Constants.upcommingIcon){
                Text(Constants.upcomming)
            }
            Tab(Constants.search,systemImage: Constants.searchIcon){
                Text(Constants.search)
            }
            Tab(Constants.download,systemImage: Constants.downloadIcon){
                Text(Constants.download)
            }
        }
    }
}

#Preview {
    ContentView()
}
