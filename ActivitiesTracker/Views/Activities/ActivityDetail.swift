//
//  ActivityDetail.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import SwiftUI

struct ActivityDetail: View {
    @EnvironmentObject var dataReader: DataReader
    
    var activity: Activity
    
    var activityIndex: Int{
        dataReader.activities.firstIndex(where: {$0.id == activity.id})!
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                activity.image
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(activity.name)
                        .font(.title)
                    Text(activity.activityType.rawValue)
                        .font(.subheadline)
                    Divider()
                    
                    Text(activity.description)
                        .font(.body)
                }
                .padding()
            }
        }
    }
}

struct ActivityDetail_Previews: PreviewProvider {
    static let dataReader = DataReader()
        
    static var previews: some View {
        ActivityDetail(activity: dataReader.activities[0])
            .environmentObject(dataReader)
    }
}
