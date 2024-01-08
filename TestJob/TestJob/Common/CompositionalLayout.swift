//
//  CompositionalLayout.swift
//  TestJob
//
//  Created by Priyanka Sinha on 26/12/23.
//

import UIKit

enum GroupAlignment{
    case vertical
    case horizontal
}


struct CompositionalLayout {
    
    static func createItem(
        width: NSCollectionLayoutDimension,
        height: NSCollectionLayoutDimension,
        spacing: CGFloat
    ) -> NSCollectionLayoutItem {
        
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: width, heightDimension: height))
        item.contentInsets = NSDirectionalEdgeInsets(top: spacing, leading: spacing, bottom: spacing, trailing: spacing)
        return item;
    }
    
    
    static func createGroup(
        alignment: GroupAlignment,
        width: NSCollectionLayoutDimension,
        height: NSCollectionLayoutDimension,
        items: [NSCollectionLayoutItem]
    ) -> NSCollectionLayoutGroup {
        
        switch alignment {
        
        case .vertical:
            return NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: width, heightDimension: height), subitems: items)
            
        case .horizontal:
            return NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: width, heightDimension: height), subitems: items)
            
        }
    }
    
    
    static func createGroup(
        alignment: GroupAlignment,
        width: NSCollectionLayoutDimension,
        height: NSCollectionLayoutDimension,
        item: NSCollectionLayoutItem,
        count: Int
    ) -> NSCollectionLayoutGroup {
        
        switch alignment {
        
        case .vertical:
            return NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: width, heightDimension: height), subitem: item, count: count)
            
        case .horizontal:
            return NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: width, heightDimension: height), subitem: item, count: count)
            
        }
    }
    
}
