GỌI LẠI NHANH — DỰ ÁN iOS 16

Đây là dự án Xcode có cấu trúc đầy đủ hơn, chưa phải file IPA đã ký.

TÍNH NĂNG
- Nhập số điện thoại.
- Mở ứng dụng gọi điện của iPhone bằng liên kết tel:.
- Có bộ đếm số lần bấm và giới hạn giao diện tối đa 10 lần.

GIỚI HẠN QUAN TRỌNG
- Không tự đọc lịch sử cuộc gọi của iPhone.
- Không biết chắc người nhận có nghe máy hay không.
- Không tự gọi lặp lại trong nền.
- Không vượt qua giới hạn iOS; bộ đếm không tự động gọi.

BUILD TRÊN DỊCH VỤ MAC ĐÁM MÂY
1. Tải và giải nén ZIP.
2. Đưa thư mục AutoCallHelper_Complete lên kho Git (ví dụ GitHub) mà bạn kiểm soát.
3. Trong dịch vụ build macOS, chọn repository đó và mở project:
   AutoCallHelper.xcodeproj
4. Chọn scheme AutoCallHelper, build bằng Xcode.
5. Để cài IPA trên iPhone, cấu hình ký iOS phù hợp với Apple Developer/Apple ID và thiết bị.
6. Bundle Identifier hiện là com.example.AutoCallHelper; đổi thành mã riêng của bạn nếu dịch vụ yêu cầu.

Nếu dịch vụ build yêu cầu cấu hình ký, hãy làm theo hướng dẫn signing của dịch vụ. Không chia sẻ mật khẩu Apple ID hay mã xác minh với bất kỳ ai.
