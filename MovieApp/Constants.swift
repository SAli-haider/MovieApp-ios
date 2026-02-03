//
//  Constants.swift
//  MovieApp
//
//  Created by Ali on 1/11/26.
//

import Foundation
import SwiftUI
struct Constants{
    static let  home = "Home"
    static let  search = "Search"
    static let  upcomming = "UpComing"
    static let  download = "Download"
    
    static let playBtnText = "Play"
    static let downloadBtnText = "Download"
    
    static let homeIcon = "house"
    static let upcommingIcon = "play.circle"
    static let searchIcon = "magnifyingglass"
    static let downloadIcon = "arrow.down.to.line"
    
    static let trendingMovies = "Trending Movies"
    static let upComingMovies = "Upcoming Movies"
    static let favMovies = "Favorite Movies"
    
    static let testTitleURL = "https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg"
    static let testTitleURL2 = "https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg"
    static let testTitleURL3 = "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg"
}

extension Text{
    func getGhostButton()-> some View{
        self.frame(
            width:100,
            height: 50).bold().foregroundStyle(.buttonText).background{
            RoundedRectangle(cornerRadius:20,style: .continuous).stroke(
                .buttonBorder,
                lineWidth: 5)
        }
    }
}
