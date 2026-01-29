<!DOCTYPE html>
<html lang="en">

<head>
  <title>Maker Mela | Asia's Biggest Maker Gathering</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="keywords" content="arts, science, technology, diy" />
  <meta name="description"
    content="Maker Mela is the premier event for grassroot innovations in India. It is the celebration of arts, crafts, engineering, science, the Do-It-Yourself (DIY) mindset, and the Maker Movement. It's a platform for like-minded folks who bring to life a diverse range of raw, unique and unconventional ideas." />
  <meta name="robots" content="index, follow" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <link rel="stylesheet" href="./style.css" />
  <link rel="icon" type="image/png" href="./img/favico.png" />
  <script src="./js/scrollreveal.min.js"></script>
  <!-- <script src="./js/airtable.browser.js"></script> -->
  <!-- <script src="./js/fetchData.js"></script> -->
</head>

<body>
  <nav>
    <input type="checkbox" id="check" />
    <label for="check" class="checkBtn"><i class="fa fa-bars"></i></label>
    <div class="navbarLogos">
      <a href="#">
        <img src="./img/mm_logo.png" alt="Maker Mela" />
      </a>
    </div>

    <ul>
      <li><a href="#about">About</a></li>
      <li>
        <a href="#benefits">Benefits</a>
      </li>
      <!-- <li>
          <a href="#speakers">Speakers</a>
        </li> -->
      <li>
        <a href="#faqs">FAQs</a>
      </li>
      <li>
        <a href="#contact">Contact</a>
      </li>
      <!-- <li>
          <a href="http://thedarwin.in/login/login.html" class="loginNavbar"
            ><i class="fa fa-sign-in"></i> Login</a
          >
        </li> -->
    </ul>
  </nav>

  <div class="bannerContainer">
    <div class="bannerTint">
      <h1>Asia's Largest Platform for Makers</h1>
      <div class="details">
        <p><i class="fa fa-map-marker"></i> Somaiya Vidyavihar</p>
        <p>
          <i class="fa fa-calendar"></i> 21<sup>st</sup> & 22<sup>nd</sup>
          February 2025
        </p>
        <div class="bannerBtns">
          <button onclick="window.open(`https://airtable.com/appM1Yw0aU6GLCwVg/shrt34ESG78lah34l`)">
            Register as a Maker
          </button>
           <button
              onclick="window.open(`https://www.somaiya.edu/en/siif-brochure`)"
            >
              View Brochure
            </button> 
        </div>
      </div>
      <div class="logoStrip">
        <div class="logoBox">
          <p>An initiative of</p>
          <img src="./img/svv_logo.png" alt="SVU" />
        </div>
        <div class="logoBox">
          <p>‎</p>
          <img src="./img/STrust.png" alt="Somaiya Trust" />
        </div>
        <div class="logoBox">
          <p>Organized by</p>
          <img src="./img/riidl.png" alt="riidl" />
        </div>
      </div>
    </div>
  </div>
<div class="videoContainer">
    <!DOCTYPE html>
    <div>
      <img src="img/siff.jpg" alt="SIIF Banner" style="width: 100%; height: auto;">
  </div>
  <div class="aboutContainer" id="about">
    <div class="leftRight">
      <div class="left revealFromBottom">
        <img src="./img/about.png" alt="About us" />
      </div>
      <div class="right revealFromBottom" id="about">
        <h2>About Us</h2>
        <p>
          Maker Mela serves as the stimulating reflection of innovation at large, showcasing the ingenuity
          and creativity of makers (Startup founders, Innovators, Designers etc) from diverse fields. It
          provides a platform for makers to exhibit their innovation, collaborate with fellow creators,
          partner with relevant stakeholders and engage with a curious audience eager to explore the
          frontiers of DIY culture, grassroot innovation and entrepreneurial movement.
        </p>
        <!-- <p>
          From pottery to 3D printing, there's some for everyone. You think
          you have it in you? Come take a quick peek, and meet the maker in
          you. Get ready to inspire, get inspired, and explore what tickles
          your curiosity. COME. CREATE. BAKE. MAKE. SHOWCASE.
        </p> -->
        <ul>
          <li><i class="fa fa-user"></i>10+ Investors</li>
          <li><i class="fa fa-cogs"></i>400+ Makers</li>
          <li><i class="fa fa-users"></i>100,000+ Visitors</li>
        </ul>
        <!-- <button onclick="window.open('http://riidl.org/makermela.com/')">
            Flashback
          </button> -->
      </div>
    </div>
    <!-- <h3>Categories</h3>
      <div class="categories revealFromBottom" id="categories"></div> -->
  </div>

  <div class="benefitsContainer" id="benefits">
    <h2>Benefits</h2>
    <div class="benefits" id="benefits">
      <div class="benefitBox revealFromBottom">
        <img src="img/benefits/gift-card.png" />
        <p>Best Makers win cash prizes & vouchers worth INR 1 lakh</p>
      </div>
      <div class="benefitBox revealFromBottom">
        <img src="img/benefits/mentor.png" />
        <p>
          Pitching Session for shortlisted makers and connect to investors
        </p>
      </div>
      <div class="benefitBox revealFromBottom">
        <img src="img/benefits/fund.png" />
        <p>Access to government grants upto INR 10 lakhs per innovator</p>
      </div>
      <div class="benefitBox revealFromBottom">
        <img src="img/benefits/desk.png" />
        <p>
          Incubation support (Help in legal, financial and any other
          incubation services)
        </p>
      </div>
      <div class="benefitBox revealFromBottom">
        <img src="img/benefits/funding.png" />
        <p>Access to seed fund upto INR 1 crore</p>
      </div>
      <div class="benefitBox revealFromBottom">
        <img src="img/benefits/profit.png" />
        <p>Access to partner credits worth INR 95L+</p>
      </div>
      <div class="benefitBox revealFromBottom">
        <img src="img/benefits/fab.png" />
        <p>Access to labs (Fablab/Biolab/SMAC lab/XR lab)</p>
      </div>
      <div class="benefitBox revealFromBottom">
        <img src="img/benefits/social-media.png" />
        <p>Online media outreach</p>
      </div>
    </div>
  </div>

  <div class="videoContainer">
    <h2>Know More about Maker Mela</h2>
    <div class="mainVideo" id="mainVideo">
      <p>Maker Mela Aftermovie (in-person edition)</p>
      <iframe src="https://www.youtube.com/embed/eNFZfACA2DI" frameborder="0" allow="autoplay; encrypted-media"
        allowfullscreen></iframe>
    </div>
    <div class="mainVideo" id="mainVideo">
      <p>Maker Mela Aftermovie (virtual edition)</p>
      <iframe src="https://www.youtube.com/embed/aHx8HdnX2Ns" frameborder="0" allow="autoplay; encrypted-media"
        allowfullscreen></iframe>
    </div>
    <div class="videos" id="videos">
      <div class="videoBox">
        <p>Inspiring Makers - Samir Somaiya</p>
        <iframe src="https://www.youtube.com/embed/a58IUtH_CBk" frameborder="0" allow="autoplay; encrypted-media"
          allowfullscreen></iframe>
      </div>
      <div class="videoBox">
        <p>Testimony by Prof. Ramesh Raskar, MIT Media Labs</p>
        <iframe src="https://www.youtube.com/embed/8ak7MlQ5c6g" frameborder="0" allow="autoplay; encrypted-media"
          allowfullscreen></iframe>
      </div>
      <div class="videoBox">
        <p>Testimony by Dr. Raghunath Mashelkar</p>
        <iframe src="https://www.youtube.com/embed/s_Y0dNYma6g" frameborder="0" allow="autoplay; encrypted-media"
          allowfullscreen></iframe>
      </div>
      <div class="videoBox">
        <p>Guinness World Record Attempt</p>
        <iframe src="https://www.youtube.com/embed/__YOUYOIYeU" frameborder="0" allow="autoplay; encrypted-media"
          allowfullscreen></iframe>
      </div>
      <div class="videoBox">
        <p>Talk by Ashish Hemrajani, BookMyShow</p>
        <iframe src="https://www.youtube.com/embed/J8cM4xZ70yg" frameborder="0" allow="autoplay; encrypted-media"
          allowfullscreen></iframe>
      </div>
    </div>
  </div>

  <!-- <div class="impactContainer">
      <div class="impactTint">
        <h2>Impact</h2>
        <div class="impacts" id="impacts"></div>
      </div>
    </div> -->

  <!-- <div class="speakersContainer" id="speakers">
      <h2>Past Speakers</h2>
      <div class="speakers" id="speakers"></div>
    </div>

    <div class="achievementsContainer">
      <h2>Achievements</h2>
      <div class="achievements" id="achievements"></div>
    </div>

    <div class="collabContainer">
      <h2>Partners 2021</h2>
      <div class="collabs" id="collabs2021a"></div>
      <div class="collabs">
        <div class="collaborator revealFromBottom">
          <a href="https://devfolio.co/" target="_blank">
            <img src="./img/partners2021/dev.png" alt="Devfolio" />
          </a>
        </div>
      </div>
      <div class="collabs">
        <div class="collaborator revealFromBottom">
          <a href="https://matic.network/" target="_blank">
            <img src="./img/partners2021/mat.png" alt="Matic" />
          </a>
        </div>
        <div class="collaborator revealFromBottom">
          <a href="https://www.portis.io/" target="_blank">
            <img src="./img/partners2021/por.png" alt="Portis" />
          </a>
        </div>
        <div class="collaborator revealFromBottom">
          <a href="https://tezos.com/" target="_blank">
            <img src="./img/partners2021/tez.png" alt="Tezos" />
          </a>
        </div>
      </div>
      <div class="collabs" id="collabs2021b"></div>
    </div>

    <div class="collabContainer">
      <h2>Partners 2020</h2>
      <div class="collabs" id="collabs"></div>
    </div>

    <div class="collabContainer">
      <h2>Publications</h2>
      <div class="collabs" id="publications"></div>
    </div> -->

  <!--<div class="faqContainer" id="faqs">-->
  <!--  <h2>FAQs</h2>-->
  <!--  <div class="faqs" id="faqs">-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(0)">-->
  <!--        Is there any registration fee?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>-->
  <!--          No, there is no registration fees for either makers or visitors.-->
  <!--        </p>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(1)">-->
  <!--        What is the duration of the event?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>-->
  <!--          4 Days, 19th, 20th, 21st & 22nd February 2025. The timings are from-->
  <!--          10AM to 6PM IST.-->
  <!--        </p>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(2)">-->
  <!--        What is the last date for applying in the core team?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>Last date is 15th July 2024.</p>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(3)">-->
  <!--        How do I reach the venue?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>-->
  <!--          Ghatkopar and Vidyavihar are the nearest Railway stations. Public-->
  <!--          transport is also easily available.-->
  <!--        </p>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(4)">-->
  <!--        Will I get accommodation if I am travelling from outside Mumbai?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>-->
  <!--          We will shortlist top 30 best projects whom we would provide all-->
  <!--          the logistics required. (Depends completely on the nature and the-->
  <!--          type of the project.) Kindly register and we would be happy to-->
  <!--          help you if your project falls under our shortlisted category.-->
  <!--          Accomodation is only for one maker + one companion (if any) per-->
  <!--          project.-->
  <!--        </p>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(5)">-->
  <!--        Who is eligible to register?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>-->
  <!--          Any person who thinks he has a groundbreaking idea or a concept-->
  <!--          and wishes to display his project/product in this Global Maker-->
  <!--          Initiative.-->
  <!--        </p>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(6)">-->
  <!--        What all can we display on our stalls?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>-->
  <!--          Any kind of project can be displayed (Art, Craft, IT, Hardware,-->
  <!--          Food, etc.).-->
  <!--        </p>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(7)">-->
  <!--        Can the Makers sell their products?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>-->
  <!--          Yes, makers can sell during the event, through a Design Bazar.-->
  <!--        </p>-->
  <!--      </div>-->
  <!--    </div>-->
  <!--    <div class="faqCard revealFromBottom">-->
  <!--      <button class="faqQue" onClick="openFAQ(8)">-->
  <!--        When will we get notification about confirmation / selection in the core team?-->
  <!--      </button>-->
  <!--      <div class="faqAns" style="display: none">-->
  <!--        <p>Notification will be given within a week.</p>-->
  <!--      </div>-->
  <!--    </div>-->
      <!-- <div class="faqCard revealFromBottom">
        <button class="faqQue" onClick="openFAQ(9)">
          What image should be uploaded on Team Profile if the project is
          handled by a single person?
        </button>
        <div class="faqAns" style="display: none">
          <p>
            In this case, only the image of the Maker or the Maker along with
            his project can be uploaded.
          </p>
        </div>
      </div> -->
    </div>
  </div>

  <!-- <div class="newsContainer">
      <h2>Our Newsletter</h2>
      <button onclick="window.open('https://airtable.com/shrbxqPwHcPoEiFUx')">
        Subscribe to our Newsletter
      </button>
    </div> -->

  <!-- <div id="contact" class="contactContainer">
      <div class="contactTint">
        <div class="contactCard">
          <div class="contactSection">
            <div class="contactMap">
              <h2>Contact Us</h2>
              <div class="getInTouch">
                <div class="innerContact">
                  <i class="fa fa-phone" aria-hidden="true"></i>
                  <p>
                    Amit Yadav: <a href="tel:+919975481740">+91 99754 81740</a>
                  </p>
                </div>
                <div class="innerContact">
                  <i class="fa fa-envelope" aria-hidden="true"></i>
                  <p>
                    <a href="mailto:makermela@somaiya.edu"
                      >makermela@somaiya.edu</a
                    >
                  </p>
                </div>
              </div>
            </div>
            <div class="contactForm">
              <form action="./submission.php" method="POST">
                <input
                  class="fadeBorder"
                  type="text"
                  name="name"
                  placeholder="Name"
                />
                <input
                  class="fadeBorder"
                  type="text"
                  name="email"
                  placeholder="Email ID"
                />
                <input
                  class="fadeBorder"
                  type="text"
                  name="phone"
                  placeholder="Phone Number"
                />
                <textarea
                  class="fadeBorder"
                  name="msg"
                  placeholder="Enter your query..."
                ></textarea>
                <input type="submit" name="submit" value="Submit" />
              </form>
            </div>
          </div>
        </div>
      </div>
    </div> -->

  <div class="footerContainer">
    <p>Maker Mela &copy; Copyright 2024. All rights reserved.</p>
    <div class="socialMedia">
      <a href="https://www.instagram.com/makermela/" target="_blank">
        <i class="fa fa-instagram"></i>
      </a>
      <a href="https://twitter.com/makermelaIndia" target="_blank">
        <i class="fa fa-twitter"></i>
      </a>
      <a href="https://www.facebook.com/makermela" target="_blank">
        <i class="fa fa-facebook-official"></i>
      </a>
      <a href="https://www.linkedin.com/company/maker-mela/" target="_blank">
        <i class="fa fa-linkedin"></i>
      </a>
    </div>
    <div class="footerContact">
      <h3>Contact Us</h3>
      <!-- <p>Amit Yadav: <a href="tel:+919975481740">+91 99754 81740</a></p> -->
      <p><a href="mailto:makermela@somaiya.edu">makermela@somaiya.edu</a></p>
    </div>
  </div>

  <!-- Modal -->

  <div class="modal" id="modal">
    <div class="modalBox">
      <i class="fa fa-close" onclick="closeModal()"></i>
      <h3 id="modalHeader"></h3>
      <hr />
      <p id="modalBody"></p>
    </div>
  </div>

  <script src="./main.js"></script>
</body>

</html>