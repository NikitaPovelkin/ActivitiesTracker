//
//  CategoryRow.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import SwiftUI

struct CategoryRow: View {
    var activityTypeName: String
    var items: [Activity]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(activityTypeName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0)  {
                    ForEach(items) { activity in
                        NavigationLink {
                            ActivityDetail(activity: activity)
                        } label: {
                            CategoryItem(activity: activity)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
        .padding()
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var types = DataReader().activities
    
    static var previews: some View {
        CategoryRow(
            activityTypeName: types[0].activityType.rawValue,
            items: Array(types.prefix(3))
        )
    }
}
