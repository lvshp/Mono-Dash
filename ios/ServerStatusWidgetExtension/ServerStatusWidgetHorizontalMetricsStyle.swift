import SwiftUI
import WidgetKit

extension ServerStatusWidgetEntryView {
  func horizontalMetricsServerCard(_ snapshot: ServerSnapshot) -> some View {
    let isSmall = family == .systemSmall
    if isSmall {
      return AnyView(smallHorizontalMetricsServerCard(snapshot))
    }
    return AnyView(VStack(alignment: .leading, spacing: 12) {
      simpleHeader(snapshot)
      horizontalMetricColumns(snapshot, isSmall: false)
      Divider()
      trafficTotalsRow(snapshot)
    }
    .padding(.horizontal, 16)
    .padding(.top, 18)
    .padding(.bottom, 16)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center))
  }

  private func smallHorizontalMetricsServerCard(_ snapshot: ServerSnapshot) -> some View {
    VStack(alignment: .leading, spacing: 8) {
      smallHeader(snapshot)
      horizontalMetricColumns(snapshot, isSmall: true)
      Divider()
      smallTrafficRows(snapshot)
    }
    .padding(.horizontal, 12)
    .padding(.vertical, 12)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
  }

  private func horizontalMetricColumns(_ snapshot: ServerSnapshot, isSmall: Bool) -> some View {
    HStack(spacing: isSmall ? 7 : 16) {
      horizontalMetricColumn(
        label: "CPU",
        systemImage: "cpu",
        value: snapshot.cpuPercent,
        tint: usageColor(snapshot.cpuPercent),
        isSmall: isSmall
      )
      horizontalMetricColumn(
        label: strings.string("widget.metric.memory"),
        systemImage: "memorychip",
        value: snapshot.memoryPercent,
        tint: usageColor(snapshot.memoryPercent),
        isSmall: isSmall
      )
      if let diskPercent = snapshot.diskPercent {
        horizontalMetricColumn(
          label: strings.string("widget.metric.disk"),
          systemImage: "internaldrive",
          value: diskPercent,
          tint: usageColor(diskPercent),
          isSmall: isSmall
        )
      } else {
        horizontalMetricColumn(
          label: strings.string("widget.metric.disk"),
          systemImage: "internaldrive",
          value: 0,
          tint: usageColor(0),
          isSmall: isSmall
        )
        .opacity(0.45)
      }
    }
  }

  private func horizontalMetricColumn(
    label: String,
    systemImage: String,
    value: Double,
    tint: Color,
    isSmall: Bool
  ) -> some View {
    VStack(alignment: isSmall ? .center : .leading, spacing: isSmall ? 4 : 8) {
      if isSmall {
        VStack(spacing: 2) {
          Text(label)
            .font(.system(size: 10, weight: .bold, design: .rounded))
            .foregroundStyle(.secondary)
            .lineLimit(1)
            .minimumScaleFactor(0.78)

          Text(percent(value))
            .font(.system(size: 12, weight: .bold, design: .rounded).monospacedDigit())
            .numericTextTransition()
            .lineLimit(1)
            .minimumScaleFactor(0.72)
        }
        .frame(maxWidth: .infinity)
      } else {
        HStack(spacing: 6) {
          HStack(spacing: 4) {
            Image(systemName: systemImage)
              .font(.system(size: 11, weight: .bold))
              .foregroundStyle(tint)

            Text(label)
              .font(.system(size: 11, weight: .bold, design: .rounded))
              .foregroundStyle(.secondary)
              .lineLimit(1)
          }
          .fixedSize(horizontal: true, vertical: false)
          .layoutPriority(1)

          Spacer(minLength: 0)

          Text(percent(value))
            .font(.system(size: 12, weight: .bold, design: .rounded).monospacedDigit())
            .numericTextTransition()
            .lineLimit(1)
            .fixedSize(horizontal: true, vertical: false)
        }
      }

      GeometryReader { proxy in
        ZStack(alignment: .leading) {
          Capsule().fill(.secondary.opacity(0.14))
          Capsule()
            .fill(tint)
            .frame(width: proxy.size.width * min(max(value, 0), 100) / 100)
        }
      }
      .frame(height: isSmall ? 5 : 6)
    }
    .frame(maxWidth: .infinity, alignment: .leading)
  }

}
