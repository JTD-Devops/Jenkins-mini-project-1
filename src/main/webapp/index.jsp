<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NeXus | Trendy Winter Collection</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --bg-surface: #faf9ff;
            --card: #ffffff;
            --text: #111111;
            --text-muted: #5a5a6e;
            --primary: #2b2d42;
            --primary-dark: #1e1f2c;
            --accent: #ff5e7c;
            --accent-light: #ff8aa3;
            --accent-glow: rgba(255, 94, 124, 0.2);
            --gold: #d4af37;
            --gold-light: #f4e3a7;
            --shadow-sm: 0 8px 20px rgba(0, 0, 0, 0.04);
            --shadow-md: 0 12px 32px rgba(0, 0, 0, 0.08);
            --shadow-lg: 0 20px 40px rgba(0, 0, 0, 0.12);
            --radius: 20px;
            --radius-sm: 12px;
            --transition: all 0.3s cubic-bezier(0.2, 0.95, 0.4, 1);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(145deg, #f9fafc 0%, #ffffff 100%);
            color: var(--text);
            overflow-x: hidden;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ----- Premium Header ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            font-family: 'Playfair Display', serif;
            font-size: 28px;
            font-weight: 900;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .brand span {
            background: linear-gradient(135deg, #ff5e7c, #d4af37);
            -webkit-background-clip: text;
            background-clip: text;
        }

        .search {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 60px;
            padding: 10px 18px;
            gap: 10px;
            min-width: 280px;
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0, 0, 0, 0.04);
            transition: var(--transition);
        }

        .search:focus-within {
            box-shadow: 0 0 0 3px var(--accent-glow);
            border-color: var(--accent);
        }

        .search input {
            border: none;
            background: transparent;
            width: 100%;
            font-size: 14px;
            outline: none;
        }

        .icon-btn {
            background: transparent;
            border: none;
            cursor: pointer;
            font-size: 20px;
            color: var(--text);
            transition: var(--transition);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .icon-btn:hover {
            background: #f0f0f0;
            color: var(--accent);
            transform: translateY(-2px);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(255, 94, 124, 0.4);
        }

        /* ----- Hero Section (Luxury Gradient) ----- */
        .hero {
            background: radial-gradient(circle at 10% 30%, rgba(255, 94, 124, 0.08) 0%, rgba(255, 215, 55, 0.05) 100%),
                linear-gradient(135deg, #fff5f7 0%, #ffffff 100%);
            padding: 80px 0 70px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: "✨";
            font-size: 280px;
            position: absolute;
            bottom: -60px;
            right: -60px;
            opacity: 0.08;
            pointer-events: none;
            transform: rotate(-8deg);
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 58px;
            font-weight: 900;
            background: linear-gradient(135deg, #2b2d42 0%, #ff5e7c 70%);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            color: var(--text-muted);
            max-width: 620px;
            margin: 0 auto 32px;
            line-height: 1.5;
        }

        .btn-group {
            display: flex;
            gap: 18px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 14px 32px;
            border-radius: 50px;
            font-weight: 700;
            font-size: 15px;
            cursor: pointer;
            transition: var(--transition);
            border: none;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #2b2d42, #1a1a2e);
            color: white;
            box-shadow: 0 6px 14px rgba(0, 0, 0, 0.08);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.12);
            background: linear-gradient(135deg, #ff5e7c, #ff8aa3);
            color: white;
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid #ddd;
            color: #2b2d42;
        }

        .btn-outline:hover {
            border-color: var(--accent);
            background: rgba(255, 94, 124, 0.04);
            transform: translateY(-2px);
        }

        /* Section Headers */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-header h2 {
            font-family: 'Playfair Display', serif;
            font-size: 38px;
            font-weight: 800;
            letter-spacing: -0.3px;
            background: linear-gradient(135deg, #2b2d42, #5a5a6e);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 12px;
        }

        .section-header p {
            color: var(--text-muted);
            font-size: 16px;
        }

        /* Categories Grid - Glassmorphism */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 24px;
            margin-bottom: 60px;
        }

        .cat-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(8px);
            border-radius: var(--radius-sm);
            padding: 28px 12px;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
            border: 1px solid rgba(255, 255, 255, 0.5);
            box-shadow: var(--shadow-sm);
        }

        .cat-card:hover {
            transform: translateY(-8px);
            background: white;
            box-shadow: var(--shadow-md);
            border-color: var(--accent-light);
        }

        .cat-icon {
            width: 70px;
            height: 70px;
            background: linear-gradient(145deg, #fff, #f8f8ff);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px;
            transition: var(--transition);
            color: var(--accent);
            font-size: 28px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
        }

        .cat-card:hover .cat-icon {
            background: linear-gradient(135deg, var(--accent), var(--accent-light));
            color: white;
            transform: scale(1.05);
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
        }

        .product-card {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0, 0, 0, 0.02);
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-lg);
        }

        .product-img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.6s ease;
        }

        .product-card:hover .product-img {
            transform: scale(1.02);
        }

        .product-info {
            padding: 20px;
        }

        .product-title {
            font-weight: 800;
            font-size: 16px;
            margin-bottom: 6px;
        }

        .product-category {
            font-size: 12px;
            color: var(--accent);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .price {
            font-size: 20px;
            font-weight: 800;
            color: #2b2d42;
            margin: 12px 0;
        }

        .old-price {
            font-size: 14px;
            color: var(--text-muted);
            text-decoration: line-through;
            margin-left: 8px;
            font-weight: 400;
        }

        .rating {
            color: #ffb83b;
            font-size: 13px;
            letter-spacing: 2px;
            margin-bottom: 14px;
        }

        .add-cart-btn {
            width: 100%;
            background: #f4f4fc;
            border: none;
            padding: 12px;
            border-radius: 50px;
            font-weight: 700;
            cursor: pointer;
            transition: var(--transition);
            color: #2b2d42;
        }

        .add-cart-btn:hover {
            background: var(--accent);
            color: white;
            box-shadow: 0 4px 12px var(--accent-glow);
        }

        /* Flash Sale - Premium Card */
        .flash-sale {
            background: linear-gradient(115deg, #1f1a2e 0%, #2a1e2e 100%);
            border-radius: 32px;
            padding: 0;
            margin: 40px 0;
            overflow: hidden;
            box-shadow: 0 25px 45px -12px rgba(0, 0, 0, 0.35);
        }

        .deal-flex {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .deal-img {
            flex: 1.1;
            height: 380px;
            object-fit: cover;
        }

        .deal-content {
            flex: 1;
            padding: 40px 40px 40px 20px;
            color: white;
        }

        .deal-content h3 {
            font-size: 42px;
            font-family: 'Playfair Display', serif;
            font-weight: 800;
            background: linear-gradient(135deg, #fff, #ffd6a5);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .timer {
            display: flex;
            gap: 18px;
            margin: 28px 0;
        }

        .time-block {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(12px);
            padding: 12px 16px;
            border-radius: 20px;
            text-align: center;
            min-width: 80px;
        }

        .time-number {
            font-size: 32px;
            font-weight: 800;
        }

        .deal-price {
            font-size: 32px;
            font-weight: 800;
            color: #ffd966;
        }

        /* Testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 12px 8px 24px;
        }

        .testimonial {
            min-width: 340px;
            background: white;
            border-radius: 24px;
            padding: 28px;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
        }

        .testimonial:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
        }

        /* Footer */
        footer {
            background: #111217;
            color: #ddd;
            padding: 48px 0 32px;
            margin-top: 60px;
        }

        @media (max-width: 1100px) {
            .categories-grid { grid-template-columns: repeat(3,1fr); }
            .products-grid { grid-template-columns: repeat(3,1fr); }
        }
        @media (max-width: 780px) {
            .deal-flex { flex-direction: column; }
            .deal-img { width: 100%; height: 260px; }
            .products-grid { grid-template-columns: repeat(2,1fr); }
        }
        @media (max-width: 560px) {
            .products-grid { grid-template-columns: 1fr; }
            .categories-grid { grid-template-columns: repeat(2,1fr); }
            .hero h1 { font-size: 38px; }
        }
    </style>
</head>

<body>

<header>
    <div class="container header-inner">
        <div class="brand">Nexus<span>Studio</span></div>
        <div class="search">
            <i class="fas fa-search" style="color: #ff5e7c;"></i>
            <input type="text" id="searchInput" placeholder="Search for luxury goods ...">
        </div>
        <div style="display: flex; gap: 8px;">
            <button class="icon-btn"><i class="far fa-heart"></i></button>
            <div class="cart">
                <button class="icon-btn" id="cartIcon"><i class="fas fa-bag-shopping"></i></button>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
</header>

<main>
    <section class="hero">
        <div class="container">
            <h1>Summer '24 <br> Iconic Collection</h1>
            <p>Experience the new wave of minimalist luxury – where elegance meets boldness.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNowBtn">Shop Now →</button>
                <button class="btn btn-outline" id="exploreBtn">Explore Deals <i class="fas fa-sparkle"></i></button>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="section-header">
            <h2>Curated for you</h2>
            <p>Discover the most loved selections</p>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
    </div>

    <div class="container">
        <div class="section-header">
            <h2>Trending now</h2>
            <p>Bestsellers & editor's picks</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>
    </div>

    <div class="container">
        <div class="flash-sale">
            <div class="deal-flex">
                <img class="deal-img" src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=700" alt="Deal">
                <div class="deal-content">
                    <h3>FLASH DEAL</h3>
                    <p style="margin-top: 12px;">MacBook Air M2 — supercharged performance, ultra‑portable design.</p>
                    <div class="timer" id="timerBlock">
                        <div class="time-block"><div class="time-number" id="days">00</div><span>Days</span></div>
                        <div class="time-block"><div class="time-number" id="hours">00</div><span>Hrs</span></div>
                        <div class="time-block"><div class="time-number" id="minutes">00</div><span>Min</span></div>
                        <div class="time-block"><div class="time-number" id="seconds">00</div><span>Sec</span></div>
                    </div>
                    <div class="deal-price">$999 <span style="font-size: 18px; text-decoration:line-through; color:#aaa;">$1,299</span> <span style="background:#ff5e7c; padding:4px 12px; border-radius:40px; font-size:14px;">-23%</span></div>
                    <button class="btn btn-primary" style="margin-top: 24px; background: white; color:#111;" id="flashDealBtn">Grab offer →</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="section-header">
            <h2>Kind words</h2>
            <p>What our community says</p>
        </div>
        <div class="testimonials-scroll" id="testimonials"></div>
    </div>

    <div class="container">
        <div style="background: linear-gradient(125deg, #f7f2fc, #fff6ef); border-radius: 36px; padding: 48px 32px; text-align: center;">
            <h3 style="font-size: 28px;">Join the Inner Circle</h3>
            <p style="margin-bottom: 20px;">Subscribe and get 15% off your first order + early access</p>
            <form id="newsletterForm" style="display:flex; gap:12px; justify-content:center; flex-wrap:wrap;">
                <input type="email" id="newsEmail" placeholder="Your email address" style="padding: 14px 24px; border-radius: 60px; border: none; width: 300px; box-shadow: 0 2px 8px rgba(0,0,0,0.02);">
                <button class="btn btn-primary" type="submit">Subscribe →</button>
            </form>
            <div id="newsMsg" style="margin-top: 16px; font-size:14px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display:flex; justify-content: space-between; flex-wrap:wrap; gap:32px;">
        <div><span style="font-weight:800; font-size:20px;">NexusStudio</span><br>© 2025 — timeless elegance.</div>
        <div>Shop<br>New in<br>Sale</div>
        <div>Support<br>FAQs<br>Returns</div>
        <div>Instagram<br>Pinterest<br>Contact</div>
    </div>
</footer>

<script>
    // Elegant Data
    const categories = [
        { name: "Bags", icon: "fas fa-bag-shopping" }, { name: "Watches", icon: "fas fa-clock" },
        { name: "Shoes", icon: "fas fa-shoe-prints" }, { name: "Silk", icon: "fas fa-feather" },
        { name: "Tech", icon: "fas fa-laptop" }, { name: "Gold", icon: "fas fa-gem" }
    ];

    const products = [
        { id:1, name:"Leather Tote", category:"Bags", price:289, old:420, rating:5, img:"https://images.unsplash.com/photo-1590874103328-eac38a683ce7?w=400" },
        { id:2, name:"Chronograph Watch", category:"Watches", price:459, old:620, rating:5, img:"https://images.unsplash.com/photo-1524805444758-089113d48a6d?w=400" },
        { id:3, name:"Silk Slip Dress", category:"Silk", price:199, old:340, rating:4.5, img:"https://images.unsplash.com/photo-1581044777552-0371d3d6bdd3?w=400" },
        { id:4, name:"Pearl Hoops", category:"Gold", price:89, old:145, rating:5, img:"https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?w=400" },
        { id:5, name:"Noise Cancelling", category:"Tech", price:329, old:499, rating:4, img:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400" },
        { id:6, name:"Cashmere Scarf", category:"Accessories", price:129, old:210, rating:5, img:"https://images.unsplash.com/photo-1520903928023-02c6a2942f6b?w=400" },
        { id:7, name:"Trench Coat", category:"Fashion", price:389, old:590, rating:5, img:"https://images.unsplash.com/photo-1539533018447-63fcce2678e3?w=400" },
        { id:8, name:"Sneakers", category:"Shoes", price:149, old:249, rating:4, img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400" }
    ];

    const testimonials = [
        { text: "Incredible packaging and quality — feels like a luxury boutique.", name: "Sophia R." },
        { text: "The watch I ordered is stunning. Shipping was faster than expected.", name: "James L." },
        { text: "Absolutely love the silk collection. So soft and elegant.", name: "Maya Chen." }
    ];

    let cartCount = 0;
    function updateCartUI() { document.getElementById('cartCount').innerText = cartCount; }

    function renderCategories() {
        const grid = document.getElementById('categoriesGrid');
        grid.innerHTML = categories.map(c => `
            <div class="cat-card" onclick="filterByCategory('${c.name}')">
                <div class="cat-icon"><i class="${c.icon}"></i></div>
                <div style="font-weight: 700;">${c.name}</div>
            </div>
        `).join('');
    }

    function renderProducts(list) {
        const grid = document.getElementById('productsGrid');
        grid.innerHTML = list.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.name}">
                <div class="product-info">
                    <div class="product-category">${p.category}</div>
                    <div class="product-title">${p.name}</div>
                    <div class="price">$${p.price} <span class="old-price">$${p.old}</span></div>
                    <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 ? '½' : ''}</div>
                    <button class="add-cart-btn" data-id="${p.id}">Add to bag</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => { e.stopPropagation(); addToCart(parseInt(btn.dataset.id)); });
        });
    }

    function addToCart(id) { cartCount++; updateCartUI(); alert("✨ Added to your bag"); }

    function filterByCategory(cat) {
        const filtered = products.filter(p => p.category === cat);
        renderProducts(filtered);
        document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
    }

    function searchProducts() {
        const term = document.getElementById('searchInput').value.toLowerCase();
        if(!term) renderProducts(products);
        else renderProducts(products.filter(p => p.name.toLowerCase().includes(term) || p.category.toLowerCase().includes(term)));
    }

    function renderTestimonials() {
        const container = document.getElementById('testimonials');
        container.innerHTML = testimonials.map(t => `<div class="testimonial"><i class="fas fa-star" style="color:#ffb83b;"></i><i class="fas fa-star" style="color:#ffb83b;"></i><i class="fas fa-star" style="color:#ffb83b;"></i><i class="fas fa-star" style="color:#ffb83b;"></i><i class="fas fa-star" style="color:#ffb83b;"></i><p style="margin:16px 0">“${t.text}”</p><strong>${t.name}</strong></div>`).join('');
    }

    // timer
    function startTimer() {
        const target = new Date(); target.setDate(target.getDate() + 1);
        setInterval(() => {
            const diff = target - new Date();
            if(diff<=0) return;
            document.getElementById('days').innerText = Math.floor(diff/86400000);
            document.getElementById('hours').innerText = Math.floor((diff%86400000)/3600000);
            document.getElementById('minutes').innerText = Math.floor((diff%3600000)/60000);
            document.getElementById('seconds').innerText = Math.floor((diff%60000)/1000);
        }, 1000);
    }

    document.getElementById('searchInput').addEventListener('input', searchProducts);
    document.getElementById('shopNowBtn').onclick = () => document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
    document.getElementById('exploreBtn').onclick = () => document.querySelector('.flash-sale').scrollIntoView({ behavior: 'smooth' });
    document.getElementById('flashDealBtn').onclick = () => { cartCount++; updateCartUI(); alert("🔥 Flash deal added!"); };
    document.getElementById('newsletterForm').onsubmit = (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value;
        document.getElementById('newsMsg').innerHTML = email.includes('@') ? "🎉 You're in! Check your inbox" : "Please enter valid email";
        document.getElementById('newsMsg').style.color = "#ff5e7c";
    };

    renderCategories();
    renderProducts(products);
    renderTestimonials();
    updateCartUI();
    startTimer();
</script>
</body>
</html>
