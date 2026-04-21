<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <title>NexusShop \u2014 Premium E-Commerce</title>
  <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800&family=Manrope:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    :root {
      --navy-900: #060d1f;
      --navy-800: #0c1a35;
      --navy-700: #102247;
      --navy-600: #163060;
      --navy-500: #1e4080;
      --cyan:     #00c8ff;
      --cyan-dim: rgba(0,200,255,0.10);
      --cyan-mid: rgba(0,200,255,0.22);
      --white:    #eef4ff;
      --slate:    #7a92b8;
      --card:     #0e1e3a;
      --border:   rgba(0,200,255,0.10);
      --red:      #ff4d6d;
      --green:    #00e5a0;
      --r:        8px;
      --rl:       14px;
    }
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    html { scroll-behavior: smooth; }
    body {
      background: var(--navy-900);
      color: var(--white);
      font-family: 'Manrope', sans-serif;
      font-weight: 400;
      line-height: 1.6;
      overflow-x: hidden;
    }
    ::-webkit-scrollbar { width: 4px; }
    ::-webkit-scrollbar-track { background: var(--navy-900); }
    ::-webkit-scrollbar-thumb { background: var(--cyan); border-radius: 2px; }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }

    /* \u2500\u2500 GRID BACKGROUND \u2500\u2500 */
    body::before {
      content: '';
      position: fixed;
      inset: 0;
      background-image:
        linear-gradient(rgba(0,200,255,0.03) 1px, transparent 1px),
        linear-gradient(90deg, rgba(0,200,255,0.03) 1px, transparent 1px);
      background-size: 48px 48px;
      pointer-events: none;
      z-index: 0;
    }

    .container { width: 100%; max-width: 1240px; margin: 0 auto; padding: 0 28px; position: relative; z-index: 1; }
    .section { padding: 80px 0; }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 TOPBAR \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    .topbar {
      background: var(--navy-800);
      border-bottom: 1px solid var(--border);
      padding: 7px 0;
      font-size: 12px;
      color: var(--slate);
    }
    .topbar .container {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    .topbar-links { display: flex; gap: 20px; }
    .topbar-links a { color: var(--slate); transition: color .2s; }
    .topbar-links a:hover { color: var(--cyan); }
    .topbar-promo {
      display: flex;
      align-items: center;
      gap: 6px;
      color: var(--cyan);
      font-weight: 600;
      letter-spacing: .04em;
    }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 HEADER \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    header {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(6,13,31,0.96);
      border-bottom: 1px solid var(--border);
      backdrop-filter: blur(16px);
    }
    .header-inner {
      display: grid;
      grid-template-columns: 200px 1fr auto;
      align-items: center;
      gap: 24px;
      padding: 16px 0;
    }
    .brand {
      font-family: 'Syne', sans-serif;
      font-size: 21px;
      font-weight: 800;
      letter-spacing: -0.01em;
      white-space: nowrap;
    }
    .brand .dot { color: var(--cyan); }

    /* NAV */
    nav ul {
      list-style: none;
      display: flex;
      align-items: center;
      gap: 2px;
    }
    nav ul li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 14px;
      font-size: 13.5px;
      font-weight: 500;
      color: var(--slate);
      border-radius: var(--r);
      transition: background .2s, color .2s;
      white-space: nowrap;
    }
    nav ul li a i { font-size: 11px; }
    nav ul li a:hover,
    nav ul li a.active { background: var(--cyan-dim); color: var(--white); }
    .nav-badge {
      background: var(--red);
      color: #fff;
      font-size: 9px;
      font-weight: 700;
      padding: 2px 6px;
      border-radius: 999px;
    }

    /* HEADER RIGHT */
    .header-right {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .search-box {
      display: flex;
      align-items: center;
      gap: 8px;
      background: var(--navy-800);
      border: 1px solid var(--border);
      border-radius: 999px;
      padding: 8px 16px;
      transition: border-color .2s;
    }
    .search-box:focus-within { border-color: var(--cyan); }
    .search-box i { color: var(--slate); font-size: 13px; }
    .search-box input {
      background: transparent;
      border: none;
      outline: none;
      color: var(--white);
      font-family: 'Manrope', sans-serif;
      font-size: 13px;
      width: 170px;
    }
    .search-box input::placeholder { color: var(--slate); }
    .hdr-btn {
      background: transparent;
      border: 1px solid var(--border);
      color: var(--slate);
      font-size: 15px;
      width: 38px;
      height: 38px;
      border-radius: var(--r);
      display: grid;
      place-items: center;
      cursor: pointer;
      transition: all .2s;
      position: relative;
    }
    .hdr-btn:hover { border-color: var(--cyan); color: var(--cyan); background: var(--cyan-dim); }
    .badge {
      position: absolute;
      top: -5px; right: -5px;
      background: var(--cyan);
      color: var(--navy-900);
      font-size: 9px;
      font-weight: 800;
      width: 17px; height: 17px;
      border-radius: 50%;
      display: grid;
      place-items: center;
    }
    .btn-primary {
      background: var(--cyan);
      color: var(--navy-900);
      font-family: 'Manrope', sans-serif;
      font-size: 13px;
      font-weight: 700;
      border: none;
      padding: 9px 20px;
      border-radius: var(--r);
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      transition: opacity .2s, transform .15s;
      white-space: nowrap;
    }
    .btn-primary:hover { opacity: .88; transform: translateY(-1px); }
    .btn-ghost {
      background: transparent;
      color: var(--white);
      font-family: 'Manrope', sans-serif;
      font-size: 13px;
      font-weight: 600;
      border: 1px solid var(--border);
      padding: 9px 20px;
      border-radius: var(--r);
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      transition: border-color .2s, color .2s;
    }
    .btn-ghost:hover { border-color: var(--cyan); color: var(--cyan); }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 HERO \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    .hero {
      padding: 64px 0 72px;
      position: relative;
      overflow: hidden;
    }
    /* glowing orb */
    .hero::before {
      content: '';
      position: absolute;
      top: -120px; right: -80px;
      width: 600px; height: 600px;
      background: radial-gradient(circle, rgba(0,200,255,0.12) 0%, transparent 65%);
      pointer-events: none;
    }
    .hero-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 56px;
      align-items: center;
    }
    .hero-eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: var(--cyan-dim);
      border: 1px solid var(--cyan-mid);
      color: var(--cyan);
      font-size: 11px;
      font-weight: 700;
      letter-spacing: .14em;
      text-transform: uppercase;
      padding: 5px 14px;
      border-radius: 999px;
      margin-bottom: 22px;
      animation: fadeUp .6s ease both;
    }
    .hero h1 {
      font-family: 'Syne', sans-serif;
      font-size: clamp(38px, 4.5vw, 60px);
      font-weight: 800;
      line-height: 1.08;
      letter-spacing: -.02em;
      margin-bottom: 20px;
      animation: fadeUp .6s .1s ease both;
    }
    .hero h1 .hi { color: var(--cyan); }
    .hero p {
      color: var(--slate);
      font-size: 15.5px;
      line-height: 1.75;
      max-width: 440px;
      margin-bottom: 36px;
      animation: fadeUp .6s .2s ease both;
    }
    .hero-ctas {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      animation: fadeUp .6s .3s ease both;
    }
    .hero-pills {
      display: flex;
      gap: 10px;
      margin-top: 40px;
      animation: fadeUp .6s .4s ease both;
    }
    .hero-pill {
      display: flex;
      align-items: center;
      gap: 8px;
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 999px;
      padding: 8px 16px;
      font-size: 12.5px;
      font-weight: 500;
    }
    .hero-pill i { color: var(--cyan); font-size: 12px; }

    /* HERO IMAGE SIDE */
    .hero-visual {
      position: relative;
      animation: fadeUp .7s .15s ease both;
    }
    .hero-img-wrap {
      border-radius: var(--rl);
      overflow: hidden;
      border: 1px solid var(--border);
      position: relative;
    }
    .hero-img-wrap img { width: 100%; height: 420px; object-fit: cover; }
    .hero-img-wrap::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(to bottom, transparent 55%, rgba(6,13,31,0.7));
    }
    .hero-card {
      position: absolute;
      background: rgba(12,26,53,0.92);
      border: 1px solid var(--border);
      backdrop-filter: blur(12px);
      border-radius: var(--r);
      padding: 14px 18px;
    }
    .hero-card.card-tl { top: 16px; left: 16px; }
    .hero-card.card-br { bottom: 20px; right: 16px; }
    .hero-card .card-label { font-size: 10px; color: var(--slate); letter-spacing: .1em; text-transform: uppercase; margin-bottom: 3px; }
    .hero-card .card-val { font-family: 'Syne', sans-serif; font-size: 20px; font-weight: 700; color: var(--cyan); }
    .hero-card .card-sub { font-size: 12px; color: var(--slate); margin-top: 2px; }

    @keyframes fadeUp { from { opacity:0; transform:translateY(20px); } to { opacity:1; transform:translateY(0); } }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 STATS BAR \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    .stats-bar {
      background: var(--navy-800);
      border-top: 1px solid var(--border);
      border-bottom: 1px solid var(--border);
    }
    .stats-bar .container {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
    }
    .stat-item {
      padding: 28px 24px;
      display: flex;
      align-items: center;
      gap: 16px;
      border-right: 1px solid var(--border);
    }
    .stat-item:last-child { border-right: none; }
    .stat-icon {
      width: 46px; height: 46px; min-width: 46px;
      background: var(--cyan-dim);
      border-radius: var(--r);
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--cyan);
    }
    .stat-num {
      font-family: 'Syne', sans-serif;
      font-size: 22px;
      font-weight: 700;
    }
    .stat-lbl { font-size: 12px; color: var(--slate); margin-top: 1px; }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 SECTION HEADER \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    .sec-head { margin-bottom: 40px; }
    .sec-head.center { text-align: center; }
    .sec-eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: .16em;
      text-transform: uppercase;
      color: var(--cyan);
      margin-bottom: 10px;
    }
    .sec-eyebrow::before {
      content: '';
      width: 22px; height: 2px;
      background: var(--cyan);
      border-radius: 1px;
    }
    .sec-head.center .sec-eyebrow { justify-content: center; }
    .sec-head.center .sec-eyebrow::before { display: none; }
    .sec-title {
      font-family: 'Syne', sans-serif;
      font-size: clamp(26px, 3vw, 38px);
      font-weight: 800;
      line-height: 1.12;
      letter-spacing: -.01em;
    }
    .sec-sub { color: var(--slate); font-size: 14.5px; margin-top: 8px; max-width: 500px; line-height: 1.7; }
    .sec-head.center .sec-sub { margin: 8px auto 0; }
    .sec-head-row {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 40px;
    }
    .view-all {
      font-size: 13px;
      font-weight: 600;
      color: var(--cyan);
      display: flex;
      align-items: center;
      gap: 6px;
      transition: gap .2s;
      white-space: nowrap;
    }
    .view-all:hover { gap: 10px; }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 CATEGORY CHIPS \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    .cat-tabs {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
      margin-bottom: 36px;
    }
    .cat-tab {
      display: flex;
      align-items: center;
      gap: 7px;
      padding: 8px 16px;
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 999px;
      font-size: 13px;
      font-weight: 500;
      color: var(--slate);
      cursor: pointer;
      transition: all .2s;
    }
    .cat-tab i { font-size: 12px; }
    .cat-tab:hover,
    .cat-tab.active { background: var(--cyan-dim); border-color: var(--cyan-mid); color: var(--white); }
    .cat-tab.active { color: var(--cyan); font-weight: 600; }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 PRODUCTS GRID \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: var(--rl);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      transition: border-color .3s, transform .3s, box-shadow .3s;
      cursor: pointer;
    }
    .product-card:hover {
      border-color: rgba(0,200,255,0.3);
      transform: translateY(-5px);
      box-shadow: 0 20px 48px rgba(0,0,0,0.4), 0 0 0 1px rgba(0,200,255,0.08);
    }
    .prod-img {
      position: relative;
      height: 210px;
      overflow: hidden;
      background: var(--navy-700);
    }
    .prod-img img {
      width: 100%; height: 100%;
      object-fit: cover;
      transition: transform .5s ease;
    }
    .product-card:hover .prod-img img { transform: scale(1.07); }
    .prod-badge {
      position: absolute;
      top: 10px; left: 10px;
      font-size: 10px;
      font-weight: 700;
      letter-spacing: .06em;
      text-transform: uppercase;
      padding: 4px 9px;
      border-radius: 5px;
    }
    .prod-badge.sale { background: var(--red); color: #fff; }
    .prod-badge.new  { background: var(--cyan); color: var(--navy-900); }
    .prod-badge.hot  { background: #ff7a00; color: #fff; }
    .prod-actions {
      position: absolute;
      top: 10px; right: 10px;
      display: flex;
      flex-direction: column;
      gap: 6px;
      opacity: 0;
      transform: translateX(6px);
      transition: opacity .25s, transform .25s;
    }
    .product-card:hover .prod-actions { opacity: 1; transform: translateX(0); }
    .pa-btn {
      width: 32px; height: 32px;
      background: rgba(6,13,31,0.85);
      border: 1px solid rgba(255,255,255,0.1);
      border-radius: 7px;
      display: grid;
      place-items: center;
      font-size: 13px;
      color: var(--white);
      cursor: pointer;
      backdrop-filter: blur(8px);
      transition: background .2s, color .2s, border-color .2s;
    }
    .pa-btn:hover { background: var(--cyan); color: var(--navy-900); border-color: var(--cyan); }
    .prod-body { padding: 14px 16px; flex: 1; display: flex; flex-direction: column; gap: 6px; }
    .prod-cat { font-size: 10.5px; font-weight: 600; letter-spacing: .12em; text-transform: uppercase; color: var(--cyan); }
    .prod-name { font-size: 14.5px; font-weight: 600; line-height: 1.35; color: var(--white); }
    .prod-stars { display: flex; align-items: center; gap: 5px; font-size: 12px; color: #ffc247; }
    .prod-stars span { color: var(--slate); font-size: 11px; }
    .prod-footer {
      padding: 12px 16px;
      border-top: 1px solid var(--border);
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    .prod-price { font-family: 'Syne', sans-serif; font-size: 19px; font-weight: 700; }
    .prod-old { font-size: 12px; color: var(--slate); text-decoration: line-through; margin-left: 6px; }
    .cart-add {
      width: 34px; height: 34px;
      background: var(--cyan-dim);
      border: 1px solid var(--cyan-mid);
      border-radius: var(--r);
      display: grid;
      place-items: center;
      font-size: 14px;
      color: var(--cyan);
      cursor: pointer;
      transition: background .2s, color .2s;
    }
    .cart-add:hover { background: var(--cyan); color: var(--navy-900); }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 CATEGORIES GRID \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 14px;
    }
    .cat-card {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: var(--rl);
      padding: 26px 12px 20px;
      text-align: center;
      cursor: pointer;
      transition: border-color .25s, transform .25s, box-shadow .25s;
    }
    .cat-card:hover {
      border-color: rgba(0,200,255,0.3);
      transform: translateY(-4px);
      box-shadow: 0 12px 32px rgba(0,0,0,.3);
    }
    .cat-icon {
      width: 52px; height: 52px;
      margin: 0 auto 12px;
      background: var(--cyan-dim);
      border: 1px solid var(--cyan-mid);
      border-radius: 14px;
      display: grid;
      place-items: center;
      font-size: 20px;
      color: var(--cyan);
      transition: background .25s;
    }
    .cat-card:hover .cat-icon { background: rgba(0,200,255,0.2); }
    .cat-card h4 { font-size: 13px; font-weight: 600; color: var(--white); }
    .cat-card .cnt { font-size: 11px; color: var(--slate); margin-top: 3px; }

    /* \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 DEAL SECTION \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550 */
    .deal-wrap {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 0;
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: var(--rl);
      overflow: hidden;
    }
    .deal-left {
      position: relative;
      min-height: 460px;
    }
    .deal-left img {
      width: 100%; height: 100%;
      object-fit: cover;
      display: block;
    }
    .deal-left::after {
      content: '';
      position: absolute; inset: 0;
      background: linear-gradient(to right, transparent 50%, var(--card));
    }
    .deal-right {
      padding: 48px 44px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-chip {
      display: inline-flex;
      align-items: center;
      gap: 6            color: var(--primary);
            font-weight: 500;
        }

        nav.main-nav li a:hover {
            background: var(--surface);
            color: var(--accent)
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--surface);
            padding: 8px 12px;
            border-radius: 999px;
            min-width: 240px;
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--primary);
            font-size: 16px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 8px;
            border-radius: 8px;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 20px;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background:
                linear-gradient(180deg, rgba(10, 37, 64, 0.6), rgba(10, 37, 64, 0.6)),
                url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            color: white;
            min-height: 420px;
            padding: 56px 20px;
            border-bottom-left-radius: var(--radius);
            border-bottom-right-radius: var(--radius);
        }

        .hero h1 {
            font-family: Poppins;
            font-size: 40px;
            margin: 0 0 12px;
            letter-spacing: -0.02em;
        }

        .hero p {
            margin: 0 0 22px;
            opacity: 0.95;
            max-width: 820px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 10px 18px;
            border-radius: 999px;
            font-weight: 600;
            cursor: pointer;
            border: 0;
        }

        .btn-primary {
            background: var(--accent);
            color: #042233;
        }

        .btn-ghost {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.18);
            color: white;
        }

        /* Sections */
        .section {
            padding: 48px 0;
        }

        .section .title {
            text-align: center;
            margin-bottom: 18px;
        }

        .grid {
            display: grid;
            gap: 20px;
        }

        /* Categories */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border-radius: 12px;
            padding: 18px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.04);
            transition: transform .18s ease, box-shadow .18s ease;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 40px rgba(10, 37, 64, 0.06);
        }

        .cat-card .icon {
            font-size: 28px;
            color: var(--accent);
            margin-bottom: 8px;
        }

        .cat-card h4 {
            margin: 6px 0 0;
            font-size: 15px;
        }

        /* Products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: 12px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.04);
        }

        .product img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            display: block;
        }

        .product-body {
            padding: 12px 14px;
            display: flex;
            flex-direction: column;
            gap: 10px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 15px;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 8px;
        }

        .price {
            font-weight: 700;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-weight: 500;
            font-size: 13px;
        }

        .rating {
            color: #ffc107;
            font-size: 13px;
        }

        .product-footer {
            padding: 12px;
            display: flex;
            gap: 10px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 10px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
        }

        .wish-btn {
            background: transparent;
            border: 1px solid rgba(10, 37, 64, 0.06);
            padding: 8px;
            border-radius: 8px;
            cursor: pointer;
        }

        /* Deal */
        .deal {
            display: flex;
            gap: 18px;
            background: var(--surface);
            border-radius: 12px;
            overflow: hidden;
            align-items: center;
        }

        .deal img {
            width: 50%;
            height: 320px;
            object-fit: cover;
            display: block;
        }

        .deal .content {
            padding: 28px;
            flex: 1;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin: 18px 0;
        }

        .time-box {
            background: var(--primary);
            color: white;
            padding: 12px 16px;
            border-radius: 8px;
            min-width: 76px;
            text-align: center;
        }

        .deal .price {
            font-size: 26px;
        }

        /* Testimonials */
        .testimonials {
            display: flex;
            gap: 14px;
            overflow-x: auto;
            padding: 12px 4px;
        }

        .testimonial {
            min-width: 320px;
            background: white;
            padding: 18px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(10, 37, 64, 0.04);
        }

        /* Newsletter */
        .newsletter {
            background: var(--primary);
            color: white;
            border-radius: 12px;
            padding: 32px;
            text-align: center;
        }

        .newsletter input {
            padding: 12px 14px;
            border-radius: 999px;
            border: 0;
            width: 320px;
            max-width: 100%;
            margin-right: 8px;
        }

        /* Footer */
        footer {
            margin-top: 24px;
            padding: 36px 0;
            border-top: 1px solid rgba(10, 37, 64, 0.04);
            color: var(--muted);
            font-size: 14px;
        }

        /* Responsive */
        @media (max-width:1200px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width:900px) {
            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: inline-block;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal img {
                height: 220px;
                width: 40%;
            }
        }

        @media (max-width:600px) {
            .hero h1 {
                font-size: 28px;
            }

            .products {
                grid-template-columns: 1fr;
            }

            .categories {
                grid-template-columns: 1fr;
            }

            .deal {
                flex-direction: column;
            }

            .deal img {
                width: 100%;
                height: 220px;
            }
        }

        /* small utilities */
        .muted {
            color: var(--muted);
        }

        .text-center {
            text-align: center
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><em class="fas fa-th-large"></em> Categories <em class="fas fa-chevron-down" style="font-size:12px;"></em></a>
                    </li>
                    <li><a href="#"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
                    <li><a href="#about"><em class="fas fa-info-circle"></em> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search" role="search" aria-label="Product search">
                    <emnput type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search"></em></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <em class="fas fa-shopping-cart"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu (hidden on desktop) -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:1px solid rgba(10,37,64,0.04);">
            <div class="container" style="padding:12px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:8px;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="container">
                <h1>Myown Collection — Premium Picks</h1>
                <p>Discover the latest trends in fashion, technology and accessories — curated just for you. Enjoy limited-time deals and free shipping on selected items.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">Shop Now <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2 class="section-title">Shop by Category</h2>
                <p class="muted">Browse through our wide range of products across curated categories.</p>
            </div>

            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending Products</h2>
                <p class="muted">Popular picks based on recent activity.</p>
            </div>

            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Flash Sale</h2>
                <p class="muted">Limited-time offers — don't miss out!</p>
            </div>

            <div class="deal" style="align-items:stretch;">
                <emmg src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted">Thin, light and powerful — now with M2 performance.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div style="font-size:12px;opacity:.85">Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div style="font-size:12px;opacity:.85">Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div style="font-size:12px;opacity:.85">Minutes</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div style="font-size:12px;opacity:.85">Seconds</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:12px;">
                        <div class="price">$999 <span class="old-price" style="font-size:16px">$1,199</span></div>
                        <div class="deal-discount" style="background:#ff4757;color:white;padding:6px 10px;border-radius:8px;font-weight:700">-17%</div>
                    </div>

                    <p style="margin-top:10px;">Only <strong>12</strong> items left at this price!</p>
                    <div style="margin-top:18px;">
                        <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>What our customers say</h2>
                <p class="muted">Real reviews from verified buyers.</p>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <emmg src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Ava Martin</div>
                            <div class="muted" style="font-size:13px">Verified buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection and the checkout was smooth. Will shop again."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <emmg src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Michael Lee</div>
                            <div class="muted" style="font-size:13px">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Stay in the loop</h3>
                <p>Subscribe to get exclusive offers & new arrivals</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
                    <emnput id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div style="font-weight:700;font-size:18px">NexusShop</div>
                <p class="muted" style="margin-top:8px">A modern e-commerce demo built with HTML, CSS & JavaScript.</p>
                <div style="margin-top:14px;display:flex;gap:10px">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex;gap:40px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Company</div>
                    <div class="muted" style="line-height:1.8">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Support</div>
                    <div class="muted" style="line-height:1.8">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:22px;color:var(--muted);font-size:13px">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
        // --- Sample data (can be replaced by server-side data or API) ---
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

        // --- Render categories & products ---
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:13px;margin-top:6px">Explore ${cat.name}</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({
                        top: document.getElementById('prod-title').offsetTop - 60,
                        behavior: 'smooth'
                    });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute;margin:12px"><span style="background:${p.badge.startsWith('-')? '#ff4757' : 'var(--success)'};color:white;padding:6px 8px;border-radius:8px;font-weight:700;font-size:12px">${p.badge}</span></div>` : ''}
                    <emmg src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="muted">${p.category}</div>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">${p.oldPrice ? '$'+p.oldPrice.toLocaleString() : ''}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:12px;color:var(--muted)">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // attach listeners to add buttons
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        // --- Utilities ---
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            // Simple feedback
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added ✓';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // --- Search handling ---
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // --- Mobile menu toggle ---
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
        });

        // --- Simple dropdown (desktop) ---
        const catMenuBtn = document.getElementById('catMenuBtn');
        catMenuBtn && catMenuBtn.addEventListener('click', (e) => {
            e.preventDefault();
            alert('Use the category tiles below to filter — this is a demo.');
        });

        // --- Newsletter subscribe (demo) ---
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = '#ffb3b3';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#cce7ff';
            msg.textContent = 'Thanks! You are subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // --- Countdown timer for deal ---
        (function setupDealTimer() {
            // Target: 1 day from now (demo)
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); // 24h36m
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        // --- Small UI bindings ---
        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 60,
            behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            alert('Deal added to cart (demo).');
        });

        // --- Initialization ---
        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html>
