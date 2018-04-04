//
//  variables.swift
//  hc-sports
//
//  Created by Stephanie Iglesias on 3/21/18.
//  Copyright © 2018 Stephanie Iglesias. All rights reserved.
//

import Foundation

/*:
        variables file contains characteristics about the men's soccer team stored in the string literals:
        - favTeams: an empty array that populates with the teams the user adds to their favorites list
        - curr: an integer that holds the index to the row selected by the user and used to indicate which team's information should be used to populate the data for that particular page
        - tweets: an empty array that will hold Hanover Panther's tweets and will be used to populate the Highlights page
        - notFavTeams: an array that stores the teams that aren't on the user's favorites list. When the app is initially downloaded, the array is populated with all sports teams and as teams are added onto the user's favorites list, they will be removed from this array.
        - teams: an array that stores all the sports teams and used to populate the 'All Sports' tab.
 */

var favTeams: [String] = []

var curr: Int = Int()

var tweets: [String] = []

var notFavTeams = ["Men's Basketball", "Women's Basketball", "Men's Soccer", "Women's Soccer"]

var teams = ["Men's Basketball", "Women's Basketball", "Men's Soccer", "Women's Soccer"]


