import SwiftUI
import WidgetKit

extension ServerStatusWidgetEntryView {
  func simpleServerCard(_ snapshot: ServerSnapshot) -> some View {
    let isSmall = family == .systemSmall
    if isSmall {
      return AnyView(smallServerCard(snapshot))
    }
    return AnyView(VStack(alignment: .leading, spacing: 11) {
      simpleHeader(snapshot)
      metricRows(snapshot)
      Divider()
      trafficTotalsRow(snapshot)
    }
    .padding(.horizontal, 16)
    .padding(.top, 18)
    .padding(.bottom, 16)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center))
  }

  private func smallServerCard(_ snapshot: ServerSnapshot) -> some View {
    VStack(alignment: .leading, spacing: 9) {
      smallHeader(snapshot)
      smallMetricRows(snapshot)
      Divider()
      smallTrafficRows(snapshot)
    }
    .padding(.horizontal, 12)
    .padding(.vertical, 12)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
  }
}
