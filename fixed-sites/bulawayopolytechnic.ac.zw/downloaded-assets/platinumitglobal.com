
<!DOCTYPE html>
<html lang="en">
<head>
    
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-R8DF2C2R48"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-R8DF2C2R48');
</script>
    
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Platinum IT Global - Empowering businesses with innovative website solutions, AI-driven apps, and comprehensive IT services.">
    <title>Platinum IT Global | Empowering Your Digital Future</title>
    <link rel="icon" href="/solutions-app/assets/img/favicon.png" type="image/png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        :root {
            --primary-color: #008afc;
            --primary-light: #e0ebff;
            --primary-dark: #011b65;
            --secondary-color: #008afc;
            --accent-color: #0066ff;
            --dark-color: #1f2937;
            --medium-color: #4b5563;
            --light-color: #f9fafb;
            --border-color: #e5e7eb;
            --white: #ffffff;
            --black: #111827;
            --success-color: #10b981;
            --shadow-sm: 0 1px 3px rgba(0, 0, 0, 0.08);
            --shadow-md: 0 4px 6px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 10px 25px rgba(0, 0, 0, 0.15);
            --shadow-xl: 0 20px 25px -5px rgba(0, 0, 0, 0.2), 0 10px 10px -5px rgba(0, 0, 0, 0.08);
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            --gradient-primary: linear-gradient(135deg, var(--primary-color) 0%, var(--primary-dark) 100%);
            --gradient-secondary: linear-gradient(135deg, var(--secondary-color) 0%, var(--accent-color) 100%);
        }

        /* Global Box-Sizing for consistent layout */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* General Body and Container Styles */
        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--light-color);
            color: var(--dark-color);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1.5rem;
        }

        section {
            padding: 5rem 0;
        }

        /* Section Titles */
        .section-title {
            text-align: center;
            margin-bottom: 3.5rem;
        }

        .section-title h2 {
            font-size: 32px;
            color: #008afc;
            margin-bottom: 1.2rem;
            position: relative;
            display: inline-block;
            font-weight: 700;
            letter-spacing: -0.01em;
        }

        .section-title h2::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 70px;
            height: 3px;
            background: var(--gradient-secondary);
            border-radius: 3px;
        }

        .section-title p.lead {
            font-size: 16px;
            color: var(--medium-color);
            max-width: 700px;
            margin: 0 auto;
            line-height: 1.6;
        }

        /* Utility Classes */
        .text-center { text-align: center; }
        .py-4 { padding-top: 2rem; padding-bottom: 2rem; }
        .my-8 { margin-top: 4rem; margin-bottom: 4rem; }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 0.8rem 2rem;
            border-radius: 12px;
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
            transition: var(--transition);
            white-space: nowrap;
            border: 2px solid transparent;
            gap: 0.6rem;
            font-size: 15px;
        }

        .btn-primary {
            background: #008afc;
            color: #fff;
            box-shadow: 0 6px 15px rgba(3, 80, 246, 0.3);
            position: relative;
            z-index: 1;
            overflow: hidden;
        }

        .btn-primary::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.2);
            transition: all 0.4s ease-in-out;
            z-index: -1;
        }

        .btn-primary:hover::before {
            left: 0;
        }

        .btn-primary:hover {
            box-shadow: 0 8px 20px rgba(3, 80, 246, 0.4);
            transform: translateY(-3px);
        }

        .btn-secondary {
            background-color: transparent;
            color: var(--primary-color);
            border-color: var(--primary-color);
            box-shadow: var(--shadow-sm);
        }

        .btn-secondary:hover {
            background-color: transparent;
            color: white;
            box-shadow: var(--shadow-md);
            transform: translateY(-2px);
        }

        .btn-portal {
            background-color: var(--primary-color);
            color: var(--white);
            padding: 0.6rem 1.5rem;
            border-radius: 12px;
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
            display: inline-flex;
            align-items: center;
            gap: 0.6rem;
            box-shadow: var(--shadow-sm);
            margin-left: 2.5rem;
            font-size: 1rem;
        }

        .btn-portal i {
            font-size: 1rem;
        }

        .btn-portal:hover {
            background-color: var(--primary-dark);
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        /* --- Header --- */
        .header {
            background-color: var(--white);
            padding: 1rem 0;
            position: sticky;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
            box-shadow: var(--shadow-sm);
            transition: background-color 0.3s ease, box-shadow 0.3s ease, padding 0.3s ease;
            backdrop-filter: blur(10px);
            background-color: rgba(255, 255, 255, 0.9);
        }

        .header.scrolled {
            padding: 0.75rem 0;
            background-color: rgba(255, 255, 255, 0.98);
            box-shadow: var(--shadow-md);
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            text-decoration: none;
            color: inherit;
        }

        .logo img {
            height: 45px;
            transition: height 0.3s ease;
            margin-right: 10px;
        }

        .header.scrolled .logo img {
            height: 35px;
        }

        /* Desktop Navigation */
        .desktop-nav {
            display: flex;
            align-items: center;
        }

        .desktop-nav .nav-links {
            display: flex;
            gap: 2rem;
            align-items: center;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .desktop-nav .nav-links a {
            color: var(--dark-color);
            text-decoration: none;
            font-weight: 500;
            transition: var(--transition);
            position: relative;
            padding: 0.5rem 0;
            font-size: 0.875rem;
        }

        .desktop-nav .nav-links a:hover {
            color: var(--primary-color);
        }

        /* Desktop Dropdown Menu Styles */
        .desktop-nav .has-dropdown {
            position: relative;
        }

        .desktop-nav .has-dropdown > a {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .desktop-nav .dropdown-arrow {
            font-size: 0.8em;
            transition: transform 0.3s ease;
        }

        .desktop-nav .has-dropdown:hover .dropdown-arrow {
            transform: rotate(180deg);
        }

        .desktop-nav .dropdown-menu {
            list-style: none;
            padding: 0.5rem 0;
            margin: 0;
            background-color: rgba(255, 255, 255, 0.97);
            backdrop-filter: blur(8px);
            box-shadow: 0;
            border-radius: 0.75rem;
            position: absolute;
            top: 100%;
            left: 50%;
            transform: translateX(-50%);
            min-width: 380px;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease, visibility 0.3s ease, transform 0.3s ease;
            z-index: 1001;
            border: 0px solid var(--border-color);
            display: flex;
            flex-direction: column;
            gap: 0.35rem;
        }

        .desktop-nav .has-dropdown:hover .dropdown-menu {
            opacity: 1;
            visibility: visible;
            transform: translateX(-50%) translateY(10px);
        }

        .desktop-nav .dropdown-menu li {
            padding: 0 0.5rem;
        }

        .desktop-nav .dropdown-menu li a {
            color: var(--dark-color);
            padding: 0.8rem 1rem;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            white-space: normal;
            font-weight: 500;
            font-size: 1rem;
            transition: background-color 0.2s ease, color 0.2s ease, border-left-color 0.2s ease;
            border-radius: 0.5rem;
            border-left: 4px solid transparent;
        }

        .desktop-nav .dropdown-menu li a:hover {
            background-color: rgba(0, 138, 252, 0.1);
            color: var(--primary-dark);
            text-decoration: none;
            border-left-color: var(--primary-color);
        }

        .desktop-nav .dropdown-menu li a::after {
            content: none;
        }

        .desktop-nav .dropdown-hint {
            font-size: 0.85rem;
            color: var(--medium-color);
            margin-top: 0.2rem;
            line-height: 1.3;
            opacity: 0.8;
        }

        /* Mobile Menu Toggle Button */
        .menu-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 2rem;
            color: var(--dark-color);
            cursor: pointer;
            transition: var(--transition);
        }

        /* Mobile Navigation Overlay */
        .mobile-nav-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            z-index: 999;
            transform: translateX(100%);
            transition: transform 0.4s ease-in-out;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            padding-top: 100px;
            overflow-y: auto;
        }

        .mobile-nav-overlay.active {
            transform: translateX(0);
        }

        .mobile-nav-overlay .nav-links {
            list-style: none;
            padding: 0;
            margin: 0;
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 1.5rem;
        }

        .mobile-nav-overlay .nav-links > li {
            width: 90%;
            text-align: center;
            border-bottom: 1px solid var(--border-color);
            padding-bottom: 0.8rem;
        }
        .mobile-nav-overlay .nav-links > li:last-child {
            border-bottom: none;
        }

        .mobile-nav-overlay .nav-links a {
            color: var(--dark-color);
            text-decoration: none;
            font-weight: 600;
            font-size: 1.1rem;
            display: block;
            padding: 0.5rem 0;
            transition: color 0.3s ease;
        }

        .mobile-nav-overlay .nav-links a:hover {
            color: var(--primary-color);
        }

        /* Mobile Dropdown Specifics within the overlay */
        .mobile-nav-overlay .has-dropdown > a {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 0.75rem;
            width: 100%;
        }

        .mobile-nav-overlay .has-dropdown .dropdown-arrow {
            font-size: 0.9em;
            transition: transform 0.3s ease;
        }

        .mobile-nav-overlay .has-dropdown.dropdown-active .dropdown-arrow {
            transform: rotate(180deg);
        }

        .mobile-nav-overlay .dropdown-menu {
            list-style: none;
            padding: 0;
            margin-top: 1rem;
            background-color: rgba(0, 0, 0, 0.03);
            border-radius: 0.5rem;
            overflow: hidden;
            max-height: 0;
            transition: max-height 0.4s ease-out;
            width: 100%;
        }

        .mobile-nav-overlay .has-dropdown.dropdown-active .dropdown-menu {
            max-height: 300px;
            padding: 1rem 0;
        }

        .mobile-nav-overlay .dropdown-menu li {
            border-bottom: 1px dashed rgba(0, 0, 0, 0.1);
        }
        .mobile-nav-overlay .dropdown-menu li:last-child {
            border-bottom: none;
        }

        .mobile-nav-overlay .dropdown-menu li a {
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            text-align: left;
            font-weight: 500;
            color: var(--medium-color);
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .mobile-nav-overlay .dropdown-menu li a:hover {
            background-color: rgba(0, 0, 0, 0.05);
            color: var(--primary-dark);
        }

        .mobile-nav-overlay .dropdown-hint {
            display: none;
        }

        .mobile-nav-overlay .btn-portal {
            margin-top: 2.5rem;
            width: 80%;
            padding: 0.9rem 1.5rem;
            font-size: 1.1rem;
        }

        /* Media Queries for Desktop vs Mobile Nav Display */
        @media (max-width: 768px) {
            .desktop-nav {
                display: none;
            }
            .menu-toggle {
                display: block;
            }
            .mobile-nav-overlay {
                display: flex;
            }
        }

        @media (min-width: 769px) {
            .desktop-nav {
                display: flex;
            }
            .menu-toggle {
                display: none;
            }
            .mobile-nav-overlay {
                display: none;
            }
        }

        /* Fade-in Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .fade-in {
            animation: fadeIn 1.4s ease-out forwards;
            animation-delay: 0.6s;
            opacity: 0;
        }

        /* Hero Section Styles */
        .hero-slider {
            position: relative;
            height: 600px;
            min-height: 500px;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .hero-slide {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            opacity: 0;
            transition: opacity 1.2s ease-in-out;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .hero-slide.active {
            opacity: 1;
        }
        
        .hero-slide video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .hero-slide img.hero-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .hero-slide::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(1, 27, 101, 0.7);
            z-index: 1;
        }
        
        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 900px;
            margin: 0 auto;
            color: var(--white);
            text-align: center;
            padding: 0 1.5rem;
            box-sizing: border-box;
        }
        
        .hero-content h1 {
            font-size: 42px;
            margin-bottom: 1.5rem;
            line-height: 1.2;
            font-weight: 700;
            color:#fff;
            background: transparent;
            letter-spacing: -0.02em;
        }
        
        .hero-content p {
            font-size: 16px;
            color: var(--white);
            margin-bottom: 2.5rem;
            max-width: 750px;
            margin-left: auto;
            margin-right: auto;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.7);
            line-height: 1.6;
        }

        .hero-buttons {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 2.5rem;
        }
        
        .slide-controls {
            position: absolute;
            bottom: 40px;
            left: 0;
            right: 0;
            text-align: center;
            z-index: 10;
        }
        
        .slide-dot {
            display: inline-block;
            width: 5px;
            height: 5px;
            border-radius: 50%;
            background: rgba(255,255,255,0.3);
            border: 0px solid rgba(255,255,255,0.6);
            margin: 0 8px;
            cursor: pointer;
            transition: var(--transition);
        }
        
        .slide-dot.active {
            background: var(--white);
            border-color: var(--secondary-color);
            transform: scale(1.1);
        }

        /* Responsive adjustments for hero section */
        @media (max-width: 1200px) {
            .hero-content h1 {
                font-size: 3rem;
            }
            .hero-content p {
                font-size: 1.2rem;
            }
        }

        @media (max-width: 992px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }
            .hero-content p {
                font-size: 1.1rem;
            }
            .hero-slider {
                min-height: 550px;
            }
        }

        @media (max-width: 768px) {
            .hero-slider {
                min-height: 450px;
            }
            .hero-content h1 {
                font-size: 2rem;
                margin-bottom: 1rem;
            }
            .hero-content p {
                font-size: 1rem;
                margin-bottom: 1.5rem;
            }
            .hero-buttons {
                flex-direction: column;
                gap: 0.8rem;
            }
            .btn {
                width: 90%;
                margin: 0 auto;
            }
            section {
                padding: 3rem 0;
            }
        }

        @media (max-width: 576px) {
            .hero-slider {
                min-height: 400px;
            }
            .hero-content h1 {
                font-size: 1.8rem;
            }
            .hero-content p {
                font-size: 0.95rem;
            }
            .btn {
                padding: 0.65rem 1.25rem;
                font-size: 0.9rem;
            }
        }
        /* End Hero Section Styles */

        /* Features Section */
        .features {
            background-color: var(--primary-light);
            padding: 5rem 0;
            text-align: center;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .feature-item {
            background-color: var(--white);
            padding: 2.5rem 2rem;
            border-radius: 1rem;
            box-shadow: var(--shadow-md);
            transition: var(--transition);
            text-align: center;
            border: 1px solid var(--border-color);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .feature-item::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 6px;
            background: var(--gradient-secondary);
            transform: translateY(-100%);
            transition: transform 0.3s ease-out;
            z-index: -1;
        }

        .feature-item:hover::before {
            transform: translateY(0);
        }

        .feature-item:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-xl);
            border-color: transparent;
        }

        .feature-item .icon {
            font-size: 3.5rem;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1.5rem;
            display: block;
        }

        .feature-item h3 {
            font-size: 1.2rem;
            color: var(--dark-color);
            margin-bottom: 1rem;
            font-weight: 600;
        }

        .feature-item p {
            color: var(--medium-color);
            font-size: 0.875rem;
            line-height: 1.6;
        }

        /* Updated About Section Styles */
        .about-us {
            background-color: var(--white);
            padding: 5rem 0;
            position: relative;
            overflow: hidden;
        }

        .about-columns-wrapper {
            display: flex;
            gap: 2rem;
            flex-wrap: wrap;
            margin-top: 3rem;
            justify-content: center;
            align-items: flex-start;
        }

        .about-column-card {
            flex: 1;
            min-width: 380px;
            max-width: 500px;
            padding: 2rem;
            background: var(--light-color);
            border-radius: 1rem;
            box-shadow: var(--shadow-md);
            transition: var(--transition);
            border: 1px solid var(--border-color);
        }

        .about-column-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-xl);
        }

        .about-column-card p {
            color: var(--medium-color);
            margin-bottom: 1.2rem;
            font-size: 0.875rem;
            line-height: 1.6;
        }

        .about-column-card .btn {
            margin-top: 1.2rem;
        }

        /* Responsive adjustments for the new column structure */
        @media (max-width: 992px) {
            .about-columns-wrapper {
                flex-direction: column;
                align-items: center;
                gap: 2rem;
            }
            
            .about-column-card {
                min-width: unset;
                width: 100%;
                max-width: 600px;
                padding: 1.8rem;
            }

            .about-column-card p {
                text-align: center;
            }

            .about-column-card .btn {
                margin-left: auto;
                margin-right: auto;
                display: flex;
            }
        }

        @media (max-width: 576px) {
            .about-column-card {
                padding: 1.5rem;
            }
            .about-column-card p {
                font-size: 0.95rem;
            }
        }

        /* Services Section */
        .services {
            background-color: var(--light-color);
            padding: 5rem 0;
            text-align: center;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .service-item {
            background-color: var(--white);
            padding: 2.5rem 2rem;
            border-radius: 1rem;
            box-shadow: var(--shadow-md);
            transition: var(--transition);
            border: 1px solid var(--border-color);
            text-align: left;
            position: relative;
            z-index: 1;
        }

        .service-item::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 6px;
            height: 0;
            background: var(--gradient-primary);
            transition: height 0.3s ease-out;
            z-index: -1;
        }

        .service-item:hover::before {
            height: 100%;
        }

        .service-item:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-xl);
            border-color: transparent;
        }

        .service-item .icon {
            font-size: 3rem;
            background: #022C69;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1.5rem;
            display: block;
        }

        .service-item h3 {
            font-size: 1.5rem;
            color: #022C69;
            margin-bottom: 1rem;
            font-weight: 600;
        }

        .service-item p {
            color: var(--medium-color);
            font-size: 0.875rem;
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .service-item a.learn-more {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            transition: var(--transition);
        }

        .service-item a.learn-more:hover {
            color: var(--primary-dark);
            gap: 0.8rem;
        }

        /* Call to Action (CTA) Section */
        .cta {
            background: #0783F7;
            color: var(--white);
            padding: 5rem 0;
            text-align: center;
            border-radius: 1rem;
            margin: 4rem auto;
            max-width: 1000px;
            box-shadow: var(--shadow-xl);
            position: relative;
            overflow: hidden;
            transform: scale(0.97);
            transition: transform 0.5s ease-out;
        }

        .cta:hover {
            transform: scale(1.01);
        }

        .cta::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle at center, rgba(255,255,255,0.2) 0%, transparent 70%);
            transform: rotate(45deg);
            pointer-events: none;
        }

        .cta h2 {
            font-size: 2.8rem;
            margin-bottom: 1.5rem;
            line-height: 1.2;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
            font-weight: 700;
            letter-spacing: -0.01em;
        }

        .cta p {
            font-size: 1.2rem;
            margin-bottom: 2.5rem;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            opacity: 0.95;
            line-height: 1.6;
        }

        .cta .btn-white {
            background-color: var(--white);
            color: var(--primary-color);
            border: 2px solid var(--white);
            box-shadow: var(--shadow-lg);
        }

        .cta .btn-white:hover {
            background-color: transparent;
            color: var(--white);
            border-color: var(--white);
            box-shadow: 0 10px 25px rgba(255, 255, 255, 0.3);
            transform: translateY(-3px);
        }

        /* Modern Footer Styles */
        .footer {
            background: linear-gradient(135deg, var(--primary-dark) 0%, var(--primary-color) 100%);
            color: rgba(255, 255, 255, 0.85);
            padding: 4rem 0 0;
            font-size: 0.875rem;
            position: relative;
            overflow: hidden;
        }

        .footer::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiPjxkZWZzPjxwYXR0ZXJuIGlkPSJwYXR0ZXJuIiB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHBhdHRlcm5Vbml0cz0idXNlclNwYWNlT25Vc2UiIHBhdHRlcm5UcmFuc2Zvcm09InJvdGF0ZSg0NSkiPjxyZWN0IHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgZmlsbD0icmdiYSgyNTUsMjU1LDI1NSwwLjAzKSIvPjwvcGF0dGVybj48L2RlZnM+PHJlY3QgZmlsbD0idXJsKCNwYXR0ZXJuKSIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIvPjwvc3ZnPg==');
            opacity: 0.4;
            z-index: 0;
        }

        .footer-content {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 3rem;
            margin-bottom: 3rem;
        }

        .footer-brand {
            max-width: 280px;
        }

        .footer-logo {
            display: block;
            text-align: center;
        }

        .footer-logo img {
            height: auto;
            max-width: 180px;
            margin-bottom: 1rem;
            transition: transform 0.3s ease;
        }

        .footer-logo:hover img {
            transform: scale(1.05);
        }

        .footer-tagline {
            color: rgba(255, 255, 255, 0.8);
            margin-bottom: 1.2rem;
            line-height: 1.6;
        }

        .footer-social {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .footer-social a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.1);
            color: var(--white);
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .footer-social a:hover {
            background-color: var(--white);
            color: var(--primary-color);
            transform: translateY(-3px);
        }

        .footer-links {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1.5rem;
        }

        .footer-heading {
            color: var(--white);
            font-size: 1.1rem;
            font-weight: 600;
            margin-bottom: 1.2rem;
            position: relative;
            padding-bottom: 0.6rem;
        }

        .footer-heading::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 35px;
            height: 2px;
            background-color: var(--white);
            opacity: 0.5;
        }

        .footer-nav {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-nav li {
            margin-bottom: 0.7rem;
        }

        .footer-nav a {
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-block;
            position: relative;
        }

        .footer-nav a::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 0;
            height: 1px;
            background-color: var(--white);
            transition: width 0.3s ease;
        }

        .footer-nav a:hover {
            color: var(--white);
            transform: translateX(5px);
        }

        .footer-nav a:hover::after {
            width: 20px;
        }

        .footer-contact {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-contact li {
            margin-bottom: 0.8rem;
            display: flex;
            align-items: flex-start;
            gap: 0.5rem;
            line-height: 1.5;
        }

        .footer-contact i {
            font-size: 0.9rem;
            color: var(--white);
            margin-top: 0.2rem;
        }

        .footer-contact a {
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-contact a:hover {
            color: var(--white);
            text-decoration: underline;
        }

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 1.5rem;
            padding-bottom: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
            z-index: 1;
        }

        .footer-legal {
            display: flex;
            gap: 1.2rem;
        }

        .footer-legal a {
            color: rgba(255, 255, 255, 0.6);
            text-decoration: none;
            font-size: 0.85rem;
            transition: color 0.3s ease;
        }

        .footer-legal a:hover {
            color: var(--white);
        }

        .footer-copyright {
            color: rgba(255, 255, 255, 0.6);
            font-size: 0.85rem;
        }

        /* Responsive Footer */
        @media (max-width: 992px) {
            .footer-content {
                grid-template-columns: 1fr;
                gap: 2.5rem;
            }
            
            .footer-brand {
                max-width: 100%;
                text-align: center;
            }
            
            .footer-social {
                justify-content: center;
            }
            
            .footer-links {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 576px) {
            .footer-links {
                grid-template-columns: 1fr;
            }
        }

        /* Stat Counter Section */
        .stats {
            background-color: var(--white);
            padding: 5rem 0;
            text-align: center;
        }

        .stats-grid {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 2.5rem;
            margin-top: 3rem;
        }

        .stat-item {
            text-align: center;
            flex: 1;
            min-width: 200px;
            max-width: 250px;
            padding: 1.8rem;
            border-radius: 1rem;
            background-color: var(--primary-light);
            box-shadow: var(--shadow-lg);
            transition: var(--transition);
            border: 1px solid var(--primary-light);
        }

        .stat-item:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-xl);
            background-color: var(--primary-color);
            color: var(--white);
        }

        .stat-item:hover .stat-number {
            color: var(--white);
        }

        .stat-item:hover p {
            color: rgba(255, 255, 255, 0.9);
        }

        .stat-number {
            font-size: 3.5rem;
            font-weight: 700;
            color: var(--primary-color);
            margin-bottom: 0.6rem;
            display: block;
            transition: color 0.3s ease;
        }

        .stat-item p {
            font-size: 1.1rem;
            font-weight: 600;
            color: var(--dark-color);
            transition: color 0.3s ease;
        }

        /* Modal Styles */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1001;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease, visibility 0.3s ease;
        }

        .modal-overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .modal-content {
            background-color: var(--white);
            padding: 2.2rem;
            border-radius: 1rem;
            max-width: 550px;
            width: 90%;
            box-shadow: var(--shadow-xl);
            position: relative;
            transform: translateY(-20px);
            opacity: 0;
            transition: transform 0.3s ease, opacity 0.3s ease;
            max-height: 90vh;
            overflow-y: auto;
        }

        .modal-overlay.active .modal-content {
            transform: translateY(0);
            opacity: 1;
        }

        .modal-close-btn {
            position: absolute;
            top: 1rem;
            right: 1rem;
            background: none;
            border: none;
            font-size: 1.6rem;
            color: var(--medium-color);
            cursor: pointer;
            transition: var(--transition);
            padding: 0.5rem;
        }

        .modal-close-btn:hover {
            color: var(--dark-color);
            transform: rotate(90deg);
        }

        .modal-title {
            font-size: 1.8rem;
            color: var(--primary-color);
            margin-bottom: 1.2rem;
            font-weight: 700;
            line-height: 1.2;
        }

        .modal-description {
            font-size: 1rem;
            color: var(--dark-color);
            line-height: 1.6;
            margin-bottom: 1.8rem;
        }

        .modal-cta-button {
            background: #008afc;
            color: #fff;
            box-shadow: 0 6px 15px rgba(3, 80, 246, 0.3);
            position: relative;
            z-index: 1;
            overflow: hidden;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 0.8rem 2rem;
            border-radius: 12px;
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
            transition: var(--transition);
            white-space: nowrap;
            border: 2px solid transparent;
            gap: 0.6rem;
            font-size: 15px;
        }

        .modal-cta-button::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.2);
            transition: all 0.4s ease-in-out;
            z-index: -1;
        }

        .modal-cta-button:hover::before {
            left: 0;
        }

        .modal-cta-button:hover {
            box-shadow: 0 8px 20px rgba(3, 80, 246, 0.4);
            transform: translateY(-3px);
        }
        
    </style>
</head>
<body>
    <header class="header">
        <div class="container header-container">
            <a href="/" class="logo">
                <img src="/solutions-app/assets/img/logo.png" alt="Platinum IT Global Logo">
            </a>
            <!-- Desktop Navigation -->
            <nav class="desktop-nav">
                <ul class="nav-links">
                    <li><a href="/solutions-app/index.php">Home</a></li>
                    <li class="has-dropdown">
                        <a href="/solutions-app/#services">Solutions <i class="fas fa-chevron-down dropdown-arrow"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="/solutions-app/#website-design">Website Design & Development<span class="dropdown-hint">Crafting engaging web experiences.</span></a></li>
                            <li><a href="/solutions-app/#app-development">Custom App Development<span class="dropdown-hint">Building scalable, future-ready applications.</span></a></li>
                            <li><a href="/solutions-app/#ai-solutions">AI Solutions<span class="dropdown-hint">Harnessing intelligent automation and analytics.</span></a></li>
                            <li><a href="/solutions-app/#cloud-solutions">Cloud Solutions<span class="dropdown-hint">Implementing secure and flexible cloud infrastructures.</span></a></li>
                           <li><a href="/solutions-app/#tech-support">Tech Support & Repairs<span class="dropdown-hint">Expert help and hardware fixes when you need them.</span></a></li>

                            <li><a href="/solutions-app/#it-consulting">IT Consulting & Strategy<span class="dropdown-hint">Strategic guidance for technological excellence.</span></a></li>
                        </ul>
                    </li>
                    <li><a href="/solutions-app/#about">About Us</a></li>
                    <li><a href="portfolio.php">Portfolio</a></li>
                    <li><a href="/solutions-app/contact.php">Contact Us</a></li>
                    <li><a href="/solutions-app/help.php">FAQs</a></li>
                </ul>
                <a href="https://platinumitglobal.com/hosting/index.php?rp=/login" class="btn btn-portal">
                    <i class="fas fa-arrow-right-to-bracket"></i> Client Portal
                </a>
            </nav>
            <button class="menu-toggle" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
        </div>
    </header>

    <!-- Mobile Navigation Overlay -->
    <div class="mobile-nav-overlay" id="mobile-nav-overlay">
        <ul class="nav-links">
            <li><a href="/solutions-app/index.php">Home</a></li>
            <li class="has-dropdown">
                <a href="/solutions-app/#sevices">Solutions <i class="fas fa-chevron-down dropdown-arrow"></i></a>
                <ul class="dropdown-menu">
                    <li><a href="/solutions-app/#website-design">Website Design & Development</a></li>
            <li><a href="/solutions-app/#app-development">Custom App Development</a></li>
            <li><a href="/solutions-app/#ai-solutions">AI Solutions</a></li>
            <li><a href="/solutions-app/#cloud-solutions">Cloud Solutions</a></li>
            <li><a href="/solutions-app/#tech-support">Tech Support & Repairs</a></li>
            <li><a href="/solutions-app/#it-consulting">IT Consulting & Strategy</a></li>
                </ul>
            </li>
            <li><a href="/solutions-app/#about">About Us</a></li>
            <li><a href="portfolio.php">Portfolio</a></li>
            <li><a href="/solutions-app/contact.php">Contact Us</a></li>
            <li><a href="/solutions-app/help.php">FAQs</a></li>
        </ul>
        <a href="https://platinumitglobal.com/hosting/index.php?rp=/login" class="btn btn-portal">
            <i class="fas fa-arrow-right-to-bracket"></i> Client Portal
        </a>
    </div>

    <section class="hero-slider">
                                <div class="hero-slide active" data-index="0">
                                    <video autoplay muted loop playsinline>
                        <source src="https://platinumitglobal.com/solutions-app/assets/vid/platinum-vid.mp4" type="video/mp4">
                    </video>
                                
                <div class="container hero-content fade-in">
                    <h1>Build Smarter, Scale Faster</h1>
                    <p>Scalable Web Platforms. Custom Apps. Tech Support.
At Platinum IT Global, we deliver future-ready websites, AI-powered systems, and enterprise-grade digital solutions tailored for your growth. Experience innovation that works.</p>
                    
                    <div class="hero-buttons">
            <a href="https://platinumitglobal.com/solutions-app/#services" class="btn btn-primary">
            Get Started <i class="fas fa-arrow-down"></i>
        </a>
    
            <a href="https://platinumitglobal.com/solutions-app/contact.php" class="btn btn-secondary">
            Talk to an Expert <i class="fas fa-external-link-alt"></i>
        </a>
    </div>

                    </div>
                </div>
            </div>
                        <div class="hero-slide " data-index="1">
                                    <video autoplay muted loop playsinline>
                        <source src="https://platinumitglobal.com/solutions-app/assets/vid/platinum-vid.mp4" type="video/mp4">
                    </video>
                                
                <div class="container hero-content fade-in">
                    <h1>Custom Solutions for Your Business</h1>
                    <p>Turn your ideas into powerful, user-friendly digital platforms. We build tailored applications designed to solve real-world challenges and accelerate business growth.</p>
                    
                    <div class="hero-buttons">
            <a href="https://platinumitglobal.com/solutions-app/#services" class="btn btn-primary">
            Let&#039;s Build Your Project <i class="fas fa-arrow-down"></i>
        </a>
    
            <a href="https://platinumitglobal.com/solutions-app/contact.php" class="btn btn-secondary">
            Talk to an Expert <i class="fas fa-external-link-alt"></i>
        </a>
    </div>

                    </div>
                </div>
            </div>
                        
            <div class="slide-controls">
                                    <span class="slide-dot active" data-index="0"></span>
                                    <span class="slide-dot " data-index="1"></span>
                            </div>
            </section>

    <section id="about" class="about-us">
        <div class="container">
            <div class="section-title">
                <h2>About PlatinumITGlobal</h2>
                <p class="lead">Platinum IT Global is a division of Platinum IT Solutions<br> that specialises in Digital technology innovations and solutions</p>
            </div>

            <div class="about-columns-wrapper">
                <div class="about-column-card">
                    <p>We are passionate technology innovators; driven by the markets we serve, we use IT solutions to amplify, uniquely position & strengthen brands across markets.<br>Our core offers include websites, Custom Applications, and tailored IT services. Our team of experts empowers businesses with scalable, future-ready technology to drive growth and digital transformation.</p>
                    <p>From concept to deployment, we combine technical excellence with strategic insight to help clients navigate evolving digital landscape.</p>
                </div>
                <div class="about-column-card">
                    <p>Partner with us to turn challenges into opportunities.<br>Our team of expert Developers, Designers, and IT professionals are committed to delivering excellence, driving digital transformation, and ensuring our clients stay ahead in the rapidly evolving digital landscape. From concept to deployment and ongoing support, we are your trusted partner in navigating the complexities of modern technology.</p>
                    <div class="text-center" style="margin-top: 1.8rem;">
                        <a href="contact.php" class="btn btn-primary">Get in Touch <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="services" class="services">
    <div class="container">
        <div class="section-title">
            <h2>Our Core Services</h2>
            <p class="lead">Providing scalable, future-ready IT solutions to accelerate your business growth.</p>
        </div>
        <div class="services-grid">
            <div id="website-design" class="service-item">
                <i class="fas fa-globe icon"></i>
                <h3>Website Design & Development</h3>
                <p>Crafting responsive, user-friendly, and high-performing websites that captivate your audience and drive conversions.</p>
                <a href="#" class="learn-more" 
                   data-modal-title="Website Design & Development" 
                   data-modal-description="We specialize in creating visually appealing, highly functional, and responsive websites tailored to your business needs. Our services include custom web design, e-commerce solutions, content management systems (CMS), and website maintenance to ensure your online presence is always at its best. We focus on user experience (UX) and search engine optimization (SEO) to drive traffic and conversions.">
                   Learn More <i class="fas fa-arrow-right"></i>
                </a>
            </div>
            
            <div id="app-development" class="service-item">
                <i class="fas fa-mobile-alt icon"></i>
                <h3>Custom App Development</h3>
                <p>Building scalable, future-ready and reliable Custom Applications that engage your users and support your business growth.</p>
                <a href="#" class="learn-more"
                   data-modal-title="Custom App Development"
                   data-modal-description="Our team develops robust and intuitive custom applications for various platforms, including mobile (iOS, Android) and desktop. Whether you need an internal tool to streamline operations, a customer-facing app, or a complex enterprise solution, we leverage the latest technologies to build secure, scalable, and high-performance applications that meet your specific requirements.">
                   Learn More <i class="fas fa-arrow-right"></i>
                </a>
            </div>
            
            <div id="ai-solutions" class="service-item">
                <i class="fas fa-brain icon"></i>
                <h3>AI Solutions</h3>
                <p>Harness the power of Artificial Intelligence with our custom AI models, predictive analytics, and intelligent automation for enhanced decision-making.</p>
                <a href="#" class="learn-more"
                   data-modal-title="AI Solutions"
                   data-modal-description="Unlock new possibilities with Artificial Intelligence. We design and implement AI solutions, including predictive analytics, natural language processing (NLP), computer vision, and automation tools. These solutions help businesses gain deeper insights from data, automate repetitive tasks, and create intelligent systems for improved efficiency and competitive advantage.">
                   Learn More <i class="fas fa-arrow-right"></i>
                </a>
            </div>
            
            <div id="cloud-solutions" class="service-item">
                <i class="fas fa-cloud icon"></i>
                <h3>Cloud Solutions</h3>
                <p>Implementing scalable cloud infrastructure, migration services, and streamlined DevOps practices to optimize your operations.</p>
                <a href="#" class="learn-more"
                   data-modal-title="Cloud Solutions"
                   data-modal-description="Migrate, manage, and optimize your infrastructure in the cloud with our expert services. We offer cloud strategy, migration to platforms like AWS, Azure, and Google Cloud, cloud-native development, and ongoing cloud management. Our DevOps practices ensure continuous integration and delivery, automating your software development lifecycle for faster, more reliable deployments.">
                   Learn More <i class="fas fa-arrow-right"></i>
                </a>
            </div>
            
            <div id="tech-support" class="service-item">
                <i class="fas fa-tools icon"></i>
                <h3>Tech Support & Repairs</h3>
                <p>Reliable technical support and hardware repairs to keep your systems running smoothly and efficiently.</p>
                <a href="#" class="learn-more"
                   data-modal-title="Tech Support & Repairs"
                   data-modal-description="Ensure uninterrupted business operations with our expert tech support and repair services. We offer on-site and remote troubleshooting, device diagnostics, hardware replacements, software installation, and maintenance services. Whether it's a broken laptop, network issues, or general IT help, our team is here to keep your tech working flawlessly.">
                   Learn More <i class="fas fa-arrow-right"></i>
                </a>
            </div>
            
            <div id="it-consulting" class="service-item">
                <i class="fas fa-lightbulb icon"></i>
                <h3>IT Consulting & Strategy</h3>
                <p>Expert guidance and strategic planning to help you leverage technology effectively, solve complex challenges, and achieve business goals.</p>
                <a href="#" class="learn-more"
                   data-modal-title="IT Consulting & Strategy"
                   data-modal-description="Our IT consulting services provide strategic guidance to help your business make informed technology decisions. We assist with IT infrastructure planning, digital transformation roadmaps, technology stack selection, and process optimization. Our goal is to align your technology strategy with your business objectives, ensuring maximum efficiency and return on investment.">
                   Learn More <i class="fas fa-arrow-right"></i>
                </a>
            </div>
        </div>
    </div>
</section>

    <section id="stats" class="stats">
        <div class="container">
            <div class="section-title">
                <h2>Our Stats in Numbers</h2>
                <p class="lead">Years of dedication, innovation, and client success.</p>
            </div>
            <div class="stats-grid">
                <div class="stat-item">
                    <span class="stat-number" data-count="900" data-suffix="+">0</span>
                    <p>Clients Served</p>
                </div>
                <div class="stat-item">
                    <span class="stat-number" data-count="750" data-suffix="+">0</span>
                    <p>Projects Completed</p>
                </div>
                <div class="stat-item">
                    <span class="stat-number" data-count="15"data-suffix="+">0</span>
                    <p>Years in Business</p>
                </div>
                <div class="stat-item">
                    <span class="stat-number" data-count="94" data-suffix="%">0</span>
                    <p>Client Retention</p>
                </div>
            </div>
        </div>
    </section>


    <section class="cta">
        <div class="container">
            <h2>Ready to Transform Your Business?</h2>
            <p>Connect with Platinum IT Global today and let's discuss our IT solutions tailored to empower your digital future.</p>
            <a href="contact.php" class="btn btn-white">Request a Free Consultation <i class="fas fa-arrow-right"></i></a>
        </div>
    </section>

 <footer class="footer">
        <div class="container footer-content">
            <div class="footer-brand">
                <a href="#" class="footer-logo">
                    <img src="/solutions-app/assets/img/logo-white.png" alt="Platinum IT Global Logo White">
                </a>
                <p class="footer-tagline">Your trusted partner in digital transformation. We deliver innovative IT solutions that drive growth and efficiency.</p>
                <div class="footer-social">
                    <a href="https://www.facebook.com/PlatinumITSolutions" target="_blank" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://x.com/platinumitweb" target="_blank" aria-label="X (Twitter)"><i class="fab fa-x-twitter"></i></a>
                    <a href="https://www.linkedin.com/company/platinum-it-global" target="_blank" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                    <a href="https://www.instagram.com/platinumitglobal" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="footer-links">
                <div>
                    <h4 class="footer-heading">Quick Links</h4>
                    <ul class="footer-nav">
                        <li><a href="/solutions-app/index.php">Home</a></li>
                        <li><a href="/solutions-app/#about">About Us</a></li>
                        <li><a href="/solutions-app/#services">Our Solutions</a></li>
                        <li><a href="/solutions-app/contact.php">Contact Us</a></li>
                        <li><a href="/solutions-app/help.php">FAQs</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="footer-heading">Services</h4>
                    <ul class="footer-nav">
                        <li><a href="/solutions-app/#cloud-solutions">Cloud Solutions</a></li>
                        <li><a href="/solutions-app/#tech-support">Tech Support & Repairs</a></li>

                        <li><a href="/solutions-app/#it-consulting">IT Consulting</a></li>
                        <li><a href="/solutions-app/#app-development">Data Analytics</a></li>
                        <li><a href="/solutions-app/#ai-solutions">AI Solutions</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="footer-heading">Support</h4>
                    <ul class="footer-nav">
                        <li><a href="/solutions-app/help.php">Knowledge Base</a></li>
                        <li><a href="#">Submit a Ticket</a></li>
                        <li><a href="#">Service Status</a></li>
                        <li><a href="#">Remote Support</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="footer-heading">Legal</h4>
                    <ul class="footer-nav">
                        <li><a href="/solutions-app/web-digital-policy.php">Web & Digital Services Policy</a></li>
                        <li><a href="/solutions-app/tech-services-policy.php">Tech Services Policy</a></li>
                        <li><a href="/solutions-app/privacy-policy.php">Privacy Policy</a></li>
                        <li><a href="/solutions-app/privacy-policy.php">Cookie Policy</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <p>&copy; 2016-2026 <span>PlatinumITGlobal - A division of Platinum IT Solutions</span>. All Rights Reserved.</p>
            </div>
        </div>
    </footer>


    <div id="serviceModal" class="modal-overlay">
        <div class="modal-content">
            <button class="modal-close-btn">&times;</button>
            <h3 class="modal-title"></h3>
            <p class="modal-description"></p>
            <a href="contact.php" class="btn modal-cta-button">
                Get a Quote <i class="fas fa-envelope"></i>
            </a>
        </div>
    </div>

    <script>
        // Header Scroll Effect
        window.addEventListener('scroll', function() {
            const header = document.querySelector('.header');
            if (window.scrollY > 50) {
                header.classList.add('scrolled');
            } else {
                header.classList.remove('scrolled');
            }
        });

        // Mobile Menu Toggle
        document.addEventListener('DOMContentLoaded', function() {
            const menuToggle = document.querySelector('.menu-toggle');
            const mobileNavOverlay = document.getElementById('mobile-nav-overlay');
            const mobileNavLinks = mobileNavOverlay.querySelectorAll('.nav-links a');
            const mobileDropdownToggles = mobileNavOverlay.querySelectorAll('.has-dropdown > a');

            // Function to close the mobile menu and reset dropdowns
            function closeMobileMenu() {
                mobileNavOverlay.classList.remove('active');
                menuToggle.querySelector('i').classList.remove('fa-times');
                menuToggle.querySelector('i').classList.add('fa-bars');
                document.body.style.overflow = '';
                // Close all dropdowns within the mobile menu
                mobileNavOverlay.querySelectorAll('.has-dropdown.dropdown-active').forEach(dropdown => {
                    dropdown.classList.remove('dropdown-active');
                });
            }

            // Toggle the mobile menu when the menu toggle button is clicked
            menuToggle.addEventListener('click', function(event) {
                event.stopPropagation();
                mobileNavOverlay.classList.toggle('active');
                menuToggle.querySelector('i').classList.toggle('fa-bars');
                menuToggle.querySelector('i').classList.toggle('fa-times');
                document.body.style.overflow = mobileNavOverlay.classList.contains('active') ? 'hidden' : '';
            });

            // Close the mobile menu when a non-dropdown link within the mobile menu is clicked
            mobileNavLinks.forEach(link => {
                link.addEventListener('click', function(event) {
                    // Only close if it's a direct link (not a dropdown toggle)
                    if (!this.closest('.has-dropdown')) {
                        closeMobileMenu();
                    }
                });
            });

            // Toggle dropdowns for mobile menu
            mobileDropdownToggles.forEach(toggle => {
                toggle.addEventListener('click', function(e) {
                    e.preventDefault();
                    const parentLi = this.closest('.has-dropdown');
                    parentLi.classList.toggle('dropdown-active');
                });
            });

            // Close the mobile menu when clicking outside of it
            document.addEventListener('click', function(event) {
                // Check if the click is outside the mobile navigation overlay and outside the menu toggle button
                if (!mobileNavOverlay.contains(event.target) && !menuToggle.contains(event.target)) {
                    if (mobileNavOverlay.classList.contains('active')) {
                        closeMobileMenu();
                    }
                }
            });

            // Hero Slider Logic
            const slides = document.querySelectorAll('.hero-slide');
            const dots = document.querySelectorAll('.slide-dot');
            let currentIndex = 0;
            let slideInterval;
            
            function showSlide(index) {
                slides.forEach(slide => slide.classList.remove('active'));
                dots.forEach(dot => dot.classList.remove('active'));
                
                slides[index].classList.add('active');
                dots[index].classList.add('active');

                // Re-apply fade-in animation for hero content on slide change
                const currentContent = slides[index].querySelector('.hero-content');
                if (currentContent) {
                    // Remove and re-add class to restart animation
                    currentContent.classList.remove('fade-in');
                    void currentContent.offsetWidth; // Trigger reflow
                    currentContent.classList.add('fade-in');
                }

                currentIndex = index;
            }
            
            function nextSlide() {
                let newIndex = (currentIndex + 1) % slides.length;
                showSlide(newIndex);
            }
            
            // Only auto-rotate if there's more than one slide
            if (slides.length > 1) {
                function startSlider() {
                    // Clear any existing interval before starting a new one
                    clearInterval(slideInterval);
                    slideInterval = setInterval(nextSlide, 5000); // Change slide every 5 seconds
                }
                
                // Pause on hover over the entire slider area
                const slider = document.querySelector('.hero-slider');
                if (slider) {
                    slider.addEventListener('mouseenter', () => clearInterval(slideInterval));
                    slider.addEventListener('mouseleave', startSlider);
                }
                
                // Dot navigation click functionality
                dots.forEach(dot => {
                    dot.addEventListener('click', () => {
                        clearInterval(slideInterval); // Stop auto-play on manual navigation
                        showSlide(parseInt(dot.dataset.index));
                        startSlider(); // Restart auto-play after manual navigation
                    });
                });
                
                startSlider(); // Start the slider when the page loads
            } else if (slides.length === 1) {
                // Ensure the single slide is active and content has fade-in if only one slide
                if (slides[0]) {
                    slides[0].classList.add('active');
                    const singleContent = slides[0].querySelector('.hero-content');
                    if (singleContent) {
                        singleContent.classList.add('fade-in');
                    }
                }
            }
            // If no slides (fallback), the HTML already handles 'active' for the fallback slide
        });

        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();

                const targetId = this.getAttribute('href');
                const targetElement = document.querySelector(targetId);
                
                if (targetElement) {
                    const headerHeight = document.querySelector('.header').offsetHeight;
                    window.scrollTo({
                        top: targetElement.offsetTop - headerHeight,
                        behavior: 'smooth'
                    });
                    // Close the mobile menu if open after clicking a link
                    const mobileNavOverlay = document.getElementById('mobile-nav-overlay');
                    if (mobileNavOverlay.classList.contains('active')) {
                        mobileNavOverlay.classList.remove('active');
                        menuToggle.querySelector('i').classList.remove('fa-times');
                        menuToggle.querySelector('i').classList.add('fa-bars');
                        document.body.style.overflow = '';
                    }
                }
            });
        });

        // Service Modal Functionality
        const serviceModal = document.getElementById('serviceModal');
        const modalTitle = serviceModal.querySelector('.modal-title');
        const modalDescription = serviceModal.querySelector('.modal-description');
        const modalCloseBtn = serviceModal.querySelector('.modal-close-btn');
        const modalCtaButton = serviceModal.querySelector('.modal-cta-button');
        const learnMoreButtons = document.querySelectorAll('.service-item .learn-more');

        function openModal(title, description) {
            modalTitle.textContent = title;
            modalDescription.textContent = description;
            serviceModal.classList.add('active');
            document.body.style.overflow = 'hidden';
        }

        function closeModal() {
            serviceModal.classList.remove('active');
            document.body.style.overflow = '';
        }

        learnMoreButtons.forEach(button => {
            button.addEventListener('click', (e) => {
                e.preventDefault();
                const title = button.dataset.modalTitle;
                const description = button.dataset.modalDescription;
                openModal(title, description);
            });
        });

        modalCloseBtn.addEventListener('click', closeModal);

        // Close modal when clicking outside of content (on the overlay)
        serviceModal.addEventListener('click', (e) => {
            if (e.target === serviceModal) {
                closeModal();
            }
        });

        // Handle CTA button inside modal
        modalCtaButton.addEventListener('click', (e) => {
            closeModal();
        });

        // Stat counter animation (Intersection Observer)
        const statsSection = document.querySelector('.stats');
        const statNumbers = document.querySelectorAll('.stat-number');
        let statsAnimated = false;

        const animateNumbers = () => {
            statNumbers.forEach(stat => {
                const target = +stat.dataset.count;
                const suffix = stat.dataset.suffix || '';
                let current = 0;
                const duration = 2000;
                let startTime = null;

                const animate = (currentTime) => {
                    if (!startTime) startTime = currentTime;
                    const progress = (currentTime - startTime) / duration;
                    const value = Math.min(progress, 1) * target;
                    stat.textContent = Math.floor(value) + suffix;

                    if (progress < 1) {
                        requestAnimationFrame(animate);
                    } else {
                        stat.textContent = target + suffix;
                    }
                };
                requestAnimationFrame(animate);
            });
        };

        if (statsSection) {
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting && !statsAnimated) {
                        animateNumbers();
                        statsAnimated = true;
                        observer.unobserve(statsSection);
                    }
                });
            }, { threshold: 0.5 });
            observer.observe(statsSection);
        }
    </script>
    
    <!-- AI Support Agent Chat Widget -->
    
<!-- Load Font Awesome for Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- Define Custom CSS Variables and Styles -->
<style>
:root {
    --primary-color: #008AFC;
    --primary-dark: #005699;
    --primary-light: #E6F3FF;
    --accent-color: #FFC300;
    --dark-color: #1F2937;
    --medium-color: #6B7280;
    --light-color: #F9FAFB;
    --border-color: #E5E7EB;
    --gradient-primary: linear-gradient(135deg, #005699, #008AFC);
    --shadow-md: 0 4px 6px -1px rgba(0,0,0,0.1), 0 2px 4px -1px rgba(0,0,0,0.06);
    --shadow-lg: 0 10px 15px -3px rgba(0,0,0,0.1), 0 4px 6px -2px rgba(0,0,0,0.05);
    --shadow-xl: 0 20px 25px -5px rgba(0,0,0,0.1), 0 10px 10px -5px rgba(0,0,0,0.04);
    --transition: all 0.3s cubic-bezier(0.4,0,0.2,1);
    --whatsapp-color: #25D366;
}

.chat-widget-container {
    position: fixed;
    bottom: 30px;
    right: 30px;
    z-index: 10000;
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    transition: var(--transition);
    font-family: 'Inter', sans-serif;
    font-size: 12px;
}

.chat-widget-container.minimized {
    bottom: 20px;
    right: 20px;
}

.chat-button {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    background: var(--gradient-primary);
    color: white;
    border: none;
    box-shadow: var(--shadow-lg);
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: var(--transition);
    position: relative;
    overflow: hidden;
}

.chat-button::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: rgba(255,255,255,0.2);
    transition: all 0.4s ease-in-out;
}

.chat-button:hover::before {
    left: 0;
}

.chat-button:hover {
    transform: scale(1.1);
    box-shadow: var(--shadow-xl);
}

.chat-button i {
    font-size: 32px;
    position: relative;
    z-index: 1;
}

.chat-badge {
    position: absolute;
    top: -8px;
    right: -8px;
    background: var(--accent-color);
    color: white;
    font-size: 11px;
    font-weight: 600;
    padding: 4px 10px;
    border-radius: 12px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.2);
    min-width: 35px;
    text-align: center;
    transition: opacity 0.3s;
}

.chat-window {
    width: 380px;
    max-height: 600px;
    background: white;
    border-radius: 20px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    display: none;
    flex-direction: column;
    overflow: hidden;
    margin-bottom: 15px;
    position: relative;
    animation: slideIn 0.4s cubic-bezier(0.4,0,0.2,1);
}

@keyframes slideIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

.chat-window.active {
    display: flex;
}

.chat-header {
    background: var(--gradient-primary);
    color: white;
    padding: 18px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: relative;
}

.chat-header-info {
    display: flex;
    align-items: center;
    gap: 12px;
}

.chat-avatar {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: rgba(255,255,255,0.2);
    display: flex;
    align-items: center;
    justify-content: center;
}

.chat-avatar i {
    font-size: 20px;
}

.chat-header-text h3 {
    font-size: 14px;
    font-weight: 600;
    margin-bottom: 2px;
}

.chat-status {
    font-size: 10px;
    opacity: 0.8;
    display: flex;
    align-items: center;
    gap: 5px;
}

.status-dot {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: #10b981;
    animation: pulse 2s infinite;
}

@keyframes pulse {
    0% { opacity: 1; }
    50% { opacity: 0.5; }
    100% { opacity: 1; }
}

.chat-actions {
    display: flex;
    gap: 10px;
    align-items: center;
}

.chat-action-btn {
    background: rgba(255,255,255,0.2);
    color: white;
    border: none;
    width: 32px;
    height: 32px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: var(--transition);
}

.chat-action-btn:hover {
    background: rgba(255,255,255,0.3);
    transform: scale(1.1);
}

.chat-messages {
    flex: 1;
    overflow-y: auto;
    padding: 20px;
    background: var(--light-color);
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.message {
    display: flex;
    align-items: flex-start;
    gap: 10px;
    animation: fadeInUp 0.3s ease-out;
}

@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}

.message.user {
    flex-direction: row-reverse;
}

.message-avatar {
    width: 32px;
    height: 32px;
    border-radius: 50%;
    background: var(--primary-color);
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 12px;
    flex-shrink: 0;
}

.message.bot .message-avatar {
    background: var(--primary-dark);
}

.message-content {
    max-width: 75%;
    padding: 12px 16px;
    border-radius: 18px;
    line-height: 1.4;
    position: relative;
    word-wrap: break-word;
    font-size: 12px;
}

.message.bot .message-content {
    background: white;
    color: var(--dark-color);
    border: 1px solid var(--border-color);
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
}

.message.user .message-content {
    background: var(--primary-color);
    color: white;
}

.message-content p { 
    margin: 0 0 8px 0;
    font-size: 12px;
}

.message-content p:last-child {
    margin-bottom: 0;
}

.message-time {
    font-size: 9px;
    opacity: 0.7;
    margin-top: 4px;
    text-align: right;
}

.message.bot .message-content .message-time {
    color: var(--medium-color);
}

.source-container {
    margin-top: 10px;
    padding-top: 5px;
    border-top: 1px dashed var(--border-color);
}

.source-link {
    display: block;
    font-size: 8px;
    color: var(--medium-color);
    margin-top: 3px;
    text-decoration: none;
    word-break: break-all;
}

.source-link:hover {
    text-decoration: underline;
    color: var(--primary-dark);
}

/* Enhanced Quick Actions with visible scrollbar */
.quick-actions {
    padding: 12px 20px;
    border-top: 1px solid var(--border-color);
    display: flex;
    gap: 10px;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    position: relative;
    /* Custom scrollbar styling */
    scrollbar-width: thin; /* Firefox */
    scrollbar-color: var(--primary-color) var(--light-color); /* Firefox */
}

/* Webkit scrollbar styling (Chrome, Safari, Edge) */
.quick-actions::-webkit-scrollbar {
    height: 6px;
}

.quick-actions::-webkit-scrollbar-track {
    background: var(--light-color);
    border-radius: 3px;
}

.quick-actions::-webkit-scrollbar-thumb {
    background: var(--primary-color);
    border-radius: 3px;
}

.quick-actions::-webkit-scrollbar-thumb:hover {
    background: var(--primary-dark);
}

/* Add scroll indicators */
.quick-actions::before,
.quick-actions::after {
    content: '';
    position: absolute;
    top: 0;
    bottom: 0;
    width: 20px;
    pointer-events: none;
    z-index: 1;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.quick-actions::before {
    left: 0;
    background: linear-gradient(to right, white, transparent);
}

.quick-actions::after {
    right: 0;
    background: linear-gradient(to left, white, transparent);
}

.quick-actions.scrollable-left::before {
    opacity: 1;
}

.quick-actions.scrollable-right::after {
    opacity: 1;
}

.quick-action {
    flex-shrink: 0;
    padding: 8px 14px;
    background: var(--primary-light);
    color: var(--primary-color);
    border-radius: 20px;
    font-size: 11px;
    font-weight: 500;
    text-decoration: none;
    transition: var(--transition);
    white-space: nowrap;
    cursor: pointer;
    border: 1px solid transparent;
}

.quick-action:hover {
    background: var(--primary-color);
    color: white;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,138,252,0.3);
}

.quick-action:active {
    transform: translateY(0);
}

.chat-input-container {
    padding: 15px 20px;
    border-top: 1px solid var(--border-color);
    display: flex;
    align-items: center;
    gap: 10px;
}

.chat-input {
    flex: 1;
    padding: 12px 16px;
    border: 1px solid var(--border-color);
    border-radius: 25px;
    outline: none;
    font-family: inherit;
    font-size: 12px;
    transition: var(--transition);
}

.chat-input:focus {
    border-color: var(--primary-color);
    box-shadow: 0 0 0 3px rgba(0,138,252,0.15);
}

.chat-input::placeholder {
    color: var(--medium-color);
}

.chat-send {
    background: var(--primary-color);
    color: white;
    border: none;
    border-radius: 50%;
    width: 44px;
    height: 44px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: var(--transition);
    box-shadow: var(--shadow-md);
}

.chat-send:hover {
    background: var(--primary-dark);
    transform: scale(1.1);
    box-shadow: var(--shadow-lg);
}

.chat-send:active {
    transform: scale(0.95);
}

.typing-indicator-wrapper { display: none; align-items: center; gap: 10px; }

.message.bot .typing-indicator-wrapper { margin: 0 0 15px 0; }

.typing-indicator-wrapper.active { display: flex; }

.typing-indicator {
    padding: 12px 16px;
    background: white;
    border-radius: 18px;
    border: 1px solid var(--border-color);
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    max-width: 180px;
}

.typing-dots {
    display: flex;
    gap: 4px;
}

.typing-dot {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: var(--medium-color);
    animation: typing 1.4s infinite;
}

.typing-dot:nth-child(2) { animation-delay: 0.2s; }
.typing-dot:nth-child(3) { animation-delay: 0.4s; }

@keyframes typing {
    0%, 60%, 100% { transform: translateY(0); }
    30% { transform: translateY(-10px); }
}

.error-message {
    background: #fee;
    border: 1px solid #fcc;
    color: #c33;
    padding: 10px;
    border-radius: 8px;
    margin: 10px 0;
    font-size: 12px;
}

.api-status {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 9px;
    padding: 3px 8px;
    border-radius: 12px;
    background: rgba(255,255,255,0.2);
}

.api-status.connected { color: #10b981; }
.api-status.disconnected { color: #ef4444; }

/* Custom Quote Form Styles */
.custom-quote-form {
    background: white;
    border-radius: 10px;
    padding: 15px;
    margin: 10px 0;
    border: 1px solid var(--border-color);
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
}

.form-group {
    margin-bottom: 12px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: 500;
    font-size: 11px;
    color: var(--dark-color);
}

.form-group input, .form-group textarea, .form-group select {
    width: 100%;
    padding: 8px 12px;
    border: 1px solid var(--border-color);
    border-radius: 5px;
    font-size: 11px;
    font-family: inherit;
}

.form-group textarea {
    resize: vertical;
    min-height: 60px;
}

.form-buttons {
    display: flex;
    gap: 10px;
    margin-top: 15px;
}

.form-button {
    padding: 8px 15px;
    border: none;
    border-radius: 5px;
    font-size: 11px;
    font-weight: 500;
    cursor: pointer;
    transition: var(--transition);
}

.form-button.submit {
    background: var(--primary-color);
    color: white;
}

.form-button.cancel {
    background: var(--light-color);
    color: var(--dark-color);
    border: 1px solid var(--border-color);
}

.form-button:hover {
    opacity: 0.9;
}

.success-message {
    background: #d4edda;
    color: #155724;
    padding: 10px;
    border-radius: 5px;
    margin: 10px 0;
    font-size: 11px;
    border: 1px solid #c3e6cb;
}

/* Enhanced Contact Info Styles */
.contact-info {
    background: white;
    border-radius: 10px;
    padding: 15px;
    margin: 10px 0;
    border: 1px solid var(--border-color);
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
}

.contact-item {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 12px;
    padding: 8px 0;
    border-bottom: 1px solid var(--border-color);
}

.contact-item:last-child {
    margin-bottom: 0;
    border-bottom: none;
}

.contact-icon {
    width: 32px;
    height: 32px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 14px;
    flex-shrink: 0;
}

.contact-icon.phone {
    background: var(--primary-light);
    color: var(--primary-color);
}

.contact-icon.email {
    background: #fee;
    color: #c33;
}

.contact-icon.website {
    background: var(--light-color);
    color: var(--dark-color);
}

.contact-icon.whatsapp {
    background: #d4f8e8;
    color: var(--whatsapp-color);
}

.contact-details {
    flex: 1;
}

.contact-label {
    font-size: 10px;
    color: var(--medium-color);
    margin-bottom: 2px;
}

.contact-value {
    font-size: 12px;
    font-weight: 500;
    color: var(--dark-color);
    text-decoration: none;
    word-break: break-all;
}

.contact-value:hover {
    color: var(--primary-color);
}

.whatsapp-link {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    background: var(--whatsapp-color);
    color: white;
    padding: 6px 12px;
    border-radius: 20px;
    font-size: 11px;
    font-weight: 500;
    text-decoration: none;
    transition: var(--transition);
}

.whatsapp-link:hover {
    background: #128C7E;
    transform: translateY(-1px);
    box-shadow: 0 2px 8px rgba(37, 211, 102, 0.3);
}

/* QR Code Container */
.qr-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 12px;
    padding-top: 12px;
    border-top: 1px solid var(--border-color);
}

.qr-label {
    font-size: 10px;
    color: var(--medium-color);
    margin-bottom: 8px;
    text-align: center;
}

.qr-code {
    width: 120px;
    height: 120px;
    background: white;
    border: 1px solid var(--border-color);
    border-radius: 8px;
    padding: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    overflow: hidden;
}

.qr-code img {
    width: 100%;
    height: 100%;
    object-fit: contain;
}

.qr-code::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(45deg, transparent 30%, rgba(255,255,255,0.1) 50%, transparent 70%);
    animation: qrShine 3s infinite;
}

@keyframes qrShine {
    0% { transform: translateX(-100%); }
    100% { transform: translateX(100%); }
}

/* Mobile responsive styles - FIXED */
@media (max-width:768px){
    /* Keep the chat button at the bottom right corner */
    .chat-widget-container { 
        bottom: 20px; 
        right: 20px; 
        width: auto; 
        height: auto; 
    }
    
    /* Make the chat button slightly smaller on mobile */
    .chat-button {
        width: 60px;
        height: 60px;
    }
    
    .chat-button i {
        font-size: 24px;
    }
    
    /* Adjust chat window for mobile */
    .chat-window { 
        width: 100vw; 
        max-height: 90vh; 
        height: 90vh; 
        margin-bottom: 15px; 
        border-radius: 20px 20px 0 0; 
        box-shadow: 0 -5px 20px rgba(0,0,0,0.2); 
        bottom: 0;
        right: 0;
        left: 0;
    }
    
    /* When chat is open, position it at the bottom */
    .chat-window.active {
        position: fixed;
        bottom: 0;
        right: 0;
        left: 0;
        border-radius: 20px 20px 0 0;
    }
    
    .chat-messages { 
        padding-bottom: 100px; 
    }
    
    .message-content { 
        max-width: 85%; 
    }
    
    /* Enhanced quick actions for mobile with visible scrollbar */
    .quick-actions {
        padding: 12px 15px;
        gap: 8px;
        /* Ensure smooth scrolling on mobile */
        scroll-behavior: smooth;
        /* Make scrollbar more visible on mobile */
        scrollbar-width: auto;
        /* Add some padding at the end for better UX */
        padding-right: 25px;
    }
    
    /* Make scrollbar more visible on mobile devices */
    .quick-actions::-webkit-scrollbar {
        height: 8px;
    }
    
    .quick-action {
        padding: 8px 12px;
        font-size: 10px;
        /* Add subtle border for better visibility */
        border-color: rgba(0,138,252,0.2);
    }
    
    /* Make scroll indicators more visible on mobile */
    .quick-actions::before,
    .quick-actions::after {
        width: 30px;
    }
    
    /* Hide QR code on mobile */
    .qr-container {
        display: none;
    }
    
    /* Adjust contact items for mobile */
    .contact-item {
        margin-bottom: 8px;
        padding: 6px 0;
    }
    
    .contact-icon {
        width: 28px;
        height: 28px;
        font-size: 12px;
    }
    
    .contact-value {
        font-size: 11px;
    }
}

.chat-widget-container * { box-sizing: border-box; }
.chat-button:focus, .chat-action-btn:focus, .chat-input:focus, .chat-send:focus {
    outline: 2px solid var(--primary-color);
    outline-offset: 2px;
}
</style>

<div class="chat-widget-container" id="chatWidgetContainer">
    <button class="chat-button" id="chatToggle" aria-label="Open chat">
        <i class="fas fa-comments"></i>
        <span class="chat-badge" id="chatBadge">New</span>
    </button>
    
    <div class="chat-window" id="chatWindow">
        <div class="chat-header">
            <div class="chat-header-info">
                <div class="chat-avatar"><i class="fas fa-robot"></i></div>
                <div class="chat-header-text">
                    <h3>AI Support Agent</h3>
                    <div class="chat-status"><span class="status-dot"></span><span>Online</span></div>
                </div>
            </div>
            <div class="chat-actions">
                <span class="api-status disconnected" id="apiStatus">Disconnected</span>
                <button class="chat-action-btn" id="chatMinimize" aria-label="Minimize chat"><i class="fas fa-minus"></i></button>
                <button class="chat-action-btn" id="chatClose" aria-label="Close chat"><i class="fas fa-times"></i></button>
            </div>
        </div>
        
        <div class="chat-messages" id="chatMessages">
            <div class="message bot">
                <div class="message-avatar"><i class="fas fa-robot"></i></div>
                <div class="message-content">
                    <p>Hello! I'm your AI support agent for Platinum IT Global. How can I help you today?</p>
                    <div class="message-time">Just now</div>
                </div>
            </div>
            <div class="message bot typing-indicator-wrapper" id="typingIndicatorWrapper">
                <div class="message-avatar"><i class="fas fa-robot"></i></div>
                <div class="typing-indicator">
                    <div class="typing-dots">
                        <div class="typing-dot"></div>
                        <div class="typing-dot"></div>
                        <div class="typing-dot"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="quick-actions" id="quickActions">
            <a href="#" class="quick-action" data-action="services">Our Services</a>
            <a href="#" class="quick-action" data-action="websites">Website Packages</a>
            <a href="#" class="quick-action" data-action="domains">Domain Services</a>
            <a href="#" class="quick-action" data-action="quote">Get a Quote</a>
            <a href="#" class="quick-action" data-action="contact">Contact Us</a>
        </div>
        
        <div class="chat-input-container">
            <input type="text" class="chat-input" id="chatInput" placeholder="Type your message..." aria-label="Message input">
            <button class="chat-send" id="chatSend" aria-label="Send message"><i class="fas fa-paper-plane"></i></button>
        </div>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const chatWidgetContainer = document.getElementById('chatWidgetContainer');
    const chatToggle = document.getElementById('chatToggle');
    const chatWindow = document.getElementById('chatWindow');
    const chatMinimize = document.getElementById('chatMinimize');
    const chatClose = document.getElementById('chatClose');
    const chatMessages = document.getElementById('chatMessages');
    const chatInput = document.getElementById('chatInput');
    const chatSend = document.getElementById('chatSend');
    const chatBadge = document.getElementById('chatBadge');
    const typingIndicatorWrapper = document.getElementById('typingIndicatorWrapper');
    const quickActions = document.querySelectorAll('.quick-action');
    const quickActionsContainer = document.getElementById('quickActions');
    const apiStatus = document.getElementById('apiStatus');

    let isBotThinking = false;
    let chatHistory = [];
    let userContactInfo = {
        name: '',
        email: '',
        contact: ''
    };

    // Company knowledge base - expanded with website packages and domains
    const companyKnowledge = {
        services: [
            "**Website Design & Development** - Custom websites tailored to your business needs",
            "**Custom App Development** - Mobile and web applications",
            "**Website Hosting** - Reliable hosting plans: Starter ($10.95/mo), Basic ($15/mo), Pro ($20/mo)",
            "**Technical Support** - 24/7 support for all our services",
            "**IT Consulting** - Strategic technology planning"
        ],
        websitePackages: [
            "**Starter Website Package** - $295",
            "- 5-page responsive website",
            "- Basic contact form",
            "- Mobile-friendly design",
            "- Free 14-day Onboarding & Support",
            "",
            "**Pro Website Package** - $595",
            "- 10-page responsive website",
            "- Advanced contact forms",
            "- Social media integration",
            "- Basic SEO setup",
            "- Free 30-day Onboarding & Support",
            "",
            "**Premium Website Package** - $895",
            "- 15-page responsive website",
            "- Custom dynamic site",
            "- E-commerce functionality (up to 20 products)",
            "- Advanced SEO",
            "- Free 60-day Onboarding & Support",
            "",
            "**E-commerce Website Package** - $1,995",
            "- Unlimited pages",
            "- Full e-commerce functionality",
            "- Payment gateway integration",
            "- Product management system",
            "- Free 90-day Onboarding & Support"
        ],
        domains: [
            "**Domain Registration** - Register your perfect domain name",
            "- Wide variety of domain extensions (.com, .net, .org, .co, .io, and more)",
            "- Competitive pricing starting at $12.99/year",
            "- Free domain with premium website packages",
            "",
            "**Domain Transfer** - Move your existing domain to us",
            "- Hassle-free transfer process",
            "- No downtime during transfer",
            "- Extend your registration by 1 year",
            "",
            "**Domain Privacy Protection** - Keep your personal information private",
            "- Protects against spam and identity theft",
            "- Hides your personal details from public WHOIS",
            "- Only $9.99/year"
        ],
        hosting: [
            "**Starter Plan** - $10.95/month: Perfect for small websites",
            "**Basic Plan** - $15/month: Great for growing businesses",
            "**Pro Plan** - $25/month: Advanced features for large sites",
            "All plans include: Free custom domain, unlimited bandwidth, SSL certificate"
        ],
        contact: {
            phone: "+263 292 880493", 
            email: "sales@platinumitglobal.com",
            website: "www.platinumitglobal.com",
            whatsapp: "+263774418117"
        }
    };

    // Function to update scroll indicators for quick actions
    function updateScrollIndicators() {
        if (!quickActionsContainer) return;
        
        const scrollLeft = quickActionsContainer.scrollLeft;
        const scrollWidth = quickActionsContainer.scrollWidth;
        const clientWidth = quickActionsContainer.clientWidth;
        
        // Remove existing classes
        quickActionsContainer.classList.remove('scrollable-left', 'scrollable-right');
        
        // Add classes based on scroll position
        if (scrollLeft > 0) {
            quickActionsContainer.classList.add('scrollable-left');
        }
        
        if (scrollLeft < scrollWidth - clientWidth) {
            quickActionsContainer.classList.add('scrollable-right');
        }
    }

    // Add scroll event listener to quick actions container
    quickActionsContainer.addEventListener('scroll', updateScrollIndicators);
    
    // Initial check for scroll indicators
    setTimeout(updateScrollIndicators, 100);

    // Chat window controls
    chatToggle.addEventListener('click', () => {
        chatWindow.classList.toggle('active');
        if (chatWindow.classList.contains('active')) {
            chatInput.focus();
            chatBadge.style.opacity = '0';
            chatBadge.innerText = '';
            chatMessages.scrollTop = chatMessages.scrollHeight;
            // Update scroll indicators when chat opens
            setTimeout(updateScrollIndicators, 100);
        }
    });
    chatMinimize?.addEventListener('click', () => chatWindow.classList.remove('active'));
    chatClose?.addEventListener('click', () => chatWindow.classList.remove('active'));

    function addUserMessage(message) {
        const div = document.createElement('div');
        div.className = 'message user';
        div.innerHTML = `<div class="message-avatar"><i class="fas fa-user"></i></div>
                         <div class="message-content"><p>${escapeHtml(message)}</p>
                         <div class="message-time">${getCurrentTime()}</div></div>`;
        chatMessages.appendChild(div);
        chatMessages.scrollTop = chatMessages.scrollHeight;
        
        // Add to chat history
        chatHistory.push({
            role: 'user',
            content: message,
            timestamp: new Date().toISOString()
        });
    }

    function addBotMessage(text, isError = false) {
        const div = document.createElement('div');
        div.className = `message bot ${isError ? 'error' : ''}`;
        
        // Format the message text with proper structure
        const formattedContent = formatMessageText(text);
        
        div.innerHTML = `<div class="message-avatar"><i class="fas fa-robot"></i></div>
                         <div class="message-content">${isError ? `<div class="error-message">${text}</div>` : formattedContent}
                         <div class="message-time">${getCurrentTime()}</div></div>`;
        chatMessages.appendChild(div);
        chatMessages.scrollTop = chatMessages.scrollHeight;
        
        // Add to chat history
        chatHistory.push({
            role: 'assistant',
            content: text,
            timestamp: new Date().toISOString()
        });
    }

    // Function to show enhanced contact information
    function showContactInfo() {
        const contactDiv = document.createElement('div');
        contactDiv.className = 'message bot';
        contactDiv.innerHTML = `
            <div class="message-avatar"><i class="fas fa-robot"></i></div>
            <div class="message-content">
                <p>Here are all the ways you can reach us:</p>
                <div class="contact-info">
                    <div class="contact-item">
                        <div class="contact-icon phone"><i class="fas fa-phone"></i></div>
                        <div class="contact-details">
                            <div class="contact-label">Phone</div>
                            <a href="tel:+263292880493" class="contact-value">${companyKnowledge.contact.phone}</a>
                        </div>
                    </div>
                    <div class="contact-item">
                        <div class="contact-icon email"><i class="fas fa-envelope"></i></div>
                        <div class="contact-details">
                            <div class="contact-label">Email</div>
                            <a href="mailto:${companyKnowledge.contact.email}" class="contact-value">${companyKnowledge.contact.email}</a>
                        </div>
                    </div>
                    <div class="contact-item">
                        <div class="contact-icon website"><i class="fas fa-globe"></i></div>
                        <div class="contact-details">
                            <div class="contact-label">Website</div>
                            <a href="https://${companyKnowledge.contact.website}" target="_blank" class="contact-value">${companyKnowledge.contact.website}</a>
                        </div>
                    </div>
                    <div class="contact-item">
                        <div class="contact-icon whatsapp"><i class="fab fa-whatsapp"></i></div>
                        <div class="contact-details">
                            <div class="contact-label">WhatsApp</div>
                            <a href="https://wa.me/${companyKnowledge.contact.whatsapp.replace('+', '')}" target="_blank" class="whatsapp-link">
                                <i class="fab fa-whatsapp"></i>
                                Chat on WhatsApp
                            </a>
                        </div>
                    </div>
                    <div class="qr-container">
                        <div class="qr-label">Scan to chat on WhatsApp</div>
                        <div class="qr-code">
                            <img src="https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=https://wa.me/${companyKnowledge.contact.whatsapp.replace('+', '')}" alt="WhatsApp QR Code">
                        </div>
                    </div>
                </div>
                <div class="message-time">${getCurrentTime()}</div>
            </div>
        `;
        chatMessages.appendChild(contactDiv);
        chatMessages.scrollTop = chatMessages.scrollHeight;
    }

    // Function to add a custom quote form to the chat
    function showCustomQuoteForm() {
        const formDiv = document.createElement('div');
        formDiv.className = 'message bot';
        formDiv.innerHTML = `
            <div class="message-avatar"><i class="fas fa-robot"></i></div>
            <div class="message-content">
                <p>I see you need a custom solution. Please provide your details so our team can prepare a personalized quote for you.</p>
                <div class="custom-quote-form" id="customQuoteForm">
                    <div class="form-group">
                        <label for="userName">Name *</label>
                        <input type="text" id="userName" required>
                    </div>
                    <div class="form-group">
                        <label for="userEmail">Email *</label>
                        <input type="email" id="userEmail" required>
                    </div>
                    <div class="form-group">
                        <label for="userContact">Phone Number</label>
                        <input type="tel" id="userContact">
                    </div>
                    <div class="form-group">
                        <label for="projectType">Project Type</label>
                        <select id="projectType">
                            <option value="">Select a project type</option>
                            <option value="website">Website Development</option>
                            <option value="app">Application Development</option>
                            <option value="hosting">Hosting Services</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="projectDetails">Project Details</label>
                        <textarea id="projectDetails" placeholder="Please describe your project requirements..."></textarea>
                    </div>
                    <div class="form-buttons">
                        <button class="form-button submit" id="submitQuoteRequest">Submit Request</button>
                        <button class="form-button cancel" id="cancelQuoteRequest">Cancel</button>
                    </div>
                </div>
                <div class="message-time">${getCurrentTime()}</div>
            </div>
        `;
        chatMessages.appendChild(formDiv);
        chatMessages.scrollTop = chatMessages.scrollHeight;
        
        // Add event listeners to form buttons
        document.getElementById('submitQuoteRequest').addEventListener('click', submitQuoteRequest);
        document.getElementById('cancelQuoteRequest').addEventListener('click', cancelQuoteRequest);
    }

    // Function to submit the quote request
    function submitQuoteRequest() {
        const name = document.getElementById('userName').value.trim();
        const email = document.getElementById('userEmail').value.trim();
        const contact = document.getElementById('userContact').value.trim();
        const projectType = document.getElementById('projectType').value;
        const projectDetails = document.getElementById('projectDetails').value.trim();
        
        if (!name || !email) {
            addBotMessage("Please fill in all required fields (Name and Email).");
            return;
        }
        
        // Store user contact info
        userContactInfo = {
            name: name,
            email: email,
            contact: contact
        };
        
        // Remove the form
        const form = document.getElementById('customQuoteForm');
        if (form) form.parentElement.remove();
        
        // Add success message
        const successDiv = document.createElement('div');
        successDiv.className = 'message bot';
        successDiv.innerHTML = `
            <div class="message-avatar"><i class="fas fa-robot"></i></div>
            <div class="message-content">
                <div class="success-message">
                    <i class="fas fa-check-circle"></i> Thank you! Your quote request has been submitted successfully. Our team will contact you within 24 hours.
                </div>
                <div class="message-time">${getCurrentTime()}</div>
            </div>
        `;
        chatMessages.appendChild(successDiv);
        chatMessages.scrollTop = chatMessages.scrollHeight;
        
        // Submit chat summary to database
        submitChatSummary('quote_request', 'Pending');
    }

    // Function to cancel the quote request
    function cancelQuoteRequest() {
        // Remove the form
        const form = document.getElementById('customQuoteForm');
        if (form) form.parentElement.remove();
        
        addBotMessage("No problem! Is there anything else I can help you with?");
    }

    // Function to submit chat summary to database
    async function submitChatSummary(actionType, status = 'Pending') {
        try {
            // Create a summary of the conversation
            let summary = '';
            chatHistory.forEach(msg => {
                summary += `${msg.role === 'user' ? 'User' : 'Bot'}: ${msg.content}\n`;
            });
            
            // Prepare data for submission
            const data = {
                name: userContactInfo.name || 'Anonymous',
                email: userContactInfo.email || null,
                contact: userContactInfo.contact || null,
                chat_summary: summary,
                action_type: actionType,
                status: status
            };
            
            // Send data to server
            const response = await fetch('save-chat-summary.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            });
            
            if (!response.ok) {
                throw new Error(`HTTP ${response.status}`);
            }
            
            const result = await response.json();
            
            // Reset chat history after successful submission
            if (actionType === 'quote_request') {
                chatHistory = [];
            }
            
        } catch (error) {
            console.error('Error submitting chat summary:', error);
        }
    }

    // Enhanced message formatting function
    function formatMessageText(text) {
        // First escape HTML to prevent XSS
        let formatted = escapeHtml(text);
        
        // Convert common list patterns to proper HTML lists
        // Handle numbered lists (1., 2., etc.)
        formatted = formatted.replace(/(\d+\.\s+)(.+?)(?=(\n\d+\.|\n\n|$))/gs, function(match, number, content) {
            return `<li>${content.trim()}</li>`;
        });
        
        // Handle bullet points (- or *) at the beginning of lines
        formatted = formatted.replace(/^[ \t]*[-*]\s+(.+?)(?=\n|$)/gm, function(match, content) {
            return `<li>${content.trim()}</li>`;
        });
        
        // Handle bullet points after newlines
        formatted = formatted.replace(/\n[ \t]*[-*]\s+(.+?)(?=\n|$)/g, function(match, content) {
            return `\n<li>${content.trim()}</li>`;
        });
        
        // Wrap consecutive list items in ul tags
        formatted = formatted.replace(/(<li>.*?<\/li>)(\s*<li>.*?<\/li>)+/g, function(match) {
            return '<ul>' + match + '</ul>';
        });
        
        // Replace line breaks with paragraphs (but not inside lists)
        formatted = formatted.replace(/\n\n/g, '</p><p>');
        formatted = '<p>' + formatted + '</p>';
        
        // Remove paragraph tags inside lists
        formatted = formatted.replace(/<p>(<ul>.*?<\/ul>)<\/p>/g, '$1');
        formatted = formatted.replace(/<p>(<li>.*?<\/li>)<\/p>/g, '$1');
        
        // Handle bold text (**text**)
        formatted = formatted.replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>');
        
        // Handle italic text (*text*)
        formatted = formatted.replace(/\*(.+?)\*/g, '<em>$1</em>');
        
        // Handle code blocks (`code`)
        formatted = formatted.replace(/`(.+?)`/g, '<code>$1</code>');
        
        // Handle headers (# Header)
        formatted = formatted.replace(/<p>#\s+(.+?)<\/p>/g, '<h1>$1</h1>');
        formatted = formatted.replace(/<p>##\s+(.+?)<\/p>/g, '<h2>$1</h2>');
        formatted = formatted.replace(/<p>###\s+(.+?)<\/p>/g, '<h3>$1</h3>');
        
        // Handle blockquotes (> text)
        formatted = formatted.replace(/<p>&gt;\s+(.+?)<\/p>/g, '<blockquote>$1</blockquote>');
        
        // Handle indented text (    text)
        formatted = formatted.replace(/<p>    (.+?)<\/p>/g, '<p class="indented">$1</p>');
        
        // Clean up any empty paragraphs that might be left
        formatted = formatted.replace(/<p><\/p>/g, '');
        formatted = formatted.replace(/<p>\s*<\/p>/g, '');
        
        return formatted;
    }

    function escapeHtml(text) {
        const map = { '&':'&amp;', '<':'&lt;', '>':'&gt;', '"':'&quot;', "'":'&#039;' };
        return text.replace(/[&<>"']/g, m => map[m]);
    }

    function getCurrentTime() {
        return new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
    }

    // Function to get relevant company knowledge based on query
    function getRelevantKnowledge(query) {
        const lowerQuery = query.toLowerCase();
        let relevantInfo = "";
        
        if (lowerQuery.includes('service') || lowerQuery.includes('what do you')) {
            relevantInfo = "\n\n**Our Services:**\n" + companyKnowledge.services.join('\n');
        }
        
        if (lowerQuery.includes('website') || lowerQuery.includes('package') || lowerQuery.includes('pricing')) {
            relevantInfo = "\n\n**Website Packages:**\n" + companyKnowledge.websitePackages.join('\n');
        }
        
        if (lowerQuery.includes('domain') || lowerQuery.includes('registration') || lowerQuery.includes('transfer')) {
            relevantInfo = "\n\n**Domain Services:**\n" + companyKnowledge.domains.join('\n');
        }
        
        if (lowerQuery.includes('hosting') || lowerQuery.includes('plan') || lowerQuery.includes('price')) {
            relevantInfo = "\n\n**Hosting Plans:**\n" + companyKnowledge.hosting.join('\n');
        }
        
        if (lowerQuery.includes('contact') || lowerQuery.includes('phone') || lowerQuery.includes('email')) {
            relevantInfo = `\n\n**Contact Information:**\n- Phone: ${companyKnowledge.contact.phone}\n- Email: ${companyKnowledge.contact.email}\n- Website: ${companyKnowledge.contact.website}\n- WhatsApp: ${companyKnowledge.contact.whatsapp}`;
        }
        
        return relevantInfo;
    }

    quickActions.forEach(action => {
        action.addEventListener('click', e => {
            e.preventDefault();
            const actionType = action.getAttribute('data-action');
            
            if (actionType === 'quote') {
                // Show custom quote form
                showCustomQuoteForm();
            } else if (actionType === 'contact') {
                // Show enhanced contact information
                showContactInfo();
            } else {
                // Handle other quick actions
                const userQuery = action.innerText;
                if (!isBotThinking) {
                    addUserMessage(userQuery);
                    getBotResponse(userQuery);
                }
            }
        });
    });

    async function sendMessage() {
        const message = chatInput.value.trim();
        if (!message || isBotThinking) return;
        addUserMessage(message);
        chatInput.value = '';
        await getBotResponse(message);
    }

    chatSend.addEventListener('click', sendMessage);
    chatInput.addEventListener('keypress', e => {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault();
            sendMessage();
        }
    });

    async function getBotResponse(userQuery) {
        isBotThinking = true;
        typingIndicatorWrapper.classList.add('active');
        apiStatus.textContent = "Processing...";
        apiStatus.classList.remove('connected');
        apiStatus.classList.add('disconnected');

        try {
            // Get relevant company knowledge
            const relevantKnowledge = getRelevantKnowledge(userQuery);
            
            // Check if user is asking for a custom quote
            const lowerQuery = userQuery.toLowerCase();
            if (lowerQuery.includes('custom') || lowerQuery.includes('different') || 
                lowerQuery.includes('special') || lowerQuery.includes('unique') ||
                lowerQuery.includes('not in the packages') || lowerQuery.includes('bespoke')) {
                
                // Show custom quote form after a brief response
                setTimeout(() => {
                    addBotMessage("I understand you need a custom solution. Let me collect some information to prepare a personalized quote for you.");
                    showCustomQuoteForm();
                    typingIndicatorWrapper.classList.remove('active');
                    isBotThinking = false;
                }, 1500);
                
                return;
            }
            
            const response = await fetch('chatbot-api.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    model: "gpt-3.5-turbo",
                    messages: [
                        { 
                            role: "system", 
                            content: `You are a friendly AI Support Agent for Platinum IT Global. You must follow these formatting rules strictly:

1. ALWAYS use bullet points (-) for lists of items
2. ALWAYS use numbered lists (1., 2., etc.) for steps or sequences
3. Use **bold** for important terms and headings
4. Keep responses brief and concise (1-3 sentences per point)
5. Format your response with proper structure and spacing

Company Information:
 ${relevantKnowledge}

When answering questions, prioritize the company information provided above. If the information isn't available in the company knowledge, provide a brief helpful response and suggest contacting support for specific details.` 
                        },
                        { role: "user", content: userQuery }
                    ],
                    temperature: 0.7,
                    max_tokens: 200
                })
            });

            if (!response.ok) throw new Error(`HTTP ${response.status}`);
            const data = await response.json();

            if (data.choices && data.choices[0] && data.choices[0].message) {
                addBotMessage(data.choices[0].message.content);
                apiStatus.textContent = "Connected";
                apiStatus.classList.add('connected');
                apiStatus.classList.remove('disconnected');
            } else {
                throw new Error("Invalid API response structure");
            }
        } catch (err) {
            console.error(err);
            addBotMessage("Contact us directly:\n\n" + 
                "- Phone: " + companyKnowledge.contact.phone + "\n" +
                "- Email: " + companyKnowledge.contact.email + "\n" +
                "- WhatsApp: " + companyKnowledge.contact.whatsapp + "\n" +
                "- Website: " + companyKnowledge.contact.website, true);
            apiStatus.textContent = "Error";
            apiStatus.classList.remove('connected');
            apiStatus.classList.add('disconnected');
        } finally {
            typingIndicatorWrapper.classList.remove('active');
            isBotThinking = false;
            chatMessages.scrollTop = chatMessages.scrollHeight;
        }
    }

    // Submit chat summary when chat is closed
    chatClose.addEventListener('click', () => {
        if (chatHistory.length > 0) {
            submitChatSummary('general_inquiry', 'Completed');
        }
    });

    document.addEventListener('click', e => {
        if (!chatWindow.contains(e.target) && !chatToggle.contains(e.target)) {
            chatWindow.classList.remove('active');
        }
    });
    chatWindow.addEventListener('click', e => e.stopPropagation());
});
</script>
    <!-- ======================================================= -->
    <!-- INCLUDE THE COOKIE CONSENT BANNER HERE                  -->
    <!-- ======================================================= -->
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cookie Consent</title>
    <link rel="icon" href="/solutions-app/assets/img/favicon.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        /* The z-index ensures the banner is on top of other content */
        #cookie-consent-banner {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(5px); /* Optional: adds a slight blur to the background for better readability */
            -webkit-backdrop-filter: blur(5px); /* For Safari compatibility */
            color: #333333;
            padding: 0; /* Padding is now handled by the inner container */
            text-align: left;
            box-shadow: 0 -2px 15px rgba(0, 0, 0, 0.1);
            z-index: 10000;
            font-family: 'Inter', sans-serif;
            border-top: 1px solid #dee2e6;
        }

        #cookie-consent-banner .container {
            max-width: 800px;
            margin: 0 auto;
            /* Adjusted padding to create space for the close button */
            padding: 15px 50px 20px 20px; /* Top: 15px, Right: 50px, Bottom: 20px, Left: 20px */
            position: relative; /* Needed for positioning context */
        }

        #cookie-consent-banner .cookie-title {
            font-size: 18px;
            font-weight: 700;
            margin: 0 0 10px 0;
            padding-right: 30px; /* Ensure text doesn't touch the close button */
        }

        #cookie-consent-banner .cookie-description {
            font-size: 14px;
            margin: 0 0 20px 0;
            line-height: 1.5;
        }

        #cookie-consent-banner .cookie-buttons {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            margin-bottom: 15px;
        }

        #cookie-consent-banner button {
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-family: 'Inter', sans-serif;
            font-weight: 600;
            font-size: 14px;
            border: 1px solid #007bff;
            transition: all 0.2s ease-in-out;
        }

        #cookie-consent-banner button.btn-primary {
            background-color: #007bff;
            color: #ffffff;
        }

        #cookie-consent-banner button.btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        #cookie-consent-banner button.btn-secondary {
            background-color: transparent;
            color: #007bff;
        }
        
        #cookie-consent-banner button.btn-secondary:hover {
            background-color: #e7f1ff;
        }

        #cookie-consent-banner .cookie-note {
            font-size: 12px;
            color: #6c757d;
            margin-bottom: 15px;
        }

        #cookie-consent-banner .cookie-footer-links {
            font-size: 13px;
        }

        #cookie-consent-banner .cookie-footer-links a {
            color: #007bff;
            font-weight: 600;
            text-decoration: none;
            margin-right: 20px;
        }

        #cookie-consent-banner .cookie-footer-links a:hover {
            text-decoration: underline;
        }

        /* Close Button Styles - Positioned in the top-right corner */
        #cookie-consent-banner .close-btn {
            position: absolute;
            top: 15px;
            right: 15px; /* Moved further right to be clear of the text */
            background: none;
            border: none;
            font-size: 24px; /* Slightly smaller for less intrusion */
            font-weight: 300;
            color: #6c757d;
            cursor: pointer;
            line-height: 1;
            transition: color 0.2s ease, transform 0.2s ease;
            z-index: 10; /* Ensure it's above other content within the banner */
        }

        #cookie-consent-banner .close-btn:hover {
            color: #333333;
            transform: rotate(90deg); /* Add a small rotation on hover for feedback */
        }

        /* Responsive design for smaller screens */
        @media (max-width: 600px) {
            #cookie-consent-banner .container {
                padding: 15px 20px 20px 20px; /* Reduce right padding on mobile */
            }
            #cookie-consent-banner .cookie-buttons {
                flex-direction: column;
            }
            #cookie-consent-banner button {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div id="cookie-consent-banner">
        <!-- Close Button -->
        <button id="close-cookie-banner-btn" class="close-btn" aria-label="Close cookie banner">&times;</button>
        
        <div class="container">
            <p class="cookie-title">Your data is your property and we support your right to privacy and transparency.</p>
            <p class="cookie-description">
                We use cookies and similar technologies to help personalize content, tailor and measure ads, and provide a better experience. By clicking accept, you agree to this, as outlined in our <a href="/solutions-app/privacy-policy.php" target="_blank">Privacy Policy</a>.
            </p>
            <div class="cookie-buttons">
                <button id="reject-all-btn" class="btn-secondary">Reject All</button>
                <button id="accept-some-btn" class="btn-secondary">Accept Some</button>
                <button id="accept-all-btn" class="btn-primary">Accept All</button>
            </div>
            <p class="cookie-note">Highest privacy level available</p>
            <div class="cookie-footer-links">
                <a href="#" id="customize-link">Customize</a>
                <a href="#" id="save-prefs-link">Save my preferences</a>
                <a href="/solutions-app/privacy-policy.php" target="_blank">Privacy policy</a>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const acceptAllBtn = document.getElementById('accept-all-btn');
            const rejectAllBtn = document.getElementById('reject-all-btn');
            const savePrefsBtn = document.getElementById('save-prefs-link');
            const closeBtn = document.getElementById('close-cookie-banner-btn'); // Get the close button
            const banner = document.getElementById('cookie-consent-banner');

            function setCookieAndHide(consentValue) {
                const date = new Date();
                date.setTime(date.getTime() + (365 * 24 * 60 * 60 * 1000)); // 1 year
                const expires = "expires=" + date.toUTCString();
                document.cookie = "cookie_consent=" + consentValue + "; " + expires + "; path=/";
                banner.style.display = 'none';
            }

            acceptAllBtn.addEventListener('click', function() {
                setCookieAndHide('all');
            });

            rejectAllBtn.addEventListener('click', function() {
                setCookieAndHide('rejected');
            });
            
            // "Save my preferences" acts as an "accept" for the sake of this banner
            savePrefsBtn.addEventListener('click', function(e) {
                e.preventDefault(); // Prevent default link behavior
                setCookieAndHide('some');
            });

            // "Accept Some" and "Customize" can be linked to a more detailed preferences page
            // For now, they will just link to the privacy policy.
            document.getElementById('accept-some-btn').addEventListener('click', function() {
                window.open('/solutions-app/privacy-policy.php', '_blank');
            });

            document.getElementById('customize-link').addEventListener('click', function(e) {
                 e.preventDefault();
                 window.open('/solutions-app/privacy-policy.php', '_blank');
            });

            // --- Close Button Functionality ---
            // This only hides the banner and does NOT set a cookie,
            // so it will appear again on the next page load until a choice is made.
            closeBtn.addEventListener('click', function() {
                banner.style.display = 'none';
            });
        });
    </script>
</body>
</html>
</body>
</html>