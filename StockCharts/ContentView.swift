//
//  ContentView.swift
//  StockCharts
//
//  Created by Phillip Lakis on 20/1/21.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    let chartStyle = ChartStyle(backgroundColor: Color.black.opacity(0), accentColor: Color.black, secondGradientColor: Color.purple, textColor: Color.black, legendTextColor: Color.black, dropShadowColor: Color.white )
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Stocks")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding(.leading)
            
            ScrollView {
                                    
                HStack{
                    MultiLineChartView(
                        data: [([2,16,23,43,68] , GradientColors.green)],
                        title: "🤑$TSLA",
                        style: chartStyle,
                        form: ChartForm.small,
                        rateValue: 89
                    )
                    
                    MultiLineChartView(
                        data: [([123,132,111,123,102], GradientColors.prplPink)],
                        title: "$IBM",
                        style: chartStyle,
                        form: ChartForm.small,
                        rateValue: -32
                    )
                }
                
                MultiLineChartView(
                    data: [([27,28,32,38,37] , GradientColors.green)],
                    title: "$NVDA",
                    style: chartStyle,
                    form: ChartForm.large,
                    rateValue: 12
                )
                
                MultiLineChartView(
                    data: [([123,126,124,123,120], GradientColors.prplPink)],
                    title: "😱$APPL",
                    style: chartStyle,
                    form: ChartForm.large,
                    rateValue: 3
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
