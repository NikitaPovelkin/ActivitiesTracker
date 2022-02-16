//
//  CategoryHome.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var dataReader: DataReader
    
    var body: some View {
        NavigationView{
            List{
                ForEach(dataReader.activityRecords.keys.sorted(), id: \.self) { key in
                    CategoryRow(activityTypeName: key, items: dataReader.activityRecords[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Overview")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(DataReader())
    }
}
