//
//  ActivitiesList.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import SwiftUI

struct ActivitiesList: View {
    @EnvironmentObject var dataReader: DataReader
    
    var body: some View {
        NavigationView{
            List(dataReader.activities){ activity in
                NavigationLink{
                    ActivityDetail(activity: activity)
                } label: {
                    ActivityRow(activity: activity)
                }
            }
            .navigationTitle("Activities")
        }
    }
}

struct ActivitiesList_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesList()
            .environmentObject(DataReader())
    }
}
