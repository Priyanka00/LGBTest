//
//  mockData.swift
//  TestJobTests
//
//  Created by Priyanka Sinha on 04/01/24.
//

import Foundation

import Foundation
@testable import TestJob

enum MockData: String {

    case happy = "happy"
    
    func jsonData(){
        
        let url = URL(string: "https://api.thecatapi.com/v1/images/search?limit=10")!
        URLSession.shared.dataTask(with: url) { [self] response, _, error in
            guard let data = response else {
              return
            }
            guard let jsonResult = try? JSONDecoder().decode([Item].self , from:data) else {return}
             
              
            }
       }
    }
