//
//  CategoryItem.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import SwiftUI

struct CategoryItem: View {
    var activity: Activity
    
    var body: some View {
        VStack(alignment: .leading){
            activity.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
                .shadow(radius: 2)
            Text(activity.name)
                .font(.caption)
        }
        .padding(.leading)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(activity: DataReader().activities[0])
    }
}
