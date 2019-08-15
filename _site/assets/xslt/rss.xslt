<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/rss">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>RSS Feed (Styled)</title>

    <link rel="stylesheet" type="text/css" href="https://s19tot.ryancordell.org/assets/css/styles_feeling_responsive.css">

  

	<script src="https://s19tot.ryancordell.org/assets/js/modernizr.min.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
	<script>
		WebFont.load({
			google: {
				families: [ 'Lato:400,700,400italic:latin', 'Volkhov::latin' ]
			}
		});
	</script>

	<noscript>
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic%7CVolkhov' rel='stylesheet' type='text/css'>
	</noscript>


	<!-- Search Engine Optimization -->
	<meta name="description" content="»Technologies of Text« is an experiential course about media, technology, and literary imagination in the Northeastern University English Department.">
	
	
	
	
	
	
	<link rel="canonical" href="https://s19tot.ryancordell.org/assets/xslt/rss.xslt">


	<!-- Facebook Open Graph -->
	<meta property="og:title" content="RSS Feed (Styled)">
	<meta property="og:description" content="»Technologies of Text« is an experiential course about media, technology, and literary imagination in the Northeastern University English Department.">
	<meta property="og:url" content="https://s19tot.ryancordell.org/assets/xslt/rss.xslt">
	<meta property="og:locale" content="en_EN">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="Technologies of Text, Spring 2019">
	
	


	
	<!-- Twitter -->
	<meta name="twitter:card" content="summary">
	<meta name="twitter:site" content="ryancordell">
	<meta name="twitter:creator" content="ryancordell">
	<meta name="twitter:title" content="RSS Feed (Styled)">
	<meta name="twitter:description" content="»Technologies of Text« is an experiential course about media, technology, and literary imagination in the Northeastern University English Department.">
	
	

	<link type="text/plain" rel="author" href="https://s19tot.ryancordell.org/humans.txt">

	

	

	<link rel="icon" sizes="32x32" href="https://s19tot.ryancordell.org/assets/img/favicon-32x32.png">

	<link rel="icon" sizes="192x192" href="https://s19tot.ryancordell.org/assets/img/touch-icon-192x192.png">

	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="https://s19tot.ryancordell.org/assets/img/apple-touch-icon-180x180-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://s19tot.ryancordell.org/assets/img/apple-touch-icon-152x152-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://s19tot.ryancordell.org/assets/img/apple-touch-icon-144x144-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://s19tot.ryancordell.org/assets/img/apple-touch-icon-120x120-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://s19tot.ryancordell.org/assets/img/apple-touch-icon-114x114-precomposed.png">

	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="https://s19tot.ryancordell.org/assets/img/apple-touch-icon-76x76-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://s19tot.ryancordell.org/assets/img/apple-touch-icon-72x72-precomposed.png">

	<link rel="apple-touch-icon-precomposed" href="https://s19tot.ryancordell.org/assets/img/apple-touch-icon-precomposed.png">	

	<meta name="msapplication-TileImage" content="https://s19tot.ryancordell.org/assets/img/msapplication_tileimage.png">

	<meta name="msapplication-TileColor" content="#fabb00">


	

		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="https://s19tot.ryancordell.org" class="icon-tree"> Technologies of Text, Spring 2019</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Nav</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
            
            

              <li class="divider"></li>
              <li class="has-dropdown">
                <a  href="https://s19tot.ryancordell.org/updates/archive/">Updates</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="https://s19tot.ryancordell.org/updates/in-class/">In-Class Assignments</a></li>
                    

                      

                      <li><a  href="https://s19tot.ryancordell.org/updates/labs/">Lab Assignments</a></li>
                    

                      

                      <li><a  href="https://s19tot.ryancordell.org/updates/fieldbooks/">Student Fieldbooks</a></li>
                    

                      

                      <li><a  href="https://s19tot.ryancordell.org/updates/models/">Model Fieldbooks</a></li>
                    
                  </ul>

              </li>
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="https://s19tot.ryancordell.org/search/">Search</a></li>

            
            
          
        
        
      </ul>

      <ul class="left">
        

              

          
          

            
            
              <li><a  href="https://s19tot.ryancordell.org/">Home</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="https://s19tot.ryancordell.org/description/">Description &amp; Objectives</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="https://s19tot.ryancordell.org/policies/">Policies</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="https://s19tot.ryancordell.org/schedule/">Schedule</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a  href="https://s19tot.ryancordell.org/assignments/">Assignments</a>

                  <ul class="dropdown">
                    

                      

                      <li><a  href="https://s19tot.ryancordell.org/assignments/inclasswork/">In-class Work</a></li>
                    

                      

                      <li><a  href="https://s19tot.ryancordell.org/assignments/fieldbook">Fieldbook</a></li>
                    

                      

                      <li><a  href="https://s19tot.ryancordell.org/assignments/deadmediaposter/">Dead Media Poster</a></li>
                    

                      

                      <li><a  href="https://s19tot.ryancordell.org/assignments/unessay/">Unessays</a></li>
                    
                  </ul>

              </li>
              <li class="divider"></li>
            
          
        

              

          
          
        

              

          
          
        
        
      </ul>
    </section>
  </nav>
</div><!-- /#navigation -->

		

<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="https://s19tot.ryancordell.org/" title="Technologies of Text, Spring 2019 – An experiential learning course in the Northeastern University English Department">
				<img src="https://s19tot.ryancordell.org/assets/img/logo.png" alt="Technologies of Text, Spring 2019 – An experiential learning course in the Northeastern University English Department">
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->








		


<div class="alert-box warning text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">RSS feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="channel/description" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="channel/link" />
			</xsl:attribute>
			<xsl:value-of select="channel/title" disable-output-escaping="yes" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="channel/item">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="guid" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="title"/>
				<br/>
				<small><xsl:value-of select="pubDate"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="description" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <div id="up-to-top" class="row">
      <div class="small-12 columns" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->


    <footer id="footer-content" class="bg-grau">
      <div id="footer">
        <div class="row">
          <div class="medium-6 large-5 columns">
            <h5 class="shadow-black">About This Site</h5>

            <p class="shadow-black">
              »Technologies of Text« is an experiential course about media, technology, and literary imagination in the Northeastern University English Department.
              <a href="https://s19tot.ryancordell.org/description/">More &#9758;</a>
            </p>
          </div><!-- /.large-6.columns -->


          <div class="small-6 medium-3 large-3 large-offset-1 columns">
            
              
                <h5 class="shadow-black">Services</h5>
              
            
              
            
              
            
              
            

              <ul class="no-bullet shadow-black">
              
                
                  <li >
                    <a href="https://s19tot.ryancordell.org"  title=""></a>
                  </li>
              
                
                  <li >
                    <a href="https://s19tot.ryancordell.org/feed.xml"  title="Subscribe to RSS Feed">RSS</a>
                  </li>
              
                
                  <li >
                    <a href="https://s19tot.ryancordell.org/atom.xml"  title="Subscribe to Atom Feed">Atom</a>
                  </li>
              
                
                  <li >
                    <a href="https://s19tot.ryancordell.org/sitemap.xml"  title="Sitemap for Google Webmaster Tools">sitemap.xml</a>
                  </li>
              
              </ul>
          </div><!-- /.large-4.columns -->


          <div class="small-6 medium-3 large-3 columns">
            
              
                <h5 class="shadow-black">Course Developed with Help from:</h5>
              
            
              
            
              
            
              
            
              
            

            <ul class="no-bullet shadow-black">
            
              
                <li >
                  <a href="https://s19tot.ryancordell.org"  title=""></a>
                </li>
            
              
                <li >
                  <a href="https://web.northeastern.edu/nulab/" target="_blank"  title="NULab for Texts, Maps, and Networks">NULab for Texts, Maps, and Networks</a>
                </li>
            
              
                <li >
                  <a href="https://www.northeastern.edu/cssh/english/" target="_blank"  title="Northeastern English Department">Northeastern English Department</a>
                </li>
            
              
                <li >
                  <a href="http://rarebookschool.org/" target="_blank"  title="Rare Book School">Rare Book School</a>
                </li>
            
              
                <li >
                  <a href="http://dhsi.org/" target="_blank"  title="Digital Humanities Summer Institute">Digital Humanities Summer Institute</a>
                </li>
            
            </ul>
          </div><!-- /.large-3.columns -->
        </div><!-- /.row -->

      </div><!-- /#footer -->


      <div id="subfooter">
        <nav class="row">
          <section id="subfooter-left" class="small-12 medium-6 columns credits">
            <p>Created by <a href="https://ryancordell.org/">Ryan Cordell</a> in <a href="http://jekyllrb.com/" target="_blank">Jekyll</a> using the theme <a href="http://phlow.github.io/feeling-responsive/">Feeling Responsive</a> by <a href="http://phlow.de/" target="_blank">Phlow</a>. All course materials, including policies and assignments, are licensed <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">CC-BY</a>.</p>
          </section>

          <section id="subfooter-right" class="small-12 medium-6 columns">
            <ul class="inline-list social-icons">
            
              <li><a href="https://github.com/rccordell/s18tot" target="_blank" class="icon-github" title="The code for this site..."></a></li>
            
              <li><a href="http://twitter.com/ryancordell" target="_blank" class="icon-twitter" title="Prof. Cordell on Twitter"></a></li>
            
              <li><a href="mailto:r.cordell@northeastern.edu" target="_blank" class="icon-mail" title="Email Prof. Cordell"></a></li>
            
            </ul>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>

		


<script src="https://s19tot.ryancordell.org/assets/js/javascript.min.js"></script>














		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>
