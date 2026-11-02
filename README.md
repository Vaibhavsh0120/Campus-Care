<div align="center">
  
# Campus Care 😋
</div>

<div align="center">
  
  **A Flutter App – Student ↔ Cafeteria Platform**

  [![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
  [![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)](https://supabase.com)
  [![Razorpay](https://img.shields.io/badge/Razorpay-02042B?style=for-the-badge&logo=razorpay&logoColor=white)](https://razorpay.com)
  <br>
  [🚀 Watch Live Demo](https://campus-care-pro.vercel.app/)
</div>

---

## 📖 Overview

**Campus Care** is a Flutter application that simplifies cafeteria operations by allowing students to order and pay digitally, while enabling staff to manage orders and inventory. It’s built using Supabase (PostgreSQL, Auth, RLS) and Razorpay for UPI payments.

---

## ✨ Key Features

- 🔐 **Role-Based Login** (Student / Staff)
- 🛒 **Smart Cart System** with constraints and RLS
- 💳 **UPI Payment via Razorpay**
- 📦 **Order Tracking** with order status and history
- 👨‍🍳 **Staff Portal** to manage orders and menu
- ☁️ **Supabase Backend** with secure policies

---

## 📸 Screenshots

- 📱 Android UI:
  - 👨‍🍳 [Staff](Screenshots/Android%20UI/Staff)
  - 🧑‍🎓 [Student](Screenshots/Android%20UI/Student)

- 🖥️ PC Web UI:
  - 👨‍🍳 [Staff](Screenshots/PC%20Web%20UI/Staff)
  - 🧑‍🎓 [Student](Screenshots/PC%20Web%20UI/Student)

---

## 📦 Supabase SQL Setup Scripts

Easily copy and paste the SQL scripts below into your [Supabase SQL Editor](https://app.supabase.com/project/_/sql) to set up your tables and policies:

- 🛒 [Cart Table](Supabase/Cart%20Table.txt)
- 🍽️ [Items Table](Supabase/Items%20Table.txt)
- 📦 [Orders Table](Supabase/Orders%20Table.txt)
- 🔐 [Users Table](Supabase/Users%20Table.txt)
- ☁️ [Storage + Auth](Supabase/Storage%20+%20Auth.txt)

---

## 🔒 Supabase RLS Summary

| Table   | View | Insert | Update | Delete |
|---------|------|--------|--------|--------|
| `users` | Own / Staff | ❌ | ❌ | ❌ |
| `items` | All | Staff only | Staff only | Staff only |
| `cart`  | Own | Own | Own | Own |
| `orders`| Own / Staff | Own | Staff only | ❌ |

---

## 📦 Setup

### 🧰 Prerequisites

- Flutter SDK ≥ 3.0.0
- Supabase Account (with RLS enabled)

### ⚙️ .env Example

Create a `.env` file in the root of your project and add the following environment variables:

```env
SUPABASE_URL=your_supabase_url              # Replace with your Supabase project URL
SUPABASE_ANON_KEY=your_anon_key             # Replace with your Supabase anon/public API key
RAZORPAY_KEY_ID=your_key_id                 # Replace with your Razorpay key ID
RAZORPAY_KEY_SECRET=your_key_secret         # Replace with your Razorpay key secret
```

### ▶️ Run the App

```bash
flutter pub get
flutter run
```

### 🌐 Web Testing (with Google Login)

```bash
flutter run -d chrome --web-port=3000
```

---

## 🧠 Project Structure

```
lib/
├── main.dart
├── config/
│   └── supabase_config.dart
├── models/
│   ├── user_model.dart
│   ├── item_model.dart
│   ├── cart_item.dart
│   └── order_model.dart
├── services/
│   ├── auth_service.dart
│   ├── item_service.dart
│   ├── cart_service.dart
│   └── order_service.dart
├── providers/
│   ├── auth_provider.dart
│   ├── order_provider.dart
│   ├── cart_provider.dart
│   ├── cart_provider.dart
│   └── theme_provider.dart
├── theme/
│   └── app_themes.dart
├── screens/
│   ├── splash_screen.dart
│   ├── home_screen.dart
│   ├── order_history_screen.dart
│   ├── cart_screen.dart
│   ├── place_order_screen.dart
│   ├── auth/
│   │   ├── login_screen.dart
│   │   └── signup_screen.dart
│   └── staff/
│       ├── staff_dashboard.dart
│       ├── analytics_screen.dart
│       ├── staff_order_history_screen.dart
│       └── manage_items_screen.dart
├── widgets/
│   ├── recommendation_carousel.dart
│   ├── item_card.dart
│   ├── theme_toggle_button.dart
│   ├── cart_tile.dart
│   └── order_tile.dart
└── utils/
    └── validators.dart

```

---

<div align="center">
  Made by Vaibhav Sharma
</div>
