<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Kcee Financial Services| Digital Banking</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Segoe UI", Arial, sans-serif;
    }

    :root {
      --primary: #5b2cff;
      --secondary: #00c6ff;
      --pink: #ff3cac;
      --green: #00d084;
      --yellow: #ffc857;
      --dark: #111827;
      --light: #f5f7ff;
      --white: #ffffff;
      --gray: #6b7280;
    }

    body {
      background: var(--light);
      color: var(--dark);
      overflow-x: hidden;
    }

    /* =========================
       LOGIN SCREEN
    ========================= */

    .login-screen {
      min-height: 100vh;
      display: flex;
      background:
        radial-gradient(circle at 10% 20%, #00c6ff55, transparent 30%),
        radial-gradient(circle at 90% 80%, #ff3cac55, transparent 30%),
        linear-gradient(135deg, #10152f, #302060);
      color: white;
      position: relative;
      overflow: hidden;
    }

    .login-image {
      width: 55%;
      min-height: 100vh;
      background:
        linear-gradient(#321a8d88, #0b102988),
        url("https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1400&q=80")
        center/cover;
      display: flex;
      flex-direction: column;
      justify-content: center;
      padding: 70px;
      position: relative;
    }

    .login-image h1 {
      font-size: 65px;
      max-width: 700px;
      line-height: 1;
      animation: slideUp 1s ease;
    }

    .login-image p {
      font-size: 20px;
      margin-top: 25px;
      max-width: 600px;
      color: #ddd;
      animation: slideUp 1.3s ease;
    }

    .login-features {
      display: flex;
      gap: 15px;
      margin-top: 40px;
      flex-wrap: wrap;
    }

    .feature {
      padding: 12px 18px;
      border-radius: 30px;
      background: #ffffff20;
      backdrop-filter: blur(10px);
      border: 1px solid #ffffff30;
    }

    .login-box {
      width: 45%;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 30px;
    }

    .login-card {
      width: 100%;
      max-width: 450px;
      padding: 45px;
      border-radius: 30px;
      background: #ffffff12;
      backdrop-filter: blur(25px);
      border: 1px solid #ffffff30;
      box-shadow: 0 30px 80px #00000040;
      animation: floatIn 1s ease;
    }

    .logo {
      font-size: 30px;
      font-weight: 800;
      margin-bottom: 10px;
    }

    .logo span {
      color: #00d4ff;
    }

    .login-card h2 {
      font-size: 32px;
      margin-bottom: 8px;
    }

    .login-card p {
      color: #bbb;
      margin-bottom: 30px;
    }

    .input-group {
      margin-bottom: 20px;
    }

    .input-group label {
      display: block;
      margin-bottom: 8px;
      font-size: 14px;
      color: #ddd;
    }

    .input-group input {
      width: 100%;
      padding: 15px;
      border-radius: 12px;
      border: 1px solid #ffffff30;
      background: #ffffff10;
      color: white;
      outline: none;
      transition: .3s;
    }

    .input-group input:focus {
      border-color: #00c6ff;
      box-shadow: 0 0 20px #00c6ff30;
    }

    .login-btn {
      width: 100%;
      border: none;
      padding: 16px;
      border-radius: 14px;
      color: white;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      background: linear-gradient(90deg, var(--primary), var(--pink));
      transition: .3s;
    }

    .login-btn:hover {
      transform: translateY(-3px);
      box-shadow: 0 15px 30px #ff3cac40;
    }

    .demo-text {
      text-align: center;
      margin-top: 18px;
      color: #aaa;
      font-size: 13px;
    }

    /* =========================
       DASHBOARD
    ========================= */

    .dashboard {
      display: none;
      min-height: 100vh;
    }

    .sidebar {
      position: fixed;
      left: 0;
      top: 0;
      bottom: 0;
      width: 260px;
      background: linear-gradient(180deg, #17113b, #24104d);
      color: white;
      padding: 30px 20px;
      z-index: 100;
    }

    .brand {
      font-size: 25px;
      font-weight: 800;
      padding: 0 15px 35px;
    }

    .brand span {
      color: #00d4ff;
    }

    .menu-label {
      color: #888;
      font-size: 11px;
      text-transform: uppercase;
      letter-spacing: 1.5px;
      margin: 20px 15px 10px;
    }

    .menu-item {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 15px;
      margin: 5px 0;
      border-radius: 12px;
      color: #c7c5d5;
      cursor: pointer;
      transition: .3s;
    }

    .menu-item:hover,
    .menu-item.active {
      color: white;
      background: linear-gradient(90deg, #5b2cff, #a23cff);
      transform: translateX(5px);
    }

    .menu-icon {
      font-size: 20px;
      width: 25px;
    }

    .main {
      margin-left: 260px;
      padding: 25px 35px;
    }

    .topbar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 30px;
    }

    .welcome h1 {
      font-size: 28px;
    }

    .welcome p {
      color: var(--gray);
      margin-top: 4px;
    }

    .profile {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .avatar {
      width: 45px;
      height: 45px;
      border-radius: 50%;
      background:
        url("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=200&q=80")
        center/cover;
      border: 3px solid white;
      box-shadow: 0 5px 15px #0002;
    }

    /* =========================
       BALANCE
    ========================= */

    .hero {
      border-radius: 28px;
      padding: 35px;
      color: white;
      min-height: 240px;
      background:
        linear-gradient(110deg, #4324c9, #7c28d9, #e72e91);
      position: relative;
      overflow: hidden;
      box-shadow: 0 20px 50px #5b2cff35;
      animation: fadeIn .8s ease;
    }

    .hero::before,
    .hero::after {
      content: "";
      position: absolute;
      border-radius: 50%;
      background: #ffffff15;
    }

    .hero::before {
      width: 300px;
      height: 300px;
      right: -100px;
      top: -130px;
    }

    .hero::after {
      width: 180px;
      height: 180px;
      right: 160px;
      bottom: -120px;
    }

    .hero-content {
      position: relative;
      z-index: 2;
    }

    .hero-label {
      opacity: .8;
      font-size: 14px;
    }

    .balance {
      font-size: 50px;
      font-weight: 800;
      margin: 12px 0;
    }

    .account-number {
      opacity: .8;
    }

    .hero-actions {
      display: flex;
      gap: 10px;
      margin-top: 25px;
    }

    .hero-btn {
      border: 1px solid #ffffff40;
      color: white;
      background: #ffffff15;
      padding: 10px 18px;
      border-radius: 10px;
      cursor: pointer;
      backdrop-filter: blur(5px);
    }

    /* =========================
       STAT CARDS
    ========================= */

    .stats {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 18px;
      margin: 25px 0;
    }

    .stat-card {
      background: white;
      border-radius: 20px;
      padding: 22px;
      box-shadow: 0 8px 30px #1b1b1b0b;
      transition: .3s;
      position: relative;
      overflow: hidden;
    }

    .stat-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 20px 40px #00000012;
    }

    .stat-icon {
      width: 45px;
      height: 45px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 14px;
      font-size: 22px;
      margin-bottom: 15px;
    }

    .purple {
      background: #eee8ff;
      color: #6336ff;
    }

    .green {
      background: #e4fff3;
      color: #00a86b;
    }

    .orange {
      background: #fff3df;
      color: #f29b18;
    }

    .blue {
      background: #e3f6ff;
      color: #008ed6;
    }

    .stat-title {
      color: var(--gray);
      font-size: 13px;
    }

    .stat-value {
      font-size: 25px;
      font-weight: 800;
      margin-top: 5px;
    }

    .positive {
      color: var(--green);
      font-size: 12px;
      margin-top: 8px;
    }

    /* =========================
       CONTENT GRID
    ========================= */

    .content-grid {
      display: grid;
      grid-template-columns: 1.5fr 1fr;
      gap: 25px;
    }

    .panel {
      background: white;
      border-radius: 22px;
      padding: 25px;
      box-shadow: 0 8px 30px #0000000a;
    }

    .panel-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 20px;
    }

    .panel-header h2 {
      font-size: 20px;
    }

    .view-btn {
      color: var(--primary);
      background: none;
      border: none;
      cursor: pointer;
      font-weight: bold;
    }

    /* =========================
       TRANSACTIONS
    ========================= */

    .transaction {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 0;
      border-bottom: 1px solid #eee;
    }

    .transaction:last-child {
      border-bottom: none;
    }

    .transaction-left {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .transaction-icon {
      width: 45px;
      height: 45px;
      border-radius: 13px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 20px;
      background: #f0edff;
    }

    .transaction-name {
      font-weight: bold;
    }

    .transaction-date {
      font-size: 12px;
      color: #999;
      margin-top: 4px;
    }

    .amount {
      font-weight: bold;
    }

    .expense {
      color: #ef476f;
    }

    .income {
      color: #00a86b;
    }

    /* =========================
       CREDIT CARD
    ========================= */

    .credit-card {
      height: 210px;
      border-radius: 24px;
      padding: 25px;
      color: white;
      background:
        linear-gradient(135deg, #0f172a, #4224a6, #e72e91);
      position: relative;
      overflow: hidden;
      box-shadow: 0 20px 40px #4224a635;
      transition: .4s;
    }

    .credit-card:hover {
      transform: rotateY(5deg) rotateX(4deg) scale(1.02);
    }

    .credit-card::after {
      content: "";
      position: absolute;
      width: 200px;
      height: 200px;
      border: 30px solid #ffffff10;
      border-radius: 50%;
      right: -60px;
      bottom: -100px;
    }

    .card-top {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .chip {
      width: 50px;
      height: 38px;
      border-radius: 8px;
      background: linear-gradient(135deg, #ffd86f, #ffae00);
      position: relative;
    }

    .chip::after {
      content: "";
      position: absolute;
      inset: 9px;
      border: 1px solid #8a5d00;
      border-radius: 4px;
    }

    .card-brand {
      font-size: 20px;
      font-weight: bold;
    }

    .card-number {
      font-size: 21px;
      letter-spacing: 3px;
      margin-top: 35px;
    }

    .card-bottom {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
      font-size: 11px;
      opacity: .85;
    }

    /* =========================
       SPENDING CHART
    ========================= */

    .chart {
      height: 190px;
      display: flex;
      align-items: flex-end;
      gap: 13px;
      padding-top: 20px;
    }

    .bar {
      flex: 1;
      border-radius: 8px 8px 0 0;
      background: linear-gradient(to top, #5b2cff, #ff3cac);
      animation: growBar 1.2s ease;
      min-height: 10px;
    }

    /* =========================
       QUICK ACTIONS
    ========================= */

    .quick-actions {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 12px;
      margin-bottom: 25px;
    }

    .quick-btn {
      background: white;
      border: none;
      padding: 18px 10px;
      border-radius: 16px;
      cursor: pointer;
      transition: .3s;
      box-shadow: 0 8px 20px #00000008;
      font-weight: bold;
    }

    .quick-btn:hover {
      transform: translateY(-5px);
      background: #f2edff;
      color: var(--primary);
    }

    .quick-btn span {
      display: block;
      font-size: 25px;
      margin-bottom: 7px;
    }

    /* =========================
       SECURITY BANNER
    ========================= */

    .security {
      margin-top: 25px;
      padding: 18px 20px;
      border-radius: 18px;
      background: linear-gradient(90deg, #e6fff4, #effcff);
      display: flex;
      align-items: center;
      gap: 15px;
      color: #08754e;
    }

    /* =========================
       MODAL
    ========================= */

    .modal {
      display: none;
      position: fixed;
      inset: 0;
      background: #00000080;
      backdrop-filter: blur(8px);
      z-index: 1000;
      align-items: center;
      justify-content: center;
    }

    .modal-box {
      width: 90%;
      max-width: 500px;
      background: white;
      border-radius: 25px;
      padding: 30px;
      animation: modalIn .4s ease;
    }

    .modal-box h2 {
      margin-bottom: 20px;
    }

    .close {
      float: right;
      border: none;
      background: #eee;
      width: 35px;
      height: 35px;
      border-radius: 50%;
      cursor: pointer;
      font-size: 20px;
    }

    .transfer-input {
      width: 100%;
      padding: 14px;
      margin: 8px 0 15px;
      border: 1px solid #ddd;
      border-radius: 10px;
    }

    .submit-btn {
      width: 100%;
      padding: 14px;
      border: none;
      border-radius: 12px;
      background: linear-gradient(90deg, #5b2cff, #ff3cac);
      color: white;
      font-weight: bold;
      cursor: pointer;
    }

    /* =========================
       ANIMATIONS
    ========================= */

    @keyframes slideUp {
      from {
        opacity: 0;
        transform: translateY(40px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes floatIn {
      from {
        opacity: 0;
        transform: translateY(30px) scale(.95);
      }
      to {
        opacity: 1;
        transform: translateY(0) scale(1);
      }
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    @keyframes modalIn {
      from {
        opacity: 0;
        transform: scale(.85);
      }
      to {
        opacity: 1;
        transform: scale(1);
      }
    }

    @keyframes growBar {
      from {
        height: 0;
      }
    }

    /* =========================
       RESPONSIVE
    ========================= */

    @media(max-width: 1000px) {
      .login-image {
        display: none;
      }

      .login-box {
        width: 100%;
      }

      .sidebar {
        width: 80px;
      }

      .brand {
        font-size: 0;
        text-align: center;
      }

      .brand span {
        font-size: 22px;
      }

      .menu-item span:not(.menu-icon),
      .menu-label {
        display: none;
      }

      .main {
        margin-left: 80px;
      }

      .stats {
        grid-template-columns: repeat(2, 1fr);
      }

      .content-grid {
        grid-template-columns: 1fr;
      }
    }

    @media(max-width: 600px) {
      .main {
        padding: 15px;
      }

      .stats,
      .quick-actions {
        grid-template-columns: 1fr 1fr;
      }

      .balance {
        font-size: 38px;
      }

      .hero {
        padding: 25px;
      }

      .topbar {
        align-items: flex-start;
      }

      .profile div {
        display: none;
      }
    }
  </style>
</head>

<body>

  <!-- ======================================
       LOGIN
  ======================================= -->

  <section class="login-screen" id="loginScreen">

    <div class="login-image">
      <div class="logo">KCEE<span>FINANCIALS</span></div>

      <h1>Banking made beautifully simple.</h1>

      <p>
        Manage your money, track spending, transfer funds and
        stay in control with Kcee Financials.
      </p>

      <div class="login-features">
        <div class="feature">🔒 Secure Banking</div>
        <div class="feature">⚡ Instant Transfers</div>
        <div class="feature">💳 Smart Cards</div>
        <div class="feature">📊 Money Insights</div>
      </div>
    </div>

    <div class="login-box">
      <div class="login-card">

        <div class="logo">
          KCEE<span>FINANCIALS</span>
        </div>

        <h2>Welcome back 👋</h2>

        <p>Sign in to access your financial dashboard.</p>

        <div class="input-group">
          <label>Email Address</label>
          <input
            type="email"
            id="email"
            placeholder="you@example.com"
          >
        </div>

        <div class="input-group">
          <label>Password</label>
          <input
            type="password"
            id="password"
            placeholder="Enter your password"
          >
        </div>

        <button class="login-btn" onclick="login()">
          Sign In
        </button>

        <div class="demo-text">
          Demo application — no real credentials required.
        </div>

      </div>
    </div>

  </section>


  <!-- ======================================
       DASHBOARD
  ======================================= -->

  <section class="dashboard" id="dashboard">

    <!-- SIDEBAR -->

    <aside class="sidebar">

      <div class="brand">
        KCEE<span>FINANCIALS</span>
      </div>

      <div class="menu-label">Main Menu</div>

      <div class="menu-item active">
        <span class="menu-icon">🏠</span>
        <span>Dashboard</span>
      </div>

      <div class="menu-item" onclick="showMessage('Your account balance is $24,580.75')">
        <span class="menu-icon">💰</span>
        <span>Check Balance</span>
      </div>

      <div class="menu-item" onclick="openModal('transferModal')">
        <span class="menu-icon">💸</span>
        <span>Transfers</span>
      </div>

      <div class="menu-item">
        <span class="menu-icon">📊</span>
        <span>Transactions</span>
      </div>

      <div class="menu-item">
        <span class="menu-icon">💳</span>
        <span>Credit Cards</span>
      </div>

      <div class="menu-item">
        <span class="menu-icon">🧾</span>
        <span>Bill Pay</span>
      </div>

      <div class="menu-label">Services</div>

      <div class="menu-item">
        <span class="menu-icon">💵</span>
        <span>Loans</span>
      </div>

      <div class="menu-item">
        <span class="menu-icon">📈</span>
        <span>Investments</span>
      </div>

      <div class="menu-item">
        <span class="menu-icon">🎁</span>
        <span>Rewards</span>
      </div>

      <div class="menu-item">
        <span class="menu-icon">⚙️</span>
        <span>Settings</span>
      </div>

      <div class="menu-item" onclick="logout()">
        <span class="menu-icon">🚪</span>
        <span>Logout</span>
      </div>

    </aside>


    <!-- MAIN CONTENT -->

    <main class="main">

      <!-- TOP BAR -->

      <div class="topbar">

        <div class="welcome">
          <h1>Good afternoon, Kcee 👋</h1>
          <p>Here's what's happening with your money.</p>
        </div>

        <div class="profile">
          <div>
            <strong>Kcee Okogwu</strong><br>
            <small>Premium Customer</small>
          </div>

          <div class="avatar"></div>
        </div>

      </div>


      <!-- BALANCE HERO -->

      <div class="hero">

        <div class="hero-content">

          <div class="hero-label">
            TOTAL AVAILABLE BALANCE
          </div>

          <div class="balance">
            $24,580.75
          </div>

          <div class="account-number">
            Checking Account •••• 4829
          </div>

          <div class="hero-actions">
            <button class="hero-btn" onclick="showMessage('Balance: $24,580.75')">
              👁 View Balance
            </button>

            <button class="hero-btn" onclick="openModal('transferModal')">
              ↗ Transfer Money
            </button>

            <button class="hero-btn" onclick="showMessage('Statement downloaded in demo mode.')">
              ↓ Statement
            </button>
          </div>

        </div>

      </div>


      <!-- STATISTICS -->

      <div class="stats">

        <div class="stat-card">
          <div class="stat-icon purple">💰</div>
          <div class="stat-title">Checking Balance</div>
          <div class="stat-value">$24,580</div>
          <div class="positive">↑ 8.4% this month</div>
        </div>

        <div class="stat-card">
          <div class="stat-icon green">📈</div>
          <div class="stat-title">Savings</div>
          <div class="stat-value">$12,420</div>
          <div class="positive">↑ 5.2% this month</div>
        </div>

        <div class="stat-card">
          <div class="stat-icon orange">💳</div>
          <div class="stat-title">Credit Available</div>
          <div class="stat-value">$7,850</div>
          <div class="positive">Excellent standing</div>
        </div>

        <div class="stat-card">
          <div class="stat-icon blue">🎁</div>
          <div class="stat-title">Reward Points</div>
          <div class="stat-value">48,920</div>
          <div class="positive">+1,240 this month</div>
        </div>

      </div>


      <!-- QUICK ACTIONS -->

      <div class="quick-actions">

        <button class="quick-btn" onclick="openModal('transferModal')">
          <span>💸</span>
          Send Money
        </button>

        <button class="quick-btn" onclick="showMessage('Deposit feature opened.')">
          <span>💵</span>
          Deposit
        </button>

        <button class="quick-btn" onclick="showMessage('Bill payment center opened.')">
          <span>🧾</span>
          Pay Bills
        </button>

        <button class="quick-btn" onclick="showMessage('ATM locator opened.')">
          <span>📍</span>
          Find ATM
        </button>

      </div>


      <!-- CONTENT -->

      <div class="content-grid">

        <!-- TRANSACTIONS -->

        <div class="panel">

          <div class="panel-header">
            <h2>Recent Transactions</h2>
            <button class="view-btn">
              View All
            </button>
          </div>

          <div class="transaction">

            <div class="transaction-left">
              <div class="transaction-icon">🛒</div>

              <div>
                <div class="transaction-name">Whole Foods Market</div>
                <div class="transaction-date">Today • Grocery</div>
              </div>
            </div>

            <div class="amount expense">
              -$86.42
            </div>

          </div>


          <div class="transaction">

            <div class="transaction-left">
              <div class="transaction-icon">💼</div>

              <div>
                <div class="transaction-name">Payroll Deposit</div>
                <div class="transaction-date">Today • Direct Deposit</div>
              </div>
            </div>

            <div class="amount income">
              +$3,840.00
            </div>

          </div>


          <div class="transaction">

            <div class="transaction-left">
              <div class="transaction-icon">☕</div>

              <div>
                <div class="transaction-name">Starbucks</div>
                <div class="transaction-date">Yesterday • Dining</div>
              </div>
            </div>

            <div class="amount expense">
              -$8.75
            </div>

          </div>


          <div class="transaction">

            <div class="transaction-left">
              <div class="transaction-icon">🏠</div>

              <div>
                <div class="transaction-name">Apartment Rent</div>
                <div class="transaction-date">Aug 28 • Housing</div>
              </div>
            </div>

            <div class="amount expense">
              -$1,850.00
            </div>

          </div>


          <div class="transaction">

            <div class="transaction-left">
              <div class="transaction-icon">💻</div>

              <div>
                <div class="transaction-name">Freelance Payment</div>
                <div class="transaction-date">Aug 27 • Income</div>
              </div>
            </div>

            <div class="amount income">
              +$920.00
            </div>

          </div>

        </div>


        <!-- CREDIT CARD -->

        <div class="panel">

          <div class="panel-header">
            <h2>My Credit Card</h2>
            <button class="view-btn" onclick="showMessage('Card settings opened.')">
              Manage
            </button>
          </div>

          <div class="credit-card">

            <div class="card-top">
              <div class="chip"></div>

              <div class="card-brand">
                KCEE
              </div>
            </div>

            <div class="card-number">
              4829 •••• •••• 7219
            </div>

            <div class="card-bottom">

              <div>
                CARD HOLDER<br>
                <strong>KCEE OKOGWU</strong>
              </div>

              <div>
                VALID THRU<br>
                <strong>09/29</strong>
              </div>

              <div>
                CREDIT<br>
                <strong>$10K</strong>
              </div>

            </div>

          </div>

          <br>

          <div style="display:flex;justify-content:space-between;">
            <span>Current Balance</span>
            <strong>$2,150.25</strong>
          </div>

          <br>

          <div style="height:8px;background:#eee;border-radius:20px;overflow:hidden;">
            <div style="height:100%;width:22%;background:linear-gradient(90deg,#5b2cff,#ff3cac);border-radius:20px;"></div>
          </div>

          <br>

          <small style="color:#777;">
            $7,849.75 available credit
          </small>

        </div>

      </div>


      <!-- SECOND ROW -->

      <div class="content-grid" style="margin-top:25px;">

        <!-- SPENDING -->

        <div class="panel">

          <div class="panel-header">
            <h2>Spending Overview</h2>

            <select style="border:1px solid #ddd;padding:8px;border-radius:8px;">
              <option>This Week</option>
              <option>This Month</option>
              <option>This Year</option>
            </select>
          </div>

          <div class="chart">

            <div class="bar" style="height:40%;"></div>
            <div class="bar" style="height:65%;"></div>
            <div class="bar" style="height:45%;"></div>
            <div class="bar" style="height:80%;"></div>
            <div class="bar" style="height:55%;"></div>
            <div class="bar" style="height:90%;"></div>
            <div class="bar" style="height:70%;"></div>

          </div>

          <div style="display:flex;justify-content:space-between;color:#999;font-size:12px;">
            <span>Mon</span>
            <span>Tue</span>
            <span>Wed</span>
            <span>Thu</span>
            <span>Fri</span>
            <span>Sat</span>
            <span>Sun</span>
          </div>

        </div>


        <!-- FINANCIAL IMAGE -->

        <div
          class="panel"
          style="
          padding:0;
          overflow:hidden;
          min-height:280px;
          background:
          linear-gradient(#24104d99,#24104dcc),
          url('https://images.unsplash.com/photo-1559526324-593bc073d938?auto=format&fit=crop&w=1000&q=80')
          center/cover;
          color:white;
          display:flex;
          flex-direction:column;
          justify-content:flex-end;
          "
        >

          <div style="padding:28px;">

            <div style="font-size:13px;opacity:.8;">
              KCEE FINANCIAL INSIGHTS
            </div>

            <h2 style="font-size:26px;margin:8px 0;">
              Your money. Your future.
            </h2>

            <p style="opacity:.8;line-height:1.5;">
              Build better financial habits with personalized
              insights and spending analytics.
            </p>

            <button
              class="hero-btn"
              style="margin-top:15px;"
              onclick="showMessage('Financial insights opened.')"
            >
              Explore Insights →
            </button>

          </div>

        </div>

      </div>


      <!-- SECURITY -->

      <div class="security">

        <div style="font-size:30px;">🛡️</div>

        <div>
          <strong>Your account is protected</strong>

          <div style="font-size:13px;margin-top:3px;">
            Kcee Financials uses advanced security monitoring
            to help protect your account.
          </div>
        </div>

      </div>

      <footer style="text-align:center;padding:35px;color:#999;font-size:13px;">
        © 2026 Kcee Financials • Digital Banking Demo •
        Privacy • Security • Terms
      </footer>

    </main>

  </section>


  <!-- ======================================
       TRANSFER MODAL
  ======================================= -->

  <div class="modal" id="transferModal">

    <div class="modal-box">

      <button class="close" onclick="closeModal('transferModal')">
        ×
      </button>

      <h2>💸 Transfer Money</h2>

      <label>Recipient</label>
      <input
        class="transfer-input"
        type="text"
        placeholder="Recipient name"
      >

      <label>Account Number</label>
      <input
        class="transfer-input"
        type="text"
        placeholder="Account number"
      >

      <label>Amount</label>
      <input
        class="transfer-input"
        type="number"
        placeholder="$0.00"
      >

      <button
        class="submit-btn"
        onclick="completeTransfer()"
      >
        Continue Transfer
      </button>

    </div>

  </div>


  <!-- ======================================
       JAVASCRIPT
  ======================================= -->

  <script>

    function login() {

      const email = document.getElementById("email").value;
      const password = document.getElementById("password").value;

      // Demo login.
      // Replace with a secure server-side authentication system
      // for a real banking application.

      if (email.trim() === "" || password.trim() === "") {

        alert("Please enter your email and password.");

        return;
      }

      document.getElementById("loginScreen").style.display = "none";

      document.getElementById("dashboard").style.display = "block";

    }


    function logout() {

      document.getElementById("dashboard").style.display = "none";

      document.getElementById("loginScreen").style.display = "flex";

      document.getElementById("email").value = "";
      document.getElementById("password").value = "";

    }


    function openModal(id) {

      document.getElementById(id).style.display = "flex";

    }


    function closeModal(id) {

      document.getElementById(id).style.display = "none";

    }


    function completeTransfer() {

      closeModal("transferModal");

      showMessage(
        "Demo transfer submitted successfully! No real money was moved."
      );

    }


    function showMessage(message) {

      alert(message);

    }


    // Close modal if user clicks outside the box

    window.addEventListener("click", function(event) {

      const modal = document.getElementById("transferModal");

      if (event.target === modal) {

        modal.style.display = "none";

      }

    });


    // Sidebar menu animation

    const menuItems = document.querySelectorAll(".menu-item");

    menuItems.forEach(item => {

      item.addEventListener("click", function() {

        menuItems.forEach(i => i.classList.remove("active"));

        this.classList.add("active");

      });

    });

  </script>

</body>
</html>