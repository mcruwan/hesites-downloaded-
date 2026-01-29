<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Oswego County's: Guide To Government</title>
	<link rel="canonical" href="https://oswegocountygovernments.com/" />
<link rel="shortcut icon" href="images/favicon.ico"/>
<link href="includes/government_style.css" rel="stylesheet" type="text/css"/>
<link href="includes/styles.css" rel="stylesheet" type="text/css"/>
<script src="ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
<script src="includes/slides.min.jquery.js" type="text/javascript"></script>
<script>
		$(function(){
			$('#slides').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				play: 5000,
				pause: 2500,
				hoverPause: true,
				animationStart: function(current){
					$('.caption').animate({
						bottom:-35
					},100);
					if (window.console && console.log) {
						// example return of current slide number
						console.log('animationStart on slide: ', current);
					};
				},
				animationComplete: function(current){
					$('.caption').animate({
						bottom:0
					},200);
					if (window.console && console.log) {
						// example return of current slide number
						console.log('animationComplete on slide: ', current);
					};
				},
				slidesLoaded: function() {
					$('.caption').animate({
						bottom:0
					},200);
				}
			});
		});
	</script>
</head>
<body>
<div id="container">
<!--Navigation-->
<div id="cssmenu">
<ul>
   <li class="active "><a href="/"><span>Home</span></a></li>
   <li class="has-sub "><a href=""><span>Levels of Government</span></a>
      <ul>
         <li class="has-sub "><a href=""><span>Federal Government</span></a>
         	<ul>
            	<li><a href="pages/fed_functions.html"><span>Federal Government Functions</span></a></li>
                <li><a href="pages/fed_officials.html"><span>Federal Government Officials</span></a></li>
                <li><a href="pages/fed_court.html"><span>Federal Court Systems</span></a></li>
            </ul>
         </li>   
         <li class="has-sub "><a href=""><span>New York State Government</span></a>
         	<ul>
            	<li><a href="pages/ny_functions.html"><span>New York State Government Functions</span></a></li>
                <li><a href="pages/ny_officials.html"><span>New York State Government Officials</span></a></li>
                <li><a href="pages/ny_court.html"><span>New York State Court Systems</span></a></li>
            </ul>
         </li> 
         <li class="has-sub "><a href=""><span>Oswego County Government</span></a>
         	<ul>
            	<li><a href="pages/os_functions.html"><span>Oswego County Functions</span></a></li>
                <li><a href="pages/os_officials.html"><span>Oswego County Officials</span></a></li>
                <li><a href=""><span></span></a></li>
            </ul>
         </li>  
      </ul>
   </li> 
   <li class="has-sub "><a href=""><span>Municipalities</span></a>
   		<ul>
        	<li><a href="pages/city.html"><span>Functions of a City</span></a></li>
            <li><a href="pages/town.html"><span>Functions of a Town</span></a></li>
            <li><a href="pages/village.html"><span>Functions of a Village</span></a></li>
        </ul>
   </li>
   <li class="has-sub "><a href=""><span>Elected Officials</span></a>
   		<ul>
        	<li><a href="pages/municipalities.html"><span>A List of Elected Officials by Area</span></a></li>
            <li><a href="pages/assembly.html"><span>New York State Assembly</span></a></li>
            <li><a href="pages/senate.html"><span>New York State Senate</span></a></li>
            <li><a href="pages/congress.html"><span>United States Congress</span></a></li>
        </ul>
   </li>
   <li class="has-sub "><a href=""><span>Elections</span></a>
   		<ul>
        	<li><a href="pages/upcoming_elections.html"><span>Upcoming Elections</span></a></li>
            <li><a href="pages/elections.html"><span>Election Results</span></a></li>
        </ul>
   </li>
   <li class="has-sub "><a href=""><span>Voting Information</span></a>
   		<ul>
        	<li><a href="pages/voting.html"><span>Voting Information</span></a></li>
            <li><a href="pages/political.html"><span>Political Parties</span></a></li>
         </ul>
   </li>
   <li class="last_nav"><a href=""><span>Districts</span></a>
   		<ul class="right">
        	<li><a href="pages/districts.html"><span>Oswego County Districts</span></a></li>
            <li><a href="pages/redistricting.html"><span>Redistricting of Oswego County</span></a></li>
        </ul>
   </li>
</ul>
</div>
<!--End Navigation-->
    	<div id="header">
        	<p> <a href="pages/contact.html">Contact Us</a> | <a href="pages/acknowledgements.html">Acknowledgements</a> | <a href="pages/getting_started.html">Getting Started</a> </p>
            <div class="social">
            	<iframe allowtransparency="true" frameborder="0" scrolling="no" src="widgets/tweet_button_ext_iframe.html" style="width:75px; height:20px;"></iframe>
            </div>
            <div class="social">
            	<iframe src="https://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.oswegocountygovernments.com%2F&amp;send=false&amp;layout=button_count&amp;width=100&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font=arial&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:75px; height:21px;" allowtransparency="true"></iframe></div>
<table width="200px" border="0" cellspacing="0" cellpadding="0" style="float:left; margin: 15px 0 0 -240px;">
<tr>
<td>
 <ul>
  <li style="line-height:20px;">
<img src="images/american-flag.gif" width="50px" height="30px" title="american-flag"/>
 </li>
  <li style="line-height:20px;">
<img src="images/NYS Flag.png" width="50px" height="30px" title="NYS Flag"/>
 </li>
 <li style="line-height:20px;">
<img src="images/Oswego County Flag.gif" width="50px" height="30px" title="Oswego County Flag"/> </li>
 </ul></td></tr>
</table><div id="logo"> 
<a href="/"><img src="images/logo.png"/></a></div><table width="200px" border="0" cellspacing="0" cellpadding="0" style="float:right; margin: 15px -180px 0 0 ;">
  <tr>
  <td><ul>
  <li style="margin-bottom:10px;">
  <a href="https://www.whitehouse.gov/administration/"><img src="images/Seal_Of_The_President_Of_The_United_States_Of_America.png" width="25px" height="25px" title="President Seal" style="float:left; margin-right:5px;"/><label style="vertical-align:top; line-height:13px;"><small style="cursor:pointer;">Barack Obama – President (click here)</small></label></a>
 </li>  <li style="margin-bottom:10px;">
<a href="http://www.governor.ny.gov/"><img src="images/newyork-seal.jpg" width="25px" height="25px" title="newyork seal" style="float:left; margin-right:5px;"/><label style="vertical-align:top; line-height:13px;"><small style="cursor:pointer;">Andrew Cuomo – Governor (click here)</small></label></a>
 </li> <li style="margin-bottom:10px;">
<a href="https://www.cuimc.columbia.edu/news/kevin-gardner-md-phd-appointed-chair-department-pathology-and-cell-biology-0"><img src="images/countyseal.gif" width="25px" height="25px" title="countyseal" style="float:left; margin-right:5px;"/><label style="vertical-align:top; line-height:13px;"><small style="cursor:pointer;">Kevin Gardner – Chairman   (click here)</small></label></a>
 </li>
 </ul></td>
    <!--<td ></td>  </tr>
      <tr><td></td>  </tr>
    <tr><td></td>  </tr>-->
  </tr>
</table>
        </div><!--End Header-->
    <div id="content">
    	<div id="welcome">
        	<h2>Welcome</h2>
This site is a "one-stop shop" for all matters relating to Government in Oswego County. This includes elected officials of all levels, along with the detailed descriptions of the Government entities in which they serve.  Redistricting, which took place in 2012, has significantly altered the landscape of the New York State Assembly Districts and the Congressional Representation in Oswego County. This year, it was extremely important that a simplified resource was available that would make it much easier to identify who their representatives are in the town/city, along with who is currently working on their behalf in Albany and Washington, D.C.  This web site is a resource for the voters and a tool for the Educators. It is also my hope that this will lead to a greater participation in our electoral process. <p class="by_line">
Dan Farfaglia </p>
<p class="title">Oswego County Legislator<br> 24th District<br> Fulton - Granby - Minetto - Oswego Town  </p>
        </div>
    	<div id="slider">
    	<div id="slides">
				<div class="slides_container">
					<div class="slide">
						<a href="images/1_White-House.jpg" target="_blank"><img src="images/1_White-House.jpg" alt="The White House" title="The White House"></a>
						<div class="caption" style="bottom:0">
							<p class="cap_head">The White House</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/2_US-Capitol_night.jpg" target="_blank"><img src="images/2_US-Capitol_night.jpg" alt="The US Capitol Dome " title="The US Capitol Dome"></a><div class="caption" style="bottom:0">
							<p class="cap_head">The US Capitol Dome</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/3_USSenate_25.jpg" target="_blank"><img src="images/3_USSenate_25.jpg" alt="Slide 1" title="US Senate Chambers"></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">US Senate Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/4_us_house_chamber.jpg" target="_blank"><img src="images/4_us_house_chamber.jpg" alt="Slide 1" title="House of Representatives "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">House of Representatives</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/5_Governors_mansion.jpg" target="_blank"><img src="images/5_Governors_mansion.jpg" alt="Slide 1" title="Governor`s Mansion "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Governor`s Mansion</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/6_NYS-Capitol.jpg" target="_blank"><img src="images/6_NYS-Capitol.jpg" alt="Slide 1" title="NYS Capitol "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">NYS Capitol</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/7_Senate-chambers.jpg" target="_blank"><img src="images/7_Senate-chambers.jpg" alt="Slide 1" title="Senate Chambers "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Senate Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/8_Assembly-Chambers.jpg" target="_blank"><img src="images/8_Assembly-Chambers.jpg" alt="Slide 1" title="Assembly Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Assembly Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/9_County_Building_in_Oswego.JPG" target="_blank"><img src="images/9_County_Building_in_Oswego.JPG" alt="Slide 1" title="County Building in Oswego "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">County Building in Oswego </p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/10_County_Leg._Chambers.JPG" target="_blank"><img src="images/10_County_Leg._Chambers.JPG" alt="Slide 1" title="County Legislative Chambers "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">County Legislative Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/11_Barclay_Courthouse.JPG" target="_blank"><img src="images/11_Barclay_Courthouse.JPG" alt="Slide 1" title="Barclay Courthouse "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Barclay Courthouse</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/12_Courthouse_Chambers.JPG" target="_blank"><img src="images/12_Courthouse_Chambers.JPG" alt="Slide 1" title="Courthouse Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Courthouse Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/13_Fulton_Municipal_Building.JPG" target="_blank"><img src="images/13_Fulton_Municipal_Building.JPG" alt="Slide 1" title="Fulton Municipal Building "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Fulton Municipal Building</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/14_Fulton_Council_Chambers.JPG" target="_blank"><img src="images/14_Fulton_Council_Chambers.JPG" alt="Slide 1" title="Fulton Council Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Fulton Council Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/15_Oswego-Municipal-Building.JPG" target="_blank"><img src="images/15_Oswego-Municipal-Building.JPG" alt="Slide 1" title="Oswego Municipal Building "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Oswego Municipal Building</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/16_Oswego-City-Hall.JPG" target="_blank"><img src="images/16_Oswego-City-Hall.JPG" alt="Slide 1" title="Oswego City Hall "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Oswego City Hall</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/17_Granby-Town-Hall.JPG" target="_blank"><img src="images/17_Granby-Town-Hall.JPG" alt="Slide 1" title="Granby Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Granby Town Hall</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/18_Granby-Chambers.JPG" target="_blank"><img src="images/18_Granby-Chambers.JPG" alt="Slide 1" title="Granby Chambers "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Granby Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/19_Hannibal-Municipal-building.JPG" target="_blank"><img src="images/19_Hannibal-Municipal-building.JPG" alt="Slide 1" title="Hannibal Municipal Building "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Hannibal Municipal Building</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/20_Hannibal-Town-Hall.JPG" target="_blank"><img src="images/20_Hannibal-Town-Hall.JPG" alt="Slide 1" title="Hannibal Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Hannibal Town Hall</p>
						</div>
					</div>
		   <div class="slide">
						<a href="images/Hastings_Town-Hall.png" target="_blank"><img src="images/Hastings_Town-Hall.png" alt="Slide 1" title="Hastings Town Hall"></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Hastings Town Hall</p>
						</div>
					</div>
		   <div class="slide">
						<a href="images/hastings-chambers.png" target="_blank"><img src="images/hastings-chambers.png" alt="Slide 1" title="Hastings Chambers"></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Hastings chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/21_Mexico-Town-Hall.JPG" target="_blank"><img src="images/21_Mexico-Town-Hall.JPG" alt="Slide 1" title="Mexico Town Hall"></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Mexico Town Hall</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/22_Mexico-Meeting.jpg" target="_blank"><img src="images/22_Mexico-Meeting.jpg" alt="Slide 1" title="Mexico Meeting Table "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Mexico Meeting Table</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/23_Minetto-Town-Hall.JPG" target="_blank"><img src="images/23_Minetto-Town-Hall.JPG" alt="Slide 1" title="Minetto Town Hall "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Minetto Town Hall </p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/24_Minetto-Town-Chambers.JPG" target="_blank"><img src="images/24_Minetto-Town-Chambers.JPG" alt="Slide 1" title="Minetto Town Chambers "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Minetto Town Chambers</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/059_newhaven-townhall.png" target="_blank"><img src="images/059_newhaven-townhall.png" alt="Slide 1" title="New Haven Town Hall "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">New Haven Town Hall </p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/060_newhaven-chambers.png" target="_blank"><img src="images/060_newhaven-chambers.png" alt="Slide 1" title="New Haven Town Chambers "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">New Haven Town Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/25_Oswego-Town-Hall.JPG" target="_blank"><img src="images/25_Oswego-Town-Hall.JPG" alt="Slide 1" title="Oswego Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Oswego Town Hall</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/26_Oswego-Town-Chambers.JPG" target="_blank"><img src="images/26_Oswego-Town-Chambers.JPG" alt="Slide 1" title="Oswego Town Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Oswego Town Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/27_Palermo-Town-Hall.JPG" target="_blank"><img src="images/27_Palermo-Town-Hall.JPG" alt="Slide 1" title="Palermo Town Hall "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Palermo Town Hall</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/28_Palermo-Chambers.JPG" target="_blank"><img src="images/28_Palermo-Chambers.JPG" alt="Slide 1" title="Palermo Chambers "></a>
                        <div class="caption" style="bottom:0">
							<p class="cap_head">Palermo Chambers</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/Parish-townhall.jpg" target="_blank"><img src="images/Parish-townhall.jpg" alt="Slide 1" title="Parish Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Parish Town Hall</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/parish-chambers.jpg" target="_blank"><img src="images/parish-chambers.jpg" alt="Slide 1" title="Parish Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Parish Chambers</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/phoenix_village-hall.png" target="_blank"><img src="images/phoenix_village-hall.png" alt="Slide 1" title="Phoenix Village Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Phoenix Village Hall</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/Phoenix_Thadeous-Sweet.png" target="_blank"><img src="images/Phoenix_Thadeous-Sweet.png" alt="Slide 1" title="Thadeous Sweet Plaque "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Thadeous Sweet Plaque</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/phoenix_village-chambers.png" target="_blank"><img src="images/phoenix_village-chambers.png" alt="Slide 1" title="Phoenix Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Phoenix Chambers</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/Richland-townhall.jpg" target="_blank"><img src="images/Richland-townhall.jpg" alt="Slide 1" title="Richland Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Richland Town Hall</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/richland-Barclay plaque.jpg" target="_blank"><img src="images/richland-Barclay plaque.jpg" alt="Slide 1" title="Barclay Plaque "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Barclay Plaque</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/Richland-chambers.jpg" target="_blank"><img src="images/Richland-chambers.jpg" alt="Slide 1" title="Richland Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Richland Chambers</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/056_scriba-townhall.png" target="_blank"><img src="images/056_scriba-townhall.png" alt="Slide 1" title="Scriba Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Scriba Town Hall</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/057_scriba-chambers.png" target="_blank"><img src="images/057_scriba-chambers.png" alt="Slide 1" title="Scriba Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Scriba Chambers</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/062_schroeppel-townhall.png" target="_blank"><img src="images/062_schroeppel-townhall.png" alt="Slide 1" title="Schroeppel Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Schroeppel Town Hall</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/063_schroeppel-chambers.png" target="_blank"><img src="images/063_schroeppel-chambers.png" alt="Slide 1" title="Schroeppel Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Schroeppel Chambers</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/29_Volney-Town-Hall.JPG" target="_blank"><img src="images/29_Volney-Town-Hall.JPG" alt="Slide 1" title="Volney Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Volney Town Hall</p>
						</div>
					</div>
                    <div class="slide">
						<a href="images/30_Volney-Chambers.jpg" target="_blank"><img src="images/30_Volney-Chambers.jpg" alt="Slide 1" title="Volney Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">Volney Chambers</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/westmonroe-townhall.jpg" target="_blank"><img src="images/westmonroe-townhall.jpg" alt="Slide 1" title="West Monroe Town Hall "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">West Monroe Town Hall</p>
						</div>
					</div>
		    <div class="slide">
						<a href="images/westmonroe-chambers.jpg" target="_blank"><img src="images/westmonroe-chambers.jpg" alt="Slide 1" title="West Monroe Chambers "></a>
                         <div class="caption" style="bottom:0">
							<p class="cap_head">West Monroe Chambers</p>
						</div>
					</div>
				</div>
				<a href="#" class="prev"><img src="images/arrow-prev.png" alt="Arrow Prev"></a>
				<a href="#" class="next"><img src="images/arrow-next.png" alt="Arrow Next"></a>
			</div>
            </div><!--End Slider-->
            <div class="news">
        		<h3>Getting Started</h3>
            	<p>Are you new to the site? Would you like some help finding your way around? Not sure what a municipality is? Look over the getting started page to begin your educational journey.</p>
                <a href="pages/getting_started.html"><img id="arrow" src="images/get_arrow.png"/></a>
        	</div>
            <div class="news">
        		<h3>Political Parties</h3>
                <a href="pages/political.html" target="_blank"><img class="border" src="images/donkey_elephant2.jpg"/></a>
            	<p>Read over our political parties page to learn the intricacies of our political party system, and how it relates to you.</p>
        	</div>
        	<div class="news">
        		<h3>Municipalities</h3>
                <a href="pages/municipalities.html" target="_blank"><img class="border" src="images/map_thumb.jpg"/></a>
            	<p>Use our interactive map to help you find the elected officials of your personal municipality.</p>
        	</div>
            <div class="clear"></div>
    </div><!--Content--> 
        <div id="footer">
        	<div class="elected_group"> <div class="elected"><img src="images/USA Map.jpg" height="75px" width="75px"/></div>
            	<div class="elected"><img src="images/NYS Map.png" height="75px" width="75px"/></div>
            	<div class="elected"><img src="images/Oswego County Map.png" height="75px" width="75px"/></div>
            </div>
            <div class="foot_group">
            <div class="foot_nav_group">
        	<div class="foot_navfirst">
                    	<li class="label"><span>Levels of Government</span></li>
                        	<ul>
                        		<li><a href="pages/fed_officials.html">Federal Government Officials</a></li>
                        		<li><a href="pages/fed_functions.html">Federal Government Functions</a></li>
                        		<li><a href="pages/fed_court.html">Federal Court Systems</a></li>
                        		<li><a href="pages/ny_officials.html">New York State Officials</a></li>
                        		<li><a href="pages/ny_functions.html">New York State Functions</a></li>
                        		<li><a href="pages/ny_court.html">New York State Court Systems</a></li>
                        		<li><a href="pages/os_officials.html">Oswego County Officials</a></li>
                        		<li><a href="pages/os_functions.html">Oswego County Functions</a></li>
                   			</ul>
        	</div>
        	<div class="foot_nav">
            	<li class="label">Municipalities</li>
                	<ul>
                    	<li><a href="pages/city.html">The Functions of a City</a></li>
                        <li><a href="pages/town.html">The Functions of a Town</a></li>
                        <li><a href="pages/village.html">The Functions of a Village</a></li>
                   </ul>
            	<li class="label">Elected Officials</li>
   					<ul>
        				<li><a href="pages/municipalities.html"><span>A List of Elected Officials by Area</span></a></li>
            			<li><a href="pages/assembly.html"><span>New York State Assembly</span></a></li>
            			<li><a href="pages/senate.html"><span>New York State Senate</span></a></li>
            			<li><a href="pages/congress.html"><span>United States Congress</span></a></li>
        			</ul>
        	</div>
        	<div class="foot_nav">
            	<li class="label">Elections</li>
   					<ul>
        				<li><a href="pages/upcoming_elections.html"><span>Upcoming Elections</span></a></li>
            			<li><a href="pages/elections.html"><span>Election Results</span></a></li>
        			</ul>
            	<li class="label">Districts</li>
   					<ul>
        				<li><a href="pages/districts.html"><span>Oswego County Districts</span></a></li>
            			<li><a href="pages/redistricting.html"><span>Redistricting of Oswego County</span></a></li>
        			</ul>
        	</div>
            <div class="foot_navlast">
            	<li class="label">Miscellaneous</li>
   					<ul>
                    	<li class="has-sub "><a href="/"><span>Home</span></a></li>
            			<li class="has-sub "><a href="pages/voting.html"><span>Voting Information</span></a></li>
                        <li class="has-sub "><a href="pages/political.html"><span>Political Parties</span></a></li>
                		<li class="has-sub "><a href="pages/contact.html"><span>Contact Us</span></a></li>
                		<li class="has-sub "><a href="pages/acknowledgements.html"><span>Acknowledgements</span></a></li>
                		<li class="has-sub "><a href="pages/getting_started.html"><span>Getting Started</span></a></li>
				<li class="has-sub "><a href="http://www.usgennet.org/usa/ny/county/oswego/nyoswego/index.html"><span>History</span></a></li>
				<li class="has-sub "><a href="legislature/directory/govt directory 2013.pdf"><span>Directory</span></a></li>
					</ul>
        	</div>
            </div>
            <div class="foot_bottom">
         	<div class="social">            	<iframe allowtransparency="true" frameborder="0" scrolling="no" src="widgets/tweet_button_ext_iframe.html" style="width:75px; height:20px;"></iframe>
            </div>
            <div class="social">           	<iframe src="https://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.oswegocountygovernments.com%2F&amp;send=false&amp;layout=button_count&amp;width=100&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font=arial&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:75px; height:21px;" allowtransparency="true"></iframe>
            </div>
        	<p style="text-align:center;"> Content © 2012 Oswego County Guide to Government. Design © 2012 <a href="https://soccer10tips.com/" target="_blank">Judi Bola</a> <a href="https://whitetailsofoklahoma.net/Contact/" target="_blank">agen228</a> and <a href="https://www.smithforcps.com/in-the-news" target="_blank">https://www.smithforcps.com/in-the-news</a>
		<label style="margin-top:-7px;">Powered By: <a href="http://blackburngraphics.com/" target="_blank" style="text-decoration:underline">Blackburn Graphics</a></label></p>
            </div>
            </div><!--End Foot Group-->
            <div class="clear"></div>
        </div><!--End Footer-->
    </div><!--End Container-->
</html>