import SwiftUI
import UIKit

struct ContentView: View {
    @State private var phoneNumber = ""
    @State private var callCount = 0
    @State private var maxCalls = 10
    @State private var status = "Nhập số điện thoại để gọi."
    @FocusState private var numberFieldFocused: Bool

    var body: some View {
        NavigationView {
            Form {
                Section("Số điện thoại") {
                    TextField("Ví dụ: 09xxxxxxxx", text: $phoneNumber)
                        .keyboardType(.phonePad)
                        .textContentType(.telephoneNumber)
                        .focused($numberFieldFocused)

                    Button {
                        startCall()
                    } label: {
                        Label("Gọi bằng SIM", systemImage: "phone.fill")
                    }
                    .disabled(normalizedNumber.isEmpty)
                }

                Section("Giới hạn thử gọi") {
                    Stepper("Tối đa: \(maxCalls) lần", value: $maxCalls, in: 1...10)
                    HStack {
                        Text("Số lần đã nhấn gọi")
                        Spacer()
                        Text("\(callCount)")
                            .monospacedDigit()
                    }
                    Button("Đặt lại bộ đếm") {
                        callCount = 0
                        status = "Đã đặt lại bộ đếm."
                    }
                }

                Section("Trạng thái") {
                    Text(status)
                        .font(.subheadline)
                }

                Section("Giới hạn iPhone") {
                    Text("Ứng dụng này mở trình gọi điện cho số bạn nhập. iOS không cho ứng dụng thông thường đọc lịch sử cuộc gọi hệ thống, xác định chắc chắn người nhận không nghe máy, hoặc tự thực hiện cuộc gọi lặp lại trong nền. Bộ đếm chỉ đếm số lần bạn nhấn nút trong ứng dụng; ứng dụng không tự gọi 10 lần.")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Gọi lại nhanh")
        }
        .navigationViewStyle(.stack)
    }

    private var normalizedNumber: String {
        let allowed = CharacterSet(charactersIn: "+0123456789")
        return String(phoneNumber.unicodeScalars.filter { allowed.contains($0) })
    }

    private func startCall() {
        guard !normalizedNumber.isEmpty else {
            status = "Hãy nhập số điện thoại."
            return
        }

        guard callCount < maxCalls else {
            status = "Đã đạt giới hạn bạn đặt là \(maxCalls) lần. Hãy đặt lại bộ đếm nếu cần."
            return
        }

        guard let url = URL(string: "tel:\(normalizedNumber)") else {
            status = "Số điện thoại không hợp lệ."
            return
        }

        callCount += 1
        status = "Đã yêu cầu iPhone mở cuộc gọi. Bạn có thể cần xác nhận trên iPhone."
        UIApplication.shared.open(url)
    }
}
