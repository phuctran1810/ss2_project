<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Finance Tracker - Đăng nhập</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        
        .container {
            display: flex;
            width: 900px;
            height: 550px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        
        .left-side {
            flex: 1;
            background-image: url('/api/placeholder/450/550');
            background-size: cover;
            background-position: center;
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding: 30px;
            color: white;
        }
        
        .left-side::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to top, rgba(0, 0, 0, 0.7), transparent);
            z-index: 1;
        }
        
        .left-side h1, .left-side p {
            position: relative;
            z-index: 2;
        }
        
        .left-side h1 {
            font-size: 26px;
            margin-bottom: 10px;
        }
        
        .left-side p {
            font-size: 16px;
            line-height: 1.5;
        }
        
        .login-form {
            flex: 1;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        
        .login-form h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 30px;
            text-align: center;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            color: #555;
        }
        
        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            transition: border-color 0.3s;
        }
        
        .form-group input:focus {
            border-color: #667eea;
            outline: none;
        }
        
        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
            font-size: 14px;
        }
        
        .remember-me {
            display: flex;
            align-items: center;
        }
        
        .remember-me input {
            margin-right: 8px;
        }
        
        .forgot-password {
            color: #667eea;
            text-decoration: none;
        }
        
        .login-button {
            padding: 12px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        
        .login-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
        
        .signup-link {
            margin-top: 25px;
            text-align: center;
            font-size: 14px;
            color: #555;
        }
        
        .signup-link a {
            color: #667eea;
            text-decoration: none;
            font-weight: 500;
        }
        
        @media (max-width: 768px) {
            .container {
                width: 90%;
                flex-direction: column;
                height: auto;
            }
            
            .left-side {
                display: none;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left-side">
            <h1>Quản Lý Tài Chính Cá Nhân</h1>
            <p>Giải pháp tối ưu giúp bạn theo dõi, quản lý và tăng trưởng tài chính một cách thông minh.</p>
        </div>
        <div class="login-form">
            <h2>Đăng Nhập</h2>
            <form id="loginForm">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required placeholder="Nhập email của bạn">
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu</label>
                    <input type="password" id="password" name="password" required placeholder="Nhập mật khẩu">
                </div>
                <div class="remember-forgot">
                    <div class="remember-me">
                        <input type="checkbox" id="remember" name="remember">
                        <label for="remember">Ghi nhớ đăng nhập</label>
                    </div>
                    <a href="#" class="forgot-password">Quên mật khẩu?</a>
                </div>
                <button type="submit" class="login-button">Đăng Nhập</button>
                <div class="signup-link">
                    Bạn chưa có tài khoản? <a href="#">Đăng ký ngay</a>
                </div>
            </form>
        </div>
    </div>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            
            // Đây là nơi để thêm xác thực đăng nhập thực tế
            // Ví dụ: gửi dữ liệu đến API hoặc kiểm tra đăng nhập
            
            console.log('Đăng nhập với:', { email, password });
            
            // Giả lập đăng nhập thành công và chuyển hướng
            alert('Đăng nhập thành công! Chuyển hướng đến trang chính...');
            // window.location.href = 'dashboard.html';
        });
    </script>
</body>
</html>
