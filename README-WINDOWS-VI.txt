AUTO CALL HELPER — GÓI SẴN SÀNG ĐƯA LÊN GITHUB TỪ WINDOWS

ĐÂY LÀ GÌ?
- Mã nguồn ứng dụng mẫu iOS và workflow build trên máy macOS của GitHub Actions.
- Nếu workflow build thành công, GitHub tạo artifact AutoCallHelper-unsigned-ipa để tải xuống.
- Đây KHÔNG phải IPA đã ký và không cài trực tiếp được.

CÁCH LÀM TRÊN WINDOWS (KHÔNG CẦN CÀI XCODE):
1. Mở https://github.com/ và đăng nhập/tạo tài khoản.
2. Bấm dấu + góc trên bên phải > New repository.
3. Đặt tên: AutoCallHelper. Chọn Public hoặc Private rồi bấm Create repository.
4. Trong repository mới, chọn Add file > Upload files.
5. Giải nén ZIP này trên máy. Mở thư mục AutoCallHelper_WindowsBuild, chọn TẤT CẢ file và thư mục bên trong (bao gồm thư mục .github; có thể cần bật hiển thị file ẩn), kéo vào trang Upload files. Đừng tải riêng thư mục cha AutoCallHelper_WindowsBuild.
6. Bấm Commit changes.
7. Mở tab Actions. Nếu GitHub hỏi xác nhận workflow, bấm I understand my workflows, go ahead and enable them.
8. Trong danh sách bên trái, chọn “Build unsigned iOS app” > Run workflow > Run workflow.
9. Mở lần chạy vừa tạo. Nếu dấu xanh thành công, kéo xuống Artifacts và tải “AutoCallHelper-unsigned-ipa”. Giải nén ZIP artifact để lấy file .ipa.
10. Ký/cài IPA bằng công cụ tương thích và tài khoản/chứng chỉ Apple của bạn. IPA chưa ký không thể cài trực tiếp.

NẾU KHÔNG THẤY THƯ MỤC .github:
- Windows Explorer > View > Show > Hidden items, rồi kiểm tra lại.

GIỚI HẠN QUAN TRỌNG:
- Workflow build chưa được xác minh trên Xcode thực tế; nếu báo lỗi, cần xem log trong Actions và sửa dự án.
- Ứng dụng mẫu chỉ nhập số và mở trình gọi SIM của iPhone. Nó không đọc lịch sử Recents, không tự biết cuộc gọi không được trả lời, và không thể tự động gọi lại 10 lần hoàn toàn trong nền. Đây là giới hạn iOS, không khắc phục được chỉ bằng ký IPA.
- Không chia sẻ mật khẩu Apple ID hoặc chứng chỉ ký riêng tư với người khác.
