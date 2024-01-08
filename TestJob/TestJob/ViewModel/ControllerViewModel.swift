//
//  ControllerViewModel.swift
//  TestJob
//
//  Created by Priyanka Sinha on 26/12/23.
//

import Foundation


protocol ControllerViewModelDelegate : AnyObject{
    func showData(item:[Item])
}

class ControllerViewModel {
    
    weak var delegate:ControllerViewModelDelegate?
    let viewControllerModel:ViewControllerModel
    
    init(controllerModel:ViewControllerModel) {
        self.viewControllerModel  = controllerModel
    }
    
    //---assigning data in items--//
    func getData(items:[Item]){
        
        DispatchQueue.main.async { [weak self] in
        
            self?.delegate?.showData(item: items)
        }
    }
    
    
    func fetchData() {
        
       fetchDataFromServer()
    }
    
    //--API Call----//
    func fetchDataFromServer() {
        
        guard let url = URL(string: "https://api.thecatapi.com/v1/images/search?limit=10") else { return}
        URLSession.shared.dataTask(with: url) { [self] response, _, error in
            guard let data = response else {
              return
            }
            do {
                print(data)
                let responseData = try JSONDecoder().decode([Item].self , from:data)
                print(responseData)
                getData(items: responseData)//Assiging value in getData
                
            } catch {
                
               print("")
            }
       
        }.resume()
    }
    
}


