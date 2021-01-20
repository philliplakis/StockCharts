//
//  TestChartView.swift
//  StockCharts
//
//  Created by Phillip Lakis on 20/1/21.
//

import SwiftUI


import SwiftUI
import SwiftUICharts

struct TestChartView: View {
    var body: some View {
        let chartStyle = ChartStyle(backgroundColor: Color.black.opacity(0.001), accentColor: Color("#FFD603"), secondGradientColor: Color.purple.opacity(1),textColor: Color.black, legendTextColor: Color.black, dropShadowColor: Color.white )
        
        VStack {
            
            LineView(
                data: [123,154,125,178,183],
                title: "TSLA",
                style: chartStyle
            )
            
            LineChartView(
                data: [123,154,125,178,183],
                title: "TSLA",
                style: chartStyle,
                form: ChartForm.extraLarge,
                rateValue: -7
            )
            
            MultiLineChartView(
                data: [([8,32,11,23,40,28], GradientColors.green)],
                title: "TSLA",
                style: chartStyle,
                form: ChartForm.large,
                rateValue: 223
            )
        }
    }
}

struct TestChartView_Previews: PreviewProvider {
    static var previews: some View {
        TestChartView()
    }
}
