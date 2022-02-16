//
//  ActivityRow.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import SwiftUI

struct ActivityRow: View {
    var activity: Activity
    
    var body: some View {
        HStack {
            activity.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(activity.name)
            
            Spacer()
            
        }
    }
}

struct ActivityRow_Previews: PreviewProvider {
    static var activities = DataReader().activities
    
    static var previews: some View {
        ActivityRow(activity: activities[0])
    }
}
